program Exercicio15;

uses
  Vcl.Forms,
  uFrmExercicio15 in 'uFrmExercicio15.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.