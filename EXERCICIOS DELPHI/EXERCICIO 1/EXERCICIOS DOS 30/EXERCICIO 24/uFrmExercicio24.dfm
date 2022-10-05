object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 521
  ClientWidth = 465
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
    Left = 56
    Top = 24
    Width = 348
    Height = 33
    Caption = 'Ler N'#250'meros e Identificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIdentificar: TButton
    Left = 104
    Top = 120
    Width = 233
    Height = 97
    Caption = 'Identificar'
    TabOrder = 0
    OnClick = btnIdentificarClick
  end
  object mmListarNumero: TMemo
    Left = 104
    Top = 280
    Width = 233
    Height = 193
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
