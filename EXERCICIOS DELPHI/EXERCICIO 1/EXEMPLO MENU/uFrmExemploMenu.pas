unit uFrmExemploMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Produtos1: TMenuItem;
    PopupMenu1: TPopupMenu;
    OlMundo1: TMenuItem;
    btnTestePopup: TButton;
    OlPlaneta1: TMenuItem;
    ByeBye1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure OlMundo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uFrmClientes, uFrmFornecedores, uFrmProdutos;

{$R *.dfm}

procedure TForm1.Clientes1Click(Sender: TObject);
begin
  if frmClientes  = nil then
    frmClientes := TfrmClientes.Create(Self);

  frmClientes.Show;
end;

procedure TForm1.Clientes2Click(Sender: TObject);
begin
  if frmFornecedores = nil then
    frmFornecedores := TfrmFornecedores.Create(Self);
  frmFornecedores.Show;
end;

procedure TForm1.OlMundo1Click(Sender: TObject);
begin
  ShowMessage('Ola Mundo');
end;

procedure TForm1.Produtos1Click(Sender: TObject);
begin
  if frmProdutos = nil then
    frmProdutos := TfrmProdutos.Create(Self);
  frmProdutos.Show;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
