object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
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
    Left = 120
    Top = 24
    Width = 182
    Height = 33
    Caption = 'Validar Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnValidar: TButton
    Left = 120
    Top = 88
    Width = 182
    Height = 25
    Caption = 'Validar'
    TabOrder = 0
    OnClick = btnValidarClick
  end
  object mmResultado: TMemo
    Left = 120
    Top = 119
    Width = 185
    Height = 89
    TabOrder = 1
  end
end
