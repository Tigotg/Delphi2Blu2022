program Exercicio20;

uses
  Vcl.Forms,
  uFrmExercicio20 in 'uFrmExercicio20.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
