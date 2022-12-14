unit uFrmExercicio23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnIdentificar: TButton;
    procedure btnIdentificarClick(Sender: TObject);
  private
    procedure IdentificaNumero;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnIdentificarClick(Sender: TObject);
begin
  IdentificaNumero;
end;

procedure TForm1.IdentificaNumero;
var
  xNum: Double;
const
  xVal1 = 80;
  xVal2 = 25;
  xVal3 = 40;
begin
  xNum := StrToFloat(AnsiUpperCase(Inputbox('INFORMAR','Digite um Valor','')));

  if xNum > 80 then
    ShowMessage('O n?mero ' + xNum.ToString + ' ? maior que ' + xVal1.ToString)
  else if xNum < 25 then
    ShowMessage('O n?mero ' + xNum.ToString + ' ? menor que ' + xVal2.ToString)
  else if xNum = 40 then
    ShowMessage('O n?mero ' + xNum.ToString + ' ? igual a ' + xVal3.ToString)
  else
    ShowMessage('O N?mero informado n?o se enquadra na valida??o');
end;

end.
