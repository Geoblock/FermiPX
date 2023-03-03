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
    ActivePage = tsPath
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 415
    object tsInterface: TTabSheet
      Caption = 'Interface'
    end
    object tsStars: TTabSheet
      Caption = 'Stars'
      ImageIndex = 1
    end
    object tsScenario: TTabSheet
      Caption = 'Scenario'
      ImageIndex = 2
    end
    object tsGalablocks: TTabSheet
      Caption = 'Galablocks'
      ImageIndex = 3
    end
    object tsCoordinates: TTabSheet
      Caption = 'Coordinates'
      ImageIndex = 4
    end
    object tsGeneral: TTabSheet
      Caption = 'General'
      ImageIndex = 5
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
    object tsPath: TTabSheet
      Caption = 'Path'
      ImageIndex = 6
    end
  end
  object tvOptions: TTreeView
    Left = 0
    Top = 0
    Width = 145
    Height = 344
    Align = alLeft
    Indent = 19
    TabOrder = 1
    Items.NodeData = {
      03070000002C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000107470065006E006500720061006C003400000000000000000000
      00FFFFFFFFFFFFFFFF000000000000000000000000010B43006F006F00720064
      0069006E006100740065007300320000000000000000000000FFFFFFFFFFFFFF
      FF000000000000000000000000010A470061006C00610062006C006F0063006B
      007300300000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      000000010949006E007400650072006600610063006500280000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010553007400610072
      007300300000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      00000001095300630065006E006100720069006F007300260000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010450006100740068
      00}
  end
end
