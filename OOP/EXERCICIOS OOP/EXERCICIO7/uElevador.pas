unit uElevador;

interface

uses
  System.SysUtils, vcl.Dialogs;

type
  TElevador = class
    private
      FAndar: Integer;
      FQTDAndares: Integer;
      FQTDPessoas: Integer;
      FCapacidadeCarga: Integer;
      procedure SetAndar(const pValue: Integer);
      procedure SetCapacidadeCarga(const pValue: Integer);
      procedure SetQTDPessoas(const pValue: Integer);
      procedure SetQTDAndares(const pValue: Integer);

      function GetAndar: Integer;
      function GetCapacidadeCarga: Integer;
      function GetQTDPessoas: Integer;
      function GetQTDAndares: Integer;
    public
      Constructor Create(const CapacidadePessoas: Integer; TotalAndares: Integer; AndarInic: Integer = 0);

      property Andar: Integer           read GetAndar           write SetAndar;
      property QTDPessoas: Integer      read GetQTDPessoas      write SetQTDPessoas;
      property CapacidadeCarga: Integer read GetCapacidadeCarga write SetCapacidadeCarga;
      property QTDAndares: Integer      read GetQTDAndares      write SetQTDAndares;

      function Entrar(const pNumPesEntrou: Integer): Integer;
      function Sair(const pNumPesSaiu: Integer):Integer;
      function Subir: String;
      function Descer: String;
  end;

implementation

{ TElevador }

constructor TElevador.Create(const CapacidadePessoas: Integer; TotalAndares,
  AndarInic: Integer);
begin
  FQTDAndares := TotalAndares;
  FCapacidadeCarga := CapacidadePessoas;
  FAndar := AndarInic;
end;

function TElevador.Descer: String;
begin
  if FAndar <= FQTDAndares  then
    ShowMessage('Descendo... Descendo... Descendo');
end;

function TElevador.Subir: String;
begin
  if FAndar >= FQTDAndares then
    ShowMessage('Subindo... Subindo... Subindo');
end;


function TElevador.Entrar(const pNumPesEntrou: Integer): Integer;
begin
  if FQTDPessoas < FCapacidadeCarga then
    FCapacidadeCarga := FQTDPessoas;
end;

function TElevador.Sair(const pNumPesSaiu: Integer): Integer;
begin

end;

function TElevador.GetAndar: Integer;
begin
  Result := FAndar;
end;

function TElevador.GetCapacidadeCarga: Integer;
begin
  Result := FCapacidadeCarga;
end;

function TElevador.GetQTDAndares: Integer;
begin
  Result := FQTDAndares;
end;

function TElevador.GetQTDPessoas: Integer;
begin
  Result := FQTDPessoas;
end;

procedure TElevador.SetAndar(const pValue: Integer);
begin
  FAndar := pValue;
end;

procedure TElevador.SetCapacidadeCarga(const pValue: Integer);
begin
  FCapacidadeCarga := pValue;
end;

procedure TElevador.SetQTDAndares(const pValue: Integer);
begin
  FQTDAndares := pValue;
end;

procedure TElevador.SetQTDPessoas(const pValue: Integer);
begin
  FQTDPessoas := pValue;
end;

end.
