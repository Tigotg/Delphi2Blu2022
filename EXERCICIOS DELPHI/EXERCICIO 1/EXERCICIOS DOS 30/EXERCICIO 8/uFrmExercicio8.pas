unit uFrmExercicio8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edtDolar: TEdit;
    mmResultadoConversao: TMemo;
    btnConverter: TButton;
    btnLimpaTela: TButton;
    edtCotacao: TEdit;
    Label3: TLabel;
    procedure btnConverterClick(Sender: TObject);
    procedure btnLimpaTelaClick(Sender: TObject);
  private
    function ConverteMoeda: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnConverterClick(Sender: TObject);
begin
   mmResultadoConversao.Lines.Add('O valor do dólar convertido em reais é: '+ ConverteMoeda.ToString);
end;

procedure TForm1.btnLimpaTelaClick(Sender: TObject);
begin
  edtDolar.Clear;
  edtCotacao.Clear;
  edtDolar.SetFocus;
end;

function TForm1.ConverteMoeda: Double;
var
  xDolar, xCotacao: Double;
begin
  xDolar := StrToFloat(edtDolar.Text);
  xCotacao := StrToFloat(edtCotacao.Text);

  Result := (xDolar * xCotacao);
end;

end.


