unit uFrmMenuComExercicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMenuComExercicio = class(TForm)
    MainMenu1: TMainMenu;
    ReajusteSalrio1: TMenuItem;
    ValidarMs1: TMenuItem;
    Abrir1: TMenuItem;
    Abrir2: TMenuItem;
    Lervalores1: TMenuItem;
    Abrir3: TMenuItem;
    procedure Abrir1Click(Sender: TObject);
    procedure Abrir2Click(Sender: TObject);
    procedure Abrir3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuComExercicio: TFrmMenuComExercicio;

implementation

uses
  uFrmSalario, uFrmValidarMes, uFrmLerValores;

{$R *.dfm}

procedure TFrmMenuComExercicio.Abrir1Click(Sender: TObject);
begin
  if frmSalario = nil then
    frmSalario := TfrmSalario.Create(Self);
  frmSalario.Show;
end;

procedure TFrmMenuComExercicio.Abrir2Click(Sender: TObject);
begin
  if frmValidarMes = nil then
    frmValidarMes := TfrmValidarMes.Create(Self);
  frmValidarMes.Show;
end;

procedure TFrmMenuComExercicio.Abrir3Click(Sender: TObject);
begin
  if frmLerValores = nil then
    frmLerValores := TfrmLerValores.Create(Self);
  frmLerValores.Show;
end;

end.
