unit uFrmLeituraXml;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Xml.XMLDoc;

type
  TForm1 = class(TForm)
    XMLDocument1: TXMLDocument;
    mmLeitura: TMemo;
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  xAplicacao: IXMLNode;
  xExecutaveis : IXMLNode;
  xExecutavel : IXMLNode;
  xBibliotecas : IXMLNode;
  xBiblioteca : IXMLNode;
  xVersao : IXMLNode;
  xDescricao : IXMLNode;
  xInfNo : IXMLNodeList;
  i : Integer;
begin
  mmLeitura.Clear;

  //Ativa o XMLDocument para podermos ler as informa??es do XML
  XMLDocument1.Active := True;

  //Busca o n? principla do XML
  xAplicacao := XMLDocument1.DocumentElement;

  //Busca o n? onde est? a lista de executaveis
  xExecutaveis := xAplicacao.ChildNodes.FindNode('executaveis');

  //Busca o n? onde est? a lista de bibliotecas
  xBibliotecas := xAplicacao.ChildNodes.FindNode('bibliotecas');

  mmLeitura.Lines.Add('EXECUTAVEIS');
  mmLeitura.Lines.Add('');

  //Percorre todos os executaveis da lista
  for I := 0 to xExecutaveis.ChildNodes.Count - 1 do
  begin
    xExecutavel := xExecutaveis.ChildNodes[i];

    //recupera os atributos do n? executavel
    xInfNo      := xExecutavel.AttributeNodes;

    mmLeitura.Lines.Add(xExecutavel.Text);
    mmLeitura.Lines.Add('-------------------------');
    mmLeitura.Lines.Add('vers?o: ' + xInfNo.FindNode('versao').Text);
    mmLeitura.Lines.Add('descri??o: ' + xInfNo.FindNode('descricao').Text);
    mmLeitura.Lines.Add('');
  end;

    mmLeitura.Lines.Add('');
    mmLeitura.Lines.Add('[BIBLIOTECA]');
    mmLeitura.Lines.Add('');


  //Percorre todas as listas
  for I := 0 to xBibliotecas.ChildNodes.Count - 1 do
  begin
    xBiblioteca := xBibliotecas.ChildNodes[i];

    //recupera os atributos do n? biblioteca
    xInfNo      := xBiblioteca.AttributeNodes;

    mmLeitura.Lines.Add(xBiblioteca.Text);
    mmLeitura.Lines.Add('-------------------------');
    mmLeitura.Lines.Add('vers?o: ' + xInfNo.FindNode('versao').Text);
    mmLeitura.Lines.Add('descri??o: ' + xInfNo.FindNode('descricao').Text);
    mmLeitura.Lines.Add('');
  end;

end;

end.
