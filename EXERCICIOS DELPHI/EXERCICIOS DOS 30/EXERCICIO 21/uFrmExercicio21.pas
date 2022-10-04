unit uFrmExercicio21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //TNome = Array [1..4] of Integer;
  TForm1 = class(TForm)
    Label1: TLabel;
    btnBuscaDados: TButton;
    mmMostraDadosPessoas: TMemo;
    procedure btnBuscaDadosClick(Sender: TObject);
  private
    procedure validaPessoaApta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnBuscaDadosClick(Sender: TObject);
begin
  validaPessoaApta;
end;

procedure TForm1.validaPessoaApta;
var
  xNome, xSexo, xSaude, xApta, xContinuar: String;
  xIdade, xQtdPessoasAptas, xInapto: Integer;
const
  xIdadeMilitar = 18;
begin
  xNome := '';
  xIdade := 0;
  xSexo := '';
  repeat
    xNome  := AnsiUpperCase(Inputbox('INFORMAR', 'Informe o Nome:', ''));
    xSexo  := AnsiUpperCase(Inputbox('INFORMAR', 'Informe o Sexo:', ''));
    xIdade := StrToInt(Inputbox('INFORMAR', 'Informe a Idade:', ''));
    xSaude := AnsiUpperCase(Inputbox('INFORMAR', 'Como Est� a Sa�de:', ''));

    if (xIdadeMilitar = 18) and (xSexo = 'M') and (xSaude = 'B') then
    begin
      mmMostraDadosPessoas.Lines.Add('Parab�ns ' + Xnome + ' voc� est� Apto ao Servi�o Militar' + #13#10);

      inc(xQtdPessoasAptas);
      xApta := 's';
    end
    else
    begin
       mmMostraDadosPessoas.Lines.Add(Xnome + ' voc� est� n�o � Apto ao Servi�o Militar' + #13#10);
       inc(xInapto);
    end;

    xContinuar := AnsiUpperCase(Inputbox('INFORMAR', 'Continuar Digite SIM', ''));
  until (xContinuar = 'N');
  mmMostraDadosPessoas.Lines.Add('Quantidade de Pessoa Aptas foram: ' + xQtdPessoasAptas.ToString + #13#10 +
                                 'Quantidade de pessoa Inaptas foram: ' + xInapto.ToString);
end;

end.
