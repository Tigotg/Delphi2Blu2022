object FrmFornecedores: TFrmFornecedores
  Left = 0
  Top = 0
  Caption = 'Fornecedores'
  ClientHeight = 354
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 60
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 100
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 140
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 76
    Width = 81
    Height = 21
    DataField = 'Id'
    DataSource = DataSource
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 116
    Width = 150
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 156
    Width = 273
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 200
    Width = 433
    Height = 145
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 239
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 368
    Top = 48
  end
  object FDTable: TFDTable
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 368
    Top = 96
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDTableNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
end
