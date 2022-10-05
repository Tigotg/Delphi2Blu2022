unit uFrmExercicio3;

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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnConsumo: TButton;
    edtKmInicial: TEdit;
    edtKmFinal: TEdit;
    edtGastoCombustivel: TEdit;
    edtDistanciaPercorrida: TEdit;
    edtTotalConsumo: TEdit;
    procedure btnConsumoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  function CalculaConsumoMedio: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnConsumoClick(Sender: TObject);
begin
  edtTotalConsumo.Text := FloatToStr(Self.CalculaConsumoMedio);
end;

function TForm1.CalculaConsumoMedio: Double;
var
  xKmInicial: Double;
  xKmFinal: Double;
  xTotal: Double;
  xTotalConsumo: Double;
  xConsMedio: Double;
begin
  xKmInicial := StrToFloat(edtKmInicial.text);
  xKmFinal := StrToFloat(edtKmFinal.Text);
  xTotalConsumo := StrToFloat(edtGastoCombustivel.Text);

  xTotal := xKmFinal - xKmInicial;

  edtDistanciaPercorrida.Text :=  xTotal.ToString;

  xConsMedio := xTotal / xTotalConsumo;

  Result := xConsMedio;
end;
procedure TForm1.FormShow(Sender: TObject);
begin
edtKmInicial.SetFocus;
end;

end.
