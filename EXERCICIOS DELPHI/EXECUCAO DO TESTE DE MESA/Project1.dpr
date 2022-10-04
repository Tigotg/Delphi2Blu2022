program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x, y: Integer;

begin
  try
    x := 5;
    y := 0;

    while (x > 2) do
    Begin
    writeln(x);

    //if x = 4 then
      //continue;   //Entra em Loop Infinito
    y := y + x;
    x := x - 1;

    //if x = 3 then
      //break;        //Esse exemplo funciona
    end;

    Readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
