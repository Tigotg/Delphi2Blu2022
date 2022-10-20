unit uEndereco;

interface

type
  TCaminhao = class
    private
      FTamanhoComprimeto: Double;
      FQtdEixos: Integer;
      FCor: String;
      FPeso: Double;
      FAltura: Double;
      procedure SetFAltura(const Value: Double);
      procedure SetFCor(const Value: String);
      procedure SetFPeso(const Value: Double);
      procedure SetFQtdEixos(const Value: Integer);
      procedure SetFTamanhoComprimeto(const Value: Double);

      function GetAltura: Double;
      function GetCor: String;
      function GetPeso: Double;
      function GetQtdEixos: Integer;
      function GetTamanhoComprimeto: Double;
    public
      property TamanhoComprimeto : Double  read GetTamanhoComprimeto write SetFTamanhoComprimeto;
      property QtdEixos          : Integer read GetQtdEixos          write SetFQtdEixos;
      property Cor               : String  read GetCor               write SetFCor;
      property Peso              : Double  read GetPeso              write SetFPeso;
      property Altura            : Double  read GetAltura            write SetFAltura;

      function AcelerarCaminhao: String;
      function PararCaminhao: String;
      function LigarCaminhao: String;
      function DesligarCaminhao: string;
  end;

implementation

{ TCaminhao }

function TCaminhao.AcelerarCaminhao: String;
begin
  Result := 'Caminhão Acelerando';
end;

function TCaminhao.DesligarCaminhao: string;
begin
  Result := 'Desligar Caminhão';
end;

function TCaminhao.GetAltura: Double;
begin
  Result := FAltura;
end;

function TCaminhao.GetCor: String;
begin
  Result := FCor;
end;

function TCaminhao.GetPeso: Double;
begin
  Result := FPeso;
end;

function TCaminhao.GetQtdEixos: Integer;
begin
  Result := FQtdEixos;
end;

function TCaminhao.GetTamanhoComprimeto: Double;
begin
  Result := FTamanhoComprimeto;
end;

function TCaminhao.LigarCaminhao: String;
begin
i
  Result := 'Ligar Caminhão';
end;

function TCaminhao.PararCaminhao: String;
begin
  Result := 'Parar Caminhão';
end;

procedure TCaminhao.SetFAltura(const pValue: Double);
begin
  FAltura := pValue;
end;

procedure TCaminhao.SetFCor(const pValue: String);
begin
  FCor := pValue;
end;

procedure TCaminhao.SetFPeso(const pValue: Double);
begin
  FPeso := pValue;
end;

procedure TCaminhao.SetFQtdEixos(const pValue: Integer);
begin
  FQtdEixos := pValue;
end;

procedure TCaminhao.SetFTamanhoComprimeto(const pValue: Double);
begin
  FTamanhoComprimeto := pValue;
end;

end.
