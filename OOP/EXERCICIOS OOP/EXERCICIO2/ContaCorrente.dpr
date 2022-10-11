program ContaCorrente;

uses
  Vcl.Forms,
  uFrmContaCorrente in 'uFrmContaCorrente.pas' {FrmContaCorrente},
  UContaC in 'UContaC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmContaCorrente, FrmContaCorrente);
  Application.Run;
end.
