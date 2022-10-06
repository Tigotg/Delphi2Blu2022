program ProgramacaoOrientadaObjeto;

uses
  Vcl.Forms,
  uFrmProgramacaoOrientadaObjeto in 'uFrmProgramacaoOrientadaObjeto.pas' {FrmCalcularAreaTriangulo},
  UTriangulo in 'UTriangulo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalcularAreaTriangulo, FrmCalcularAreaTriangulo);
  Application.Run;
end.
