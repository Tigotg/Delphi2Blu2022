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
    Left = 48
    Top = 8
    Width = 334
    Height = 33
    Caption = 'Identifica N'#250'mero maior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 74
    Width = 27
    Height = 16
    Caption = 'N'#186' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 240
    Top = 74
    Width = 27
    Height = 16
    Caption = 'N'#186' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNum1: TEdit
    Left = 48
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 240
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnVerificar: TButton
    Left = 120
    Top = 152
    Width = 169
    Height = 25
    Caption = 'Verificar N'#250'mero Maior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnVerificarClick
  end
  object btnLimpar: TButton
    Left = 120
    Top = 183
    Width = 169
    Height = 25
    Caption = 'Limpar Tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnLimparClick
  end
end
