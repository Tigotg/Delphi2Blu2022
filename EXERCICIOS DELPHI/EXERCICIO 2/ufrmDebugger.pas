unit ufrmDebugger;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblTitulo: TLabel;
    mmAtalhos: TMemo;
    mmAtalhos2: TMemo;
    btnProcessar: TButton;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UCalculadora;   //Ctrl + Shift + A

{$R *.dfm}

procedure TForm1.btnProcessarClick(Sender: TObject);
var
  xCalculadora : Tcalculadora;
  xResultado : Integer;
begin
  xCalculadora := Tcalculadora.Create;
  try
    xResultado := xCalculadora.RetornaSoma(10, 15);

    ShowMessage(xResultado.ToString);
  finally
    FreeAndNil(xCalculadora);
  end;
end;

end.
