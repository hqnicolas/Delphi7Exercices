object FrmFormas: TFrmFormas
  Left = 386
  Top = 109
  BorderStyle = bsSingle
  Caption = 'Formas Geom'#233'tricas'
  ClientHeight = 347
  ClientWidth = 890
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frm: TShape
    Left = 48
    Top = 56
    Width = 193
    Height = 193
    Brush.Color = clYellow
  end
  object FrmFormas: TRadioGroup
    Left = 584
    Top = 40
    Width = 257
    Height = 233
    Caption = 'Formas'
    Color = clBtnFace
    ItemIndex = 0
    Items.Strings = (
      'Qadrado'
      'Circulo')
    ParentColor = False
    TabOrder = 0
    OnClick = FrmFormasClick
  end
  object FrmCores: TRadioGroup
    Left = 288
    Top = 40
    Width = 273
    Height = 233
    Caption = 'Cores'
    Color = clBtnFace
    ItemIndex = 0
    Items.Strings = (
      'Amarelo'
      'Vermelho'
      'Azul'
      'Verde')
    ParentColor = False
    TabOrder = 1
    OnClick = FrmCoresClick
  end
end
