object frmProceduresFunctions: TfrmProceduresFunctions
  Left = 0
  Top = 0
  Caption = 'Procedures e Functions'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnProcedure: TButton
    Left = 24
    Top = 24
    Width = 81
    Height = 25
    Caption = 'Procedure'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnProcedureClick
  end
  object btnFunction: TButton
    Left = 111
    Top = 24
    Width = 84
    Height = 25
    Caption = 'Function'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnFunctionClick
  end
  object btnParametrosReferencia: TButton
    Left = 24
    Top = 55
    Width = 171
    Height = 25
    Caption = 'Par'#226'metros Refer'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnParametrosReferenciaClick
  end
  object btnConstante: TButton
    Left = 24
    Top = 86
    Width = 171
    Height = 25
    Caption = 'Constante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnConstanteClick
  end
  object btnArrayAberto: TButton
    Left = 216
    Top = 55
    Width = 171
    Height = 25
    Caption = 'Array Aberto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnArrayAbertoClick
  end
  object btnArrayAbertoVariante: TButton
    Left = 216
    Top = 24
    Width = 171
    Height = 25
    Caption = 'Array Aberto Variante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnArrayAbertoVarianteClick
  end
  object btnFormat: TButton
    Left = 216
    Top = 86
    Width = 171
    Height = 25
    Caption = 'Format'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnFormatClick
  end
  object btnTiposData: TButton
    Left = 216
    Top = 117
    Width = 171
    Height = 25
    Caption = 'Tipos de Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnTiposDataClick
  end
  object btnSobreCargaFuncoes: TButton
    Left = 216
    Top = 148
    Width = 171
    Height = 25
    Caption = 'Sobre Carga De Func'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btnSobreCargaFuncoesClick
  end
  object btnParametrosDefault: TButton
    Left = 24
    Top = 117
    Width = 171
    Height = 25
    Caption = 'Par'#226'metros Default'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnParametrosDefaultClick
  end
  object btnDeclaracaoForward: TButton
    Left = 24
    Top = 148
    Width = 171
    Height = 25
    Caption = 'Declara'#231#227'o Forward'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btnDeclaracaoForwardClick
  end
end
