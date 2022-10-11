program DadosPessoa;

uses
  Vcl.Forms,
  uFrmDadosPessoa in 'uFrmDadosPessoa.pas' {FrmDadosPessoa},
  UPessoa in 'UPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmDadosPessoa, FrmDadosPessoa);
  Application.Run;
end.
