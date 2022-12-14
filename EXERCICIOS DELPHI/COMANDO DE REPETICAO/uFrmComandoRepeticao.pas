unit uFrmComandoRepeticao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTipoRepeticao =(tprFor, tprWhile, tprRepeat);

  TForm1 = class(TForm)
    lblComandosRepeticao: TLabel;
    btnExecutar: TButton;
    edtVisor1: TEdit;
    edtVisor2: TEdit;
    rdgCondicao: TRadioGroup;
    procedure btnExecutarClick(Sender: TObject);
  private
    function ValidaNumPar: Integer;
    function SaqueSangria: Integer;
    function MetaFinanceira: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

(*//-------------------------------------------------------------------------//
//Faz a soma de todos os numeros pares entre um valor inicial e um valor final.
function ValidaNumPar(Value1: Integer; Value2: Integer): Integer;
var
  I, xResto, xResult: Integer;

begin
  xResto := 0;
  xResult := 0;
  for I := Value1 to Value2 do
    begin
      xResto := I mod 2;            //EXEMPLO ROTINA
      if xResto = 0 then
      begin
        xResult := xResult + I;
      end;
    end;
      Result := xResult;
  end;
//-------------------------------------------------------------------------//

//-------------------------------------------------------------------------//
//Ir? dizer em quantos dias o caixa estar? zerado.
function SaqueSangria(Valor1: Integer; Valor2: Integer): Integer;
var
  xDias: Integer;
begin
  xDias := 0;
  while Valor1 > 0 do
  begin                               //EXEMPLO ROTINA
    Valor1 := Valor1 - Valor2;
    Inc(xDias);
  end;
  Result := xDias;
end;
//-------------------------------------------------------------------------//

//-------------------------------------------------------------------------//
//Ira dizer em quantos dias vou atingir a meta definida
function MetaFinanceira(Num1: Integer; Num2: Integer): Integer;
var
  xMeta: Integer;
begin                                  //EXEMPLO ROTINA
  xMeta := 0;
  repeat
    Val1 := Num1 - Num2;
    Inc(xMeta);     //Inc(xMeta, 2); para incrementar de 2 em 2
  until (Num1 <= 0);    //Dec (xMeta, 2); decrementa de 2 em 2
    Result := xMeta;
end;
//-------------------------------------------------------------------------//

procedure TForm1.btnExecutarClick(Sender: TObject);
var
xTpCondicao: Integer;
begin
  case TTipoRepeticao(rdgCondicao.ItemIndex) of
    tprFor: //FOR
    begin
      xTpCondicao := ValidaNumPar (StrToInt(edtVisor1.Text), StrToInt(edtVisor2.Text));
      ShowMessage('O Resultado da soma dos valores pares ?: ' + IntToStr(xTpCondicao));
    end;
    tprWhile: //WHILE               //EXEMPLO USADO NA ROTINA
    begin
      xTpCondicao := SaqueSangria (StrToInt(edtVisor1.Text), StrToInt(edtVisor2.Text));
      ShowMessage('Em: ' + IntToStr(xTpCondicao) + ' dias o caixa estara zerado.');
    end;
    tprRepeat: //REPEAT
    begin
      xTpCondicao := MetaFinanceira(StrToInt(edtVisor1.Text), StrToInt(edtVisor2.Text));
      ShowMessage('Voc? atingira a sua Meta em: ' + IntToStr(xTpCondicao) + ' dias.');
    end;
  end;
end; *)


procedure TForm1.btnExecutarClick(Sender: TObject);
var
xTpCondicao: Integer;
begin
  case TTipoRepeticao(rdgCondicao.ItemIndex) of
    tprFor: //FOR
    begin
      //Nesse modelo vc chama direto a fun??o(M?todo)
      ShowMessage('O Resultado da soma dos valores pares ?: ' + IntToStr(Self.ValidaNumPar));
    end;
    tprWhile: //WHILE
    begin
      //Nesse modelo vc chama direto a fun??o(M?todo)
      ShowMessage('Em: ' + IntToStr(Self.SaqueSangria) + ' dias o caixa estara zerado.');
    end;
    tprRepeat: //REPEAT
    begin
      //Nesse modelo vc cria a varial e inicializa ela recebendo a func?o (M?todo)
      xTpCondicao := Self.MetaFinanceira;
      ShowMessage('Voc? atingira a sua Meta em: ' + IntToStr(xTpCondicao) + ' dias.');
    end;
  end;
end;

function TForm1.ValidaNumPar: Integer;
var
  I, xSoma: Integer;
begin
  xSoma := 0;
  for I := StrToInt(edtVisor1.Text) to StrToInt(edtVisor2.Text) do
    if (I mod 2) = 0 then
      xSoma := xSoma + I;

      Result := xSoma;
  end;

function TForm1.SaqueSangria: Integer;
var
  xDias, xValor1: Integer;
begin
  xDias := 0;
  xValor1 := StrToInt(edtVisor1.Text);
  while xValor1 > 0 do
  begin                               //EXEMPLO ROTINA
    xValor1 := xValor1 - StrToInt(edtVisor2.Text);
    Inc(xDias);
  end;
  Result := xDias;
end;

function TForm1.MetaFinanceira: Integer;
var
  xMeta, xNum1: Integer;
begin                                  //EXEMPLO ROTINA
  xMeta := 0;
  xNum1 := StrToInt(edtVisor1.Text);
  repeat
    xNum1 := xNum1 - StrToInt(edtVisor2.Text);
    Inc(xMeta);     //Inc(xMeta, 2); para incrementar de 2 em 2
  until xNum1 <= 0;    //Dec (xMeta, 2); decrementa de 2 em 2
    Result := xMeta;
end;

end.
