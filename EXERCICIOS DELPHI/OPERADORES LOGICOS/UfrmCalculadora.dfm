object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 186
  ClientWidth = 428
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
    Left = 32
    Top = 19
    Width = 360
    Height = 23
    Caption = 'CALCULADORA +DEVS2BLU - DELPHI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 316
    Top = 80
    Width = 13
    Height = 19
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 60
    Width = 53
    Height = 16
    Caption = '1'#186' Valor'
  end
  object Label4: TLabel
    Left = 136
    Top = 60
    Width = 61
    Height = 16
    Caption = 'Operador'
  end
  object Label5: TLabel
    Left = 253
    Top = 60
    Width = 53
    Height = 16
    Caption = '2'#186' Valor'
  end
  object Label6: TLabel
    Left = 335
    Top = 60
    Width = 65
    Height = 16
    Caption = 'Resultado'
  end
  object cbmOperador: TComboBox
    Left = 96
    Top = 78
    Width = 151
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicador'
      'Dividir'
      'Resto'
      'Divis'#227'o Inteira')
  end
  object edtNumerador: TEdit
    Left = 32
    Top = 78
    Width = 58
    Height = 24
    TabOrder = 0
    StyleName = '1'
  end
  object edtDenominador: TEdit
    Left = 253
    Top = 78
    Width = 58
    Height = 24
    TabOrder = 2
  end
  object edtResultado: TEdit
    Left = 334
    Top = 78
    Width = 66
    Height = 24
    TabOrder = 4
  end
  object btnCalcular: TButton
    Left = 174
    Top = 128
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
