program Exercicio4;

uses
  Vcl.Forms,
  uFrmExercicio4 in 'uFrmExercicio4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
