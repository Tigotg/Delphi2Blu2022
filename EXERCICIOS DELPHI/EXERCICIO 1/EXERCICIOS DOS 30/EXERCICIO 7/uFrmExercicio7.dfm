object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 269
  ClientWidth = 412
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
    Top = 21
    Width = 368
    Height = 33
    Caption = 'Convers'#227'o de Temperatura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 124
    Top = 80
    Width = 84
    Height = 16
    Caption = 'Temperatura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 124
    Top = 173
    Width = 109
    Height = 16
    Caption = 'Convers'#227'o C'#186'/F'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtTemperatura: TEdit
    Left = 124
    Top = 98
    Width = 163
    Height = 21
    TabOrder = 0
  end
  object btnConverter: TButton
    Left = 124
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 1
    OnClick = btnConverterClick
  end
  object btnLimpaTela: TButton
    Left = 212
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Limpa Tela'
    TabOrder = 2
    OnClick = btnLimpaTelaClick
  end
  object edtVisor: TEdit
    Left = 124
    Top = 192
    Width = 163
    Height = 21
    TabOrder = 3
  end
end
