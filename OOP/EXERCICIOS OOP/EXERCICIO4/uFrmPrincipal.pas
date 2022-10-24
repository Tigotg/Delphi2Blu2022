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
    edtDisplayCombustivel: TEdit;
    edtTotalTanquePosto: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Procedure TipoCombustivel;
    procedure btnAbastecerEmValorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarValorClick(Sender: TObject);
    procedure btnAlterarCombustivelClick(Sender: TObject);
    procedure btnAlterarQtdCombustivelClick(Sender: TObject);
    procedure rdgTipoCombustivelClick(Sender: TObject);
    procedure btnAbastecerPorLitroClick(Sender: TObject);
  private
    { Private declarations }
  public
    xCombustivel : TBombaCombustivel;

    { Public declarations }
  end;


var
  FrmAbastecer: TFrmAbastecer;


implementation
{$R *.dfm}



procedure TFrmAbastecer.btnAbastecerEmValorClick(Sender: TObject);
begin
  edtLitrosValAbastecer.text := CurrToStr(xCombustivel.AbastecerPorValor(StrToCurr(edtValAbastecer.Text)));
  edtTotalTanquePosto.Text :=  xCombustivel.QtdTanquePosto.ToString;
end;

procedure TFrmAbastecer.btnAbastecerPorLitroClick(Sender: TObject);
begin
  edtTotalEmReaisPorLitroAbastecido.text := CurrToStr(xCombustivel.AbastecerPorLitro(StrToCurr(edtQTDLtrsAbatecer.Text)));
  edtTotalTanquePosto.Text := xCombustivel.QtdTanquePosto.ToString;
end;

procedure TFrmAbastecer.btnAlterarCombustivelClick(Sender: TObject);
begin
  xCombustivel.AlterarTipoCombustivel(UpperCase(InputBox('Tipo', 'Digite o Tipo Combust�vel', '')));
  xCombustivel.TipoCombustivel;
  //  if xCombustivel.TipoCombustivel = UpperCase('GASOLINA') then
//    rdgTipoCombustivel.ItemIndex := 0
//  else if xCombustivel.TipoCombustivel = 'ALCOOL' then
//    rdgTipoCombustivel.ItemIndex := 1
//  else if xCombustivel.TipoCombustivel = 'DIESEL' then
//    rdgTipoCombustivel.ItemIndex := 2;
end;

procedure TFrmAbastecer.btnAlterarQtdCombustivelClick(Sender: TObject);
begin
  xCombustivel.AlterarQTDCombustivel(StrToFloat(edtQTDLtrsAbatecer.Text));
end;

procedure TFrmAbastecer.btnAlterarValorClick(Sender: TObject);
begin
  xCombustivel.AlterarValor(StrToFloat(edtValAbastecer.Text));;
end;

procedure TFrmAbastecer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(xCombustivel);
end;

procedure TFrmAbastecer.FormCreate(Sender: TObject);
begin
  xCombustivel := TBombaCombustivel.Create;
end;

procedure TFrmAbastecer.rdgTipoCombustivelClick(Sender: TObject);
begin
  TipoCombustivel;
end;

procedure TFrmAbastecer.TipoCombustivel;
begin
  try
    case TValorCombustivel(rdgTipoCombustivel.ItemIndex) of
      Gasolina:
      begin
        xCombustivel.TipoCombustivel;
        xcombustivel.ValorLitro := 5.50;
        xCombustivel.QtdTanquePosto := StrToFLoat(edtTotalTanquePosto.Text);
        if rdgTipoCombustivel.ItemIndex = 0 then
          edtDisplayCombustivel.Text := FloatToStr(xcombustivel.ValorLitro);
      end;
      Alcool:
      begin
        xCombustivel.TipoCombustivel;
        xcombustivel.ValorLitro := 4.50;
        xCombustivel.QtdTanquePosto := StrToFLoat(edtTotalTanquePosto.Text);
        if rdgTipoCombustivel.ItemIndex = 1 then
        edtDisplayCombustivel.Text := FloatToStr(xcombustivel.ValorLitro);
      end;
      Diesel:
      begin
        xCombustivel.TipoCombustivel;;
        xcombustivel.ValorLitro := 7.50;
        xCombustivel.QtdTanquePosto := StrToFLoat(edtTotalTanquePosto.Text);
        if rdgTipoCombustivel.ItemIndex = 2 then
        edtDisplayCombustivel.Text := FloatToStr(xcombustivel.ValorLitro);
        {1�. Esse edtDisplayCombustivel.Text vai receber a property ValorLitro
        que na tela da class essa property est� ligada a um SetValorLitro e um
        GetValorLitro, analisando o set pega o valor e o set busca esse valor e
        lan�a no field FValorLitro}
      end;
    end;
  finally

  end;

end;

end.
