object FrmCalcularAreaTriangulo: TFrmCalcularAreaTriangulo
  Left = 0
  Top = 0
  Caption = 'Calcular Area Triangulo'
  ClientHeight = 497
  ClientWidth = 654
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
    Left = 234
    Top = 24
    Width = 119
    Height = 25
    Caption = 'Tri'#226'ngulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 81
    Width = 15
    Height = 16
    Caption = 'A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 193
    Width = 15
    Height = 16
    Caption = 'A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 215
    Top = 81
    Width = 13
    Height = 16
    Caption = 'B:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 216
    Top = 193
    Width = 13
    Height = 16
    Caption = 'B:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 400
    Top = 81
    Width = 13
    Height = 16
    Caption = 'C:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 400
    Top = 193
    Width = 13
    Height = 16
    Caption = 'C:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTriangYarea: TLabel
    Left = 24
    Top = 376
    Width = 113
    Height = 16
    Caption = 'Tri'#226'ngulo Y '#193'rea:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 234
    Top = 147
    Width = 119
    Height = 25
    Caption = 'Tri'#226'ngulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTriangXArea: TLabel
    Left = 24
    Top = 328
    Width = 113
    Height = 16
    Caption = 'Tri'#226'ngulo X '#193'rea:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMaiorArea: TLabel
    Left = 24
    Top = 424
    Width = 65
    Height = 16
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtTxa: TEdit
    Left = 48
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtTxb: TEdit
    Left = 234
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtTxc: TEdit
    Left = 419
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtTya: TEdit
    Left = 48
    Top = 190
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtTyb: TEdit
    Left = 234
    Top = 190
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtTyc: TEdit
    Left = 419
    Top = 190
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btnCalcular: TButton
    Left = 48
    Top = 264
    Width = 217
    Height = 25
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object btnCalcularOOP: TButton
    Left = 323
    Top = 264
    Width = 217
    Height = 25
    Caption = 'Calcular OOP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
end
