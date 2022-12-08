object FrmProdutos: TFrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 354
  ClientWidth = 546
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
    Left = 11
    Top = 48
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 11
    Top = 88
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 11
    Top = 128
    Width = 81
    Height = 13
    Caption = 'idUnidadeMedida'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 11
    Top = 171
    Width = 91
    Height = 13
    Caption = 'Unidade de Medida'
  end
  object DBEdit1: TDBEdit
    Left = 11
    Top = 64
    Width = 81
    Height = 21
    DataField = 'Id'
    DataSource = DataSource
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 11
    Top = 104
    Width = 200
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 11
    Top = 144
    Width = 62
    Height = 21
    DataField = 'idUnidadeMedida'
    DataSource = DataSource
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 11
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 223
    Width = 529
    Height = 120
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 4
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
        FieldName = 'Descricao'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idUnidadeMedida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupUnidadeMedida'
        Width = 150
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 11
    Top = 187
    Width = 145
    Height = 21
    DataField = 'idUnidadeMedida'
    DataSource = DataSource
    KeyField = 'Id'
    ListField = 'Descricao'
    ListSource = DataSource1
    TabOrder = 5
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 216
    Top = 288
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 272
    Top = 288
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTableidUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
    object FDTableLookupUnidadeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupUnidadeMedida'
      LookupDataSet = FDTableLookUp
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idUnidadeMedida'
      Size = 100
      Lookup = True
    end
  end
  object FDTableLookUp: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 320
    Top = 56
    object FDTableLookUpId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableLookUpDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTableLookUp
    Left = 320
    Top = 112
  end
end
