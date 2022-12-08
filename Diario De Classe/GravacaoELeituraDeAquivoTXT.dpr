program GravacaoELeituraDeAquivoTXT;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmDiarioDeClasse};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDiarioDeClasse, frmDiarioDeClasse);
  Application.Run;
end.
