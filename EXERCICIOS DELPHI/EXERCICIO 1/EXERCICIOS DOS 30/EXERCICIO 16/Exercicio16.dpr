program Exercicio16;

uses
  Vcl.Forms,
  uFrmExercicio16 in 'uFrmExercicio16.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
