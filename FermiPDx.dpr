program FermiPDx;

uses
  System.StartUpCopy,
  FMX.Forms,
  fSpaceDx in 'Sources\Interface\fSpaceDx.pas' {FormFermi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormFermi, FormFermi);
  Application.Run;
end.
