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
    chbRoute: TCheckBox;
    CheckBox2: TCheckBox;
    LabelA: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SearchBoxA: TSearchBox;
    trbVelocity: TTrackBar;
    LabelLightYears: TLabel;
    LabelC: TLabel;
    LabelFlightTime: TLabel;
    LabelYears: TLabel;
    stFlightTime: TStaticText;
    SearchBoxB: TSearchBox;
    EditDistance: TEdit;
    procedure trbVelocityChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
  DistanceInYears, DistanceInSeconds, Velocity: Single;
  Distance: Extended;
begin
  DistanceInYears := StrToFloat(EditDistance.Text);
  Velocity := trbVelocity.Position;
  DistanceInSeconds := DistanceInYears*365*86400;
  Distance := DistanceInSeconds/Velocity;

  stFlightTime.Caption := FloatToStrF(Distance, ffFixed, 20, 1);

end;

end.
