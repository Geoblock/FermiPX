program FermiParadoxDs;

uses
  Vcl.Forms,
  fSceneDs in 'Sources\Interface\fSceneDs.pas' {FormScene},
  fTableDs in 'Sources\Interface\fTableDs.pas' {Form1},
  uRandomAM in 'Sources\Code\uRandomAM.pas',
  fOptionsDs in 'Sources\Interface\fOptionsDs.pas' {frmOptions},
  fAboutDs in 'Sources\Interface\fAboutDs.pas' {frmAbout},
  uExecApps in 'Sources\Code\uExecApps.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormScene, FormScene);
  Application.Run;
end.
