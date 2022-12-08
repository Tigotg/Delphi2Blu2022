unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSoma = Function(A: Double; B: Double): Double; stdcall;
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    lblResultado: TLabel;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure ChamarDLL;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  Self.ChamarDLL;
  lblResultado.Visible := True;
end;

procedure TfrmPrincipal.ChamarDLL;
var
  xHandle: THandle;
  xSoma: Tsoma;
  xResultado : Double;
  xNum1, xNum2: Double;
begin
  if not TryStrToFloat(edtNumero1.text, xNum1) then
    raise Exception.Create('Valor para o numero 1 invalido');

  if not TryStrToFloat(edtNumero2.text, xNum2) then
    raise Exception.Create('Valor para o numero 2 invalido');

  xHandle := LoadLibrary('MinhaDLL.dll');
  if Handle > 0 then
  begin
  try
    @xSoma := GetProcAddress(xHandle, 'somar');

    if @xSoma <> nil then
    begin
      xResultado := xSoma(xNum1, xNum2);
      lblResultado.caption := xResultado.ToString;
    end;
      ShowMessage('Não foi possivel carregar o procedimento da DLL.');

  finally
    FreeLibrary(xHandle);
  end;
 end;
end;


end.

