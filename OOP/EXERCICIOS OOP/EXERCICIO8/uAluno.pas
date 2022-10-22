unit uAluno;

interface

type
  TAluno = class
    private
      FNotaTrabalho: Double;
      FNotaProva1: Double;
      FnotaProva2: Double;
      FMatricula: Integer;
      FNome: String;
      procedure SetMatricula(const pMatric: Integer);
      procedure SetNome(const pNome: String);
      procedure SetNotaProva1(const pNP1: Double);
      procedure SetNotaProva2(const pNP2: Double);
      procedure SetNotaTrabalho(const pNT: Double);

      function GetMatricula: Integer;
      function GetNome: String;
      function GetNotaProva1: Double;
      function GetNotaTrabalho: Double;
      function GetNotaProva2: Double;
    public
      property Nome: String          read GetNome          write SetNome;
      property Matricula: Integer    read GetMatricula     write SetMatricula;
      property NotaProva1: Double    read GetNotaProva1    write SetNotaProva1;
      property NotaProva2: Double    read GetNotaProva2    write SetNotaProva2;
      property NotaTrabalho: Double  read GetNotaTrabalho  write SetNotaTrabalho;
  end;

implementation

{ TAluno }

function TAluno.GetMatricula: Integer;
begin
  Result := FMatricula;
end;

function TAluno.GetNome: String;
begin
  Result := FNome;
end;

function TAluno.GetNotaProva1: Double;
begin
  Result := FNotaProva1;
end;

function TAluno.GetNotaProva2: Double;
begin
  Result := FNotaProva2;
end;

function TAluno.GetNotaTrabalho: Double;
begin
  Result := FNotaTrabalho;
end;

procedure TAluno.SetMatricula(const pMatric: Integer);
begin
  FMatricula := pMatric;
end;

procedure TAluno.SetNome(const pNome: String);
begin
  FNome := pNome;
end;

procedure TAluno.SetNotaProva1(const pNP1: Double);
begin
  FNotaProva1 := pNP1;
end;

procedure TAluno.SetNotaProva2(const pNP2: Double);
begin
  FNotaProva2 := pNP2;
end;

procedure TAluno.SetNotaTrabalho(const pNT: Double);
begin
  FNotaTrabalho := pNT;
end;

end.
