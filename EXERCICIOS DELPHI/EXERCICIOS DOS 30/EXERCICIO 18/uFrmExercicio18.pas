unit uFrmExercicio18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnValidar: TButton;
    mmResultado: TMemo;
    procedure btnValidarClick(Sender: TObject);
  private
    procedure ValidaIdade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnValidarClick(Sender: TObject);
begin
  ValidaIdade;
end;

procedure TForm1.ValidaIdade;
var
  I, xIdade: Integer;
  xNome: String;
const
  xMaiorIdade = 18;
begin
  for I := 1 to 5 do
  begin
    xNome := Inputbox('INFORMAR', 'Informe um Nome', '');
    xIdade:= StrToInt(inputbox('INFORMAR','Informe uma Idade',''));

    if xIdade >= xMaiorIdade then
      mmResultado.Lines.Add(xNome + ' é maior de idade.' + xIdade.ToString + ' Anos,')
    else
      mmResultado.Lines.Add(xNome + ' é menor de idade.' + xIdade.ToString + ' Anos,');
  end;

end;

end.
