object Form1: TForm1
  Left = 166
  Top = 122
  Anchors = []
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resist'#234'ncia'
  ClientHeight = 121
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 32
    Width = 105
    Height = 81
    Caption = ' Listras '
    TabOrder = 0
    object shpLista1: TShape
      Left = 56
      Top = 16
      Width = 17
      Height = 57
    end
    object ShpLista2: TShape
      Left = 32
      Top = 16
      Width = 17
      Height = 57
    end
    object ShpLista3: TShape
      Left = 8
      Top = 16
      Width = 17
      Height = 57
    end
    object ShpLista4: TShape
      Left = 80
      Top = 16
      Width = 17
      Height = 57
      Brush.Color = clRed
    end
  end
  object BitBtn3: TBitBtn
    Left = 128
    Top = 86
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn3Click
    Kind = bkRetry
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 86
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 8
    Width = 153
    Height = 41
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object CmbTolerancia: TComboBox
    Left = 128
    Top = 56
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'Toler'#226'ncia'
    Items.Strings = (
      '1%'
      '2%'
      '3%'
      '5%'
      '10%')
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 105
    Height = 21
    TabOrder = 5
    Text = 'Valor'
    OnKeyPress = Edit1KeyPress
  end
end
