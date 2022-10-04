unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnRtl1: TButton;
    btnRtl2: TButton;
    btnRTL3: TButton;
    btnRTL4: TButton;
    procedure btnRtl1Click(Sender: TObject);
    procedure btnRtl2Click(Sender: TObject);
    procedure btnRTL3Click(Sender: TObject);
    procedure btnRTL4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnRtl1Click(Sender: TObject);
var
  buttonSelected: Integer;
begin
  // Show a confirmation dialog
  buttonSelected := MessageDlg('Confirmation',mtError, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK     then ShowMessage('OK pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
end;

procedure TForm1.btnRtl2Click(Sender: TObject);
var
  buttonSelected1: Integer;
begin
  // Show a custom dialog
  buttonSelected1 := MessageDlg('Custom dialog',mtCustom,
                              [mbYes,mbAll,mbCancel], 0);

  // Show the button type selected
  if buttonSelected1 = mrYes    then ShowMessage('Yes pressed');
  if buttonSelected1 = mrAll    then ShowMessage('All pressed');
  if buttonSelected1 = mrCancel then ShowMessage('Cancel pressed');

  try
    if buttonSelected1 = mrYes then
      raise Exception.Create('Presssione outro bot�o');
  except
    on E: Exception do
    begin
      Raise;
    end;
  end;
end;

procedure TForm1.btnRTL3Click(Sender: TObject);
var
  before: String;
  after: string;

begin
  // Try to replace all occurrences of a or A to THE
  before := 'This is a way to live A big life';

  after  := StringReplace(before, ' a ', ' THE ',
                          [rfReplaceAll, rfIgnoreCase]);
  ShowMessage('Before = ' + before);
  ShowMessage('After  = ' + after);
end;
procedure TForm1.btnRTL4Click(Sender: TObject);
const
  PaddedString = ' Latters     ';
begin
  ShowMessage('[' + TrimLeft(PaddedString)  + ']'); //Remove os espa�os da esquerda
  ShowMessage('[' + TrimRight(PaddedString) + ']'); //Remove os espa�os da Direita
  ShowMessage('[' + Trim(PaddedString)      + ']'); //Remove os de ambos os lados
end;

end.
