object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 337
  ClientWidth = 357
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
    Left = 40
    Top = 16
    Width = 128
    Height = 23
    Caption = 'EXERC'#205'CIO 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 58
    Width = 68
    Height = 16
    Caption = '1'#186' N'#250'mero'
  end
  object Label3: TLabel
    Left = 192
    Top = 58
    Width = 68
    Height = 16
    Caption = '2'#186' N'#250'mero'
  end
  object lblResultado: TLabel
    Left = 43
    Top = 168
    Width = 65
    Height = 16
    Caption = 'Resultado'
  end
  object edtNum1: TEdit
    Left = 40
    Top = 77
    Width = 129
    Height = 24
    TabOrder = 0
    TextHint = 'Digite o 1'#186' Numero'
  end
  object edtNum2: TEdit
    Left = 192
    Top = 77
    Width = 129
    Height = 24
    TabOrder = 1
    TextHint = 'Digite o 2'#186' Numero'
  end
  object btnResultado: TButton
    Left = 40
    Top = 116
    Width = 81
    Height = 25
    Caption = 'Resultado'
    TabOrder = 2
    OnClick = btnResultadoClick
  end
end
