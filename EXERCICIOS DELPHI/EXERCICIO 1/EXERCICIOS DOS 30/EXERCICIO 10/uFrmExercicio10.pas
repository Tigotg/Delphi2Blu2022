unit uFrmExercicio10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtValorCompra: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mmTotal: TMemo;
    Label3: TLabel;
    btnDividirParcela: TButton;
    Label4: TLabel;
    edtQtdParcelas: TEdit;
    btnLimpaTela: TButton;
    procedure btnDividirParcelaClick(Sender: TObject);
    procedure btnLimpaTelaClick(Sender: TObject);
  private
    function ParcelaCompra: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnDividirParcelaClick(Sender: TObject);
begin
  mmTotal.Lines.Add('O Valor De Cada Parcela é: '+ ParcelaCompra.ToString);
end;

procedure TForm1.btnLimpaTelaClick(Sender: TObject);
begin
  edtValorCompra.Clear;
  edtQtdParcelas.Clear;
end;

function TForm1.ParcelaCompra: Double;
begin
  Result := StrToFloat(edtValorCompra.Text)/ StrToFloat(edtQtdParcelas.Text);
end;

end.
