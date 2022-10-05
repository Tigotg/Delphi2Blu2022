unit uFrmExercicio9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtValRendimento: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnCalcularRendimentos: TButton;
    edtTotalRendimentos: TEdit;
    Label4: TLabel;
    btnLimpaTela: TButton;
    procedure btnCalcularRendimentosClick(Sender: TObject);
    procedure btnLimpaTelaClick(Sender: TObject);
  private
    function CalculaRendimentos: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalcularRendimentosClick(Sender: TObject);
begin
  edtTotalRendimentos.Text := CalculaRendimentos.ToString;
end;

procedure TForm1.btnLimpaTelaClick(Sender: TObject);
begin
  edtValRendimento.Clear;
  edtTotalRendimentos.Clear;
end;

function TForm1.CalculaRendimentos:Double;
var
  xDias, xRendimento, xJuros: Double;
begin
  xJuros := 0.07;
  xRendimento := StrToFloat(edtValRendimento.Text);

  Result := (xRendimento * xJuros) + xRendimento;
end;

end.
