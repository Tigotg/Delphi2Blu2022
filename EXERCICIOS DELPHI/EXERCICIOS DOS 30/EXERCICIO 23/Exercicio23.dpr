program Exercicio23;

uses
  Vcl.Forms,
  uFrmExercicio23 in 'uFrmExercicio23.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
