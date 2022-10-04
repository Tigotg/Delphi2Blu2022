program Exercicio5;

uses
  Vcl.Forms,
  uFrmExercicio5 in 'uFrmExercicio5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
