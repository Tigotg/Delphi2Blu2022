program Exercicio11;

uses
  Vcl.Forms,
  uFrmExercicio11 in 'uFrmExercicio11.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
