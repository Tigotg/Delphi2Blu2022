program Exercicio1;

uses
  Vcl.Forms,
  uFrmExercicio1 in 'uFrmExercicio1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
