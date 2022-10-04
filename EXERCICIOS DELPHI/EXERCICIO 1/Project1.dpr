program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xEntrada : String;
  xMeuNome : String;
  xMinhaIdade : Byte;
  xCasado : Boolean;
  xCotacaoDolar : Currency;

begin
  try
    xMeuNome      := 'Tiago';
    xMinhaIdade   := 32;
    xCasado       := True;
    xCotacaoDolar  := 5.50;

    Writeln('Meu nome é: ' + (XMeuNome));
    Writeln('Minha idade é: ' + IntToStr(xMinhaIdade));
    Writeln('Sou casado: ' + BoolToStr(xCasado));
    Writeln('Cotação do Dólar é: ' + FloatToStr(xCotacaoDolar));

    Readln(xEntrada);
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
