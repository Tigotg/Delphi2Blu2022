program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
xQtdeEntrada: Integer;
xNumero: Integer;
I: Integer;
XSoma: Integer;
begin
  try
    xSoma := 0;

    Writeln('Entre com a quantidade total de número: ');
    Readln(xQtdeEntrada);

    //For I := 1 to xQtdeEntrada do
    For I := 0 to xQtdeEntrada -1 do //CRESCENTE
    //For I := xQtdeEntrada downto 1 do // DECRESCENTE
    begin
      writeln('Entre com o ' + IntToStr(I+1) + 'º número: ');
      Readln(xNumero);
      xSoma := xSoma + xNumero;
    end;

    Writeln('A soma dos números é: ' + IntToStr(xSoma));
    Readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
