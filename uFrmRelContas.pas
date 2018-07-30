unit uFrmRelContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ComCtrls, StdCtrls, DB, ExtCtrls, DBCtrls, ActnList,
  uFrameConfirmaCancela, FMTBcd, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelContas = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    GrpPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    RadioTipoConta: TRadioGroup;
    RadioTipoFiltro: TRadioGroup;
    GrpContato: TGroupBox;
    DataContato: TDataSource;
    ComboContatos: TDBLookupComboBox;
    Panel1: TPanel;
    ActionList1: TActionList;
    ActImprimir: TAction;
    ActFechar: TAction;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    QryContas: TFDQuery;
    RadioStatus: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure RadioTipoFiltroClick(Sender: TObject);
  private
    { Private declarations }
    Linha, Pagina: Integer;
    procedure Imprimerelatorio;
    procedure cabecalho;
    procedure Rodape(fFinal: Integer);

  public
    { Public declarations }
  end;

var
  FrmRelContas: TFrmRelContas;

implementation

uses
  uLibrary, uDmConexao, uDmWorkCom, uDMClientes;

{$R *.dfm}

procedure TFrmRelContas.FormShow(Sender: TObject);
begin
  inherited;
  DataContato.DataSet := DmClientes.CdsContatoAux;
  DataContato.DataSet.Open;
  RadioTipoFiltroClick(Sender);
  Datai.Date := PrimeiroDia(SVData);
  Dataf.Date := UltimoDia(SVData);
  Datai.SetFocus;

end;

