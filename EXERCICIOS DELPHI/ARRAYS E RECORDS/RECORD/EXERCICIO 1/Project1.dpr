program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
TRegCliente = record
  Codigo: Integer;
  Nome: String;
  Idade: Byte;
end;

var
  xCliente : TRegCliente;

begin
  try
    writeln('Entre com o código do cliente: ');
    readln(xCliente.Codigo);

    writeln('Entre com o nome do cliente: ');
    readln(xCliente.Nome);

    writeln('Entre com a idade do cliente: ');
    readln(xCliente.Idade);

    writeln('Código: ' + xCliente.Codigo.ToString);
    writeln('Nome..: ' + xCliente.Nome);
    writeln('Idade.: ' + xCliente.Idade.ToString);

    readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
