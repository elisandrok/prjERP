unit uFrmMovFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, uFrameConfirmaCancela, ExtCtrls, StdCtrls, ActnList,
  ComCtrls, FMTBcd, DB, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmMovFinanceiro = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    ActionList1: TActionList;
    ActCancelar: TAction;
    ActConfirmar: TAction;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    QryEntrada: TFDQuery;
    QrySaidas: TFDQuery;
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Linha, Pagina: Integer;
    sComissao: Currency;
    procedure cabecalho;
    procedure imprimir;
    procedure rodape(fFinal: String);
  public
    { Public declarations }
  end;

var
  FrmMovFinanceiro: TFrmMovFinanceiro;

implementation

uses
  uLibrary, uDmConexao, uDmRelatorios;

{$R *.dfm}

procedure TFrmMovFinanceiro.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  close;

end;

procedure TFrmMovFinanceiro.ActConfirmarExecute(Sender: TObject);
begin
  inherited;
  // entradas
  DmRelatorios.QryEntrada.close;
  DmRelatorios.QryEntrada.SQL.Clear;
  DmRelatorios.QryEntrada.SQL.Add('select classificacao.descricao,sum(compras.valor_total) as valor_total from compras');
  DmRelatorios.QryEntrada.SQL.Add('left outer join classificacao on compras.id_classificacao = classificacao.id');
  DmRelatorios.QryEntrada.SQL.Add('where compras.data_compra between :pDatai and :pDataf');
  DmRelatorios.QryEntrada.SQL.Add('and classificacao.gerar_movimento = ' + QuotedStr('S'));
  DmRelatorios.QryEntrada.SQL.Add('group by classificacao.descricao');
  DmRelatorios.QryEntrada.Params.ParamByName('pDatai').AsDate := Datai.Date;
  DmRelatorios.QryEntrada.Params.ParamByName('pDataf').AsDate := Dataf.Date;
  DmRelatorios.QryEntrada.Open;
  // saidas
  DmRelatorios.QrySaidas.close;
  DmRelatorios.QrySaidas.SQL.Clear;
  DmRelatorios.QrySaidas.SQL.Add('select classificacao.descricao,sum(pedido.valor_total) as valor_total from pedido');
  DmRelatorios.QrySaidas.SQL.Add('left outer join classificacao on pedido.id_classificacao = classificacao.id');
  DmRelatorios.QrySaidas.SQL.Add('where pedido.data_pedido between :pDatai and :pDataf');
  DmRelatorios.QrySaidas.SQL.Add('and classificacao.gerar_movimento = ' + QuotedStr('S'));
  DmRelatorios.QrySaidas.SQL.Add('group by classificacao.descricao');
  DmRelatorios.QrySaidas.Params.ParamByName('pDatai').AsDate := Datai.Date;
  DmRelatorios.QrySaidas.Params.ParamByName('pDataf').AsDate := Dataf.Date;
  DmRelatorios.QrySaidas.Open;
  // comissoes
  DmRelatorios.QryComissoes.close;
  DmRelatorios.QryComissoes.SQL.Clear;
  DmRelatorios.QryComissoes.SQL.Add('select pedido.id from pedido');
  DmRelatorios.QryComissoes.SQL.Add('left outer join classificacao on pedido.id_classificacao = classificacao.id');
  DmRelatorios.QryComissoes.SQL.Add('where pedido.data_pedido between :pDatai and :pDataf');
  DmRelatorios.QryComissoes.SQL.Add('and classificacao.gerar_movimento = ' + QuotedStr('S'));
  DmRelatorios.QryComissoes.Params.ParamByName('pDatai').AsDate := Datai.Date;
  DmRelatorios.QryComissoes.Params.ParamByName('pDataf').AsDate := Dataf.Date;
  DmRelatorios.QryComissoes.Open;
  sComissao := 0;
  while not DmRelatorios.QryComissoes.Eof do
  begin
    sComissao := sComissao + Retorna_ComissaoPedido(DmRelatorios.QryComissoes.FieldByName('ID').AsInteger);
    DmRelatorios.QryComissoes.Next;
  end;
  // verifica dados
  if (DmRelatorios.QryEntrada.IsEmpty) and (DmRelatorios.QrySaidas.IsEmpty) then
  begin
    MessageDlg('Não foram encontrados dados no período!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  imprimir;

end;

procedure TFrmMovFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
  Datai.Date := PrimeiroDia(SVData);
  Dataf.Date := UltimoDia(SVData);
  Datai.SetFocus;
end;

procedure TFrmMovFinanceiro.cabecalho;
begin
  Linha := 1;
  Inc(Pagina);
  {
    RDprint1.ImpF(Linha,01,sNomeEmpresa,[negrito,normal]);
    RDprint1.ImpF(Linha,70,'Pagina: '+FormatFloat('00',Pagina),[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'Movimento Financeiro do Periodo',[negrito,expandido]);
    RDprint1.ImpF(Linha,65,FormatDateTime('DD/MM/YYYY',SVData)+','+FormatDateTime('HH:MM',SVHora),[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'Periodo: '+FormatDateTime('DD/MM/YYYY',Datai.DateTime)+' a '+FormatDateTime('DD/MM/YYYY',Dataf.DateTime),[negrito,normal]);
    Inc(Linha);
    // cabecalho do pedido
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'Descricao do movimento                                               Valor Total',[negrito,normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
  }
end;

procedure TFrmMovFinanceiro.imprimir;
var
  aTotalEnt, aTotalSai: Double;
begin
  {
    RDprint1.OpcoesPreview.PaginaZebrada := false;
    RDprint1.OpcoesPreview.PreviewZoom   := 130;
    RDprint1.OpcoesPreview.Preview       := true;
    RDprint1.TamanhoQteLinhas  := 63;
    RDprint1.TamanhoQteColunas := 80;
    RDprint1.Abrir;
    aTotalEnt := 0;
    aTotalSai := 0;
    Pagina := 0;
    cabecalho;
    // imprime entradas
    RDprint1.ImpF(Linha,01,'MOVIMENTO DE COMPRAS MAIS DESPESAS',[negrito,normal]);
    Inc(Linha);
    while not QryEntrada.Eof do
    begin
    RDprint1.ImpF(Linha,01,QryEntrada.FieldByName('DESCRICAO').AsString,[normal]);
    RDprint1.ImpF(Linha,68,AlinhaCampoValor(QryEntrada.FieldByName('valor_total').AsCurrency,12,2),[normal]);
    aTotalEnt := aTotalEnt + QryEntrada.FieldByName('valor_total').AsCurrency;
    Inc(Linha);
    rodape('N');
    QryEntrada.Next;
    end;
    // verifica comissoes
    if sComissao > 0 then
    begin
    RDprint1.ImpF(Linha,01,'COMISSOES PAGAS A ATENDENTES',[normal]);
    RDprint1.ImpF(Linha,68,AlinhaCampoValor(sComissao,12,2),[normal]);
    aTotalEnt := aTotalEnt + sComissao;
    Inc(Linha);
    rodape('N');
    end;
    if aTotalEnt > 0 then
    begin
    RDprint1.ImpF(Linha,01,'TOTAL DE COMPRAS MAIS DESPESAS',[negrito,normal]);
    RDprint1.ImpF(Linha,68,AlinhaCampoValor(aTotalEnt,12,2),[normal]);
    Inc(Linha);
    rodape('N');
    Inc(Linha);
    rodape('N');
    end;
    // movimento de saidas
    RDprint1.ImpF(Linha,01,'MOVIMENTO DE SAIDAS',[negrito,normal]);
    Inc(Linha);
    while not QrySaidas.Eof do
    begin
    RDprint1.ImpF(Linha,01,QrySaidas.FieldByName('DESCRICAO').AsString,[normal]);
    RDprint1.ImpF(Linha,68,AlinhaCampoValor(QrySaidas.FieldByName('valor_total').AsCurrency,12,2),[normal]);
    aTotalSai := aTotalSai + QrySaidas.FieldByName('valor_total').AsCurrency;
    Inc(Linha);
    rodape('N');
    QrySaidas.Next;
    end;
    if aTotalEnt > 0 then
    begin
    RDprint1.ImpF(Linha,01,'TOTAL DE SAIDAS',[negrito,normal]);
    RDprint1.ImpF(Linha,68,AlinhaCampoValor(aTotalSai,12,2),[normal]);
    Inc(Linha);
    rodape('N');
    Inc(Linha);
    rodape('N');
    end;
    // total geral
    if (aTotalEnt > 0) or (aTotalSai > 0) then
    begin
    RDprint1.ImpF(Linha,01,'TOTAL MOVIMENTADO NO PERIODO',[negrito,normal]);
    RDprint1.ImpF(Linha,68,AlinhaCampoValor(aTotalSai-aTotalEnt,12,2),[normal]);
    Inc(Linha);
    rodape('N');
    end;
    Linha := 63;
    rodape('S');
    RDprint1.Fechar;
  }
end;

procedure TFrmMovFinanceiro.rodape(fFinal: String);
begin
  {
    if Linha >= 63 then
    begin
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    if fFinal = 'N' then
    begin
    RDprint1.Novapagina;
    Cabecalho;
    end;
    end;
  }
end;

end.
