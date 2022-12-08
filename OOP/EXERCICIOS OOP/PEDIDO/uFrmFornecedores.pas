unit uFrmFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmFornecedores = class(TForm)
    DataSource: TDataSource;
    FDTable: TFDTable;
    FDTableId: TFDAutoIncField;
    FDTableCNPJ: TStringField;
    FDTableNome: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

{$R *.dfm}

uses uDmPedidos;

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FDTable.Close;

  FrmFornecedores := nil;
end;

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
  FDTable.Open;
end;

end.
