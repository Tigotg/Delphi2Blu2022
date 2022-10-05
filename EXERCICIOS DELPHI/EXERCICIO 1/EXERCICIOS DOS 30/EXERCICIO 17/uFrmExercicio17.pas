unit uFrmExercicio17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNumIntervalo = array [1..5] of Integer;
  TForm1 = class(TForm)
    Label1: TLabel;
    btnPercorrer: TButton;
    procedure btnPercorrerClick(Sender: TObject);
  private
    ValidaNum: TNumIntervalo;
    procedure PercorrerNumeros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnPercorrerClick(Sender: TObject);
begin
  PercorrerNumeros;
end;

procedure TForm1.PercorrerNumeros;
var
  I: Integer;
  xTotal: Integer;
 begin
  xTotal := 0;
  for I := 1 to Length(ValidaNum) do
  begin
    ValidaNum[I] := StrToInt(inputbox('INFORMAR','Digite um n�mero',''));

    if (ValidaNum[I] >= 10) and (ValidaNum[I] <= 150) then
        inc(xTotal);
  end;
    ShowMessage('A quantidade de n�meros que est�o no intervalo entre 10 e 150 �: ' +
                xTotal.ToString + ' n�meros.');
end;

end.
