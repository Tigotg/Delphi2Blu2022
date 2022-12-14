unit uFrmDadosPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
type
  TFrmDadosPessoa = class(TForm)
    edtAnoNasc: TEdit;
    Label2: TLabel;
    btnResultado: TButton;
    edtNome: TEdit;
    Label1: TLabel;
    edtAltura: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    mmResultado: TMemo;
    procedure btnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDadosPessoa: TFrmDadosPessoa;

implementation

uses UPessoa;

{$R *.dfm}

procedure TFrmDadosPessoa.btnResultadoClick(Sender: TObject);
var
  xPessoa : TPessoa;
begin
  xPessoa := TPessoa.Create;

  try
    xPessoa.Nome := edtNome.Text;
    xPessoa.Altura := StrToFloat(edtAltura.Text);
    xPessoa.DTNasc := StrToDate(edtAnoNasc.Text);

    mmResultado.Lines.Add('Idade Pessoa: ' + Trunc(xPessoa.CalcularIdade).ToString + #13#10 +
                          xPessoa.ImprimeDados);
  finally
    FreeAndNil(xPessoa);
  end;

end;

{1. Crie uma classe para representar uma Pessoa com os atributos privados de nome,
data de nascimento e altura.Crie os m?todos p?blicos necess?rios para getters e setters
e tamb?m um m?todo para imprimir todos dados de uma pessoa.
Crie um m?todo para calcular a idade da pessoa.}
end.

