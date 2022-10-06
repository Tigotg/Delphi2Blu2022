object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 381
  ClientWidth = 383
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
    Left = 24
    Top = 8
    Width = 316
    Height = 33
    Caption = 'Calcular Fatura Energia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 68
    Width = 26
    Height = 13
    Caption = 'KW/h'
  end
  object Label3: TLabel
    Left = 168
    Top = 68
    Width = 79
    Height = 13
    Caption = 'Tipo Consumidor'
  end
  object Label4: TLabel
    Left = 24
    Top = 222
    Width = 41
    Height = 13
    Caption = 'Hist'#243'rico'
  end
  object Label5: TLabel
    Left = 24
    Top = 111
    Width = 45
    Height = 13
    Caption = 'Desconto'
  end
  object edtKwh: TEdit
    Left = 24
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cbxTipoConsumidor: TComboBox
    Left = 168
    Top = 82
    Width = 177
    Height = 21
    TabOrder = 1
    TextHint = 'Selecione Tipo de Consumidor'
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria'
      'Fazenda')
  end
  object mmHistorico: TMemo
    Left = 24
    Top = 241
    Width = 321
    Height = 113
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object btnCalcular: TButton
    Left = 24
    Top = 176
    Width = 321
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object edtDesconto: TEdit
    Left = 24
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
