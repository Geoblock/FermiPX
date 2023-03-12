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
    TreeView: TTreeView;
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
    procedure TreeViewClick(Sender: TObject);
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
//  Nodes := TTreeNodes.Create (TreeView);
//  Node := TTreeNode.Create (Nodes);
//  Node := nil;
  TreeView.Items[0].Selected := True;
  TreeView.Items[0].Focused := True;
  for I := 0 to TreeView.Items.Count - 1 do
  begin
    TreeView.Items[i].ImageIndex := 0;
    TreeView.Items[i].SelectedIndex := 1;
  end;
  TreeViewClick(Sender);
  TreeView.Items[0].DropHighlighted := True;
  TreeView.FullExpand;
end;

procedure TfrmSettings.TreeViewClick(Sender: TObject);
begin
  TreeView.Items[0].DropHighlighted := False;
  if TreeView.Items[0].Selected then
  begin
//  if (TreeView.Selected.Text = 'General') then  or use case
//  if (TreeView.Selected.ExpandedImageIndex = 1) then
    PageControl.ActivePage := tsInterface
  end
  else if TreeView.Items[1].Selected then
//  else if (TreeView.Selected.ExpandedImageIndex = 2) then
    PageControl.ActivePage := tsDisplay
  else if TreeView.Items[2].Selected then
//  else if (TreeView.Selected.ExpandedImageIndex = 3) then
    PageControl.ActivePage := tsData
  else if TreeView.Items[3].Selected then
//  else if (TreeView.Selected.ExpandedImageIndex = 4) then
    PageControl.ActivePage := tsMaterial
    else if TreeView.Items[4].Selected then
        PageControl.ActivePage := tsGalaxy
    else if TreeView.Items[5].Selected then
        PageControl.ActivePage := tsStars
    else if TreeView.Items[6].Selected then
        PageControl.ActivePage := tsPlanets;
end;

end.
