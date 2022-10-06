program ProgramacaoOrientadaObjeto;

uses
  Vcl.Forms,
  uFrmProgramacaoOrientadaObjeto in 'uFrmProgramacaoOrientadaObjeto.pas' {FrmCalcularAreaTriangulo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalcularAreaTriangulo, FrmCalcularAreaTriangulo);
  Application.Run;
end.
