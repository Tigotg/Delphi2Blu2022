object FrmCompradores: TFrmCompradores
  Left = 0
  Top = 0
  Caption = 'Compradores'
  ClientHeight = 347
  ClientWidth = 497
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
  object Label4: TLabel
    Left = 8
    Top = 80
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 120
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 160
    Width = 29
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 216
    Width = 481
    Height = 120
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Width = 180
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 21
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 96
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 136
    Width = 313
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 176
    Width = 313
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource
    TabOrder = 4
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 400
    Top = 32
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTableCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 400
    Top = 88
  end
end
