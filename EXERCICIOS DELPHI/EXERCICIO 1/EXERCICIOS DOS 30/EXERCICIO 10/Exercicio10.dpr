program Exercicio10;

uses
  Vcl.Forms,
  uFrmExercicio10 in 'uFrmExercicio10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
