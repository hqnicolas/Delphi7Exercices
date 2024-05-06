object Form2: TForm2
  Left = 222
  Top = 135
  Width = 399
  Height = 405
  BiDiMode = bdRightToLeftNoAlign
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 48
    Top = 112
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label4: TLabel
    Left = 48
    Top = 144
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Edit1: TEdit
    Left = 104
    Top = 40
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 104
    Top = 72
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 104
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 104
    Top = 136
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 296
    Top = 200
    Width = 81
    Height = 25
    Caption = 'Proximo'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 200
    Top = 200
    Width = 81
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 200
    Width = 81
    Height = 25
    Cursor = crHandPoint
    Caption = 'Novo'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 200
    Width = 81
    Height = 25
    Caption = 'Anterior'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 248
    Width = 337
    Height = 113
    DataSource = dtcliente
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object tbcliente: TTable
    Active = True
    DatabaseName = 'Nicolas'
    TableName = 'Nicolasdb1.db'
    Left = 48
    Top = 8
    object tbclienteCodigo: TIntegerField
      DisplayWidth = 12
      FieldName = 'Codigo'
    end
    object tbclienteNome: TStringField
      DisplayWidth = 10
      FieldName = 'Nome'
    end
    object tbclienteEndereco: TStringField
      DisplayWidth = 15
      FieldName = 'Endereco'
      Size = 50
    end
    object tbclienteTelefone: TStringField
      DisplayWidth = 18
      FieldName = 'Telefone'
      Size = 15
    end
  end
  object dtcliente: TDataSource
    DataSet = tbcliente
    Left = 8
    Top = 8
  end
end
