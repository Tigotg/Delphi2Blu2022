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
      Constructor Create(const TotalAndar: Integer; CapacidadePessoas: Integer; AndarInic: Integer = 0);

      property Andar: Integer           read GetAndar           write SetAndar;
      property QTDPessoas: Integer      read GetQTDPessoas      write SetQTDPessoas;
      property CapacidadeCarga: Integer read GetCapacidadeCarga write SetCapacidadeCarga;
      property QTDAndares: Integer      read GetQTDAndares      write SetQTDAndares;

      function Entrar(const pNumPesEntrou: Integer): Integer;
      function Sair(const pNumPesSaiu: Integer):Integer;
      function Subir(const pSobAndar: Integer): Integer;
      function Descer(const pDescAndar: Integer): Integer;
  end;

implementation

{ TElevador }

constructor TElevador.Create(const TotalAndar: Integer; CapacidadePessoas: Integer; AndarInic: Integer);
begin
  FQTDAndares := TotalAndar;
  FCapacidadeCarga := CapacidadePessoas;
  FAndar := AndarInic;
end;

function TElevador.Descer(const pDescAndar: Integer): Integer;
begin
  if FAndar + pDescAndar <= FQTDAndares  then
    FAndar := pDescAndar - FAndar;
    ShowMessage('Descendo... Descendo... Descendo');
end;

function TElevador.Subir(const pSobAndar: Integer): Integer;
begin
  if FAndar + pSobAndar >= FQTDAndares then
    begin
      FAndar := pSobAndar + FAndar;
      ShowMessage('Subindo... Subindo... Subindo');
    end
  else  if True then

end;

function TElevador.Entrar(const pNumPesEntrou: Integer): Integer;
begin
  if FQTDPessoas + pNumPesEntrou < FCapacidadeCarga then
    begin
      FQTDPessoas := FQTDPessoas + pNumPesEntrou;
      ShowMessage('Entrou Pessoa(s)');
    end
  else
    ShowMessage('N�o a Mais Lugar');
end;

function TElevador.Sair(const pNumPesSaiu: Integer): Integer;
begin
  if pNumPesSaiu >= 1 then
    begin
      FQTDPessoas := FQTDPessoas - pNumPesSaiu;
      ShowMessage('Saiu Pessoa(s).');
    end
    else if FQTDPessoas + pNumPesSaiu >= 1 then
    begin
      FQTDPessoas := FQTDPessoas - pNumPesSaiu;
      ShowMessage('Saiu Pessoa(s)');
    end
    else if pNumPesSaiu <= 0 then
      ShowMessage('N�o � Pessoa para Descer');
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
