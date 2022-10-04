unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  USecoes;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  xCachorro : TCachorro; //Ctrl+Shift+A  Tr�s tudo relacionado ao TCachorro
begin
  xCachorro := Tcachorro.Create;

  try
    xCachorro.MeuSomEh;
  finally
    FreeAndNil (xCachorro);
  end;
end;

end.
