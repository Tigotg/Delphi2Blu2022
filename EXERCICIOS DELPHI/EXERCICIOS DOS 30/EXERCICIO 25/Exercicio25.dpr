program Exercicio25;

uses
  Vcl.Forms,
  uFrmExercicio25 in 'uFrmExercicio25.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
