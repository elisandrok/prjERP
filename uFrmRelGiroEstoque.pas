unit uFrmRelGiroEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ExtCtrls, ComCtrls, StdCtrls, uFrameConfirmaCancela, DB,
  DBCtrls, FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelGiroEstoque = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    RadioTipo: TRadioGroup;
    GrpGrupo: TGroupBox;
    GrpProduto: TGroupBox;
    DataProduto: TDataSource;
    DataGrupo: TDataSource;
    ComboProduto: TDBLookupComboBox;
    ComboGrupo: TDBLookupComboBox;
    QryProdutos: TFDQuery;
    QrySaida: TFDQuery;
    QryEntrada: TFDQuery;
    RadioOrdem: TRadioGroup;
    QryEntradaSUM: TFloatField;
    QryEntradaSUM_1: TFloatField;
    QrySaidaSUM: TFloatField;
    QrySaidaSUM_1: TFloatField;
    procedure RadioTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
    procedure FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    Linha, Pagina: Integer;
    procedure Imprimir;
    procedure Cabecalho;
    procedure Rodape(fFinal: Integer);
  public
    { Public declarations }
  end;

var
  FrmRelGiroEstoque: TFrmRelGiroEstoque;

implementation

uses
  uLibrary, uDmWorkCom, uDmConexao, uDmProdutos;

{$R *.dfm}

procedure TFrmRelGiroEstoque.RadioTipoClick(Sender: TObject);
begin
  inherited;
  GrpGrupo.Visible := false;
  GrpProduto.Visible := false;
  if RadioTipo.ItemIndex = 1 then
    GrpGrupo.Visible := true
  else if RadioTipo.ItemIndex = 2 then
    GrpProduto.Visible := true;

end;

procedure TFrmRelGiroEstoque.FormShow(Sender: TObject);
begin
  inherited;
  DataProduto.DataSet := DmProdutos.CdsProdutoAux;
  DataGrupo.DataSet := DmProdutos.CdsGrupo;
  DmProdutos.Dados_ProdutoAux;
  DmProdutos.Dados_Grupo;
  Datai.Date := PrimeiroDia(SVData);
  Dataf.Date := UltimoDia(SVData);
  RadioTipoClick(Sender);

end;

procedure TFrmRelGiroEstoque.FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
begin
  inherited;
  close;

end;

