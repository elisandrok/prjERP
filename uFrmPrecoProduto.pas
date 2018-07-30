unit uFrmPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, uFrmPadrao, StdCtrls, jpeg, ExtCtrls, ActnList, System.Actions;

type
  TFrmPrecoProduto = class(TFrmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtCodigo: TEdit;
    EdtDescricao: TEdit;
    EdtPreco: TEdit;
    ActionList1: TActionList;
    ActMenuFiscal: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigoExit(Sender: TObject);
    procedure ActMenuFiscalExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PreencheDadosProduto;
  public
    { Public declarations }
  end;

var
  FrmPrecoProduto: TFrmPrecoProduto;

implementation

uses
  uLibrary, DB, uFrmMenuFiscal, uDmWorkCom, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

{$R *.dfm}

procedure TFrmPrecoProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) then
  begin
    Close;
  end;

end;

procedure TFrmPrecoProduto.EdtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);

end;

procedure TFrmPrecoProduto.EdtCodigoExit(Sender: TObject);
begin
  inherited;
  if EdtCodigo.Text <> '' then
  begin
    PreencheDadosProduto;
  end;

end;

procedure TFrmPrecoProduto.PreencheDadosProduto;
var Q : TFDQuery;
begin
  EdtDescricao.Clear;
  EdtPreco.Clear;
  if Length(EdtCodigo.Text) < 13 then
     EdtCodigo.Text := ZeroEsquerda(EdtCodigo.Text,13);
  //
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select p.ean13,p.descricao,p.preco_venda');
      SQL.Add('from produtos p');
      if length(EdtCodigo.Text) > 6 then
         SQL.Add('where p.ean13 = '+QuotedStr(EdtCodigo.Text))
      else
         SQL.Add('where p.id = '+EdtCodigo.Text);
      Open;
      if not IsEmpty then
      begin
        EdtDescricao.Text := FieldByname('descricao').AsString;
        EdtPreco.Text     := 'R$'+FormatFloat('0.00',FieldByname('preco_venda').AsFloat);
      end
      else
      begin
        MessageDlg('Produto não encontrado no cadastro. Verifique!!!', mtWarning, [mbOK], 0);
      end;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TFrmPrecoProduto.ActMenuFiscalExecute(Sender: TObject);
var aMensagem : String;
begin
  inherited;
  if not DmWorkCom.PAFECF.VerificaImpressoraLigada then
  begin
     DmWorkCom.PAFECF.sControleECFAtivo := 1;
  end
  else
  begin
    if not DmWorkCom.PAFECF.VerificacoesPAFECF(aMensagem) then
    begin
      ShowMessage(aMensagem);
      DmWorkCom.PAFECF.sControleECFAtivo := 2;
    end;
  end;  
   Application.CreateForm(TFrmMenuFiscal,FrmMenuFiscal);
   Try
      FrmMenuFiscal.ShowModal;
   Finally
      FrmMenuFiscal.Destroy;
   End;

end;

end.
