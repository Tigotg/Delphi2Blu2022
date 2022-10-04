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
  object lblComandoCondicional: TLabel
    Left = 24
    Top = 12
    Width = 280
    Height = 19
    Caption = 'lComandos Condicionais IF e CASE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIf: TButton
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Caption = 'IF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnIfClick
  end
  object btnCase: TButton
    Left = 102
    Top = 80
    Width = 75
    Height = 25
    Caption = 'CASE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCaseClick
  end
  object edtVisor: TEdit
    Left = 24
    Top = 46
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object rdgNivel: TRadioGroup
    Left = 183
    Top = 37
    Width = 185
    Height = 105
    Caption = 'N'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Estagi'#225'rio'
      'J'#250'nior'
      'Pleno'
      'S'#234'nior')
    ParentFont = False
    TabOrder = 3
  end
end
