program LEITOR_XML;

uses
  Vcl.Forms,
  uFrmLeituraXml in 'uFrmLeituraXml.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
