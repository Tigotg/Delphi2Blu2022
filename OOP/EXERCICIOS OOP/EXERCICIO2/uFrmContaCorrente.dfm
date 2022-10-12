object FrmContaCorrente: TFrmContaCorrente
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 592
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 38
    Top = 29
    Width = 113
    Height = 16
    Caption = 'Nome Correntista'
  end
  object Label2: TLabel
    Left = 38
    Top = 176
    Width = 78
    Height = 16
    Caption = 'Valor Saque'
  end
  object Label3: TLabel
    Left = 182
    Top = 176
    Width = 95
    Height = 16
    Caption = 'Valor Dep'#243'sito'
  end
  object Label4: TLabel
    Left = 182
    Top = 76
    Width = 63
    Height = 16
    Caption = 'Saldo C/C'
  end
  object Label5: TLabel
    Left = 38
    Top = 341
    Width = 57
    Height = 16
    Caption = 'Hist'#243'rico'
  end
  object Label6: TLabel
    Left = 38
    Top = 77
    Width = 119
    Height = 16
    Caption = 'Conta Corrente N'#186
  end
  object edtNomeCorrentista: TEdit
    Left = 38
    Top = 51
    Width = 265
    Height = 24
    TabOrder = 0
  end
  object edtValorSaque: TEdit
    Left = 38
    Top = 195
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object edtValorDeposito: TEdit
    Left = 182
    Top = 195
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object edtSaldoCC: TEdit
    Left = 182
    Top = 95
    Width = 121
    Height = 24
    TabOrder = 3
  end
  object btnMostarInfo: TButton
    Left = 37
    Top = 310
    Width = 410
    Height = 25
    Caption = 'Mostar Info'
    TabOrder = 4
  end
  object btnValorDeposito: TButton
    Left = 181
    Top = 225
    Width = 123
    Height = 25
    Caption = 'Valor Dep'#243'sito '
    TabOrder = 5
    OnClick = btnValorDepositoClick
  end
  object btnAlterarNome: TButton
    Left = 320
    Top = 95
    Width = 127
    Height = 25
    Caption = 'Alterar Nome'
    TabOrder = 6
    OnClick = btnAlterarNomeClick
  end
  object btnCadastrarCC: TButton
    Left = 320
    Top = 50
    Width = 127
    Height = 26
    Caption = 'Cadastrar C/C'
    TabOrder = 7
    OnClick = btnCadastrarCCClick
  end
  object btnValorSaque: TButton
    Left = 37
    Top = 225
    Width = 123
    Height = 25
    Caption = 'Valor Saque'
    TabOrder = 8
    OnClick = btnValorSaqueClick
  end
  object mmHistorico: TMemo
    Left = 38
    Top = 360
    Width = 409
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object edtContaCorrenteN: TEdit
    Left = 38
    Top = 95
    Width = 121
    Height = 24
    TabOrder = 10
  end
end
