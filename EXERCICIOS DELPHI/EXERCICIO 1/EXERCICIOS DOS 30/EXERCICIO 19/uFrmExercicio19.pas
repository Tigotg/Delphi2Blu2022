unit uFrmExercicio19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnIdentificar: TButton;
    mmListarResultado: TMemo;
    procedure btnIdentificarClick(Sender: TObject);
  private
    procedure ValidaTipoPessoa;
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
    ValidaTipoPessoa;
end;

procedure TForm1.ValidaTipoPessoa;
var
  I: Integer;
  xNome, xSexo: String;
  XsomaF: Integer;
  xSomaM: Integer;
begin
  for I := 1 to 3 do
  begin
    xNome := Inputbox('INFORMAR', 'Informe um Nome', '');
    xSexo := Inputbox('INFORMAR', 'Informe o sexo', '');

    if (AnsiUpperCase(xSexo) = 'F') then
    begin
      mmListarResultado.Lines.Add ('Meu nome é: ' + xNome + ' e sou do genero: ' + xSexo);
      XsomaF := XsomaF + 1;
    end
    else if (AnsiLowerCase(XSexo) = 'm') then
    begin
      mmListarResultado.Lines.Add ('Meu nome é: ' + xNome + ' e sou do genero: ' + xSexo);
      xSomaM := XsomaM + 1;
    end;
  end;
  mmListarResultado.Lines.Add('A quantidade de Mulheres é ' + XsomaF.ToString);
  mmListarResultado.Lines.Add('A quantidade de Homens é ' + XsomaM.ToString);
end;

end.
