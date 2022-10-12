unit uPessoaFisica;

interface

type
  TPessoaFisica = class
    private
      FCPF   : String;
      FIdade : Byte;
      function GetCPF: String;
      function GetIdade: Byte;
      procedure SetCPF(const pValue: String);
      procedure SetIdade(const pValue: Byte);

    public
      property CPF   : String read GetCPF   write SetCPF;
      property Idade : Byte   read GetIdade write SetIdade;

      function ValidaCPF(pCPF: string): Boolean;
  end;

implementation

uses SysUtils;

{ TPessoaFisica }

function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result := FIdade;
end;

procedure TPessoaFisica.SetCPF(const pValue: String);
begin
  FCPF := pValue;
end;

procedure TPessoaFisica.SetIdade(const pValue: Byte);
begin
  FIdade := pValue;
end;

function TPessoaFisica.ValidaCPF(pCPF: string): Boolean;
var
  dig10, dig11: string;
  s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              ValidaCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then ValidaCPF := true
    else ValidaCPF := false;
  except
    ValidaCPF := false
  end;
end;

function imprimeCPF(CPF: string): string;
begin
  imprimeCPF := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
    copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;

end.
end;

end.
