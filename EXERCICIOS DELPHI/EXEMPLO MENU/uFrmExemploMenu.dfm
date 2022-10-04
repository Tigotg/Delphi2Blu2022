object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exemplo Menu'
  ClientHeight = 608
  ClientWidth = 653
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
  object btnTestePopup: TButton
    Left = 184
    Top = 336
    Width = 233
    Height = 25
    Caption = 'Teste Menu Popup'
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 168
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Clientes2: TMenuItem
        Caption = 'Fornecedores'
        OnClick = Clientes2Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 160
    object OlMundo1: TMenuItem
      Caption = 'Ol'#225' Mundo'
      OnClick = OlMundo1Click
    end
    object OlPlaneta1: TMenuItem
      Caption = 'Ol'#225' Planeta'
    end
    object ByeBye1: TMenuItem
      Caption = 'Bye Bye'
    end
  end
end
