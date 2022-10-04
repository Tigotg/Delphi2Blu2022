unit uFrmValidarMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmValidarMes = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidarMes: TfrmValidarMes;

implementation

{$R *.dfm}

procedure TfrmValidarMes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmValidarMes  := nil;
end;

end.
