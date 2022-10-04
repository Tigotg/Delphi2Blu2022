object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 359
  ClientWidth = 354
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
    Left = 48
    Top = 16
    Width = 236
    Height = 33
    Caption = 'Mostra Presta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 80
    Height = 13
    Caption = 'Valor Da Compra'
  end
  object Label3: TLabel
    Left = 48
    Top = 189
    Width = 40
    Height = 13
    Caption = 'Parcelas'
  end
  object Label4: TLabel
    Left = 48
    Top = 128
    Width = 114
    Height = 13
    Caption = 'Quantidade de parcelas'
  end
  object edtValorCompra: TEdit
    Left = 48
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object mmTotal: TMemo
    Left = 48
    Top = 208
    Width = 236
    Height = 97
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnDividirParcela: TButton
    Left = 192
    Top = 89
    Width = 92
    Height = 25
    Caption = 'Parcelar Compra'
    TabOrder = 2
    OnClick = btnDividirParcelaClick
  end
  object edtQtdParcelas: TEdit
    Left = 48
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnLimpaTela: TButton
    Left = 192
    Top = 145
    Width = 92
    Height = 25
    Caption = 'Limpa Tela'
    TabOrder = 4
    OnClick = btnLimpaTelaClick
  end
end
