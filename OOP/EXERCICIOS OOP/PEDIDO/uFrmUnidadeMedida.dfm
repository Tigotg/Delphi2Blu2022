object FrmUnidadeMedida: TFrmUnidadeMedida
  Left = 0
  Top = 0
  Caption = 'Unidade Medida'
  ClientHeight = 306
  ClientWidth = 416
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
    Top = 64
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 80
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 120
    Width = 200
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 160
    Width = 401
    Height = 137
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
        FieldName = 'Descricao'
        Width = 312
        Visible = True
      end>
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 296
    Top = 80
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 296
    Top = 32
  end
end
