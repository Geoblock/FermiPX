unit fOptionsDs;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmOptions = class(TForm)
    pgOptions: TPageControl;
    tsInterface: TTabSheet;
    tsStars: TTabSheet;
    tsScenario: TTabSheet;
    tvOptions: TTreeView;
    tsGalablocks: TTabSheet;
    tsCoordinates: TTabSheet;
    tsGeneral: TTabSheet;
    rgUnits: TRadioGroup;
  private
  public
  end;

var
  frmOptions: TfrmOptions;

implementation

{$R *.dfm}

end.
