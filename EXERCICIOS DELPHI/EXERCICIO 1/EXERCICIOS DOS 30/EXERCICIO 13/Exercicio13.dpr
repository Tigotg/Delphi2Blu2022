program Exercicio13;

uses
  Vcl.Forms,
  uFrmExercicio13 in 'uFrmExercicio13.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
