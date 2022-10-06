unit uFrmProgramacaoOrientadaObjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TFrmCalcularAreaTriangulo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblTriangYarea: TLabel;
    edtTxa: TEdit;
    edtTxb: TEdit;
    edtTxc: TEdit;
    edtTya: TEdit;
    edtTyb: TEdit;
    edtTyc: TEdit;
    Label9: TLabel;
    lblTriangXArea: TLabel;
    lblMaiorArea: TLabel;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure CalcularTriangulo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcularAreaTriangulo: TFrmCalcularAreaTriangulo;

implementation

{$R *.dfm}

{ TForm1 }


{ TForm1 }

procedure TFrmCalcularAreaTriangulo.btnCalcularClick(Sender: TObject);
begin
  CalcularTriangulo;
end;

procedure TFrmCalcularAreaTriangulo.CalcularTriangulo;
var
  xAreaX, xPerimetroX: Double;
  xAreaY, xPerimetroY: Double;
  xTriangA, xTriangB, xTriangC: Double;
begin
  xTriangA := StrToFloatDef(edtTxa.Text, 0);
  xTriangB := StrToFloatDef(edtTxb.Text, 0);
  xTriangC := StrToFloatDef(edtTxc.Text, 0);

  xPerimetroX := (xTriangA + xTriangB + xTriangC)/ 2;
  xAreaX := Sqrt (xPerimetroX * (xPerimetroX - xTriangA) * (xPerimetroX - xTriangB) * (xPerimetroX - xTriangC));

  xTriangA := StrToFloatDef(edtTya.Text, 0);
  xTriangB := StrToFloatDef(edtTyb.Text, 0);
  xTriangC := StrToFloatDef(edtTyc.Text, 0);

  xPerimetroY := (xTriangA + xTriangB + xTriangC)/ 2;
  xAreaY := Sqrt (xPerimetroY * (xPerimetroY - xTriangA) * (xPerimetroY - xTriangB) * (xPerimetroY - xTriangC));


  lblTriangXArea.Caption := 'Tri�ngulo X �rea: ' + FormatFloat('0.00', xAreaX);
  lblTriangYArea.Caption := 'Tri�ngulo Y �rea: ' + FormatFloat('0.00', xAreaY);
  if xAreaY > xAreaX then
    lblMaiorArea.Caption := 'Tri�ngulo X � maior Tri�ngulo Y'
  else
    lblMaiorArea.Caption := 'Tri�ngulo Y � maior Tri�ngulo X';
end;

end.
