unit uFrmExercicio20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //TAnoCarro = Array [1..4] of Integer;
  //TValorCarro = Array [1..4] of Double;
  TForm1 = class(TForm)
    Label1: TLabel;
    btnCalcular: TButton;
    mmTotal: TMemo;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure VendaCarro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  VendaCarro;
end;

procedure TForm1.VendaCarro;
var
  xValorCarro: Double;
  xAnoCarro: Integer;
  xRetorno: String;
  xSoma, xSoma1: Integer;
  xTotalCarros: Integer;
  xDesconto: Double;
Const
  xDesc12 = 0.12;
  xDesc7 = 0.07;
begin
  xValorCarro := 0;
  xAnoCarro := 0;
  xSoma := 0;
  xSoma1 := 0;
  repeat
    xValorCarro := StrToFloat(Inputbox('INFORMAR', 'Informe o Valor do carro', ''));
    xAnoCarro := StrToInt(Inputbox('INFORMAR', 'Informe o Ano do carro', ''));

    if (xAnoCarro <= 2000) then
    begin
      xDesconto := (xValorCarro * xDesc12);
      xValorCarro := xValorCarro - xDesconto;
      inc(Xsoma);

    end
    else if (xAnoCarro > 2000) then
    begin
      xDesconto := (xValorCarro * xDesc7);
      xValorCarro := xValorCarro - xDesconto;
      Xsoma1 := Xsoma1 + 1;
    end;

    xTotalCarros := xSoma + xSOma1;
    xRetorno := AnsiUpperCase(Inputbox('INFORMAR', 'Continuar S/N', ''));
  until (xRetorno = 'N');

  mmTotal.Lines.Add('A quantidade de carro at� ano 2000 �: ' + xSoma.ToString + #13#10 +
                    'A quantidade de carro acima do ano 2000 �: ' + xSoma1.ToString + #13#10 +
                    'A quantidade Total de carro �: ' + xTotalCarros.ToString + #13#10 +
                    'O valor total dos carros �: ' + xValorCarro.ToString);
end;

end.


{[14:52, 27/09/2022]  Acho que d� pra criar uma vari�vel
inteira pra der o �ndice do vetor
Pode ser numcarro
Da� vc pode criar 2 vetores
VetorAno
VetorValor
Vc pode come�ar com
Numcarro:= 0;
Da� vc vai lendo os dados e vai guardando no vetor
VetorAno[numcarro]
VetorValor[numcarro]
Da� quando vc for ler o pr�ximo carro vc faz
Numcarro := numcarro + 1;
Quando sair do loop do while e vc precisar mostrar
os valores
Vc pode fazer
For i := 0 t� numcarro do
E correr os vetores pelo �ndice ex:
VetorAno[i]
Vai por partes
Primeiro faz ler os valores e guardar
Depois vc faz a parte de calcular e mostrar na tela}


{20. A concession�ria de ve�culos �CARANGO VELHO� est� vendendo os seus ve�culos com
desconto. Fa�a um algoritmo que calcule e exiba o valor do desconto e o valor a ser pago pelo
cliente de v�rios carros. O desconto dever� ser calculado de acordo com o ano do ve�culo. At�
2000 - 12% e acima de 2000 - 7%. O sistema dever� perguntar se deseja continuar calculando
desconto at� que a resposta seja: �(N) N�o�. Informar total de carros com ano at� 2000 e total
geral;}

