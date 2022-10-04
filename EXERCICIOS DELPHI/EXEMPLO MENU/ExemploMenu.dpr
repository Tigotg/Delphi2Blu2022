program ExemploMenu;

uses
  Vcl.Forms,
  uFrmExemploMenu in 'uFrmExemploMenu.pas' {Form1},
  uFrmClientes in 'uFrmClientes.pas' {frmClientes},
  uFrmFornecedores in 'uFrmFornecedores.pas' {frmFornecedores},
  uFrmProdutos in 'uFrmProdutos.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
