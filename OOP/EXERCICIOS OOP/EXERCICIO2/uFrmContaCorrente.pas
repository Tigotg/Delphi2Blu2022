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
    btnAlterarNome: TButton;
    btnCadastrarCC: TButton;
    btnValorSaque: TButton;
    mmHistorico: TMemo;
    Label5: TLabel;
    edtContaCorrenteN: TEdit;
    Label6: TLabel;
    procedure btnValorSaqueClick(Sender: TObject);
    procedure btnValorDepositoClick(Sender: TObject);
    procedure btnCadastrarCCClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarNomeClick(Sender: TObject);
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

procedure TFrmContaCorrente.btnAlterarNomeClick(Sender: TObject);
begin
  if not assigned(FContaC) then
    raise Exception.Create('Conta não criada!');

  FContaC.AlterarNome(edtNomeCorrentista.Text);
  mmHistorico.Lines.Add('Nome alteardo para: ' + FContaC.NomeCorrentista);
end;

procedure TFrmContaCorrente.btnCadastrarCCClick(Sender: TObject);
begin
  FContaC := TContaCorrente.Create(StrToIntDef(edtContaCorrenteN.Text, 0), edtNomeCorrentista.Text, StrToCurrDef(edtSaldoCC.Text, 0));
  mmHistorico.Lines.Add('Nome Correntista: ' + FContaC.NomeCorrentista + #13#10 +
                        'Conta Corrente Nº: ' + FContaC.NumeroCC.ToString);
                        edtSaldoCC.ReadOnly := True;
  if edtNomeCorrentista.Text = '' then
    raise Exception.Create('Correntista Não Informado');
end;

procedure TFrmContaCorrente.btnValorDepositoClick(Sender: TObject);
var
  xValDep: Double;
begin
  if not assigned(FContaC) then
    raise Exception.Create('Conta não criada!');

  try
    xValDep := 0;
    if edtSaldoCC.Text <> '' then
      xValDep := StrToFloat(edtValorDeposito.Text);

    FContaC.DepositoCC(xValDep);

    if xValDep > 0 then
      mmHistorico.Lines.Add('Valor Depositado: ' + edtValorDeposito.Text + #13#10 +
                            'Valor Saldo Atualizado: ' + FloatToStr(FContaC.SaldoCC));
                            edtSaldoCC.Text := FloatToStr(FContaC.SaldoCC);
                            edtValorDeposito.Clear;
  finally

  end;

end;

procedure TFrmContaCorrente.btnValorSaqueClick(Sender: TObject);
var
  xValSaque: Double;
begin
  try
    xValSaque := StrToFloat(edtValorSaque.Text);
    FContaC.SaqueCC(xValSaque);

    if xValSaque > 0 then
      mmHistorico.Lines.Add('Valor Do Saque: ' + xValSaque.ToString + #13#10 +
                            'Valor Saldo Atualizado: ' + FloatToStr(FContaC.SaldoCC) + #13#10);
                            edtSaldoCC.Text := FloatToStr(FContaC.SaldoCC);
                            edtValorSaque.Clear;
  finally

  end;

end;

procedure TFrmContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FContaC);
end;

end.

{1. Crie uma classe para representar uma Pessoa com os atributos privados de nome,
data de nascimento e altura.
Crie os métodos públicos necessários para getters e setters e também um método para
imprimir todos dados de uma pessoa.
Crie um método para calcular a idade da pessoa.


2. Crie uma classe para implementar uma ContaCorrente.
   A classe deve possuir os seguintes atributos: número da conta,
   nome do correntista e saldo.
   Os métodos são os seguintes: alterarNome, depósito e saque;
   No construtor, saldo é opcional, com valor default zero e os
   demais atributos são obrigatórios.

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
