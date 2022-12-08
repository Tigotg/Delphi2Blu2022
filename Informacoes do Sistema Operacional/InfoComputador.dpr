program InfoComputador;

uses
  Vcl.Forms,
  uFrmprincipal in 'uFrmprincipal.pas' {frmInfoSistema},
  uInfoPC in 'uInfoPC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInfoSistema, frmInfoSistema);
  Application.Run;
end.
