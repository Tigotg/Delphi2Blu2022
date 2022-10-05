unit uFrmExercicio25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnLerIdentificar: TButton;
    Memo1: TMemo;
    procedure btnLerIdentificarClick(Sender: TObject);
  private
    procedure LerDoisNumeros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnLerIdentificarClick(Sender: TObject);
begin
  LerDoisNumeros;
end;

procedure TForm1.LerDoisNumeros;
var
  xNum1, xNum2, xMenorValor, xMaiorValor: Double;
begin
  xNum1 := StrToFloat(AnsiUpperCase(InputBox('INFORMAR', 'Digite o 1� N�mero:', '')));
  xNum2 := StrToFloat(AnsiUpperCase(InputBox('INFORMAR', 'Digite o 2� N�mero:', '')));
  xMenorValor := Min(xNum1, xNum2);
  xMaiorValor := Max(xNum1, xNum2);

  if xNum1 = xNum2 then
    ShowMessage('O N�meros Digitados S�o Iguais.')
  else if True then

    ShowMessage('Os N�meros Digitados s�o Diferentes.');
    ShowMessage('O menor n�mero �: ' + FloatToStr(xMenorValor));
    ShowMessage('O Maior n�mero �: ' + FloatToStr(xMaiorValor));
   ///talvez fazer com case

end;

end.
