program Exercicio9;

uses
  Vcl.Forms,
  uFrmExercicio9 in 'uFrmExercicio9.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
