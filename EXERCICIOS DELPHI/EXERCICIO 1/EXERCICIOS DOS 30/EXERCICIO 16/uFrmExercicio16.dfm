object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 243
  ClientWidth = 391
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
    Width = 290
    Height = 33
    Caption = 'Nome e Notas Alunos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 76
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 34
    Top = 116
    Width = 53
    Height = 16
    Caption = '1'#170' Nota '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 34
    Top = 143
    Width = 49
    Height = 16
    Caption = '2'#170' Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 34
    Top = 170
    Width = 49
    Height = 16
    Caption = '3'#170' Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 91
    Top = 75
    Width = 248
    Height = 21
    TabOrder = 0
  end
  object edtNota1: TEdit
    Left = 91
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNota2: TEdit
    Left = 91
    Top = 142
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNota3: TEdit
    Left = 91
    Top = 169
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnLimpaTela: TButton
    Left = 240
    Top = 113
    Width = 99
    Height = 25
    Caption = 'Limpa Tela'
    TabOrder = 5
    OnClick = btnLimpaTelaClick
  end
  object btnCalculaMedia: TButton
    Left = 240
    Top = 167
    Width = 99
    Height = 25
    Caption = 'Calcula M'#233'dia'
    TabOrder = 4
    OnClick = btnCalculaMediaClick
  end
end