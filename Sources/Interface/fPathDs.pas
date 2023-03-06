unit fPathDs;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.WinXCtrls;

type
  TfrmPath = class(TForm)
    PanelTitle: TPanel;
    LabelA: TLabel;
    LabelB: TLabel;
    LabelDistance: TLabel;
    LabelVelocity: TLabel;
    SearchBoxA: TSearchBox;
    trbVelocity: TTrackBar;
    LabelFlightTime: TLabel;
    stFlightTime: TStaticText;
    SearchBoxB: TSearchBox;
    EditDistance: TEdit;
    stTrackBar: TStaticText;
    gbFindPath: TGroupBox;
    chbOnTetramesh: TCheckBox;
    chbAvoidHazards: TCheckBox;
    Button1: TButton;
    procedure trbVelocityChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmPath: TfrmPath;

implementation

{$R *.dfm}

procedure TfrmPath.FormCreate(Sender: TObject);
begin
   trbVelocityChange(Self);
end;

//-------------------------------------------------------

procedure TfrmPath.trbVelocityChange(Sender: TObject);
var
  DistanceInYears: Single;
  Ratio, FlightTime: Extended;
begin
  stTrackBar.Caption := IntToStr(trbVelocity.Position);
  DistanceInYears := StrToFloat(EditDistance.Text);
  Ratio := trbVelocity.Position/299792;
  FlightTime := DistanceInYears/Ratio;

  stFlightTime.Caption := FloatToStrF(FlightTime, ffFixed, 20, 1);
end;

end.
