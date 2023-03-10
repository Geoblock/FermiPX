program FermiPDs;

uses
  Vcl.Forms,
  fSpaceDs in 'Sources\Interface\fSpaceDs.pas' {FormSpace},
  fTableDs in 'Sources\Interface\fTableDs.pas' {Form1},
  uRandomAM in 'Sources\Code\uRandomAM.pas',
  fOptionsDs in 'Sources\Interface\fOptionsDs.pas' {frmOptions},
  fAboutDs in 'Sources\Interface\fAboutDs.pas' {frmAbout},
  uExecApps in 'Sources\Code\uExecApps.pas',
  fPathDs in 'Sources\Interface\fPathDs.pas' {frmPath},
  uFindPaths in 'Sources\Code\uFindPaths.pas',
  fSettingDs in 'Sources\Interface\fSettingDs.pas' {frmSettings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSpace, FormSpace);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.Run;
end.