procedure TFrmRelGiroEstoque.FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if (RadioTipo.ItemIndex = 1) and (ComboGrupo.Text = '') then // grupo
  begin
    MessageDlg('É necessário selecionar o grupo!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (RadioTipo.ItemIndex = 2) and (ComboProduto.Text = '') then // produto
  begin
    MessageDlg('É necessário selecionar o produto!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  QryProdutos.close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  QryProdutos.SQL.Add('where produtos.controlar_estoque = ' + QuotedStr('S'));
  if RadioTipo.ItemIndex = 1 then // grupo
    QryProdutos.SQL.Add('and produtos.grupo = ' + QuotedStr(IntToStr(DataGrupo.DataSet.FieldByName('id').AsInteger)))
  else if RadioTipo.ItemIndex = 2 then // grupo
    QryProdutos.SQL.Add('and produtos.id = ' + QuotedStr(IntToStr(DataProduto.DataSet.FieldByName('id').AsInteger)));
  // ordem de impressão
  if RadioOrdem.ItemIndex = 0 then
    QryProdutos.SQL.Add('order by produtos.id')
  else if RadioOrdem.ItemIndex = 1 then
    QryProdutos.SQL.Add('order by produtos.descricao');
  //
  QryProdutos.Open;
  if QryProdutos.IsEmpty then
  begin
    MessageDlg('Não foram encontrados dados para relatorio!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // imprime giro de estoque dos produtos selecionados
  Imprimir;

end;

procedure TFrmRelGiroEstoque.Cabecalho;
begin
  Linha := 1;
  {
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString,[negrito]);
    RDprint1.ImpF(Linha,70,'Pagina: '+ZeroEsquerda(IntToStr(Pagina),2),[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'RELATORIO DE GIRO DE ESTOQUE',[normal]);
    RDprint1.ImpF(Linha,66,FormatDateTime('DD/MM/YY',SVData)+'/'+FormatDateTime('HH:MM',SVHora),[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'PERIODO ENTRE '+FormatDateTime('DD/MM/YY',Datai.Date)+' A '+FormatDateTime('DD/MM/YY',Dataf.Date),[normal,negrito]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'PRODUTO                                        E.ANTERIOR    ENTRADAS     TOTAL    PR.MEDIO    SAIDAS        TOTAL   PR.MEDIO  SALDO EST.',[comp17]);
    Inc(Linha);
    RDprint1.ImpF(Linha,01,'--------------------------------------------------------------------------------',[normal]);
    Inc(Linha);
  }

end;

procedure TFrmRelGiroEstoque.Imprimir;
var
  aEstoque, aEntradas, aSaidas: Double;
  aTotalVenda, aTotalCompra: Currency;
  aProduto: String;
begin
  {
    RDprint1.OpcoesPreview.PreviewZoom   := 130;
    RDprint1.OpcoesPreview.Preview       := true;
    RDprint1.OpcoesPreview.PaginaZebrada := false;
    RDprint1.TamanhoQteLinhas  := 63;
    RDprint1.TamanhoQteColunas := 80;
    RDprint1.Abrir;
    Pagina := 1;
    Cabecalho;
    QryProdutos.First;
    while not QryProdutos.Eof do
    begin
    aEstoque      := 0;
    aEntradas     := 0;
    aSaidas       := 0;
    aTotalVenda   := 0;
    aTotalCompra  := 0;
    // estoque anterior
    aEstoque := RetornaEstoqueAnterior(Datai.Date,QryProdutos.FieldByname('ID').AsInteger);
    // saidas
    QrySaida.Close;
    QrySaida.Params.ParamByName('pDatai').AsDate     := Datai.Date;
    QrySaida.Params.ParamByName('pDataf').AsDate     := Dataf.Date;
    QrySaida.Params.ParamByName('pIDProd').AsInteger := QryProdutos.FieldByname('ID').AsInteger;
    QrySaida.Open;
    aSaidas := QrySaida.FieldByname('Sum').AsFloat;
    // saidas
    QryEntrada.Close;
    QryEntrada.Params.ParamByName('pDatai').AsDate     := Datai.Date;
    QryEntrada.Params.ParamByName('pDataf').AsDate     := Dataf.Date;
    QryEntrada.Params.ParamByName('pIDProd').AsInteger := QryProdutos.FieldByname('ID').AsInteger;
    QryEntrada.Open;
    aEntradas := QryEntrada.FieldByname('Sum').AsFloat;
    // calcula medias
    if aEntradas > 0 then
    aTotalCompra := QryEntrada.FieldByname('Sum_1').AsFloat/aEntradas;
    if aSaidas > 0 then
    aTotalVenda  := QrySaida.FieldByname('Sum_1').AsFloat/aSaidas;
    // imprime resultado
    aProduto := ZeroEsquerda(IntToStr(QryProdutos.FieldByname('ID').AsInteger),5)+' - '+QryProdutos.FieldByname('DESCRICAO').AsString;
    RDprint1.ImpF(Linha,01,aProduto,[comp17]);
    RDprint1.ImpF(Linha,29,AlinhaCampoValor(aEstoque,9,3),[comp17]);
    RDprint1.ImpF(Linha,36,AlinhaCampoValor(aEntradas,9,3),[comp17]);
    RDprint1.ImpF(Linha,42,AlinhaCampoValor(QryEntrada.FieldByname('Sum_1').AsFloat,9,2),[comp17]);
    RDprint1.ImpF(Linha,49,AlinhaCampoValor(aTotalCompra,9,2),[comp17]);
    RDprint1.ImpF(Linha,55,AlinhaCampoValor(aSaidas,9,3),[comp17]);
    RDprint1.ImpF(Linha,63,AlinhaCampoValor(aTotalVenda,9,2),[comp17]);
    RDprint1.ImpF(Linha,69,AlinhaCampoValor(QrySaida.FieldByname('Sum_1').AsFloat,9,2),[comp17]);
    RDprint1.ImpF(Linha,76,AlinhaCampoValor(((aEntradas+aEstoque)-aSaidas),9,3),[comp17]);
    Inc(Linha);
    Rodape(0);
    QryProdutos.Next;
    end;
    Linha := 63;
    Rodape(1);
    RDprint1.Fechar;
  }
end;

procedure TFrmRelGiroEstoque.Rodape(fFinal: Integer);
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
