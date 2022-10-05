program Exercicio7;

uses
  Vcl.Forms,
  uFrmExercicio7 in 'uFrmExercicio7.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
