program Exercicio17;

uses
  Vcl.Forms,
  uFrmExercicio17 in 'uFrmExercicio17.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
