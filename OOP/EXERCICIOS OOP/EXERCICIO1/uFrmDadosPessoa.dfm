object FrmDadosPessoa: TFrmDadosPessoa
  Left = 0
  Top = 0
  Caption = 'Dados Pessoa'
  ClientHeight = 443
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 30
    Width = 104
    Height = 16
    Caption = 'Ano Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 41
    Height = 16
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 206
    Width = 65
    Height = 16
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtAnoNasc: TEdit
    Left = 24
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnResultado: TButton
    Left = 184
    Top = 71
    Width = 145
    Height = 25
    Caption = 'Resultado'
    TabOrder = 1
    OnClick = btnResultadoClick
  end
  object edtNome: TEdit
    Left = 24
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtAltura: TEdit
    Left = 24
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object mmResultado: TMemo
    Left = 24
    Top = 224
    Width = 305
    Height = 193
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
