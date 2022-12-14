unit uFrmExercicio35;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //TTipoConsumidor = (tpResidencia, tpComercio, tpIndustria);
  TForm1 = class(TForm)
    edtKwh: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbxTipoConsumidor: TComboBox;
    mmHistorico: TMemo;
    Label4: TLabel;
    btnCalcular: TButton;
    edtDesconto: TEdit;
    Label5: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure CalcularEnergia;
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
  CalcularEnergia;
end;

procedure TForm1.CalcularEnergia;
var
  xKwh: Double;
const
  cKwh080 = 0.80;
  cKwh068 = 0.68;
  cKwh149 = 1.49;
  cKwh318 = 3.18;

begin
  if cbxTipoConsumidor.ItemIndex = 0 then
    xKwh := (StrToFloat(edtKwh.Text) * cKwh080)-(StrToFloatDef(edtDesconto.Text, 0))
  else if cbxTipoConsumidor.ItemIndex = 1 then
    xKwh := (StrToFloat(edtKwh.Text) * cKwh068)-(StrToFloatDef(edtDesconto.Text,0))
  else if cbxTipoConsumidor.ItemIndex = 2 then
    xKwh := (StrToFloat(edtKwh.Text) * cKwh149)-(StrToFloatDef(edtDesconto.Text,0))
  else if cbxTipoConsumidor.ItemIndex = 3 then
    xKwh := (StrToFloat(edtKwh.Text) * cKwh318)-(StrToFloatDef(edtDesconto.Text, 0));

  mmHistorico.Lines.Add('Tipo de Consumidor: ' + cbxTipoConsumidor.Items[cbxTipoConsumidor.ItemIndex] + '.' + #13#10 +
                        'Desconto aplicado foi: ' + FormatFloat('0.00', StrToFloatDef(edtDesconto.Text, 0)) + #13#10 +
                        'Total da Fatura ?: ' + FormatFloat('0.00', xKwh));
end;

end.
