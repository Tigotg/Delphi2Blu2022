program HerancaOOP;

uses
  Vcl.Forms,
  uFrmHerancaOOP in 'uFrmHerancaOOP.pas' {Form1},
  UAnimal in 'UAnimal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
