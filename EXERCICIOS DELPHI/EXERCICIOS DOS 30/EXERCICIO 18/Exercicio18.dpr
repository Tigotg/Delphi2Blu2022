program Exercicio18;

uses
  Vcl.Forms,
  uFrmExercicio18 in 'uFrmExercicio18.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
