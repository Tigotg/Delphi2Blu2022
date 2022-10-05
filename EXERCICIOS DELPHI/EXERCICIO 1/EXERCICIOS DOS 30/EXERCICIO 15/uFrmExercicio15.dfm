object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 178
  ClientWidth = 515
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
    Left = 15
    Top = 8
    Width = 475
    Height = 33
    Caption = 'Identifica Numeros entre Intervalo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 109
    Width = 49
    Height = 16
    Caption = 'N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtVisor: TEdit
    Left = 95
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnIdentificar: TButton
    Left = 240
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Identificar'
    TabOrder = 1
    OnClick = btnIdentificarClick
  end
end
