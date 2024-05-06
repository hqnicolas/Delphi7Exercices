object Form1: TForm1
  Left = 415
  Top = 111
  Width = 881
  Height = 444
  AutoSize = True
  BorderStyle = bsSizeToolWin
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 57
    Top = 8
    Width = 34
    Height = 24
    Caption = 'Top'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 57
    Top = 110
    Width = 29
    Height = 24
    Caption = 'Left'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 49
    Top = 213
    Width = 48
    Height = 24
    Caption = 'Width'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 49
    Top = 316
    Width = 55
    Height = 24
    Caption = 'Height'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Painel: TPanel
    Left = 169
    Top = 0
    Width = 543
    Height = 417
    TabOrder = 1
    object Tshape: TShape
      Left = 216
      Top = 144
      Width = 177
      Height = 153
    end
  end
  object EdtTop: TEdit
    Left = 0
    Top = 35
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 2
    Text = 'Dist'#226'ncia Acima'
    OnClick = EdtTopClick
  end
  object EdtLeft: TEdit
    Left = 0
    Top = 138
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 3
    Text = 'Dist'#226'ncia Lateral'
    OnClick = EdtLeftClick
  end
  object edtWidth: TEdit
    Left = 0
    Top = 241
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 4
    Text = 'Largura'
    OnClick = edtWidthClick
  end
  object edtheight: TEdit
    Left = 0
    Top = 344
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 5
    Text = 'Altura'
    OnClick = edtheightClick
  end
  object BtnAplicar: TButton
    Left = 9
    Top = 392
    Width = 72
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 0
    OnClick = BtnAplicarClick
  end
  object BtnFechar: TButton
    Left = 89
    Top = 392
    Width = 72
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BtnFecharClick
  end
  object RdoCores: TRadioGroup
    Left = 720
    Top = 0
    Width = 153
    Height = 193
    Caption = 'Cores'
    ItemIndex = 4
    Items.Strings = (
      'Azul'
      'Amarelo'
      'Branco'
      'Vermelho'
      'Verde')
    TabOrder = 7
    OnClick = RdoCoresClick
  end
  object RdoFormas: TRadioGroup
    Left = 720
    Top = 200
    Width = 153
    Height = 161
    Caption = 'Formas'
    Color = clBtnFace
    Items.Strings = (
      'Borda Redonda'
      'Circular'
      'Retangular')
    ParentColor = False
    TabOrder = 8
    OnClick = RdoFormasClick
  end
  object ClrBox: TColorBox
    Left = 720
    Top = 392
    Width = 153
    Height = 22
    ItemHeight = 16
    TabOrder = 9
    OnChange = ClrBoxChange
  end
  object FrmBox: TComboBox
    Left = 720
    Top = 368
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = 'Formas'
    OnChange = FrmBoxChange
    Items.Strings = (
      'Borda Redonda'
      'Circular'
      'Retangular')
  end
end
