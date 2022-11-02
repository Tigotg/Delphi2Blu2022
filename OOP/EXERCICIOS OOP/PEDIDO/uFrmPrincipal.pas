unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, uFrmCompradores, uFrmFornecedores, uFrmProdutos, uFrmUnidadeMedida, uFrmPedidos;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Image1Click(Sender: TObject);
begin
  if not assigned(FrmProdutos) then
    FrmProdutos := TFrmProdutos.Create(Self);

  FrmProdutos.Show;
end;

procedure TFrmPrincipal.Image2Click(Sender: TObject);
begin
  if not assigned(FrmCompradores) then
    FrmCompradores := TFrmCompradores.Create(Self);

  FrmCompradores.Show;
end;

procedure TFrmPrincipal.Image3Click(Sender: TObject);
begin
  if not Assigned(FrmFornecedores) then
    FrmFornecedores := TFrmFornecedores.Create(Self);

  FrmFornecedores.Show;
end;

procedure TFrmPrincipal.Image4Click(Sender: TObject);
begin
  if not assigned(FrmCompradores) then
    FrmUnidadeMedida := TFrmUnidadeMedida.Create(Self);

  FrmUnidadeMedida.Show;
end;

procedure TFrmPrincipal.Image5Click(Sender: TObject);
begin
  if not assigned(FrmPedidos) then
    FrmPedidos := TFrmPedidos.Create(Self);

  FrmPedidos.Show;
end;

end.
