program Exercicio6;

uses
  Vcl.Forms,
  uFrmExercicio6 in 'uFrmExercicio6.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
