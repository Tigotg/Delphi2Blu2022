unit uTime;

interface

uses
  System.DateUtils, uJogador, System.Generics.Collections;

type
  TTime = class
    private
      FId: Integer;
      FNomeTime: String;
      FTecnico: String;
      FAnoFundacao: TDate;
      FJogadores: TList<TJogador>;

      function GetAnoFundacao: TDate;
      function GetNomeTime: String;
      function GetTecnico: String;

      procedure SetAnoFundacao(const pValue: TDate);
      procedure SetNomeTime(const pValue: String);
      procedure SetTecnico(const pValue: String);
      function GetJogadores: TList<TJogador>;
    procedure SetId(const Value: Integer);
    function GetId: Integer;
    public
      constructor Create(pJogadores: TList<TJogador>);

      property Id:          Integer         read GetId          write SetId;
      property NomeTime:    String          read GetNomeTime    write SetNomeTime;
      property Tecnico:     String          read GetTecnico     write SetTecnico;
      property AnoFundacao: TDate           read GetAnoFundacao write SetAnoFundacao;
      property Jogadores:   TList<TJogador> read GetJogadores;
  end;

implementation

{ TTime }

constructor TTime.Create(pJogadores: TList<TJogador>);
begin
  Inherited create;

  FJogadores := pJogadores;
end;

function TTime.GetAnoFundacao: TDate;
begin
  Result := FAnoFundacao;
end;

function TTime.GetId: Integer;
begin
  Result := FId;
end;

function TTime.GetJogadores: TList<TJogador>;
begin
  Result := FJogadores;
end;

function TTime.GetNomeTime: String;
begin
  Result := FNomeTime;
end;

function TTime.GetTecnico: String;
begin
  Result := FTecnico;
end;

procedure TTime.SetAnoFundacao(const pValue: TDate);
begin
  FAnoFundacao := pValue;
end;

procedure TTime.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TTime.SetNomeTime(const pValue: String);
begin
  FNomeTime := pValue;
end;

procedure TTime.SetTecnico(const pValue: String);
begin
  FTecnico := pValue;
end;

end.
