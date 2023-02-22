unit fSpaceDs;

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
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.ExtDlgs,
  Vcl.Menus,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.CheckLst,
  Vcl.ComCtrls,

  GLS.Cadencer,
  GLS.Scene,
  GLS.VectorFileObjects,
  GLS.GeomObjects,
  GLS.Objects,
  GLS.Coordinates,
  GLS.BaseClasses,
  GLS.SceneViewer,
  GLS.VectorTypes,
  GLS.Color,
  GLS.Graph,
  GLS.SimpleNavigation,
  FireDAC.Phys.SQLiteWrapper.Stat,

  fOptionsDs,
  fAboutDs;


type

//---------------------------------------------------------------------------

DelaunayBase = record
	color: TGLFloat; //float *color;
	nodeCount: Integer;
	node: PDouble;   //double **node;
	edgeCount: Integer;
	edge: PInteger;  // int **edge;
	//int faceCount;
	//int **face;
	//int tetraCount;
  //int **tetra;
end;

VoronoiBase = record
	color: TGLFloat; //float *color;
	nodeCount: Integer;
	node: PDouble;   //double **node;
	edgeCount: Integer;
	edge: PInteger;  // int **edge;
	//int faceCount;
	//int **face;
end;

type
  TFormSpace = class(TForm)
    StatusBar1: TStatusBar;
    GLSceneViewer1: TGLSceneViewer;
    PanelRight: TPanel;
    CheckListBox1: TCheckListBox;
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    GLDummyCube1: TGLDummyCube;
    GLLines1: TGLLines;
    GLPoints1: TGLPoints;
    GLPolygon1: TGLPolygon;
    GLTetrahedron1: TGLTetrahedron;
    GLFreeForm1: TGLFreeForm;
    GLLightSource1: TGLLightSource;
    GLCadencer1: TGLCadencer;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    miFile: TMenuItem;
    miModeling: TMenuItem;
    miPoints: TMenuItem;
    miDelaunay: TMenuItem;
    miVoronoi: TMenuItem;
    miData: TMenuItem;
    OpenTextFileDialog1: TOpenTextFileDialog;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    GLSimpleNavigation1: TGLSimpleNavigation;
    GLXYZGrid1: TGLXYZGrid;
    miTools: TMenuItem;
    miHelp: TMenuItem;
    miAbout: TMenuItem;
    miOptions: TMenuItem;
    PanelLeft: TPanel;
    TreeView1: TTreeView;
    miOpen: TMenuItem;
    N2: TMenuItem;
    miExit: TMenuItem;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure GLSceneViewer1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure miOptionsClick(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
  private
  public
  end;

var
  FormSpace: TFormSpace;
  mx, my : Integer; // vars for saving position

  // All Delaunay records
  O_Delaunay,
  B_Delaunay,
  A_Delaunay,
  F_Delaunay,
  G_Delaunay,
  K_Delaunay,
  M_Delaunay: DelaunayBase;

  // All Voronoi records
  O_Voronoi,
  B_Voronoi,
  A_Voronoi,
  F_Voronoi,
  G_Voronoi,
  K_Voronoi,
  M_Voronoi: VoronoiBase;

const
// Colors for each star class
///lightblue: TGLColor = [0, 0.8, 1];  // float lightblue[3] = {0, 0.8, 1};

(*
float skyblue[3] = {0.803, 1, 1};
float white[3] = {1, 1, 1};
float lightyellow[3] = {0.996, 1, 0.6};
float yellow[3] = {1, 1, 0.003};
float orange[3] = {1, 0.4, 0};
float red[3] = {0.992, 0, 0.003};
*)
  prefix: String = '.\..\..\DATA\';

implementation

{$R *.dfm}

procedure TFormSpace.FormCreate(Sender: TObject);
begin
	miPoints.Checked := True;
 //	Form1.Caption := 'HYG 3D | Points mode';

	miModeling.Enabled := False;
	miData.Enabled := False;

	CheckListBox1.Checked[0] := True;
end;

procedure TFormSpace.GLSceneViewer1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	 mx := X; my := Y;
end;

procedure TFormSpace.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormSpace.miOptionsClick(Sender: TObject);
begin
  with TfrmOptions.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TFormSpace.miAboutClick(Sender: TObject);
begin
  with TfrmAbout.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

end.
