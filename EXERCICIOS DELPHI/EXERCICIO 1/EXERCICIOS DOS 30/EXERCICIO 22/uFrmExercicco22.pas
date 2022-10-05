unit uFrmExercicco22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    mmResultadoVenda: TMemo;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure CalcularVenda;
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
  CalcularVenda;
end;

procedure TForm1.CalcularVenda;
var
  xValorCompra, xValorVenda, xDiferenca, xTotVendas: Double;
  xTotalValorCompra, xTotalValorVenda: Double;
  xMediaCompra, xMediaVenda: Double;
  I: Integer;

begin
  xTotalValorCompra := 0;
  xTotalValorVenda := 0;

  for I := 1 to 4 do
  begin
    xDiferenca := 0;
    xValorCompra := StrToFloat(AnsiUpperCase(Inputbox('INFORMAR', 'Informe o Valor de Custo:', '')));
    xValorVenda := StrToFloat(AnsiUpperCase(Inputbox('INFORMAR', 'Informe o Valor de Venda:', '')));

    xTotalValorCompra := xTotalValorCompra + xValorCompra;
    xTotalValorVenda := xTotalValorVenda +  xValorVenda;

    if (xValorCompra > 0) or (xValorVenda > 0) then
    begin
      //inc(xQtdProdutos);
      xDiferenca := xValorVenda - xValorCompra;
      //xTotVendas := (xValorVenda - xDiferenca) + xDiferenca;

      if xValorVenda < xValorCompra then
      begin
        mmResultadoVenda.Lines.Add('Venda Com Prejuízo!' + ' Valor do prejuizo é:' +
                                    xDiferenca.ToString + '.' + #13#10);
      end
      else if xValorCompra < xValorVenda then
      begin
        mmResultadoVenda.Lines.Add('Venda Com Lucro!' + ' Valor do Lucro é:' +
                                  xDiferenca.ToString + '.' + #13#10);
      end
      else if xValorVenda = xValorCompra then
      begin
        mmResultadoVenda.Lines.Add('Venda com empate de valores!' + ' Valor do Lucro é:' +
                                  xDiferenca.ToString + '.' + #13#10);
      end;
    end;
  end;

  xMediaCompra := xTotalValorCompra / 4;
  xMediaVenda := xTotalValorVenda / 4;

  mmResultadoVenda.Lines.Add('A média de Compras foi:' + xMediaCompra.ToString + #13#10 +
                             'A média de Vendas foi:' + xMediaVenda.ToString + '.' + #13#10);

end;

end.
