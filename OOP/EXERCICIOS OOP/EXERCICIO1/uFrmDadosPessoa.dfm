object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 378
  ClientWidth = 611
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
    Top = 24
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
  object edtAnoNasc: TEdit
    Left = 24
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object mmResultado: TMemo
    Left = 24
    Top = 88
    Width = 337
    Height = 265
    TabOrder = 1
  end
  object btnResultado: TButton
    Left = 216
    Top = 44
    Width = 145
    Height = 25
    Caption = 'Resultado'
    TabOrder = 2
    OnClick = btnResultadoClick
  end
end
