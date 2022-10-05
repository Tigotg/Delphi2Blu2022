unit uFrmLerValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmLerValores = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLerValores: TfrmLerValores;

implementation

{$R *.dfm}

procedure TfrmLerValores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmLerValores  := nil;
end;

end.
