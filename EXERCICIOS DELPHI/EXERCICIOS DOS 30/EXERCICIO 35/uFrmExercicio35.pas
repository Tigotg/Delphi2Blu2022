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
  cKwh060  = 0.60;
  cKwh048  = 0.48;
  cKwh0129 = 1.29;
begin
  xKwh := 0;
  if cbxTipoConsumidor.ItemIndex = 0 then
    xKwh := StrToFloat(edtKwh.Text) * cKwh060
    else if cbxTipoConsumidor.ItemIndex = 1 then
      xKwh := StrToFloat(edtKwh.Text) * cKwh048
      else if cbxTipoConsumidor.ItemIndex = 2 then
        xKwh := StrToFloat(edtKwh.Text) * cKwh0129;

        mmHistorico.Lines.Add('Tipo de Consumidor: ' + cbxTipoConsumidor.Items[cbxTipoConsumidor.ItemIndex] +
                              ' Total da Fatura �: ' + FormatFloat('0.00', xKwh));
end;

end.
