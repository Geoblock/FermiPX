object frmPath: TfrmPath
  Left = 0
  Top = 0
  AutoSize = True
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
    object LabelA: TLabel
      Left = 88
      Top = 9
      Width = 31
      Height = 15
      Caption = 'Star A'
    end
    object LabelB: TLabel
      Left = 363
      Top = 9
      Width = 30
      Height = 15
      Caption = 'Star B'
    end
    object LabelDistance: TLabel
      Left = 94
      Top = 168
      Width = 60
      Height = 15
      Caption = 'Distance, ly'
    end
    object LabelVelocity: TLabel
      Left = 94
      Top = 216
      Width = 86
      Height = 15
      Caption = 'Velocity, km/sec'
    end
    object LabelFlightTime: TLabel
      Left = 94
      Top = 262
      Width = 90
      Height = 15
      Caption = 'Flight time, years'
    end
    object SearchBoxA: TSearchBox
      Left = 56
      Top = 30
      Width = 145
      Height = 23
      Alignment = taCenter
      AutoSize = False
      TabOrder = 0
      Text = 'Sol'
    end
    object trbVelocity: TTrackBar
      Left = 186
      Top = 211
      Width = 167
      Height = 29
      Max = 299792
      Min = 100
      Position = 30000
      TabOrder = 1
      OnChange = trbVelocityChange
    end
    object stFlightTime: TStaticText
      Left = 193
      Top = 262
      Width = 150
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '100000'
      TabOrder = 2
    end
    object SearchBoxB: TSearchBox
      Left = 312
      Top = 30
      Width = 137
      Height = 23
      Alignment = taCenter
      AutoSize = False
      TabOrder = 3
      Text = 'TOI-700'
    end
    object EditDistance: TEdit
      Left = 193
      Top = 165
      Width = 150
      Height = 23
      Alignment = taCenter
      TabOrder = 4
      Text = '101.4'
    end
    object stTrackBar: TStaticText
      Left = 359
      Top = 216
      Width = 49
      Height = 19
      Caption = 'TrackBar'
      TabOrder = 5
    end
    object gbFindPath: TGroupBox
      Left = 72
      Top = 73
      Width = 359
      Height = 72
      Caption = 'Find Path'
      TabOrder = 6
      object chbOnTetramesh: TCheckBox
        Left = 102
        Top = 21
        Width = 211
        Height = 17
        Caption = 'On Delaunay Tetramesh'
        TabOrder = 0
      end
      object chbAvoidHazards: TCheckBox
        Left = 102
        Top = 44
        Width = 209
        Height = 17
        Caption = 'Avoiding Voronet Hazard Cells '
        TabOrder = 1
      end
    end
    object Button1: TButton
      Left = 400
      Top = 258
      Width = 75
      Height = 25
      Caption = 'Find'
      ModalResult = 1
      TabOrder = 7
    end
  end
end
