unit uFrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPedidos = class(TForm)
    DBNavigator1: TDBNavigator;
    FDPedidoCompra: TFDTable;
    DsePedidoCompra: TDataSource;
    FDPedidoCompraId: TFDAutoIncField;
    FDPedidoCompraNumero: TLongWordField;
    FDPedidoCompraDataPedido: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DseComprador: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DseFornecedor: TDataSource;
    FDCompradorLookup: TFDTable;
    FDFornecedorLookup: TFDTable;
    FDCompradorLookupId: TFDAutoIncField;
    FDCompradorLookupNome: TStringField;
    FDCompradorLookupCargo: TStringField;
    FDPedidoCompraidComprador: TLongWordField;
    FDPedidoCompraidFornecedor: TLongWordField;
    FDItem: TFDTable;
    FDTable2: TFDTable;
    DataSource1: TDataSource;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    FDItemId: TFDAutoIncField;
    FDItemQuantidade: TFloatField;
    FDItemidPedidoCompra: TLongWordField;
    FDItemidProduto: TLongWordField;
    FDTable2Id: TFDAutoIncField;
    FDTable2Descricao: TStringField;
    FDTable2idUnidadeMedida: TLongWordField;
    FDItemLookupProduto: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FDItemBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;

implementation

{$R *.dfm}

uses uDmPedidos;

procedure TFrmPedidos.FDItemBeforePost(DataSet: TDataSet);
begin
  FDItemidPedidoCompra.AsInteger :=
    FDPedidoCompraId.AsInteger;
end;

procedure TFrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := CaFree;
  FDPedidoCompra.Close;
  FDFornecedorLookup.Close;
  FDCompradorLookup.Close;
  FDItem.Close;

  FrmPedidos := nil;

end;

procedure TFrmPedidos.FormCreate(Sender: TObject);
begin
  FDPedidoCompra.Open;
  FDFornecedorLookup.Open;
  FDCompradorLookup.Open;
  FDItem.Open;
end;

end.
