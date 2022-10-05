program Exercicio19;

uses
  Vcl.Forms,
  uFrmExercicio19 in 'uFrmExercicio19.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
