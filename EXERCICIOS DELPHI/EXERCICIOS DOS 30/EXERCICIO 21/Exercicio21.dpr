program Exercicio21;

uses
  Vcl.Forms,
  uFrmExercicio21 in 'uFrmExercicio21.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
