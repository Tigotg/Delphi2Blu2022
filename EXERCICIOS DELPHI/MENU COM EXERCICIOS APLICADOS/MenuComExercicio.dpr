program MenuComExercicio;

uses
  Vcl.Forms,
  uFrmMenuComExercicio in 'uFrmMenuComExercicio.pas' {FrmMenuComExercicio},
  uFrmSalario in 'uFrmSalario.pas' {frmSalario},
  uFrmValidarMes in 'uFrmValidarMes.pas' {frmValidarMes},
  uFrmLerValores in 'uFrmLerValores.pas' {frmLerValores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuComExercicio, FrmMenuComExercicio);
  Application.Run;
end.
