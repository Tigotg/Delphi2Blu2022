program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xSaldo, xSangria: Currency;
  xContinuar: Byte;
begin
  try
    writeln('Retirado de dinheiro na conta');

    writeln('Entre com o saldo da sua conta: ');
    Readln(xSaldo);

    while xSaldo > 0 do
    begin
      writeln('Qual será o valor da sua retirada: ');
      Readln(xSangria);

      xSaldo := xSaldo - xSangria;

      writeln('Deseja continuar com as retiradas? (1-SIM 2-NÃO)');
      Readln(xContinuar);

      if xContinuar <> 1 then
        break;
    end;

    writeln('Seu saldo atual é : ' + FloatToStr(xSaldo));
    Readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
