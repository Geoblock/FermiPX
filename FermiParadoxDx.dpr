program FermiParadoxDx;

uses
  System.StartUpCopy,
  FMX.Forms,
  fSceneDx in 'Sources\Interface\fSceneDx.pas' {FormFermi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormFermi, FormFermi);
  Application.Run;
end.
