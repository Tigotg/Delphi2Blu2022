unit ufrmExercicioCase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TAnimal = (tpCachorro, tpPassaro, tpGato, tpPeixe);

  TForm1 = class(TForm)
    cmbAnimal: TComboBox;
    btnProcessar: TButton;
    mmHistorico: TMemo;
    Image1: TImage;
    Label1: TLabel;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
    procedure QueAnimalSouEu;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnProcessarClick(Sender: TObject);
begin
  (*case cmbAnimal.ItemIndex of
    0: //Cachorro
    begin
      mmHistorico.Lines.Add('Sou um cachorro e tenho 4 patas.');
    end;
    1: //Pass?ro
    begin
      mmHistorico.Lines.Add('Sou um Pass?ro e tenho 2 patas.');
    end;
    2: //Gato
    begin
      mmHistorico.Lines.Add('Sou um Gato e tenho 4 patas.');
    end;
    3: //Peixe
    begin
      mmHistorico.Lines.Add('Sou um peixe e possou nadadeiras.');
    end;
    4: //Sem Defini??o
    begin
      mmHistorico.Lines.Add('N?o foi definido nenhum animal');
    end;
  end;*)
  QueAnimalSouEu;
end;

procedure TForm1.QueAnimalSouEu;
var
xFrase: String;
begin
  case TAnimal(cmbAnimal.ItemIndex) of
    tpCachorro: //Cachorro
    begin
      xFrase := ('Sou um cachorro e tenho 4 patas');
    end;
    tpPassaro: //Pass?ro
    begin
      xFrase := ('Sou um pass?ro e tenho 2 patas');
    end;
    tpGato: //Gato
    begin
      xFrase := ('Sou um gato e tenho 4 patas');
    end;
    tpPeixe: //Peixe
    begin
      xFrase:= ('Sou um peixe e possou nadadeiras');
    end;
    else
    begin  //Sem Defini??o
      xFrase := ('N?o foi definido nenhum animal');
    end;
  end;

  mmHistorico.Lines.Add(xfrase);
end;
end.
