program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
TRegCliente = record
  Codigo: Integer;
  Nome: String;
  Idade: Integer;
end;

  TListCliente = array of TRegCliente;

var
  xContinuar:  Integer;
  xCliente: TRegCliente;
  xListaCliente: TListCliente;

  procedure AddCliente(const aRegCliente: TRegCliente);
  begin
    SetLength(xListaCliente, Length(xListaCliente)+1);
    xListaCliente[Length(xListaCliente)-1] := aRegCliente;
  end;

  procedure ListarClientes;
  var
  I: Integer;
  xRegCliente: TRegCliente;
  begin
    writeln('Listando...');

    for I := 0 to Length(xListaCliente)-1 do
    begin
      xRegCliente := xListaCliente[I];

      writeln('C�digo: ' + xRegCliente.Codigo.ToString);
      writeln('Nome..: ' + xRegCliente.Nome);
      writeln('Idade.: ' + xRegCliente.Idade.ToString);
    end;
  end;

begin
  try
    repeat
      writeln('Entre com o c�digo do cliente: ');
      readln(xCliente.Codigo);

      writeln('Entre com o nome do cliente: ');
      readln(xCliente.Nome);

      writeln('Entre com a Idade do cliente: ');
      readln(xCliente.Idade);

      AddCliente(xCliente);

      writeln('Deseja cadastrar mais clientes (1-SIM / 2-N�O)');
      readln(xContinuar);
    until (xContinuar = 2);

    ListarClientes;

    Readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
