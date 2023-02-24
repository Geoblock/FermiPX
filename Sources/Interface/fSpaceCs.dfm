object FormSpace: TFormSpace
  Left = 0
  Top = 0
  Caption = 'Fermi Paradox Simulator'
  ClientHeight = 609
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 590
    Width = 980
    Height = 19
    Panels = <
      item
        Text = 'Total points:'
        Width = 250
      end>
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 201
    Top = 0
    Width = 641
    Height = 590
    Camera = Camera
    Buffer.BackgroundColor = clBlack
    FieldOfView = 103.129730224609400000
    PenAsTouch = False
    Align = alClient
    TabOrder = 1
  end
  object PanelRight: TPanel
    Left = 842
    Top = 0
    Width = 138
    Height = 590
    Align = alRight
    TabOrder = 2
    object clbMethods: TCheckListBox
      Left = 6
      Top = 288
      Width = 121
      Height = 65
      ItemHeight = 13
      Items.Strings = (
        'Stars'
        'Delaunay'
        'Voronoi'
        'Blocks')
      TabOrder = 0
      OnClickCheck = clbMethodsClickCheck
    end
    object ClassGroup: TRadioGroup
      Left = 6
      Top = 7
      Width = 120
      Height = 218
      Caption = 'Stars'
      ItemIndex = 0
      Items.Strings = (
        'All'
        'O'
        'B'
        'A'
        'F'
        'G'
        'K'
        'M')
      TabOrder = 1
      OnClick = ClassGroupClick
    end
    object Panel2: TPanel
      Tag = 1
      Left = 75
      Top = 50
      Width = 41
      Height = 19
      Color = clHotLight
      ParentBackground = False
      TabOrder = 2
      OnClick = Panel2Click
    end
    object Panel1: TPanel
      Tag = 2
      Left = 75
      Top = 75
      Width = 41
      Height = 19
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 3
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Tag = 3
      Left = 75
      Top = 100
      Width = 41
      Height = 19
      Color = clBtnHighlight
      ParentBackground = False
      TabOrder = 4
      OnClick = Panel2Click
    end
    object Panel4: TPanel
      Tag = 4
      Left = 75
      Top = 125
      Width = 41
      Height = 19
      Color = clCream
      ParentBackground = False
      TabOrder = 5
      OnClick = Panel2Click
    end
    object Panel5: TPanel
      Tag = 5
      Left = 75
      Top = 150
      Width = 41
      Height = 19
      Color = clYellow
      ParentBackground = False
      TabOrder = 6
      OnClick = Panel2Click
    end
    object Panel6: TPanel
      Tag = 6
      Left = 75
      Top = 175
      Width = 41
      Height = 19
      Color = 35071
      ParentBackground = False
      TabOrder = 7
      OnClick = Panel2Click
    end
    object Panel7: TPanel
      Tag = 7
      Left = 75
      Top = 200
      Width = 41
      Height = 19
      Color = 17919
      ParentBackground = False
      TabOrder = 8
      OnClick = Panel2Click
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 590
    Align = alLeft
    TabOrder = 3
    object TreeView: TTreeView
      Left = 1
      Top = 42
      Width = 199
      Height = 547
      Align = alClient
      Indent = 19
      TabOrder = 0
      Items.NodeData = {
        0302000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
        00030000000105530074006100720073002C0000000000000000000000FFFFFF
        FFFFFFFFFF000000000000000000000000010743006100740061006C006F0067
        003C0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
        00010F500072006F006A0065006300740069006F006E00200044006900730063
        002A0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
        000106520061006E0064006F006D00280000000000000000000000FFFFFFFFFF
        FFFFFF00000000000000000300000001054D006F00640065006C002E00000000
        00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000108440065
        006C00610075006E00610079002C0000000000000000000000FFFFFFFFFFFFFF
        FF000000000000000000000000010756006F0072006F006E006F006900340000
        000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000010B53
        00740061007200200042006C006F0063006B007300}
    end
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 199
      Height = 41
      Align = alTop
      TabOrder = 1
    end
  end
  object GLScene: TGLScene
    Left = 48
    Top = 16
    object Camera: TGLCamera
      DepthOfView = 500000.000000000000000000
      FocalLength = 234.108795166015600000
      SceneScale = 0.500000000000000000
      TargetObject = dcGalaBlock
      Position.Coordinates = {0000964400009644000096440000803F}
    end
    object dcGalaBlock: TGLDummyCube
      ShowAxes = True
      Pickable = False
      CubeSize = 1000.000000000000000000
      VisibleAtRunTime = True
      object GalaSphere: TGLSphere
        Material.FrontProperties.Ambient.Color = {BEBEBE3E999F1F3F999F1F3F0000803F}
        Material.FrontProperties.Diffuse.Color = {B1A8A83EB1A8A83EB1A8A83E0000803F}
        Material.PolygonMode = pmLines
        Radius = 866.000000000000000000
        Slices = 62
        Stacks = 62
      end
      object GLLines1: TGLLines
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
        Nodes = <>
      end
      object GLTetrahedron1: TGLTetrahedron
        Material.Texture.BorderColor.Color = {9A93133FE4DB5B3FEBE0E03E0000803F}
        Direction.Coordinates = {000000000000803F0000000000000000}
        Position.Coordinates = {0000803F0000803F0000803F0000803F}
        Up.Coordinates = {8B8F67BF000000004A51DABE00000000}
        Visible = False
      end
      object DelStruct: TGLFreeForm
        Material.FrontProperties.Diffuse.Color = {EBE0E03EE4DB5B3F9A93133F0000803F}
      end
      object GLLines2: TGLLines
        Visible = False
        Nodes = <>
        Options = []
      end
      object dc100ly: TGLDummyCube
        CubeSize = 1.000000000000000000
      end
    end
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000964400000000000000000000803F}
      SpotCutOff = 180.000000000000000000
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 56
    Top = 132
  end
  object MainMenu: TMainMenu
    Left = 336
    Top = 16
    object Start1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open...'
        OnClick = Start1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object miTable: TMenuItem
      Caption = 'Table'
      OnClick = miTableClick
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Contents1: TMenuItem
        Caption = '&Contents'
      end
      object About1: TMenuItem
        Caption = '&About...'
      end
    end
  end
  object OpenTextFileDialog: TOpenTextFileDialog
    Left = 424
    Top = 214
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 600
    Top = 16
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 600
    Top = 80
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 546
    Top = 105
  end
  object GLSimpleNavigation: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = 'Fermi Paradox Simulator'
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
    Left = 192
    Top = 16
  end
  object GLCadencer: TGLCadencer
    Scene = GLScene
    Left = 72
    Top = 264
  end
end
