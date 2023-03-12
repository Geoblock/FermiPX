object frmAbout: TfrmAbout
  Left = 0
  Top = 0
  Caption = 'About'
  ClientHeight = 256
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Memo1: TMemo
    Left = 152
    Top = 72
    Width = 193
    Height = 97
    Alignment = taCenter
    Lines.Strings = (
      'Developers and contributors'
      ''
      'Pavel Vassiliev - Project Founder'
      'Lev Koptyaev'
      '')
    TabOrder = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 41
    Align = alTop
    Caption = 'Fermi Paradox Simulator v.0.1'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 208
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 2
  end
end
