unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDayTemperatures = array [1..31] of Integer;
  //TmonthTemps = Array [1..12] of  TDayTemperatures

  TForm6 = class(TForm)
    edtDia: TEdit;
    edtTemperatura: TEdit;
    btnGravar: TButton;
    btnConsultar: TButton;
    mmHistorico: TMemo;
    procedure btnGravarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    FdayTemperatures: TDayTemperatures;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btnGravarClick(Sender: TObject);
var
  xDia: Integer;
  xTemperatura: Integer;
begin
  xDia := StrToIntDef(edtDia.Text, 0);
  xTemperatura := StrToIntDef(edtTemperatura.Text, 0);

  FDayTemperatures[xDia] := xTemperatura;
end;

procedure TForm6.btnConsultarClick(Sender: TObject);
var
  I: Integer;
begin
  mmHistorico.Lines.Clear;

  for I := 1 to Length(FDayTemperatures) do
  begin
    if FDayTemperatures[I] > 0 then
      mmHistorico.Lines.Add('Dia ' + IntToStr(I) +
                            ' Fez ' + IntToStr (FDayTemperatures[I]) +
                            ' Graus.');
  end;
end;

end.
