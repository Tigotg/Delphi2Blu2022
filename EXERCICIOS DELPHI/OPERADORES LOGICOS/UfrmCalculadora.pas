unit UfrmCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
//Todo enumerado ? baseado em zero
  TOperadores = (opSOmar, opSubtrair, opMultiplicar,
  opDividir, opResto, opDivisaoInteira);

  TForm1 = class(TForm)
    Label1: TLabel;
    cbmOperador: TComboBox;
    edtNumerador: TEdit;
    edtDenominador: TEdit;
    edtResultado: TEdit;
    btnCalcular: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  xNumero1 : Integer;
  xNumero2 : Integer;
  xResultado : Integer;
begin
  try
    xNumero1 := StrToInt(edtNumerador.Text);
  except
    on E: Exception do
      raise Exception.Create('Errou Meu Filho!!!');
  end;

  xNumero2 := StrToIntDef(edtDenominador.Text, 0);
  (* StrToIntDef = Se der erro preenche com zero para evitar o erro,
     diferente de StrToInt que o erro ira acontecer *)

  xResultado := 0; //Sempre inicializar as variaveis que ter?o um resultado

  case TOperadores(cbmOperador.ItemIndex) of
    opSomar:
    begin
      xResultado := xNumero1 + xNumero2;
    end;
    opSubtrair:
    begin
      xResultado := xNumero1 - xNumero2;
    end;
    opMultiplicar:
    begin
      xResultado := xNumero1 * xNumero2;
    end;
    opDividir:
    begin
      xResultado := Trunc(xNumero1 / xNumero2);
    end;
    opResto:
    begin
      xResultado := xNumero1 mod xNumero2;
    end;
    opDivisaoInteira:
    begin
      xResultado := xNumero1 div xNumero2;
    end;
  end;

  edtResultado.Text  := IntToStr(xResultado);
end;

end.
