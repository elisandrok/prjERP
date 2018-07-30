unit uFrmNFCeEmitida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, uFrmPadrao, FMTBcd, Grids, DBGrids, Provider, DB, DBClient, StdCtrls, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client
;

type
  TFrmNFCeEmitida = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    DataNFCe: TDataSource;
    CdsNFCe: TClientDataSet;
    DspNFCe: TDataSetProvider;
    QryNFCe: TFDQuery;
    GridNFe: TDBGrid;
    QryNFCeid: TIntegerField;
    QryNFCedata_pedido: TDateField;
    QryNFCedata_entrega: TDateField;
    QryNFCeidcliente: TIntegerField;
    QryNFCecliente: TStringField;
    QryNFCevalor_total: TFloatField;
    QryNFCechave_nfe: TStringField;
    QryNFCestatus_nfe: TStringField;
    QryNFCecancelado: TStringField;
    CdsNFCeid: TIntegerField;
    CdsNFCedata_pedido: TDateField;
    CdsNFCedata_entrega: TDateField;
    CdsNFCeidcliente: TIntegerField;
    CdsNFCecliente: TStringField;
    CdsNFCevalor_total: TFloatField;
    CdsNFCechave_nfe: TStringField;
    CdsNFCestatus_nfe: TStringField;
    CdsNFCecancelado: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure GridNFeDblClick(Sender: TObject);
    procedure GridNFeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure GridNFeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    sIDPedido : Integer;
  end;

var
  FrmNFCeEmitida: TFrmNFCeEmitida;

implementation

uses
  uDmConexao, uDmWorkCom;

{$R *.dfm}

procedure TFrmNFCeEmitida.FormCreate(Sender: TObject);
begin
  inherited;
  sIDPedido := 0;
end;

procedure TFrmNFCeEmitida.GridNFeDblClick(Sender: TObject);
begin
  inherited;
  if CdsNFCe.RecordCount > 0 then
  begin
    if CdsNFCeCANCELADO.AsString = 'N' then
    begin
      sIDPedido := CdsNFCe.FieldByName('ID').AsInteger;
      Close;
    end
    else
    begin
      ShowMessage('A NFCe selecionada já esta cancelada!');
      GridNFe.SetFocus;
    end;  
  end;
     
end;

procedure TFrmNFCeEmitida.GridNFeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
  begin
    sIDPedido := 0;
    Close;
  end;
  if Key = #13 then
  begin
    GridNFeDblClick(Sender);
  end;
end;

procedure TFrmNFCeEmitida.FormShow(Sender: TObject);
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
  GridNFe.SetFocus;

end;

procedure TFrmNFCeEmitida.GridNFeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  try
    if CdsNFCe.FieldByName('STATUS_NFE').AsString = '100' Then
    begin
      GridNFe.Canvas.Font.Color := clGreen;
    end
    else if CdsNFCe.FieldByName('STATUS_NFE').AsString = '101' Then
    begin
      GridNFe.Canvas.Font.Color := clRed;
    end
    else if CdsNFCe.FieldByName('STATUS_NFE').AsString = '128' Then
    begin
      GridNFe.Canvas.Font.Color := clRed;
    end
    else if CdsNFCe.FieldByName('STATUS_NFE').AsString = '135' Then
    begin
      GridNFe.Canvas.Font.Color := clRed;
    end
    else
    begin
      GridNFe.Canvas.Font.Color := clBlack;
    end;
  finally
    GridNFe.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

end.
