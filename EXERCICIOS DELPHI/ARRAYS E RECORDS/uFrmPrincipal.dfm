object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Array e Records'
  ClientHeight = 215
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtDia: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtTemperatura: TEdit
    Left = 24
    Top = 52
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnGravar: TButton
    Left = 160
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btnGravarClick
  end
  object btnConsultar: TButton
    Left = 160
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
    OnClick = btnConsultarClick
  end
  object mmHistorico: TMemo
    Left = 24
    Top = 84
    Width = 211
    Height = 109
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
