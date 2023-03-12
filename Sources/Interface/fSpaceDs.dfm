object FormSpace: TFormSpace
  Left = 0
  Top = 0
  Caption = 'Fermi Paradox Simulator'
  ClientHeight = 616
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 597
    Width = 1076
    Height = 19
    Panels = <
      item
        Text = 'Total points:'
        Width = 250
      end
      item
        Text = 'FPS:'
        Width = 50
      end>
    ExplicitTop = 649
    ExplicitWidth = 1066
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 185
    Top = 33
    Width = 729
    Height = 564
    Camera = Camera
    Buffer.BackgroundColor = clBlack
    FieldOfView = 159.891326904296900000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    TabOrder = 1
  end
  object PanelRight: TPanel
    Left = 914
    Top = 33
    Width = 162
    Height = 564
    Align = alRight
    TabOrder = 2
    ExplicitLeft = 904
    ExplicitTop = 0
    ExplicitHeight = 649
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 33
    Width = 185
    Height = 564
    Align = alLeft
    TabOrder = 3
    ExplicitTop = 0
    ExplicitHeight = 649
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 41
      Align = alTop
      TabOrder = 0
    end
    object PanelBottom: TPanel
      Left = 1
      Top = 522
      Width = 183
      Height = 41
      Align = alBottom
      Caption = 'PanelBottom'
      TabOrder = 1
      ExplicitLeft = -6
      ExplicitTop = 511
      ExplicitWidth = 185
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 42
      Width = 183
      Height = 480
      ActivePage = tsDatasets
      Align = alClient
      TabOrder = 2
      ExplicitHeight = 359
      object tsDatasets: TTabSheet
        Caption = 'Datasets'
        object tvDatasets: TTreeView
          Left = 0
          Top = 0
          Width = 175
          Height = 452
          Align = alClient
          Indent = 19
          TabOrder = 0
          Items.NodeData = {
            0305000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0000000000010553007400610072007300300000000000000000000000FFFFFF
            FFFFFFFFFF0000000000000000000000000109540065007400720061006D0065
            00730068002C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0000000000010756006F0072006F006E00650074002E00000000000000000000
            00FFFFFFFFFFFFFFFF0000000000000000000000000108470061006C00610067
            007200690064002E0000000000000000000000FFFFFFFFFFFFFFFF0000000000
            00000000000000010846006100690072007700610079007300}
          ExplicitLeft = -8
          ExplicitTop = 239
          ExplicitWidth = 183
          ExplicitHeight = 92
        end
      end
      object tsModeling: TTabSheet
        Caption = 'Modeling'
        ImageIndex = 1
        object tvModeling: TTreeView
          Left = 0
          Top = 0
          Width = 175
          Height = 452
          Align = alClient
          Indent = 19
          TabOrder = 0
          Items.NodeData = {
            0305000000300000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            00000000000109530065006C0065006300740069006F006E002C000000000000
            0000000000FFFFFFFFFFFFFFFF00000000000000000000000001074D00650073
            00680069006E0067002E0000000000000000000000FFFFFFFFFFFFFFFF000000
            00000000000300000001084700720069006400640069006E0067003000000000
            00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000109410076
            00610072006100670069006E006700360000000000000000000000FFFFFFFFFF
            FFFFFF000000000000000000000000010C43006C006F00730065007300740020
            0073007400610072003C0000000000000000000000FFFFFFFFFFFFFFFF000000
            000000000000000000010F4C0069006E00650061007200200069006E00200074
            006500740072006100340000000000000000000000FFFFFFFFFFFFFFFF000000
            000000000000000000010B5000610074006800660069006E00640069006E0067
            001E0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
            000100}
          ExplicitLeft = -8
          ExplicitTop = 239
          ExplicitWidth = 183
          ExplicitHeight = 92
        end
      end
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 1076
    Height = 33
    Align = alTop
    TabOrder = 4
    object ToolBar1: TToolBar
      Left = 17
      Top = 2
      Width = 304
      Height = 22
      Caption = 'ToolBar1'
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Caption = 'ToolButton2'
        ImageIndex = 1
      end
      object ToolButton3: TToolButton
        Left = 46
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 2
      end
    end
  end
  object GLScene: TGLScene
    Left = 234
    Top = 90
    object LightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {00401C4500401C4500409CC50000803F}
      Specular.Color = {0000803F0000803F0000803F0000803F}
      SpotCutOff = 180.000000000000000000
    end
    object SkyBox: TGLSkyBox
      CloudsPlaneOffset = 0.200000002980232200
      CloudsPlaneSize = 32.000000000000000000
    end
    object Camera: TGLCamera
      DepthOfView = 20000.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = dcGalablock
      Position.Coordinates = {0080894400808944008089440000803F}
      object LightSource2: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        SpotCutOff = 180.000000000000000000
      end
    end
    object dcGalablock: TGLDummyCube
      CubeSize = 1000.000000000000000000
      VisibleAtRunTime = True
      object boxPlane: TGLPlane
        Material.BackProperties.Emission.Color = {938E0E3F938C0C3EDCD6D63E0000803F}
        Material.FrontProperties.Emission.Color = {CDCC0C3FEC51B83DEC51B83D0000803F}
        Direction.Coordinates = {000000000000803F0000000000000000}
        Up.Coordinates = {0000000000000000000080BF00000000}
        Visible = False
        Height = 1000.000000000000000000
        Width = 1000.000000000000000000
      end
      object circDisk: TGLDisk
        Material.FrontProperties.Emission.Color = {A9A5253FB1A8283EB1A8283E0000803F}
        Direction.Coordinates = {000000000000803F0000000000000000}
        Up.Coordinates = {0000000000000000000080BF00000000}
        Visible = False
        InnerRadius = 200.000000000000000000
        OuterRadius = 566.000000000000000000
        Slices = 64
        SweepAngle = 360.000000000000000000
      end
      object circSphere: TGLSphere
        Material.FrontProperties.Emission.Color = {0000803FF8FEFE3E000000000000803F}
        Material.PolygonMode = pmLines
        Visible = False
        Radius = 866.000000000000000000
        Slices = 64
        Stacks = 64
      end
      object xyzGrid: TGLXYZGrid
        Visible = False
        XSamplingScale.Min = -500.000000000000000000
        XSamplingScale.Max = 500.000000000000000000
        XSamplingScale.Origin = -500.000000000000000000
        XSamplingScale.Step = 100.000000000000000000
        YSamplingScale.Min = -500.000000000000000000
        YSamplingScale.Max = 500.000000000000000000
        YSamplingScale.Origin = -500.000000000000000000
        YSamplingScale.Step = 100.000000000000000000
        ZSamplingScale.Min = -500.000000000000000000
        ZSamplingScale.Max = 500.000000000000000000
        ZSamplingScale.Origin = -500.000000000000000000
        ZSamplingScale.Step = 100.000000000000000000
        Parts = [gpX, gpY, gpZ]
      end
      object GLLines1: TGLLines
        Up.Coordinates = {0000803F000000000000008000000000}
        Visible = False
        NodeColor.Color = {0000803F0000803F0000803F0000803F}
        Nodes = <>
        Options = []
      end
      object GLPoints1: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
      end
      object GLPolygon1: TGLPolygon
        Visible = False
        Nodes = <>
      end
      object ffSolSphere: TGLFreeForm
        Material.FrontProperties.Diffuse.Color = {EBE0E03EE4DB5B3F9A93133F0000803F}
        Material.PolygonMode = pmLines
      end
      object SolCube: TGLCube
        Material.PolygonMode = pmLines
        Visible = False
        CubeSize = {00007A4400007A4400007A44}
      end
      object Torus: TGLTorus
        Visible = False
        MajorRadius = 400.000000000000000000
        MinorRadius = 100.000000000000000000
        StopAngle = 360.000000000000000000
        Parts = [toSides, toStartDisk, toStopDisk]
      end
    end
    object HeightField: TGLHeightField
      Direction.Coordinates = {0044F4970000803F2EBD3BB300000000}
      Up.Coordinates = {0000803F583DAF262EBD3B3300000000}
      XSamplingScale.Min = -500.000000000000000000
      XSamplingScale.Max = 500.000000000000000000
      XSamplingScale.Step = 100.000000000000000000
      YSamplingScale.Min = -500.000000000000000000
      YSamplingScale.Max = 500.000000000000000000
      YSamplingScale.Step = 100.000000000000000000
      object YZGrid: TGLXYZGrid
        LineColor.Color = {00000000F8FEFE3E0000803F0000803F}
        XSamplingScale.Min = -500.000000000000000000
        XSamplingScale.Max = 500.000000000000000000
        XSamplingScale.Origin = -500.000000000000000000
        XSamplingScale.Step = 100.000000000000000000
        YSamplingScale.Min = -500.000000000000000000
        YSamplingScale.Max = 500.000000000000000000
        YSamplingScale.Origin = -500.000000000000000000
        YSamplingScale.Step = 100.000000000000000000
        ZSamplingScale.Min = -500.000000000000000000
        ZSamplingScale.Max = 500.000000000000000000
        ZSamplingScale.Origin = -500.000000000000000000
        ZSamplingScale.Step = 100.000000000000000000
        Parts = [gpY, gpZ]
      end
      object XZGrid: TGLXYZGrid
        LineColor.Color = {00000000F8FEFE3E0000803F0000803F}
        XSamplingScale.Min = -500.000000000000000000
        XSamplingScale.Max = 500.000000000000000000
        XSamplingScale.Origin = -500.000000000000000000
        XSamplingScale.Step = 100.000000000000000000
        YSamplingScale.Min = -500.000000000000000000
        YSamplingScale.Max = 500.000000000000000000
        YSamplingScale.Origin = -500.000000000000000000
        YSamplingScale.Step = 100.000000000000000000
        ZSamplingScale.Min = -500.000000000000000000
        ZSamplingScale.Max = 500.000000000000000000
        ZSamplingScale.Origin = -500.000000000000000000
        ZSamplingScale.Step = 100.000000000000000000
        Parts = [gpX, gpZ]
      end
      object XYGrid: TGLXYZGrid
        LineColor.Color = {00000000F8FEFE3E0000803F0000803F}
        XSamplingScale.Min = -500.000000000000000000
        XSamplingScale.Max = 500.000000000000000000
        XSamplingScale.Origin = -500.000000000000000000
        XSamplingScale.Step = 100.000000000000000000
        YSamplingScale.Min = -500.000000000000000000
        YSamplingScale.Max = 500.000000000000000000
        YSamplingScale.Origin = -500.000000000000000000
        YSamplingScale.Step = 100.000000000000000000
        ZSamplingScale.Min = -500.000000000000000000
        ZSamplingScale.Max = 500.000000000000000000
        ZSamplingScale.Origin = -500.000000000000000000
        ZSamplingScale.Step = 100.000000000000000000
      end
    end
  end
  object GLCadencer: TGLCadencer
    Scene = GLScene
    OnProgress = GLCadencerProgress
    Left = 40
    Top = 112
  end
  object Timer1: TTimer
    Left = 368
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 104
    object miFile: TMenuItem
      Caption = 'File'
      object miOpen: TMenuItem
        Caption = 'Open'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = 'Exit'
        OnClick = miExitClick
      end
    end
    object miModeling: TMenuItem
      Caption = 'Modeling'
      object miPoints: TMenuItem
        Caption = 'Points'
        RadioItem = True
      end
      object miDelaunay: TMenuItem
        Caption = 'Delaunay'
        RadioItem = True
      end
      object miVoronoi: TMenuItem
        Caption = 'Voronoi'
        RadioItem = True
      end
    end
    object miData: TMenuItem
      Caption = 'Data'
    end
    object miTools: TMenuItem
      Caption = 'Tools'
      object miOptions: TMenuItem
        Caption = 'Options...'
        OnClick = miOptionsClick
      end
      object miSettings: TMenuItem
        Caption = 'Settings...'
        OnClick = miSettingsClick
      end
    end
    object miHelp: TMenuItem
      Caption = 'Help'
      object Content1: TMenuItem
        Caption = 'Content...'
      end
      object miOpenGL: TMenuItem
        Caption = 'OpenGL Info...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miAbout: TMenuItem
        Caption = 'About...'
        OnClick = miAboutClick
      end
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 504
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\dgoni\Documents\Embarcadero\Studio\STARS_DB\DA' +
        'TA\A_Delaunay.sqlite'
      'DriverID=SQLite')
    Left = 680
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 512
    Top = 104
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 680
    Top = 8
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = 'Fermi Paradox Simulator - %FPS'
    KeyCombinations = <
      item
        ShiftState = [ssLeft, ssRight]
        Action = snaZoom
      end
      item
        ShiftState = [ssLeft]
        Action = snaMoveAroundTarget
      end
      item
        ShiftState = [ssRight]
        Action = snaMoveAroundTarget
      end>
    Left = 184
    Top = 8
  end
end
