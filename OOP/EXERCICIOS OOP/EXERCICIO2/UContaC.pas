unit UContaC;

interface

type
  TContaCorrente = class
    private
      FNumeroCC: Integer;
      FNomeCorrentista: String;
      FSaldoCC: Currency;

      function GetNumeroCC: Integer;
      function GetNomeCorrentista: String;
      function GEtSaldoCC: Currency;

      procedure SetNumeroCC(const aValue: Integer);
      procedure SetNomeCorrentista(const aValue: String);
      procedure SetSaldoCC(const aValue: Currency);

    public
      constructor Create(Const aNumeroCC: Integer; const aNomeCorrentista: String; const aSaldo: Currency = 0);

      procedure DepositoCC(var ValorDeposito:Double);
      procedure SaqueCC (var ValorSaque: Double);

      property NumeroCC        : Integer  read GetNumeroCC        write SetNumeroCC;
      property NomeCorrentista : String   read GetNomeCorrentista write SetNomeCorrentista;
      property SaldoCC         : Currency read GEtSaldoCC         write SetSaldoCC;
  end;

implementation

{ TContaCorrente }

constructor TContaCorrente.Create(const aNumeroCC: Integer;
  const aNomeCorrentista: String; const aSaldo: Currency);
begin
  FNumeroCC        := aNumeroCC;
  FNomeCorrentista := aNomeCorrentista;
  FSaldoCC         := aSaldo;
end;

procedure TContaCorrente.DepositoCC(var ValorDeposito: Double);
begin
  FSaldoCC := FSaldoCC +
end;

procedure TContaCorrente.SaqueCC(var ValorSaque: Double);
begin

end;

function TContaCorrente.GetNumeroCC: Integer;
begin
  Result := FNumeroCC;
end;

function TContaCorrente.GetNomeCorrentista: String;
begin
  Result := FNomeCorrentista
end;

function TContaCorrente.GEtSaldoCC: Currency;
begin
  Result := FSaldoCC;
end;

procedure TContaCorrente.SetNumeroCC(const aValue: Integer);
begin
  FNumeroCC := aValue;
end;

procedure TContaCorrente.SetNomeCorrentista(const aValue: String);
begin
  FNomeCorrentista := aValue;
end;

procedure TContaCorrente.SetSaldoCC(const aValue: Currency);
begin
  FSaldoCC := aValue;
end;

end.
