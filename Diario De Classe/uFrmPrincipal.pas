unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDiarioDeClasse = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNomeAluno: TEdit;
    edtSegundaNota: TEdit;
    edtPrimeiraNota: TEdit;
    btnGravarAluno: TButton;
    btnLerAluno: TButton;
    mmDiario: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarAlunoClick(Sender: TObject);
    procedure btnLerAlunoClick(Sender: TObject);
  private
    FArq: TextFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiarioDeClasse: TfrmDiarioDeClasse;

implementation

{$R *.dfm}

procedure TfrmDiarioDeClasse.btnGravarAlunoClick(Sender: TObject);
begin
  if (edtNomeAluno.text <> '') and
     (edtPrimeiraNota.text <> '') and
     (edtSegundaNota.Text <> '') then
  begin
    //Grava uma Linha com os dados de um aluno no arquivo
    writeln(FArq, edtNomeAluno.Text,     '|',
                  edtPrimeiraNota.Text,  '|',
                  edtSegundaNota.Text,   '|');

    edtNomeAluno.Clear;
    edtPrimeiraNota.Clear;
    edtSegundaNota.Clear;
  end;
end;

procedure TfrmDiarioDeClasse.btnLerAlunoClick(Sender: TObject);
var
  xLinha, xNome: String;
  xReg, i: Integer;
  xNota1, xNota2, xMedia: Double;
begin
  mmDiario.Clear;

  //Abre o arquivo texto para leitura
  Reset(FArq);

  try
    xReg := 0;
    //Enquanto não atingir a marca de final de arquivo
    while (not Eof(FArq)) do
    begin
      //Lê uma linha, com os dados de um aluno, do arquivo
      Readln(Farq, xLinha);

      xReg := xReg + 1;

      //Recupera o nome do aluno
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      //Recupera a 1ª nota do aluno
      i := pos('|', xLinha);
      xNota1 := StrToFloatDef(copy(xLinha, 1, i-1), 0);
      delete(xLinha, 1, i);

      //Recupera a 2ª nota do aluno
      i := pos('|', xLinha);
      xNota2 := StrToFloatDef(copy(xLinha, 1, i-1), 0);

      //Processando e exibindo os dados recuperados
      xMedia := (xNota1 + xNota2) / 2;
      mmDiario.Lines.Add('Registro Nro.: ' + IntToStr(xReg));
      mmDiario.Lines.Add('Nome do Aluno: ' + xNome);
      mmDiario.Lines.Add('1ª Nota .....: ' + FloatToStr(xNota1));
      mmDiario.Lines.Add('2ª Nota .....: ' + FloatToStr(xNota2));
      mmDiario.Lines.Add('Média........: ' + FloatToStr(xMedia));

      if (xMedia >= 7) then
        mmDiario.Lines.Add('Situação.....: Aprovado')
      else
        mmDiario.Lines.Add('Situação.....: Reprovado');

      mmDiario.Lines.Add('');
    end;
  finally
    Append(Farq);
  end;
end;

procedure TfrmDiarioDeClasse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TfrmDiarioDeClasse.FormShow(Sender: TObject);
begin
  AssignFile(FArq, 'Diario.txt');
  {$I-}
  Reset(FArq);

  if IOResult <> 0 then
    Rewrite(FArq) //Arquivo não existe e será criado
  else
  begin
    CloseFile(FArq);
    Append(FArq); //O Arquivo existe e será aberto para saídas adicionais
  end;
  {$I+}
end;

end.
