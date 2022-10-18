unit uBombaCombustivel;

interface

Uses SysUtils;

//Nessa tela os tratamentos utilizados s�o dos field da clase (Parametros)
//Criar primeiro todos os processos da classe para depois ir para o formul�rio
type
  TBombaCombustivel = class
    private
      FQtdTanquePosto:  Double;
      FValorLitro:      Double;
      FTipoCombustivel: String;
      procedure SetQtdTanquePosto(const pValue: Double);
      procedure SetTipoCOmbustivel(const pValue: String);
      procedure SetValorLitro(const pValue: Double);

      function GetQtdTanquePosto: Double;
      function GetTipoCombustivel: String;
      function GetValorLitro: Double;
    public
      procedure AbatecerPorValor(const pValorAbastecer: Double);
      procedure AbatecerPorLitro(const pLitros: Double);
      procedure AlterarValor(const pValorAbastecerAterado: Double);
      procedure AlterarTipoCombustivel(const pTipoCombustivel: String);
      procedure AlterarQTDCombustivel(const pQTDCombust: Double);

      property TipoCombustivel : String read GetTipoCombustivel write SetTipoCombustivel;
      property ValorLitro      : Double read GetValorLitro      write SetValorLitro;
      property QtdTanquePosto  : Double read GetQtdTanquePosto  write SetQtdTanquePosto;
  end;

implementation

{ TBombaCombustivel }

procedure TBombaCombustivel.AbatecerPorLitro(const pLitros: Double);
begin
  if pLitros > FQtdTanquePosto then
    raise Exception.Create('Quantidade Indisponivel.');

  FQtdTanquePosto := FQtdTanquePosto - pLitros;
end;

procedure TBombaCombustivel.AbatecerPorValor(const pValorAbastecer: Double);
var
  Resultado: Double;
begin
  Resultado := pValorAbastecer / ValorLitro;

  if Resultado < FQtdTanquePosto then
    raise Exception.Create('Quantidade Insuficiente para abastecimento.');
    FQtdTanquePosto :=  FQtdTanquePosto - Resultado;
end;

procedure TBombaCombustivel.AlterarTipoCombustivel(const pTipoCombustivel: String);
begin
  FTipoCombustivel := pTipoCombustivel;
end;

procedure TBombaCombustivel.AlterarQTDCombustivel(const pQTDCombust: Double);
begin
  FQtdTanquePosto := FQtdTanquePosto - pQTDCombust;
end;

procedure TBombaCombustivel.AlterarValor(const pValorAbastecerAterado: Double);
begin
  FValorLitro := pValorAbastecerAterado;
end;

function TBombaCombustivel.GetQtdTanquePosto: Double;
begin
  Result := FQtdTanquePosto;
end;

function TBombaCombustivel.GetTipoCombustivel: String;
begin
  Result := FTipoCombustivel;
end;

function TBombaCombustivel.GetValorLitro: Double;
begin
  Result := FValorLitro;
end;

procedure TBombaCombustivel.SetQtdTanquePosto(const pValue: Double);
begin
  FQtdTanquePosto := pValue;
end;

procedure TBombaCombustivel.SetTipoCombustivel(const pValue: String);
begin
  FTipoCombustivel := pValue;
end;

procedure TBombaCombustivel.SetValorLitro(const pValue: Double);
begin
  FValorLitro := pValue;
end;

end.