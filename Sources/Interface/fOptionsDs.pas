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
    tsPath: TTabSheet;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmOptions: TfrmOptions;

implementation

uses
  fPathDs,
  uFindPaths;

{$R *.dfm}

procedure TfrmOptions.FormCreate(Sender: TObject);
begin
  frmPath := TfrmPath.Create(tsPath);
  with frmPath do
  begin
    Name := 'FormPath';
    Top := 10;
    Left := 10;
    Parent := tsPath;
    Align := alClient;
    BorderStyle := bsNone;
    BorderIcons := [];
    Show;
  end;
  if frmPath.chbOnTetramesh.Checked then
    FindPathOnTetraMesh(frmPath.SearchBoxA.Text, frmPath.SearchBoxB.Text);
end;


end.
