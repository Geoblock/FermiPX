//---------------------------------------------------------------------------

#ifndef fSceneCxH
#define fSceneCxH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Forms3D.hpp>
#include <FMX.Controls3D.hpp>
#include <FMX.Layers3D.hpp>
#include <FMX.Layouts.hpp>
#include <FMX.MaterialSources.hpp>
#include <FMX.Objects3D.hpp>
#include <FMX.Types.hpp>
#include <FMX.Types3D.hpp>
#include <System.Math.Vectors.hpp>
#include <FMX.TreeView.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm3D
{
__published:	// IDE-managed Components
	TCamera *Camera1;
	TLight *Light1;
	TDummy *Dummy1;
	TPlane *Plane1;
	TCube *Cube1;
	TSphere *Sphere1;
	TModel3D *Model3D1;
	TLayout3D *Layout3D1;
	TColorMaterialSource *ColorMaterialSource1;
	TLayout *Layout1;
	TTreeView *TreeView1;
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
