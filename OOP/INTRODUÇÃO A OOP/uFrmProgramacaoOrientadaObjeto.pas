unit uFrmProgramacaoOrientadaObjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, UTriangulo;

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
    procedure btnCalcularOOPClick(Sender: TObject);
  private
    procedure CalcularTriangulo;
    procedure CalculaAreaOOP;
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
  Self.CalcularTriangulo;
end;

procedure TFrmCalcularAreaTriangulo.btnCalcularOOPClick(Sender: TObject);
begin
  Self.CalculaAreaOOP;
end;

procedure TFrmCalcularAreaTriangulo.CalculaAreaOOP;
var
  xTrianguloX: TTriangulo;
  xTrianguloY: TTriangulo;

  xAreaX: Double;
  xAreaY: Double;
begin
  xTrianguloX := TTriangulo.Create;
  xTrianguloY := TTriangulo.Create;

  try
    //Primeiro Tri?ngulo
    xTrianguloX.a := StrToFloatDef(edtTxa.Text, 0);
    xTrianguloX.b := StrToFloatDef(edtTxb.Text, 0);
    xTrianguloX.c := StrToFloatDef(edtTxc.Text, 0);

    //xTrianguloX.D := 10; N?o ? possivel

    xAreaX := xTrianguloX.Area;

    ShowMessage(xTrianguloX.D.ToString);//Property somente leitura
    ShowMessage(xTrianguloX.A.ToString);

    //Segundo Tri?ngulo
    xTrianguloY.a := StrToFloatDef(edtTya.Text, 0);
    xTrianguloY.b := StrToFloatDef(edtTyb.Text, 0);
    xTrianguloY.c := StrToFloatDef(edtTyc.Text, 0);

    xAreaY := xTrianguloY.Area;

    lblTriangXArea.Caption := 'Tri?ngulo X ?rea: ' + FormatFloat('0.000', xAreaX);
    lblTriangYArea.Caption := 'Tri?ngulo Y ?rea: ' + FormatFloat('0.0000', xAreaY);

    if xAreaY > xAreaX then
      lblMaiorArea.Caption := 'Tri?ngulo X ? maior Tri?ngulo Y'
    else if xAreaY < xAreaX then
      lblMaiorArea.Caption := 'Tri?ngulo Y ? maior Tri?ngulo X'
    else
      lblMaiorArea.Caption := 'Os Dois Tri?ngulos s?o Iguais';
  finally
    FreeAndNil(xTrianguloX);
    FreeAndNil(xTrianguloY);
  end;
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


  lblTriangXArea.Caption := 'Tri?ngulo X ?rea: ' + FormatFloat('0.000', xAreaX);
  lblTriangYArea.Caption := 'Tri?ngulo Y ?rea: ' + FormatFloat('0.0000', xAreaY);
    if xAreaY > xAreaX then
      lblMaiorArea.Caption := 'Tri?ngulo X ? maior Tri?ngulo Y'
    else if xAreaY < xAreaX then
      lblMaiorArea.Caption := 'Tri?ngulo Y ? maior Tri?ngulo X'
    else
      lblMaiorArea.Caption := 'Os Dois Tri?ngulos s?o Iguais';
end;

end.
