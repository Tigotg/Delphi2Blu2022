unit uFrmSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSalario = class(TForm)
    edtSalarioMinimo: TEdit;
    mmHistorico: TMemo;
    btnCalcularReajuste: TButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcularReajusteClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AjusteSalario;
    { Public declarations }
  end;

var
  frmSalario: TfrmSalario;

implementation

{$R *.dfm}

procedure TfrmSalario.AjusteSalario;
var
  I : Integer;
  xSalarioMinimo, xSalarioAtual, xSalarioFuturo: Double;
  xColaborador :String;
Const
  x50PercenC = 0.50;
  x20PercenC = 0.20;
  x15PercenC = 0.15;
  x10PercenC = 0.10;
begin
  xSalarioMinimo := StrToFloat(edtSalarioMinimo.Text);
  for I := 1 to 3 do
  begin
    xColaborador := (AnsiUpperCase(InputBox('INFORMAR', 'Nome Colaborador:', '')));
    xSalarioAtual := StrToFloat(AnsiUpperCase(InputBox('INFORMAR', 'Informe o Sal�rio:', '')));

    if xSalarioAtual < (xSalarioMinimo * 3) then
    begin
      xSalarioFuturo := (xSalarioAtual * x50PercenC);
    end
    else if (xSalarioAtual >= (xSalarioMinimo * 3)) and (xSalarioAtual <= xSalarioMinimo * 10) then
    begin
      xSalarioFuturo := (xSalarioAtual * x20PercenC);
    end
    else if (xSalarioAtual > (xSalarioMinimo * 10)) and (xSalarioAtual <= xSalarioMinimo * 20) then
    begin
      xSalarioFuturo := (xSalarioAtual * x15PercenC);
    end
    else if xSalarioAtual > (xSalarioMinimo * 20) then
      xSalarioFuturo := (xSalarioAtual * x10PercenC);
  end;
  mmHistorico.Lines.Add('Colaborador: ' + xColaborador + 'Sal�rio atual: ' + xSalarioAtual.ToString + #13#10+
                        'Seu Novo Sal�rio �: ' + xSalarioFuturo.ToString);
end;

procedure TfrmSalario.btnCalcularReajusteClick(Sender: TObject);
begin
  AjusteSalario;
end;

procedure TfrmSalario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSalario  := nil;
end;

end.
