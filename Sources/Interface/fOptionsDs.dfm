object frmOptions: TfrmOptions
  Left = 0
  Top = 0
  Caption = 'Options'
  ClientHeight = 344
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pgOptions: TPageControl
    Left = 145
    Top = 0
    Width = 553
    Height = 344
    ActivePage = tsCoordinates
    Align = alClient
    TabOrder = 0
    object tsScenario: TTabSheet
      Caption = 'Scenario'
      ImageIndex = 2
      TabVisible = False
    end
    object tsGeneral: TTabSheet
      Tag = 1
      Caption = 'General'
      ImageIndex = 5
      TabVisible = False
      object rgUnits: TRadioGroup
        Left = 21
        Top = 24
        Width = 98
        Height = 65
        Caption = 'Units'
        ItemIndex = 0
        Items.Strings = (
          'Light Years'
          'Parsecs')
        TabOrder = 0
      end
    end
    object tsCoordinates: TTabSheet
      Caption = 'Coordinates'
      ImageIndex = 4
      TabVisible = False
    end
    object tsPath: TTabSheet
      Tag = 2
      Caption = 'Path'
      ImageIndex = 6
      TabVisible = False
    end
  end
  object tvOptions: TTreeView
    Left = 0
    Top = 0
    Width = 145
    Height = 344
    Align = alLeft
    AutoExpand = True
    Indent = 19
    TabOrder = 1
    OnClick = tvOptionsClick
    Items.NodeData = {
      03040000002C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000107470065006E006500720061006C003400000000000000000000
      00FFFFFFFFFFFFFFFF000000000000000000000000010B43006F006F00720064
      0069006E0061007400650073002E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001085300630065006E006100720069006F0026
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      045000610074006800}
  end
end
