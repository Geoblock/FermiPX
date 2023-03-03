object FormSpace: TFormSpace
  Left = 0
  Top = 0
  Caption = 'Fermi Paradox Solutions'
  ClientHeight = 668
  ClientWidth = 1066
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
    Top = 649
    Width = 1066
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
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 185
    Top = 0
    Width = 743
    Height = 649
    Camera = Camera
    Buffer.BackgroundColor = clTeal
    FieldOfView = 162.481140136718800000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    TabOrder = 1
  end
  object PanelRight: TPanel
    Left = 928
    Top = 0
    Width = 138
    Height = 649
    Align = alRight
    TabOrder = 2
    DesignSize = (
      138
      649)
    object CheckListBox1: TCheckListBox
      Left = 16
      Top = 0
      Width = 104
      Height = 113
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 15
      Items.Strings = (
        '"O"'
        '"A"'
        '"B"'
        '"F"'
        '"G"'
        '"K"'
        '"M"')
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 649
    Align = alLeft
    TabOrder = 3
    object TreeView1: TTreeView
      Left = 1
      Top = 42
      Width = 183
      Height = 606
      Align = alClient
      Indent = 19
      TabOrder = 0
      Items.NodeData = {
        0302000000300000000000000000000000FFFFFFFFFFFFFFFF00000000000000
        0000000000010953006F006C007500740069006F006E0073001E000000000000
        0000000000FFFFFFFFFFFFFFFF0000000000000000000000000100}
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 41
      Align = alTop
      TabOrder = 1
    end
  end
  object GLScene: TGLScene
    Left = 40
    Top = 8
    object GLSkyBox1: TGLSkyBox
      CloudsPlaneOffset = 0.200000002980232200
      CloudsPlaneSize = 32.000000000000000000
    end
    object Camera: TGLCamera
      DepthOfView = 20000.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = dcGalablock
      Position.Coordinates = {0080894400808944008089440000803F}
    end
    object dcGalablock: TGLDummyCube
      ShowAxes = True
      CubeSize = 1000.000000000000000000
      VisibleAtRunTime = True
      object boxPlane: TGLPlane
        Material.BackProperties.Emission.Color = {938E0E3F938C0C3EDCD6D63E0000803F}
        Material.FrontProperties.Emission.Color = {CDCC0C3FEC51B83DEC51B83D0000803F}
        Direction.Coordinates = {000000000000803F0000000000000000}
        Up.Coordinates = {0000000000000000000080BF00000000}
        Height = 1000.000000000000000000
        Width = 1000.000000000000000000
      end
      object circDisk: TGLDisk
        Material.FrontProperties.Emission.Color = {A9A5253FB1A8283EB1A8283E0000803F}
        Direction.Coordinates = {000000000000803F0000000000000000}
        Up.Coordinates = {0000000000000000000080BF00000000}
        Visible = False
        OuterRadius = 866.000000000000000000
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
      object ffGalasphere: TGLFreeForm
        Material.FrontProperties.Diffuse.Color = {EBE0E03EE4DB5B3F9A93133F0000803F}
        Material.PolygonMode = pmLines
      end
      object GLCube1: TGLCube
      end
    end
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000000000000000000040400000803F}
      LightStyle = lsParallel
      Specular.Color = {0000803F0000803F0000803F0000803F}
      SpotCutOff = 180.000000000000000000
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
      object miPath: TMenuItem
        Caption = 'Path...'
        OnClick = miPathClick
      end
    end
    object miHelp: TMenuItem
      Caption = 'Help'
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
