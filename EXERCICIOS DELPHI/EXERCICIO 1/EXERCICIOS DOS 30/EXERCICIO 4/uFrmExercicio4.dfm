object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 461
  ClientWidth = 470
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
    Left = 47
    Top = 80
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label2: TLabel
    Left = 62
    Top = 107
    Width = 36
    Height = 13
    Caption = 'Sal'#225'rio:'
  end
  object Label3: TLabel
    Left = 101
    Top = 209
    Width = 75
    Height = 13
    Caption = 'Total Recebido:'
  end
  object Label4: TLabel
    Left = 105
    Top = 11
    Width = 260
    Height = 33
    Caption = 'Vendas e Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 186
    Top = 107
    Width = 59
    Height = 13
    Caption = '% Comiss'#227'o'
  end
  object Label6: TLabel
    Left = 9
    Top = 134
    Width = 88
    Height = 13
    Caption = 'Valor Vendas M'#234's:'
  end
  object edtVendedor: TEdit
    Left = 101
    Top = 77
    Width = 268
    Height = 21
    TabOrder = 0
  end
  object edtSalario: TEdit
    Left = 101
    Top = 104
    Width = 75
    Height = 21
    TabOrder = 1
  end
  object edtPercentComissao: TEdit
    Left = 248
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object mmSalarioTotal: TMemo
    Left = 101
    Top = 228
    Width = 268
    Height = 193
    ReadOnly = True
    TabOrder = 6
  end
  object edtValorVendasMes: TEdit
    Left = 101
    Top = 131
    Width = 75
    Height = 21
    TabOrder = 3
  end
  object btnCalcular: TButton
    Left = 101
    Top = 168
    Width = 108
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btnCalcularClick
  end
  object btnLimpaTela: TButton
    Left = 261
    Top = 168
    Width = 108
    Height = 25
    Caption = 'Limpar Tela'
    TabOrder = 5
    OnClick = btnLimpaTelaClick
  end
end
