object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 209
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblComandosRepeticao: TLabel
    Left = 88
    Top = 16
    Width = 198
    Height = 19
    Caption = 'Comandos De Repeti'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnExecutar: TButton
    Left = 52
    Top = 124
    Width = 121
    Height = 25
    Caption = 'Executar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnExecutarClick
  end
  object edtVisor1: TEdit
    Left = 52
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtVisor2: TEdit
    Left = 52
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object rdgCondicao: TRadioGroup
    Left = 188
    Top = 54
    Width = 137
    Height = 95
    Caption = 'rdgCondicao'
    ItemIndex = 0
    Items.Strings = (
      'For'
      'While'
      'Repeat')
    TabOrder = 3
  end
end
