unit uFrmUnidadeMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmUnidadeMedida = class(TForm)
    FDTable: TFDTable;
    DataSource: TDataSource;
    FDTableId: TFDAutoIncField;
    FDTableDescricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUnidadeMedida: TFrmUnidadeMedida;

implementation

{$R *.dfm}

uses uDmPedidos;

procedure TFrmUnidadeMedida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FDTable.Close;

  FrmUnidadeMedida := nil;
end;

procedure TFrmUnidadeMedida.FormCreate(Sender: TObject);
begin
  FDTable.Open;
end;

end.
