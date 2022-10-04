object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 405
  ClientWidth = 283
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
    Top = 32
    Width = 180
    Height = 33
    Caption = 'Inverte Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 85
    Width = 34
    Height = 13
    Caption = 'Valor A'
  end
  object Label3: TLabel
    Left = 168
    Top = 85
    Width = 33
    Height = 13
    Caption = 'Valor B'
  end
  object Label4: TLabel
    Left = 56
    Top = 204
    Width = 90
    Height = 13
    Caption = 'Resultado Trocado'
  end
  object edtA: TEdit
    Left = 56
    Top = 104
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 168
    Top = 104
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object mmResultadoTrocado: TMemo
    Left = 56
    Top = 221
    Width = 185
    Height = 153
    ReadOnly = True
    TabOrder = 3
  end
  object btnExecutaTroca: TButton
    Left = 56
    Top = 167
    Width = 185
    Height = 25
    Caption = 'Executa Troca'
    TabOrder = 2
    OnClick = btnExecutaTrocaClick
  end
  object btnLimpaTela: TButton
    Left = 56
    Top = 131
    Width = 185
    Height = 25
    Caption = 'Limpa Tela'
    TabOrder = 4
    OnClick = btnLimpaTelaClick
  end
end
