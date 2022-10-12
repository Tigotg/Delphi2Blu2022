program OOPClassPessoa;

uses
  Vcl.Forms,
  uFrmOOPClassPessoa in 'uFrmOOPClassPessoa.pas' {FrmOOPClassPessoa},
  uPessoa in 'uPessoa.pas',
  uPessoaJuridica in 'uPessoaJuridica.pas',
  uPessoaFisica in 'uPessoaFisica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmOOPClassPessoa, FrmOOPClassPessoa);
  Application.Run;
end.
