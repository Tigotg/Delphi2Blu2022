program Exercicio24;

uses
  Vcl.Forms,
  uFrmExercicio24 in 'uFrmExercicio24.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
