unit UPessoa;

interface

type
  TPessoa = class
  private
    FNome: String;
    FDataNascimento: TDate;
    FAltura : Double;

    function GetDTNasc: Tdate;
    function GetNome: String;
    function GetAltura: Double;
    procedure SetDTNasc(const aValue: Tdate);
    procedure SetNome(const aValue: String);
    procedure SetAltura(const aValue: Double);

  public
    function CalcularIdade: Double;
    function ImprimeDados: String;

    property Nome:   String read GetNome write SetNome;
    property DTNasc: Tdate read GetDTNasc write SetDTNasc;
    property Altura: Double read GetAltura write SetAltura;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.CalcularIdade: Double;
var
  xAnoNasc: Double;
begin
  Result := Date - xAnoNasc;
end;

function TPessoa.ImprimeDados: String;
begin
  Result := CalcularIdade.ToString;
end;

function TPessoa.GetAltura: Double;
begin
  Result :=  FAltura;
end;

function TPessoa.GetDTNasc: Tdate;
begin
  Result := FDataNascimento;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetAltura(const aValue: Double);
begin
  FAltura := aValue;
end;

procedure TPessoa.SetDTNasc(const aValue: Tdate);
begin
  FDataNascimento := aValue;
end;

procedure TPessoa.SetNome(const aValue: String);
begin
  FNome := aValue;
end;

end.
