unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uBombaCombustivel;

type
  TValorCombustivel = (Gasolina, Alcool, Diesel);
  TFrmAbastecer = class(TForm)
    rdgTipoCombustivel: TRadioGroup;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtValAbastecer: TEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    edtQTDLtrsAbatecer: TEdit;
    edtTotalEmReaisPorLitroAbastecido: TEdit;
    Label9: TLabel;
    edtLitrosValAbastecer: TEdit;
    Label10: TLabel;
    btnAbastecerPorLitro: TButton;
    btnAbastecerEmValor: TButton;
    btnAlterarValor: TButton;
    btnAlterarCombustivel: TButton;
    btnAlterarQtdCombustivel: TButton;
    Procedure TipoCombustivel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbastecer: TFrmAbastecer;

implementation

{$R *.dfm}


procedure TFrmAbastecer.TipoCombustivel;
var
  xCombustivel : TBombaCombustivel;
  xResultado: Double;
begin
  xCombustivel := nil;
  try
    xCombustivel := TBombaCombustivel.Create;
    case TValorCombustivel(rdgTipoCombustivel.ItemIndex) of
    Gasolina:
    begin
      xCombustivel.AbatecerPorValor(StrToFloat(edtValAbastecer.Text));
    end;
    Alcool:
    begin

    end;
    Diesel:
    begin

    end;
  end;
finally

end;

end;



end.
