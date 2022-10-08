unit uFrmHerancaOOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cmbxAnimal: TComboBox;
    Label1: TLabel;
    btnQueSomEuFaco: TButton;
    procedure btnQueSomEuFacoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UAnimal;

{$R *.dfm} // <<<< Nome desse negocios � diretivas

procedure TForm1.btnQueSomEuFacoClick(Sender: TObject);
var
  xAnimal: TAnimal;
begin
  xAnimal := nil; //Sem referencia a algum ponteiro na mem�ria
                  //assim que inicializa um objeto no Delphi
  try
    case TEnumAnimal (cmbxAnimal.ItemIndex)of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro:
        xAnimal := TPassaro.Create;
    end;
    ShowMessage(xAnimal.RetornarSom);
    ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' Patas.');
  finally
    FreeAndNil(xAnimal);
  end;
end;

end.
