object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 298
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 256
    Height = 19
    Caption = 'Usando a RTL e Tipos de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 49
    Width = 90
    Height = 18
    Caption = 'Valor String'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 16
    Top = 176
    Width = 82
    Height = 19
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnInteiro: TButton
    Left = 16
    Top = 97
    Width = 123
    Height = 25
    Caption = 'Inteiro'
    TabOrder = 0
    OnClick = btnInteiroClick
  end
  object btnPontoFlutuante: TButton
    Left = 149
    Top = 97
    Width = 123
    Height = 25
    Caption = 'Ponto Flutuante'
    TabOrder = 1
    OnClick = btnPontoFlutuanteClick
  end
  object btnData: TButton
    Left = 16
    Top = 128
    Width = 123
    Height = 25
    Caption = 'Data'
    TabOrder = 2
    OnClick = btnDataClick
  end
  object btnDataExtenso: TButton
    Left = 149
    Top = 128
    Width = 123
    Height = 25
    Caption = 'Data Extenso'
    TabOrder = 3
    OnClick = btnDataExtensoClick
  end
  object edtVisor: TEdit
    Left = 16
    Top = 70
    Width = 256
    Height = 21
    TabOrder = 4
  end
end
