unit uPessoa;

interface

type
  TPessoa = class
    private
      FNome:     String;
      FEndereco: String;

      function GetEndereco: String;
      function GetNome: String;
      procedure SetEndereco(const Value: String);
      procedure SetNome(const Value: String);

    public
      property Nome     : String read GetNome     write SetNome;
      property Endereco : String read GetEndereco write SetEndereco;
      procedure GravaPessoa(const pPessoa: String);
  end;

implementation

{ TPessoa }



{ TPessoa }

function TPessoa.GetEndereco: String;
begin

end;

function TPessoa.GetNome: String;
begin

end;

procedure TPessoa.GravaPessoa(const pPessoa: String);
begin

end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
