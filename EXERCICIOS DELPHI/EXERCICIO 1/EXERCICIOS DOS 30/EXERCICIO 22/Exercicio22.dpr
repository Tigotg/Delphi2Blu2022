program Exercicio22;

uses
  Vcl.Forms,
  uFrmExercicco22 in 'uFrmExercicco22.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
