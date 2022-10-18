program Combustivel;

uses
  Vcl.Forms,
  uBombaCombustivel in 'uBombaCombustivel.pas' {Form1},
  UfrmPrincipal in 'uFrmPrincipal.pas' {FrmAbastecer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
