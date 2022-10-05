object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 217
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 8
    Width = 347
    Height = 33
    Caption = 'Rendimentos Por Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 107
    Height = 16
    Caption = 'Valor Redimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 247
    Top = 64
    Width = 120
    Height = 16
    Caption = 'Total Rendimentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValRendimento: TEdit
    Left = 40
    Top = 86
    Width = 107
    Height = 21
    TabOrder = 0
  end
  object btnCalcularRendimentos: TButton
    Left = 40
    Top = 122
    Width = 161
    Height = 25
    Caption = 'Calcular Rendimentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCalcularRendimentosClick
  end
  object edtTotalRendimentos: TEdit
    Left = 249
    Top = 86
    Width = 118
    Height = 21
    TabOrder = 2
  end
  object btnLimpaTela: TButton
    Left = 207
    Top = 122
    Width = 161
    Height = 25
    Caption = 'Limpa Tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnLimpaTelaClick
  end
end
