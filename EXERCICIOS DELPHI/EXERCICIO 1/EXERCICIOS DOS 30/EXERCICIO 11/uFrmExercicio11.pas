unit uFrmExercicio11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtValorCusto: TEdit;
    edtPercentual: TEdit;
    mmTotal: TMemo;
    btnCalcular: TButton;
    btnLimpaTela: TButton;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimpaTelaClick(Sender: TObject);
  private
    function PrecoVenda: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  mmTotal.Lines.Add('O Valor de Venda é: ' + PrecoVenda.ToString);
end;

procedure TForm1.btnLimpaTelaClick(Sender: TObject);
begin
  edtValorCusto.Clear;
  edtPercentual.Clear;
end;

function TForm1.PrecoVenda: Double;
begin
  Result := StrToFloat(edtValorCusto.Text) * (StrToFloat(edtPercentual.Text) / 100 + 1);
end;

end.




//custo+%   = venda
