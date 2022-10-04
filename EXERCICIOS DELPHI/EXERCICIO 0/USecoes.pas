unit USecoes;

interface

uses //Uses para a se��o interface
  UAnimal;

type //Tipos definidos na unit
  TRegistro = record
    Id : Integer;
    Data : Tdate;
    Hora : Ttime;
    Obse : String;
  end;

  TCachorro = class (TAnimal)
    procedure MeuSomEh; override;
  end;

var //Declara��o de variaveis globais - Sempre escapar
  vGlobal : Integer;

implementation

uses //Uses para a se��o implementation
  Vcl.Dialogs;

{ TCachorro }

//Coment�rio em linha

(*
Coment�rio em bloco
*)

procedure TCachorro.MeuSomEh;
begin
  ShowMessage('Au Au!')
end;
end.
