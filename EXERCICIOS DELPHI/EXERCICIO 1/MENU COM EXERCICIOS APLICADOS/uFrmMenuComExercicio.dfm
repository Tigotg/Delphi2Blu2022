object FrmMenuComExercicio: TFrmMenuComExercicio
  Left = 0
  Top = 0
  Caption = 'Menu Com Exercicio'
  ClientHeight = 524
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 320
    Top = 136
    object ReajusteSalrio1: TMenuItem
      Caption = 'Reajuste Sal'#225'rio'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
        OnClick = Abrir1Click
      end
    end
    object ValidarMs1: TMenuItem
      Caption = 'Validar M'#234's'
      object Abrir2: TMenuItem
        Caption = 'Abrir'
        OnClick = Abrir2Click
      end
    end
    object Lervalores1: TMenuItem
      Caption = 'Ler valores'
      object Abrir3: TMenuItem
        Caption = 'Abrir'
        OnClick = Abrir3Click
      end
    end
  end
end
