object frmSalario: TfrmSalario
  Left = 0
  Top = 0
  Caption = 'S'#225'lario'
  ClientHeight = 374
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 21
    Width = 131
    Height = 16
    Caption = 'Sal'#225'rio M'#237'nimo Atual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtSalarioMinimo: TEdit
    Left = 24
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object mmHistorico: TMemo
    Left = 24
    Top = 104
    Width = 337
    Height = 225
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnCalcularReajuste: TButton
    Left = 192
    Top = 38
    Width = 169
    Height = 25
    Caption = 'Calcular Reajuste Salarial'
    TabOrder = 2
    OnClick = btnCalcularReajusteClick
  end
end
