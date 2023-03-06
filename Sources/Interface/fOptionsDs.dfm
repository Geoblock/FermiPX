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
    AutoExpand = True
    Indent = 19
    TabOrder = 1
    Items.NodeData = {
      03080000002C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000107470065006E006500720061006C002A00000000000000000000
      00FFFFFFFFFFFFFFFF0000000000000000000000000106470061006C00610078
      007900280000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      0000000105530074006100720073002C0000000000000000000000FFFFFFFFFF
      FFFFFF000000000000000000000000010750006C0061006E0065007400730034
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      0B43006F006F007200640069006E006100740065007300300000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010949006E00740065
      00720066006100630065002E0000000000000000000000FFFFFFFFFFFFFFFF00
      000000000000000000000001085300630065006E006100720069006F00260000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000010450
      00610074006800}
  end
end
