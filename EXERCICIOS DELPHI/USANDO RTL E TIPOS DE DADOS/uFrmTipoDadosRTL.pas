unit uFrmTipoDadosRTL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnInteiro: TButton;
    btnPontoFlutuante: TButton;
    btnData: TButton;
    btnDataExtenso: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    edtVisor: TEdit;
    procedure btnInteiroClick(Sender: TObject);
    procedure btnPontoFlutuanteClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure btnDataExtensoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function ConvertInteiro: String;
    function ConvertPFlutuante: Double;
    function ConvertData: TDate;
    procedure ConvertDataExtenso;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnDataClick(Sender: TObject);
begin
  lblResultado.Caption := DateToStr(Self.ConvertData);
end;

procedure TForm1.btnDataExtensoClick(Sender: TObject);
begin
  ConvertDataExtenso;
end;

procedure TForm1.btnInteiroClick(Sender: TObject);
begin
    lblResultado.Caption := Self.ConvertInteiro;
end;

procedure TForm1.btnPontoFlutuanteClick(Sender: TObject);
begin
  lblResultado.Caption := FloatToStr(Self.ConvertPFlutuante);
end;

function TForm1.ConvertData: TDate;
var
  xData: TDate;
begin
  xData := StrToDate(edtVisor.Text) + 2;

  Result := xData;
end;

procedure TForm1.ConvertDataExtenso;
  var
  xResultado: Integer;
  xDiaDaSemana: array[1..7] of String;
  xMeses: array[1..12] of String;
  xData: TDate;
  xDia, xMes, xAno: Word;
 begin
   //Dias da Semana
  xResultado := 0;
  xData:= StrToDate(edtVisor.Text);
  xDiaDaSemana [1]:= 'Domingo';
  xDiaDaSemana [2]:= 'Segunda-feira';
  xDiaDaSemana [3]:= 'Ter�a-feira';
  xDiaDaSemana [4]:= 'Quarta-feira';
  xDiaDaSemana [5]:= 'Quinta-feira';
  xDiaDaSemana [6]:= 'Sexta-feira';
  xDiaDaSemana [7]:= 'S�bado';

  //Meses do ano
  xMeses [1] := 'Janeiro';
  xMeses [2] := 'Fevereiro';
  xMeses [3] := 'Mar�o';
  xMeses [4] := 'Abril';
  xMeses [5] := 'Maio';
  xMeses [6] := 'Junho';
  xMeses [7] := 'Julho';
  xMeses [8] := 'Agosto';
  xMeses [9] := 'Setembro';
  xMeses [10]:= 'Outubro';
  xMeses [11]:= 'Novembro';
  xMeses [12]:= 'Dezembro';

  DecodeDate (xData, xAno, xMes, xDia);
  xResultado := DayOfWeek (xData);
  lblResultado.Caption := 'Hoje � ' + xDiaDaSemana[xResultado] + ', ' +
  IntToStr(xDia) + ' de ' + xMeses[xMes]+ ' de ' + IntToStr(xAno) + '.';
end;

function TForm1.ConvertInteiro: String;
var
  xValorRecebido: Integer;
begin
  xValorRecebido := StrToIntDef(edtVisor.Text, 0) + 10;

  Result := IntToStr(xValorRecebido);
end;

function TForm1.ConvertPFlutuante: Double;
var
  xValorRec: Double;
begin
  xValorRec := StrToFloatDef(edtVisor.Text, 0) + 10.50;

  Result := xValorRec;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  edtVisor.SetFocus;
end;

end.
