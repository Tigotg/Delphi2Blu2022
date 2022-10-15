unit uPessoaFisica;

interface

uses uPessoa;

type
  TPessoaFisica = class (TPessoa)
    private
      FCPF   : String;
      FIdade : Integer;
      function GetCPF: String;
      function GetIdade: Integer;
      procedure SetCPF(const pValue: String);
      procedure SetIdade(const pValue: Integer);

      function ValidaCPF(pCPF: string): Boolean;
    public
      property CPF   : String  read GetCPF   write SetCPF;
      property Idade : Integer read GetIdade write SetIdade;

      function imprimeCPF(pCPF: string): string;

      procedure GravaPessoa; override;
  end;

implementation

uses SysUtils;

{ TPessoaFisica }

function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Integer;
begin
  Result := FIdade;
end;

procedure TPessoaFisica.GravaPessoa;
begin
  if not Self.ValidaCPF(FCPF) then
    raise Exception.Create('CPF Inv�lido, Informe um CPF V�lido');
end;

procedure TPessoaFisica.SetCPF(const pValue: String);
begin
  FCPF := pValue;
end;

procedure TPessoaFisica.SetIdade(const pValue: Integer);
begin
  FIdade := pValue;
end;

function TPessoaFisica.ValidaCPF(pCPF: string): Boolean;
var
  dig10, dig11: string;
  s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF � um n�mero formado por 11 d�gitos)
  if ((pCPF = '00000000000') or (pCPF = '11111111111') or
      (pCPF = '22222222222') or (pCPF = '33333333333') or
      (pCPF = '44444444444') or (pCPF = '55555555555') or
      (pCPF = '66666666666') or (pCPF = '77777777777') or
      (pCPF = '88888888888') or (pCPF = '99999999999') or
      (length(pCPF) <> 11))then
    begin
      ValidaCPF := false;
      exit;
    end;

          // try - protege o c�digo para eventuais erros de convers�o de tipo na fun��o StrToInt
    try
      { *-- C�lculo do 1o. Digito Verificador --* }
      s := 0;
      peso := 10;
      for i := 1 to 9 do
      begin
        // StrToInt converte o i-�simo caractere do CPF em um n�mero
        s := s + (StrToInt(pCPF[i]) * peso);
        peso := peso - 1;
      end;
      r := 11 - (s mod 11);
      if ((r = 10) or (r = 11))
         then dig10 := '0'
      else str(r:1, dig10); // converte um n�mero no respectivo caractere num�rico

      { *-- C�lculo do 2o. Digito Verificador --* }
      s := 0;
      peso := 11;
      for i := 1 to 10 do
      begin
        s := s + (StrToInt(pCPF[i]) * peso);
        peso := peso - 1;
      end;
      r := 11 - (s mod 11);
      if ((r = 10) or (r = 11))
         then dig11 := '0'
      else str(r:1, dig11);

      { Verifica se os digitos calculados conferem com os digitos informados. }
      if ((dig10 = pCPF[10]) and (dig11 = pCPF[11]))
         then ValidaCPF := true
      else ValidaCPF := false;
    except
      ValidaCPF := false
    end;
end;

function TPessoaFisica.imprimeCPF(pCPF: string): string;
begin
  imprimeCPF := copy(pCPF, 1, 3) + '.' + copy(pCPF, 4, 3) + '.' +
  copy(pCPF, 7, 3) + '-' + copy(pCPF, 10, 2);
end;

end.
