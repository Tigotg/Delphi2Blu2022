unit uFrmContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaC;

type
  TFrmContaCorrente = class(TForm)
    edtNomeCorrentista: TEdit;
    edtValorSaque: TEdit;
    edtValorDeposito: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtSaldoCC: TEdit;
    Label4: TLabel;
    btnMostarInfo: TButton;
    btnValorDeposito: TButton;
    btn: TButton;
    btnCadastrarCC: TButton;
    btnValorSaque: TButton;
  private
    { Private declarations }
    FContaC: TContaCorrente;
  public
    { Public declarations }
  end;

var
  FrmContaCorrente: TFrmContaCorrente;

implementation

{$R *.dfm}

end.

{1. Crie uma classe para representar uma Pessoa com os atributos privados de nome,
data de nascimento e altura.
Crie os m�todos p�blicos necess�rios para getters e setters e tamb�m um m�todo para
imprimir todos dados de uma pessoa.
Crie um m�todo para calcular a idade da pessoa.


2. Crie uma classe para implementar uma ContaCorrente.
   A classe deve possuir os seguintes atributos: n�mero da conta,
   nome do correntista e saldo.
   Os m�todos s�o os seguintes: alterarNome, dep�sito e saque;
   No construtor, saldo � opcional, com valor default zero e os
   demais atributos s�o obrigat�rios.

Exemplo
  constructor Create(const aNumeroConta: Integer; const aNomeCorrentista: String; const aSaldo: Currency = 0);

  constructor TContaCorrente.Create(const aNumeroConta: Integer; const aNomeCorrentista: String; const aSaldo);
  begin
    FNumeroConta      := aNumeroConta;
    FNomeCorrentista := aNomeCorrentista;
    FSaldo                   := aSaldo;
  end;

  xContaCorrente := TContaCorrente.Create(123, 'Armando Neto');
  xContaCorrente := TContaCorrente.Create(123, 'Armando Neto', 100);  }
