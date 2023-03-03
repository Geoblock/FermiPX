object frmPath: TfrmPath
  Left = 0
  Top = 0
  Caption = 'Path'
  ClientHeight = 329
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object PanelTitle: TPanel
    Left = 0
    Top = 0
    Width = 496
    Height = 329
    Align = alClient
    TabOrder = 0
    ExplicitTop = -8
    ExplicitWidth = 511
    object LabelA: TLabel
      Left = 88
      Top = 9
      Width = 31
      Height = 15
      Caption = 'Star A'
    end
    object Label1: TLabel
      Left = 363
      Top = 9
      Width = 30
      Height = 15
      Caption = 'Star B'
    end
    object Label2: TLabel
      Left = 88
      Top = 168
      Width = 45
      Height = 15
      Caption = 'Distance'
    end
    object Label3: TLabel
      Left = 89
      Top = 216
      Width = 41
      Height = 15
      Caption = 'Velocity'
    end
    object LabelLightYears: TLabel
      Left = 334
      Top = 168
      Width = 76
      Height = 15
      AutoSize = False
      Caption = 'Light Years'
    end
    object LabelC: TLabel
      Left = 334
      Top = 216
      Width = 28
      Height = 24
      AutoSize = False
      Caption = 'C'
    end
    object LabelFlightTime: TLabel
      Left = 88
      Top = 262
      Width = 59
      Height = 15
      Caption = 'Flight Time'
    end
    object LabelYears: TLabel
      Left = 334
      Top = 266
      Width = 27
      Height = 15
      Caption = 'Years'
    end
    object chbRoute: TCheckBox
      Left = 168
      Top = 81
      Width = 185
      Height = 17
      Caption = 'Route on Delaunay Tetramesh'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 168
      Top = 113
      Width = 177
      Height = 17
      Caption = 'Avoid Hazard Voronoi Cells'
      TabOrder = 1
    end
    object SearchBoxA: TSearchBox
      Left = 56
      Top = 30
      Width = 145
      Height = 23
      Alignment = taCenter
      AutoSize = False
      TabOrder = 2
      Text = 'Sol'
    end
    object trbVelocity: TTrackBar
      Left = 161
      Top = 211
      Width = 167
      Height = 29
      Max = 299792
      Min = 1
      Position = 30000
      TabOrder = 3
      OnChange = trbVelocityChange
    end
    object stFlightTime: TStaticText
      Left = 168
      Top = 262
      Width = 150
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '100000'
      TabOrder = 4
    end
    object SearchBoxB: TSearchBox
      Left = 312
      Top = 30
      Width = 137
      Height = 23
      Alignment = taCenter
      AutoSize = False
      TabOrder = 5
      Text = 'TOI-700'
    end
    object EditDistance: TEdit
      Left = 168
      Top = 165
      Width = 150
      Height = 23
      Alignment = taCenter
      TabOrder = 6
      Text = '101.4'
    end
  end
end
