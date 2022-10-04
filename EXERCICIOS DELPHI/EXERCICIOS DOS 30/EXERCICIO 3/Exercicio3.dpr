program Exercicio3;

uses
  Vcl.Forms,
  uFrmExercicio3 in 'uFrmExercicio3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
