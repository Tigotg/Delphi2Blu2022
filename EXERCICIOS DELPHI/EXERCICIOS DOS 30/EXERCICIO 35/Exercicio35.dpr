program Exercicio35;

uses
  Vcl.Forms,
  uFrmExercicio35 in 'uFrmExercicio35.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
