unit uFrmExercicio15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVisor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnIdentificar: TButton;
    procedure btnIdentificarClick(Sender: TObject);
  private
    procedure ValoresEntre;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnIdentificarClick(Sender: TObject);
begin
  ValoresEntre;
end;

procedure TForm1.ValoresEntre;
var
  xVal1: integer;
begin
  xVal1 := StrToInt(edtVisor.Text);
  if xVal1 >= 100 then
    if xVal1 <= 200 then
      ShowMessage('O número ' + xVal1.ToString + ' está entre 100 e 200');
        if xVal1 < 100 then
          ShowMessage('O numero não está entre 100 e 200');
            if xVal1 > 200 then
              ShowMessage('O numero não está entre 100 e 200');
end;

end.
