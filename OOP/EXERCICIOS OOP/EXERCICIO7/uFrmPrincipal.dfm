﻿object FrmElevador: TFrmElevador
  Left = 0
  Top = 0
  Caption = 'Elevador'
  ClientHeight = 643
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 39
    Width = 133
    Height = 16
    Caption = 'Quantidade Andares'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 29
    Top = 78
    Width = 134
    Height = 16
    Caption = 'Capacidade Elevador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 115
    Width = 131
    Height = 16
    Caption = 'Quantidade Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 123
    Top = 152
    Width = 40
    Height = 16
    Caption = 'Andar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 320
    Top = 17
    Width = 57
    Height = 16
    Caption = 'Hist'#243'rico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Resultado: TLabel
    Left = 98
    Top = 189
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
  object edtTotalAndares: TEdit
    Left = 176
    Top = 38
    Width = 121
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TextHint = 'QTD Andares'
  end
  object edtCapacidadeElev: TEdit
    Left = 176
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Capacidade Elevador'
  end
  object edtQTDPessoas: TEdit
    Left = 176
    Top = 114
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Quantidade Pessoas'
  end
  object edtAndar: TEdit
    Left = 176
    Top = 151
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Andar'
  end
  object mmHistórico: TMemo
    Left = 320
    Top = 39
    Width = 297
    Height = 170
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object edtResultado: TEdit
    Left = 176
    Top = 188
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Resultado'
  end
  object rdgFuncElevador: TRadioGroup
    Left = 20
    Top = 248
    Width = 157
    Height = 129
    Caption = 'Func'#245'es Elevador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Subir'
      'Descer'
      'Entrar'
      'Sair')
    ParentFont = False
    TabOrder = 6
  end
  object btnMovimentar: TButton
    Left = 20
    Top = 416
    Width = 193
    Height = 25
    Caption = 'Movimentar'
    TabOrder = 7
    OnClick = btnMovimentarClick
  end
end
