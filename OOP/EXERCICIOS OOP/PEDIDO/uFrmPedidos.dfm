object FrmPedidos: TFrmPedidos
  Left = 0
  Top = 0
  Caption = 'FrmPedidos'
  ClientHeight = 407
  ClientWidth = 393
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
    Left = 16
    Top = 48
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 95
    Top = 48
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 215
    Top = 48
    Width = 55
    Height = 13
    Caption = 'DataPedido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 104
    Width = 53
    Height = 13
    Caption = 'Comprador'
  end
  object Label5: TLabel
    Left = 16
    Top = 152
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel
    Left = 120
    Top = 224
    Width = 103
    Height = 19
    Caption = 'Itens Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = DsePedidoCompra
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 64
    Width = 73
    Height = 21
    DataField = 'Id'
    DataSource = DsePedidoCompra
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 95
    Top = 64
    Width = 114
    Height = 21
    DataField = 'Numero'
    DataSource = DsePedidoCompra
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 215
    Top = 64
    Width = 134
    Height = 21
    DataField = 'DataPedido'
    DataSource = DsePedidoCompra
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 120
    Width = 333
    Height = 21
    DataField = 'idComprador'
    DataSource = DsePedidoCompra
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DseComprador
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 168
    Width = 333
    Height = 21
    DataField = 'idFornecedor'
    DataSource = DsePedidoCompra
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DseFornecedor
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 248
    Width = 333
    Height = 145
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'id Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupProduto'
        Title.Caption = 'Descri'#231#227'o Produto'
        Width = 180
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 355
    Top = 248
    Width = 25
    Height = 145
    DataSource = DataSource1
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object FDPedidoCompra: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.pedidocompra'
    Left = 472
    Top = 32
    object FDPedidoCompraId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDPedidoCompraNumero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object FDPedidoCompraDataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object FDPedidoCompraidComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object FDPedidoCompraidFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object DsePedidoCompra: TDataSource
    DataSet = FDPedidoCompra
    Left = 384
    Top = 32
  end
  object DseComprador: TDataSource
    DataSet = FDCompradorLookup
    Left = 384
    Top = 96
  end
  object DseFornecedor: TDataSource
    DataSet = FDFornecedorLookup
    Left = 384
    Top = 168
  end
  object FDCompradorLookup: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 472
    Top = 96
    object FDCompradorLookupId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDCompradorLookupNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDCompradorLookupCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object FDFornecedorLookup: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 472
    Top = 168
  end
  object FDItem: TFDTable
    BeforePost = FDItemBeforePost
    IndexFieldNames = 'idPedidoCompra'
    MasterSource = DsePedidoCompra
    MasterFields = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.itemcompra'
    Left = 456
    Top = 256
    object FDItemId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDItemQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object FDItemidPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object FDItemidProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object FDItemLookupProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupProduto'
      LookupDataSet = FDTable2
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object FDTable2: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 424
    Top = 304
    object FDTable2Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable2Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTable2idUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDItem
    Left = 400
    Top = 256
  end
end
