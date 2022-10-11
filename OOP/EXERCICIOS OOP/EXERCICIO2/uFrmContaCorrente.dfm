object FrmContaCorrente: TFrmContaCorrente
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 488
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 38
    Top = 16
    Width = 113
    Height = 16
    Caption = 'Nome Correntista'
  end
  object Label2: TLabel
    Left = 38
    Top = 88
    Width = 78
    Height = 16
    Caption = 'Valor Saque'
  end
  object Label3: TLabel
    Left = 182
    Top = 88
    Width = 95
    Height = 16
    Caption = 'Valor Dep'#243'sito'
  end
  object Label4: TLabel
    Left = 326
    Top = 88
    Width = 63
    Height = 16
    Caption = 'Saldo C/C'
  end
  object edtNomeCorrentista: TEdit
    Left = 38
    Top = 35
    Width = 409
    Height = 24
    TabOrder = 0
  end
  object edtValorSaque: TEdit
    Left = 38
    Top = 107
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object edtValorDeposito: TEdit
    Left = 182
    Top = 107
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object edtSaldoCC: TEdit
    Left = 326
    Top = 107
    Width = 121
    Height = 24
    TabOrder = 3
  end
  object btnMostarInfo: TButton
    Left = 38
    Top = 176
    Width = 409
    Height = 25
    Caption = 'Mostar Info'
    TabOrder = 4
  end
  object btnValorDeposito: TButton
    Left = 182
    Top = 137
    Width = 121
    Height = 25
    Caption = 'Valor Dep'#243'sito '
    TabOrder = 5
  end
  object btn: TButton
    Left = 372
    Top = 304
    Width = 75
    Height = 25
    Caption = 'btn'
    TabOrder = 6
  end
  object btnCadastrarCC: TButton
    Left = 76
    Top = 360
    Width = 157
    Height = 25
    Caption = 'btnCadastrarCC'
    TabOrder = 7
  end
  object btnValorSaque: TButton
    Left = 38
    Top = 137
    Width = 121
    Height = 25
    Caption = 'Valor Saque'
    TabOrder = 8
  end
end
