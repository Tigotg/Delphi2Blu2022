unit uFrmExercicio14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNum1: TEdit;
    edtNum2: TEdit;
    btnVerificar: TButton;
    btnLimpar: TButton;
    procedure btnVerificarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    procedure ValidaNumMaior;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  edtNum1.Clear;
  edtNum2.Clear;
  edtNum1.SetFocus;
end;

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  ValidaNumMaior;
end;

procedure TForm1.ValidaNumMaior;
var
  xNum1, xNum2: Integer;
begin
  xNum1 := StrToInt(edtNum1.Text);
  xNum2 := StrToInt(edtNum2.Text);
  if xNum1 > xNum2 then
    ShowMessage('O N�mero ' + xNum1.ToString + ' � maior.')
  else if
    xNum2 > xNum1 then
    ShowMessage('O N�mero ' + xNum2.ToString + ' � maior.');
end;

end.
