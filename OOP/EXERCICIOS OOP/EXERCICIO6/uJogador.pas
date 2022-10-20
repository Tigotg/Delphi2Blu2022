unit uJogador;

interface

type
  TJogador = class
    private
      FPosicao: String;
      FIdade: Byte;
      FNome: String;
      procedure SetIdade(const Value: Byte);
      procedure SetNome(const Value: String);
      procedure SetPosicao(const Value: String);

      function GetIdade: Byte;
      function GetNome: String;
      function GPosicao: String;
    public
      property Nome   : String read GetNome  write SetNome;
      property Idade  : Byte   read GetIdade write SetIdade;
      property Posicao: String read GPosicao write SetPosicao;
  end;

implementation

{ TJogador }

function TJogador.GetIdade: Byte;
begin
  Result := FIdade;
end;

function TJogador.GetNome: String;
begin
  Result := FNome;
end;

function TJogador.GPosicao: String;
begin
  Result := FPosicao;
end;

procedure TJogador.SetIdade(const Value: Byte);
begin
  FIdade := Value;
end;

procedure TJogador.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TJogador.SetPosicao(const Value: String);
begin
  FPosicao := Value;
end;

end.
