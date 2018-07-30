unit uFrmNFCePendente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, uFrmPadrao, FMTBcd, Grids, DBGrids, Provider, DB, DBClient, StdCtrls, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client
;

type
  TFrmNFCePendente = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    DataNFCe: TDataSource;
    CdsNFCe: TClientDataSet;
    DspNFCe: TDataSetProvider;
    QryNFCe: TFDQuery;
    DBGrid1: TDBGrid;
    QryNFCeid: TIntegerField;
    QryNFCedata_pedido: TDateField;
    QryNFCedata_entrega: TDateField;
    QryNFCeidcliente: TIntegerField;
    QryNFCecliente: TStringField;
    QryNFCevalor_total: TFloatField;
    CdsNFCeid: TIntegerField;
    CdsNFCedata_pedido: TDateField;
    CdsNFCedata_entrega: TDateField;
    CdsNFCeidcliente: TIntegerField;
    CdsNFCecliente: TStringField;
    CdsNFCevalor_total: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sIDPedido : Integer;
  end;

var
  FrmNFCePendente: TFrmNFCePendente;

implementation

uses
  uDmConexao, uDmWorkCom;

{$R *.dfm}

procedure TFrmNFCePendente.FormCreate(Sender: TObject);
begin
  inherited;
  sIDPedido := 0;
end;

procedure TFrmNFCePendente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if CdsNFCe.RecordCount > 0 then
  begin
    sIDPedido := CdsNFCe.FieldByName('ID').AsInteger;
    Close;
  end;
     
end;

procedure TFrmNFCePendente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
  begin
    sIDPedido := 0;
    Close;
  end;
  if Key = #13 then
  begin
    DBGrid1DblClick(Sender);
  end;  
end;

procedure TFrmNFCePendente.FormShow(Sender: TObject);
begin
  inherited;
  QryNFCe.Connection := DmConexao.Conexao;
  DspNFCe.DataSet := QryNFCe;
  CdsNFCe.ProviderName := 'DspNFCe';
  DataNFCe.DataSet := CdsNFCe;
  CdsNFCe.Open;
  // formata campos
  CdsNFCeDATA_PEDIDO.DisplayFormat             := 'dd/mm/yyyy';
  CdsNFCe.FieldByName('DATA_PEDIDO').EditMask  := '!99/99/0000;1; ';
  CdsNFCeDATA_ENTREGA.DisplayFormat            := 'dd/mm/yyyy';
  CdsNFCe.FieldByName('DATA_ENTREGA').EditMask := '!99/99/0000;1; ';
  CdsNFCeVALOR_TOTAL.DisplayFormat             := DmWorkCom.PAFECF.gMascaraDec;
  CdsNFCeVALOR_TOTAL.EditFormat                := DmWorkCom.PAFECF.gMascaraDec;
  //
  DBGrid1.SetFocus;

end;

end.
