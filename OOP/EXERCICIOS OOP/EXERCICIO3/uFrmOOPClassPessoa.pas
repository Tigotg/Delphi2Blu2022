unit uFrmOOPClassPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTipoPessoa = (tpFisica, tpJuridica);

  TFrmOOPClassPessoa = class(TForm)
    edtCPF_CNPJ: TEdit;
    edtNome: TEdit;
    edtEndereco: TEdit;
    lblTipoPes: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnValidar: TButton;
    rdgTipoPessoa: TRadioGroup;
    mmHistorico: TMemo;
    Label4: TLabel;
    edtIdade: TEdit;
    lblIdade_e_IE: TLabel;
    procedure btnValidarClick(Sender: TObject);
    procedure rdgTipoPessoaClick(Sender: TObject);
  private
    procedure GravaPessoa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOOPClassPessoa: TFrmOOPClassPessoa;

implementation

{$R *.dfm}

uses uPessoa, uPessoaJuridica, uPessoaFisica;


{ TFrmOOPClassPessoa }

procedure TFrmOOPClassPessoa.btnValidarClick(Sender: TObject);
begin
  GravaPessoa;
end;



procedure TFrmOOPClassPessoa.GravaPessoa;
var
  xValidaPessoa : TPessoa;
begin
  xValidaPessoa := nil;

  try
  case TTipoPessoa(rdgTipoPessoa.ItemIndex) of
    tpFisica:
    begin
      xValidaPessoa := TPessoaFisica.Create;
      TPessoaFisica(xValidaPessoa).CPF   := edtCPF_CNPJ.Text; //CAST de Tipos
      TPessoaFisica(xValidaPessoa).Idade := StrToInt(edtIdade.Text);
    end;
    tpJuridica:
    begin
      xValidaPessoa := TPessoaJuridica.Create;
      TPessoaJuridica(xValidaPessoa).CNPJ := edtCPF_CNPJ.Text; //CAST de Tipos
      TPessoaJuridica(xValidaPessoa).IE   := edtIdade.Text;
    end;
  end;

    xValidaPessoa.Nome     := edtNome.Text;
    xValidaPessoa.Endereco := edtEndereco.Text;
    xValidaPessoa.GravaPessoa;

  if rdgTipoPessoa.ItemIndex = 0 then
    mmHistorico.Lines.Add('Nome: ' + xValidaPessoa.Nome + #13#10 +
                          'Endereço: ' + xValidaPessoa.Endereco + #13#10 +
                          'CPF: ' + TPessoaFisica(xValidaPessoa).CPF + #13#10 +
                          'Idade: ' + TPessoaFisica(xValidaPessoa).Idade.ToString)
  else if rdgTipoPessoa.ItemIndex = 1 then
    mmHistorico.Lines.Add('Nome: ' + xValidaPessoa.Nome + #13#10 +
                          'Endereço: ' + xValidaPessoa.Endereco + #13#10 +
                          'CPF: '  + TPessoaJuridica(xValidaPessoa).CNPJ + #13#10 +
                          'IE: ' + TPessoaJuridica(xValidaPessoa).IE);
  finally
    FreeAndNil(xValidaPessoa);
  end;
end;

procedure TFrmOOPClassPessoa.rdgTipoPessoaClick(Sender: TObject);
begin
if rdgTipoPessoa.ItemIndex = 0 then
begin
  lblIdade_e_IE.Caption := 'Idade';
  lblTipoPes.Caption := 'CPF'
end
else
  lblTipoPes.Caption := 'CNPJ';
  lblIdade_e_IE.Caption := 'IE';
end;

end.
