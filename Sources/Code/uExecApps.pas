unit uExecApps;

interface

uses
  Winapi.Windows,
  System.Classes,
  System.SysUtils;

type
  TAppExecutionOutputEvent = procedure(const ACmdStr: string; AProcessID: DWORD;
    const AOutputTextPart: string; const AAnyID: string;
    AActDurationMSec: DWORD; var ADoTerminating: boolean) of object;

procedure ExecAppAndGetOutput(const ACmdStr: string; AOutput: TStrings;
  // optionally output to TStrings
  AOutputEvent: TAppExecutionOutputEvent;
  // optionally: input
  const AAnyID: string); // optionally: the string for AOutputEvent

implementation

// code from  https://stackoverflow.com/questions/13816962
// to protect from hanging ReadFile(PipeHandle)
// in a process
function CheckIfPipeHasData(APipeHandle: THandle;
  AOnlyUnreadData: boolean): boolean;
const
  READ_BUFFER_SIZE = 10;
var
  arrBuffer: array [0 .. READ_BUFFER_SIZE - 1] of AnsiChar;
  iBytesRead: DWORD;
  iBytesAvailable: DWORD;
  iBytesUnread: DWORD;
begin
  // Different from ReadFile and better
  if PeekNamedPipe(APipeHandle,
    // HANDLE hNamedPipe = handle to pipe to copy from
    @arrBuffer, // LPVOID lpBuffer = pointer to data buffer
    READ_BUFFER_SIZE, // DWORD nBufferSize = size, in bytes, of data buffer
    @iBytesRead, // LPDWORD lpBytesRead = pointer to number of bytes read
    @iBytesAvailable,
    // LPDWORD lpTotalBytesAvail = pointer to total number of bytes available
    @iBytesUnread
    // LPDWORD lpBytesLeftThisMessage = pointer to unread bytes in this message
    ) then
  begin
    if AOnlyUnreadData then
      Result := (iBytesUnread > 0)
    else
      Result := (iBytesAvailable > 0);
  end
  else
  begin
    Result := false;
  end;
end;

//
// based on RunDosInMemo() from https://stackoverflow.com/questions/9119999
//
procedure ExecAppAndGetOutput(const ACmdStr: string; AOutput: TStrings;
  AOutputEvent: TAppExecutionOutputEvent; const AAnyID: string);
const
  READ_BUFFER_SIZE = 2400;
var
  iExecutionStartMSec: DWORD;
  sCmdStr: string;
  Security: TSecurityAttributes;
  readableEndOfPipe: THandle;
  writeableEndOfPipe: THandle;
  start: TStartUpInfo;
  Buffer: PAnsiChar;
  ProcessInfo: TProcessInformation;
  iAppRunningFlag: DWORD;
  bDoTerminating: boolean;

  procedure PushOutput(out ADoTerminating: boolean);
  var
    iBytesRead: DWORD;
    begin
    ADoTerminating := false;
       // Read the contents of the pipe out of the readable end
       // WARNING: if the console app never writes anything to the StdOutput, then ReadFile will block and never return
    repeat
      iBytesRead := 0;
      if CheckIfPipeHasData(readableEndOfPipe, true) then
      // < checking program hang
      begin
        ReadFile(readableEndOfPipe, Buffer[0], READ_BUFFER_SIZE,
          (* var *) iBytesRead, nil);
        Buffer[iBytesRead] := #0;
        OemToAnsi(Buffer, Buffer);
        end
      else
      begin
        iBytesRead := 0;
        Buffer[iBytesRead] := #0;
        end;

      if Assigned(AOutput) then
        AOutput.Text := AOutput.Text + String(Buffer);

      if Assigned(AOutputEvent) then
        AOutputEvent(ACmdStr,
          ProcessInfo.dwProcessId,
          String(Buffer),
          AAnyID,
          GetTickCount() - iExecutionStartMSec,
          ADoTerminating);
      until ADoTerminating or (iBytesRead < READ_BUFFER_SIZE);
    end;

begin
  iExecutionStartMSec := GetTickCount();

  sCmdStr := ACmdStr;

  Security.nLength := SizeOf(TSecurityAttributes);
  Security.bInheritHandle := true;
  Security.lpSecurityDescriptor := nil;

  if CreatePipe( { var } readableEndOfPipe, { var } writeableEndOfPipe,
    @Security, 0) then
  begin
    Buffer := AllocMem(READ_BUFFER_SIZE + 1);
    try
      FillChar(start, SizeOf(start), #0);
      start.cb := SizeOf(start);

      // Set up members of the STARTUPINFO structure.
      // This structure specifies the STDIN and STDOUT handles for redirection.
      // - Redirect the output and error to the writeable end of our pipe.
      // - We must still supply a valid StdInput handle (because we used STARTF_USESTDHANDLES to swear that all three handles will be valid)
      start.dwFlags := start.dwFlags or STARTF_USESTDHANDLES;
      start.hStdInput := GetStdHandle(STD_INPUT_HANDLE);
      // we're not redirecting stdInput; but we still have to give it a valid handle
      start.hStdOutput := writeableEndOfPipe;
      // we give the writeable end of the pipe to the child process; we read from the readable end
      start.hStdError := writeableEndOfPipe;

      // We can also choose to say that the wShowWindow member contains a value.
      // In our case we want to force the console window to be hidden.
      start.dwFlags := start.dwFlags + STARTF_USESHOWWINDOW;
      start.wShowWindow := SW_HIDE;

      // Don't forget to set up members of the PROCESS_INFORMATION structure.
      // --- ProcessInfo := Default(TProcessInformation);
      FillChar(ProcessInfo, SizeOf(ProcessInfo), 0);

      // WARNING: The unicode version of CreateProcess (CreateProcessW) can modify the command-line "DosApp" string.
      // Therefore "DosApp" cannot be a pointer to read-only memory, or an ACCESS_VIOLATION will occur.
      // We can ensure it's not read-only with the RTL function: UniqueString
      UniqueString( { var } sCmdStr);

      try
        if CreateProcess(nil, PChar(sCmdStr), nil, nil, true,
          NORMAL_PRIORITY_CLASS, nil, nil, start, { var } ProcessInfo) then
        begin
          bDoTerminating := false;

          // Wait for the application to terminate, as it writes it's output to the pipe.
          // WARNING: If the console app outputs more than 2400 bytes (ReadBuffer),
          // it will block on writing to the pipe and *never* close.
          repeat
            iAppRunningFlag := WaitForSingleObject(ProcessInfo.hProcess, 100);

            if iAppRunningFlag = WAIT_TIMEOUT then
              PushOutput(bDoTerminating);

          until bDoTerminating or (iAppRunningFlag <> WAIT_TIMEOUT);

          // reading all in the pipe
          if not bDoTerminating then
            PushOutput(bDoTerminating);
        end;
      finally
        if bDoTerminating then
          TerminateProcess(ProcessInfo.hProcess, 0)
        else
        begin
          CloseHandle(ProcessInfo.hProcess);
          CloseHandle(ProcessInfo.hThread);
        end;

        CloseHandle(readableEndOfPipe);
        CloseHandle(writeableEndOfPipe);
      end;
    finally
      FreeMem(Buffer);
    end;
  end; // if CreatePipe
end;
// ------------------------------------------------------------------------------

end.
