unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDisciplina, uAluno, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.


{5. (plus) Escreva uma classe cujos objetos representam alunos matriculados em uma disciplina.
   Cada objeto dessa classe deve guardar os seguintes dados do aluno: matr�cula, nome, 2 notas
   de prova e 1 nota de trabalho.
   Escreva os seguintes m�todos para esta classe:

   a.	media: calcula a m�dia final do aluno (cada prova tem peso 2,5 e o trabalho tem peso 2)
   b.	final: calcula quanto o aluno precisa para a prova final (retorna zero se ele n�o for para a final)

Observa��o: Usar duas classes TAluno e TDisciplina (C�digo e Descri��o)}