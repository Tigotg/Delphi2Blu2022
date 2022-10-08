unit UAnimal;

interface

type
  TEnumAnimal = (stCachorro, stGato, stPassaro);

  //TObject - Primeira Classe do Delphi - Toda Classe Herda dela
  TAnimal = class //Clase abstrata ou classe base
    private
      FPatas: Byte;//Tipos primitivos de dados o Dlphi limpa da mem�ria
                   //Se for do Tipo TCachorro por exemplo precisa ter um destructor
    function GetPatas: Byte;
    procedure SetPatas(const aValue: Byte);

    public
      //M�todo abstrato
      //Virtual Abstract Sempre s�o as filhas que ter�o a implementa��o
      //Por regra quando tiver VIRTUAL; ABSTRACT deve se sobre escrever na classe filho
      //conforne na classe TCachorro abaixo
      function RetornarSom: String; virtual; abstract;

      property Patas: Byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
    private
    public
      constructor Create;
      //Sobre escrita do m�todo da classe pai quando tiver OVERRIDE
      function RetornarSom: String; override;
  end;

  TGato = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

implementation

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas := aValue;
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  Patas := 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'Piu Piu';
end;

{ TGato }

constructor TGato.Create;
begin
  Patas := 4;
end;

function TGato.RetornarSom: String;
begin
  Result := 'Miau Miauuuu';
end;

{ TCachorro }

constructor TCachorro.Create;
begin
  Patas := 4;
end;

function TCachorro.RetornarSom: String;
begin
  Result := 'Au au';
end;

end.
