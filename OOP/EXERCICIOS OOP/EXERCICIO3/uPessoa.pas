unit uPessoa;

interface

type
  TPessoa = class
    private
      FNome:     String;
      FEndereco: String;

      function GetEndereco: String;
      function GetNome: String;
      procedure SetEndereco(const pValue: String);
      procedure SetNome(const pValue: String);

    public
      property Nome     : String read GetNome     write SetNome;
      property Endereco : String read GetEndereco write SetEndereco;
      procedure GravaPessoa; virtual; abstract;
      //procedure GravaPessoa deve ter nas tres units, a classe mãe tem que ter VIRTUAL; ABSTRACT
      //e nas procedures filhas OVERRIDE
  end;

implementation

{ TPessoa }

function TPessoa.GetEndereco: String;
begin
  Result := FEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetEndereco(const pValue: String);
begin
  FEndereco := pValue;
end;

procedure TPessoa.SetNome(const pValue: String);
begin
  FNome := pValue;
end;

end.
