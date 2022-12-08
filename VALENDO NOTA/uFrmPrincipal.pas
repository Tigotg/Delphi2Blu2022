unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uCaixa;

type
  TEnumOpcoesCaixa = (AbrirCaixa, Suprimento, Sangria, SaldoAtual, FecharCaixa);

  TFrmCaixaMercado = class(TForm)
    Panel1: TPanel;
    edtValor: TEdit;
    lblValor: TLabel;
    rdgFuncoesCaixa: TRadioGroup;
    btnExecutarOperacao: TButton;
    btnExibirOperacao: TButton;
    btnSairAplicacao: TButton;
    mmMovimentacao: TMemo;
    lblResultado: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExecutarOperacaoClick(Sender: TObject);
    procedure btnSairAplicacaoClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnExibirOperacaoClick(Sender: TObject);
  private
    Procedure OpcoesCaixa;
    { Private declarations }
  public
    FFrenteCaixa: TCaixa;
    { Public declarations }
  end;

var
  FrmCaixaMercado: TFrmCaixaMercado;
  FMovimentosCaixa  : TStringlist;

implementation

{$R *.dfm}
{ TFrmCaixaMercado }

procedure TFrmCaixaMercado.btnExecutarOperacaoClick(Sender: TObject);
begin
  Self.OpcoesCaixa;
end;

procedure TFrmCaixaMercado.btnExibirOperacaoClick(Sender: TObject);
var
  i : Smallint;
begin
  if(Length(edtValor.Text) > 0)then
    //FMovimentosCaixa.Add(edtValor.Text);
    FMovimentosCaixa.Add(lblResultado.Caption);
    //FMovimentosCaixa.Add(FFrenteCaixa.SaldoInicial.ToString);
    //FMovimentosCaixa.Add(FFrenteCaixa.SaldoAtual.ToString);
    //FMovimentosCaixa.Add(FFrenteCaixa..ToString);

  for i := 0 to FMovimentosCaixa.Count -1 do
    mmMovimentacao.Lines.Add(FMovimentosCaixa.Strings[i]);
end;

procedure TFrmCaixaMercado.btnSairAplicacaoClick(Sender: TObject);
begin
  Self.close;
end;

procedure TFrmCaixaMercado.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0',',','.']) then
    key :=#0;
  if Key = #0 then
    ShowMessage('Informe um valor válido.');
end;

procedure TFrmCaixaMercado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FFrenteCaixa);
  FreeAndNil(FMovimentosCaixa);
end;

procedure TFrmCaixaMercado.FormCreate(Sender: TObject);
begin
  FFrenteCaixa := TCaixa.create(StrToFloatDef(edtValor.Text, 0));
  FMovimentosCaixa := TStringList.Create;
end;

procedure TFrmCaixaMercado.FormShow(Sender: TObject);
begin
  edtValor.ReadOnly := False;
end;

procedure TFrmCaixaMercado.OpcoesCaixa;
begin
  try
    case TEnumOpcoesCaixa(rdgFuncoesCaixa.ItemIndex) of
      AbrirCaixa:
        begin
          FFrenteCaixa.AbrirCaixa(StrToFloatDef(edtValor.Text, 0));
          lblResultado.Caption := ('Valor em caixa é de: ' + FFrenteCaixa.SaldoAtual.ToString);
          ShowMessage('Caixa Aberto.');
        end;
      Suprimento:
        begin
          FFrenteCaixa.AdicionarValor(StrToFloatDef(edtValor.Text, 0));
          lblResultado.Caption := ('Valor em caixa é de: ' + FFrenteCaixa.SaldoAtual.ToString);
        end;
      Sangria:
        begin
          FFrenteCaixa.RetirarValor(StrToFloatDef(edtValor.Text, 0));
          lblResultado.Caption := ('Valor em caixa é de: ' + FFrenteCaixa.SaldoAtual.ToString);
          ShowMessage('Valor retirado foi: ' + edtValor.Text);
        end;
      SaldoAtual:
        begin
          //FFrenteCaixa.SaldoAtual(StrToFloatDef(edtValor.Text, 0));
          if FFrenteCaixa.CaixaAberto = False then
            raise Exception.Create('O caixa não foi aberto ainda, por favor abra o caixa para continuar.');
            lblResultado.Caption := ('Saldo atual do caixa é de: ' + FFrenteCaixa.SaldoAtual.ToString);
        end;
      FecharCaixa:
        begin
          FFrenteCaixa.FecharCaixa;
          edtValor.ReadOnly := True;
          lblResultado.Caption := ('Fechamento do caixa Valor: ' + FFrenteCaixa.SaldoAtual.ToString);
        end;
    end;
  finally

  end;

end;

end.

{        PINI    SIZE
CODIGO   01      04
NOME     05      15




AQUI UM EXEMPLO:

procedure TForm1.Button1Click(Sender: TObject);
var
   sl  : TStringList;
   i   : integer;
   pIni: integer;
   pFim: integer;
   pAtu: integer;
begin
   pIni := 1001; // CÓDIGO INICIAL
   pFim := 1010; // CÓDIGO FINAL

   sl := TStringList.Create;
   try
      // ARQUIVO TXT PARA SER IMPORTADO
      sl.LoadFromFile(´C:\CADASTRO.TXT´);

      for i := 0 to sl.Count - 1 do
      begin
         // CÓDIGO DA LINHA ATUAL PARA TESTAR SE ESTÁ NA FAIXA
         pAtu := StrToInt(LeftStr(sl.Strings[i], 4));

         // TESTA SE O CÓDIGO DA LINHA ATUAL ESTÁ NA FAIXA E IMPORTA
         if (pAtu >= pIni) and (pAtu <= pFim) then
         begin
            // AQUI COMO EXEMPLO IMPORTEI PARA UM TMEMO, AI VOCÊ IMPORTA PARA O BANCO
            Memo1.Lines.Append(´CODIGO: ´ + LeftStr(sl.Strings[i], 4    ));
            Memo1.Lines.Append(´NOME..: ´ + MidStr (sl.Strings[i], 5, 15));

            Memo1.Lines.Append(´--------------------´);
         end;

      end;

   finally
      sl.Free;
   end;
end;}
