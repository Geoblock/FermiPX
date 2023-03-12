unit fSettingDs;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Samples.Spin,
  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.Outline,
  Vcl.Samples.DirOutln,
  Vcl.ColorGrd,
  Vcl.Samples.Gauges, Vcl.CheckLst;

type
  TfrmSettings = class(TForm)
    PanelBottom: TPanel;
    ButtonOK: TButton;
    PanelMiddle: TPanel;
    PageControl: TPageControl;
    tsInterface: TTabSheet;
    LabelProgram: TLabel;
    LabelData: TLabel;
    PanelExePath: TPanel;
    cbDataPath: TComboBox;
    ButtonBrowsePathData: TButton;
    CheckBoxLoadProject: TCheckBox;
    CheckBoxSaveProject: TCheckBox;
    tsDisplay: TTabSheet;
    LabelBackground: TLabel;
    LabelMapUnits: TLabel;
    CheckBoxAxes: TCheckBox;
    PanelBackground: TPanel;
    CheckBoxCoordinates: TCheckBox;
    ComboBoxMapUnits: TComboBox;
    cbxTwoSideLighting: TCheckBox;
    tsData: TTabSheet;
    LabelPrecision: TLabel;
    SpinEditPrecision: TSpinEdit;
    PanelScale: TPanel;
    lblScaleX: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    tsMaterial: TTabSheet;
    ListView: TListView;
    ButtonModifyMat: TButton;
    tvSettings: TTreeView;
    PanelTop: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ImageList: TImageList;
    tsGalaxy: TTabSheet;
    tsStars: TTabSheet;
    tsPlanets: TTabSheet;
    LabelDiameter: TLabel;
    Gauge1: TGauge;
    ColorGrid1: TColorGrid;
    SpinEdit1: TSpinEdit;
    DirectoryOutline1: TDirectoryOutline;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    rgLanguage: TRadioGroup;
    Memo1: TMemo;
    chlbStarClasses: TCheckListBox;
    cbSplashStart: TCheckBox;
    procedure tvSettingsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    //
    Node: TTreeNode;
    Nodes: TTreeNodes;
  public
    //
  end;

var
  frmSettings: TfrmSettings;

//================================================
implementation

{$R *.dfm}

procedure TfrmSettings.FormCreate(Sender: TObject);
begin
  // Default classes for terrain planets
	chlbStarClasses.Checked[0] := False;
 	chlbStarClasses.Checked[1] := False;
 	chlbStarClasses.Checked[2] := False;
	chlbStarClasses.Checked[3] := True;
 	chlbStarClasses.Checked[4] := True;
 	chlbStarClasses.Checked[5] := True;
 	chlbStarClasses.Checked[6] := True;
end;

procedure TfrmSettings.FormShow(Sender: TObject);
var
  I: Integer;
begin
//  create new nodes
//  Nodes := TTreeNodes.Create (tvSettings);
//  Node := TTreeNode.Create (Nodes);
//  Node := nil;
  tvSettings.Items[0].Selected := True;
  tvSettings.Items[0].Focused := True;
  for I := 0 to tvSettings.Items.Count - 1 do
  begin
    tvSettings.Items[i].ImageIndex := 0;
    tvSettings.Items[i].SelectedIndex := 1;
  end;
  tvSettingsClick(Sender);
  tvSettings.Items[0].DropHighlighted := True;
  tvSettings.FullExpand;
end;

procedure TfrmSettings.tvSettingsClick(Sender: TObject);
begin
  tvSettings.Items[0].DropHighlighted := False;
  case tvSettings.Selected.Index of
     0: PageControl.ActivePage := tsInterface;
     1: PageControl.ActivePage := tsDisplay;
     2: PageControl.ActivePage := tsData;
     3: PageControl.ActivePage := tsMaterial;
     4: PageControl.ActivePage := tsGalaxy;
     5: PageControl.ActivePage := tsStars;
     6: PageControl.ActivePage := tsPlanets;
  end;
end;

end.
