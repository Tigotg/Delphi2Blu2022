object FrmAbastecer: TFrmAbastecer
  Left = 0
  Top = 0
  Caption = 'Alterar Qtd Combust'#237'vel'
  ClientHeight = 457
  ClientWidth = 609
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
    Left = 216
    Top = 16
    Width = 189
    Height = 35
    Caption = 'Posto M'#225'rcio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rdgTipoCombustivel: TRadioGroup
    Left = 440
    Top = 83
    Width = 141
    Height = 97
    Caption = 'Tipo Combust'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Gasolina'
      #193'lcool'
      'Diesel')
    ParentFont = False
    TabOrder = 0
    OnClick = rdgTipoCombustivelClick
  end
  object GroupBox1: TGroupBox
    Left = 22
    Top = 83
    Width = 193
    Height = 97
    Caption = 'ABASTECER EM VALOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 36
      Top = 35
      Width = 17
      Height = 14
      Caption = 'R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 67
      Width = 45
      Height = 14
      Caption = 'LITROS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtValAbastecer: TEdit
      Left = 60
      Top = 32
      Width = 119
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Valor Abastecer'
    end
    object edtLitrosValAbastecer: TEdit
      Left = 60
      Top = 64
      Width = 119
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TextHint = 'Total Litros'
    end
  end
  object GroupBox2: TGroupBox
    Left = 231
    Top = 83
    Width = 193
    Height = 97
    Caption = 'ABASTECER EM LITROS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label8: TLabel
      Left = 10
      Top = 35
      Width = 45
      Height = 14
      Caption = 'LITROS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 38
      Top = 67
      Width = 17
      Height = 14
      Caption = 'R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtQTDLtrsAbatecer: TEdit
      Left = 63
      Top = 32
      Width = 119
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = 'QTD Abastecer'
    end
    object edtTotalEmReaisPorLitroAbastecido: TEdit
      Left = 63
      Top = 64
      Width = 119
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TextHint = 'Valor Total'
    end
  end
  object btnAbastecerPorLitro: TButton
    Left = 231
    Top = 214
    Width = 193
    Height = 25
    Caption = 'Abastecer Por Litro'
    TabOrder = 3
    OnClick = btnAbastecerPorLitroClick
  end
  object btnAbastecerEmValor: TButton
    Left = 22
    Top = 214
    Width = 193
    Height = 25
    Caption = 'Abastecer Em Valor'
    TabOrder = 4
    OnClick = btnAbastecerEmValorClick
  end
  object btnAlterarValor: TButton
    Left = 22
    Top = 296
    Width = 123
    Height = 25
    Caption = 'Alterar Valor'
    TabOrder = 5
    OnClick = btnAlterarValorClick
  end
  object btnAlterarCombustivel: TButton
    Left = 163
    Top = 296
    Width = 123
    Height = 25
    Caption = 'Alterar Combust'#237'vel'
    TabOrder = 6
    OnClick = btnAlterarCombustivelClick
  end
  object btnAlterarQtdCombustivel: TButton
    Left = 301
    Top = 296
    Width = 123
    Height = 25
    Caption = 'Alterar Qtd Combust'#237'vel'
    TabOrder = 7
    OnClick = btnAlterarQtdCombustivelClick
  end
  object edtDisplayCombustivel: TEdit
    Left = 440
    Top = 186
    Width = 141
    Height = 21
    TabOrder = 8
  end
  object edtTotalTanquePosto: TEdit
    Left = 440
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 9
  end
end
