unit fSpaceDx;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms3D,
  FMX.Types3D,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  System.Math.Vectors,
  FMX.MaterialSources,
  FMX.Layers3D,
  FMX.Objects3D,
  FMX.Controls3D;

type
  TFormFermi = class(TForm3D)
    Camera1: TCamera;
    Light1: TLight;
    Dummy1: TDummy;
    ProxyObject1: TProxyObject;
    Plane1: TPlane;
    Disk1: TDisk;
    Mesh1: TMesh;
    Sphere1: TSphere;
    Cylinder1: TCylinder;
    Cone1: TCone;
    Text3D1: TText3D;
    Path3D1: TPath3D;
    Model3D1: TModel3D;
    Rectangle3D1: TRectangle3D;
    Ellipse3D1: TEllipse3D;
    Layout3D1: TLayout3D;
    ColorMaterialSource1: TColorMaterialSource;
    TextureMaterialSource1: TTextureMaterialSource;
    LightMaterialSource1: TLightMaterialSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFermi: TFormFermi;

implementation

{$R *.fmx}

end.
