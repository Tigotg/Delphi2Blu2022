object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 628
  ClientWidth = 475
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
    Top = 16
    Width = 415
    Height = 33
    Caption = 'Ler e Identificar Dois N'#250'meros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnLerIdentificar: TButton
    Left = 112
    Top = 88
    Width = 209
    Height = 73
    Caption = 'Ler / Identificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnLerIdentificarClick
  end
  object Memo1: TMemo
    Left = 106
    Top = 184
    Width = 225
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
