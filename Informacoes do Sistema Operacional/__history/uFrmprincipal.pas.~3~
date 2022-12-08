unit uFrmprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmInfoSistema = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNomePC: TEdit;
    edtNomeUsuario: TEdit;
    edtDiretorioSistema: TEdit;
    edtDiretorioWindows: TEdit;
    edtPastaTemp: TEdit;
    edtVersaoWindows: TEdit;
    btnInformacoes: TButton;
    procedure btnInformacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfoSistema: TfrmInfoSistema;

implementation

{$R *.dfm}

uses UInfoPC;

procedure TfrmInfoSistema.btnInformacoesClick(Sender: TObject);
begin
  edtNomePC.Text           := TInfoPC.ComputerName;
  edtNomeUsuario.Text      := TInfoPC.UserName;
  edtDiretorioSistema.Text := TInfoPC.SystemDirectory;
  edtDiretorioWindows.Text := TInfoPC.WindowsDirectory;
  edtPastaTemp.Text        := TInfoPC.TempPath;
  edtVersaoWindows.Text    := TInfoPC.VersionEx;
end;

end.