procedure TFrmRelContas.ActImprimirExecute(Sender: TObject);
begin
  inherited;
  //
  QryContas.Close;
  QryContas.SQL.Clear;
  QryContas.SQL.Add('select contas.numconta,contato.nome,contas.data_lanc,');
  QryContas.SQL.Add('contas.data_venc,contas.data_quit,contas.juros,');
  QryContas.SQL.Add('contas.multa,contas.serie,contas.valor_conta,contas.idcontato,');
  QryContas.SQL.Add('contas.valor_acrescimo,contas.valor_desconto,');
  QryContas.SQL.Add('contas.valor_quitato from contas');
  QryContas.SQL.Add('left outer join contato on contas.idcontato = contato.id');
  QryContas.SQL.Add('where contas.tipo = :pTipo');
  if RadioStatus.ItemIndex <> 1 then // apenas quitadas
    QryContas.SQL.Add('and contas.data_lanc between :pDatai and :pDataf')
  else // outras
    QryContas.SQL.Add('and contas.data_quit between :pDatai and :pDataf');
  if RadioStatus.ItemIndex = 0 then // apenas em aberto
    QryContas.SQL.Add('and contas.status = ' + QuotedStr('0'))
  else if RadioStatus.ItemIndex = 1 then // apenas quitadas
    QryContas.SQL.Add('and contas.status = ' + QuotedStr('1'))
  else if RadioStatus.ItemIndex = 2 then // apenas renegociadas
    QryContas.SQL.Add('and contas.status = ' + QuotedStr('2'));
  if RadioTipoFiltro.ItemIndex = 1 then // por clentes
    QryContas.SQL.Add('and contas.idcontato = ' + QuotedStr(IntToStr(DataContato.DataSet.FieldByName('').AsInteger)));
  // passa parametros
  QryContas.Params.ParamByName('pTipo').AsInteger := RadioTipoConta.ItemIndex;
  QryContas.Params.ParamByName('pDatai').AsDate := Datai.Date;
  QryContas.Params.ParamByName('pDataf').AsDate := Dataf.Date;
  QryContas.Open;
  if QryContas.IsEmpty then
  begin
    MessageDlg('Nâo foram encontrados dados para o relatório!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  Imprimerelatorio;

end;

procedure TFrmRelContas.ActFecharExecute(Sender: TObject);
begin
  inherited;
  //
  Close;

end;

procedure TFrmRelContas.RadioTipoFiltroClick(Sender: TObject);
begin
  inherited;
  GrpContato.Visible := false;
  if RadioTipoFiltro.ItemIndex = 1 then // contato
    GrpContato.Visible := true

end;

procedure TFrmRelContas.Imprimerelatorio;
var
  aTotalcontato, aTotalContatoQ, aTotalContas, aTotalContaQ: Currency;
  aIDContato: Integer;
begin
  Pagina := 1;
  Linha := 0;
  aTotalContas := 0;
  aTotalContaQ := 0;
  aTotalcontato := 0;
  aTotalContatoQ := 0;
  aIDContato := 0;
  {
    RDprint1.OpcoesPreview.PreviewZoom   := 130;
    RDprint1.OpcoesPreview.Preview       := true;
    RDprint1.OpcoesPreview.PaginaZebrada := false;
    RDprint1.TamanhoQteLinhas  := 63;
    RDprint1.TamanhoQteColunas := 80;
    RDprint1.Abrir;
    cabecalho;
    QryContas.First;
    while not QryContas.Eof do
    begin
    if aIDContato <> QryContas.FieldByName('IDCONTATO').AsInteger then
    begin
    aIDContato := QryContas.FieldByName('IDCONTATO').AsInteger;
    if aTotalcontato > 0 then
    begin
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    Rodape(0);
    RDprint1.ImpF(Linha,40,'Total do contato: ',[negrito,comp12]);
    RDprint1.ImpF(Linha,63,AlinhaCampoValor(aTotalcontato,8,2),[negrito,comp12]);
    RDprint1.ImpF(Linha,74,AlinhaCampoValor(aTotalContatoQ,8,2),[negrito,comp12]);
    aTotalcontato  := 0;
    aTotalContatoQ := 0;
    Inc(Linha);
    Rodape(0);
    end;
    RDprint1.ImpF(Linha,01,'Contato: '+QryContas.FieldByname('nome').AsString,[negrito]);
    Inc(Linha);
    Rodape(0);
    end;
    RDprint1.ImpF(Linha,01,QryContas.FieldByName('numconta').AsString+'-'+QryContas.FieldByName('serie').AsString,[comp12]);
    RDprint1.ImpF(Linha,14,DateToStr(QryContas.FieldByName('data_lanc').AsDateTime),[comp12]);
    RDprint1.ImpF(Linha,23,DateToStr(QryContas.FieldByName('data_venc').AsDateTime),[comp12]);
    if QryContas.FieldByName('data_venc').AsDateTime > 0 then
    RDprint1.ImpF(Linha,32,DateToStr(QryContas.FieldByName('data_quit').AsDateTime),[comp12]);
    RDprint1.ImpF(Linha,44,AlinhaCampoValor(QryContas.FieldByName('juros').AsCurrency,8,2),[comp12]);
    RDprint1.ImpF(Linha,52,AlinhaCampoValor(QryContas.FieldByName('multa').AsCurrency,8,2),[comp12]);
    RDprint1.ImpF(Linha,63,AlinhaCampoValor(QryContas.FieldByName('valor_conta').AsCurrency,8,2),[comp12]);
    RDprint1.ImpF(Linha,74,AlinhaCampoValor(QryContas.FieldByName('valor_quitato').AsCurrency,8,2),[comp12]);
    aTotalcontato  := aTotalcontato  + QryContas.FieldByName('valor_conta').AsCurrency;
    aTotalContatoQ := aTotalContatoQ + QryContas.FieldByName('valor_quitato').AsCurrency;
    aTotalContas   := aTotalContas   + QryContas.FieldByName('valor_conta').AsCurrency;
    aTotalContaQ   := aTotalContaQ   + QryContas.FieldByName('valor_quitato').AsCurrency;
    Inc(Linha);
    Rodape(0);
    QryContas.Next;
    end;
    if aTotalcontato > 0 then
    begin
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    Rodape(0);
    RDprint1.ImpF(Linha,40,'Total do contato: ',[negrito,comp12]);
    RDprint1.ImpF(Linha,63,AlinhaCampoValor(aTotalcontato,8,2),[negrito,comp12]);
    RDprint1.ImpF(Linha,74,AlinhaCampoValor(aTotalContatoQ,8,2),[negrito,comp12]);
    aTotalcontato  := 0;
    aTotalContatoQ := 0;
    Inc(Linha);
    Rodape(0);
    end;
    if aTotalContas > 0 then
    begin
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    Rodape(0);
    RDprint1.ImpF(Linha,40,'Total de contas.: ',[negrito,comp12]);
    RDprint1.ImpF(Linha,63,AlinhaCampoValor(aTotalContas,8,2),[negrito,comp12]);
    RDprint1.ImpF(Linha,74,AlinhaCampoValor(aTotalContaQ,8,2),[negrito,comp12]);
    aTotalContas := 0;
    Inc(Linha);
    Rodape(0);
    end;
    Linha := 63;
    Rodape(1);
    RDprint1.Fechar;
  }

end;

procedure TFrmRelContas.cabecalho;
var
  aux: String;
begin
  if RadioTipoConta.ItemIndex = 0 then
    aux := 'RECEBER'
  else if RadioTipoConta.ItemIndex = 1 then
    aux := 'PAGAR';
  {
    Linha := 1;
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString,[negrito]);
    RDprint1.ImpF(Linha,70,'Pagina: '+ZeroEsquerda(IntToStr(Pagina),2),[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'RELATORIO DE CONTAS A '+aux,[normal]);
    RDprint1.ImpF(Linha,66,FormatDateTime('DD/MM/YY',SVData)+'/'+FormatDateTime('HH:MM',SVHora),[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'CONTA          EMISSAO    VENCIMENTO   QUITACAO       JUROS      MULTA       VALOR    VR.QUITADO',[comp12]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
  }
end;

procedure TFrmRelContas.Rodape(fFinal: Integer);
begin
  {
    if Linha >= 63 then
    begin
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    if fFinal = 0 then
    begin
    RDprint1.Novapagina;
    cabecalho;
    end;
    end;
  }
end;

end.
