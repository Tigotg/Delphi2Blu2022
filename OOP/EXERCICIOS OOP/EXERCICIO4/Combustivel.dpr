program Combustivel;
uses
  Vcl.Forms,
  uBombaCombustivel in 'uBombaCombustivel.pas' {Form1},
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmAbastecer};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmAbastecer, FrmAbastecer);
  Application.Run;
end.
