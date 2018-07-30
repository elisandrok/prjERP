unit uFrmFechamentoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, StdCtrls, ExtCtrls, DB, DBCtrls, uFrameConfirmaCancela,
  FMTBcd, ActnList, Buttons, ComCtrls, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmFechamentoEstoque = class(TFrmPadrao)
    RadioTipo: TRadioGroup;
    GrpGrupos: TGroupBox;
    ComboGrupo: TDBLookupComboBox;
    DataGrupo: TDataSource;
    GrpProduto: TGroupBox;
    EdtProduto: TEdit;
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    QryProdutos: TFDQuery;
    ActionList1: TActionList;
    ActConfirmar: TAction;
    ActFechar: TAction;
    SpeedButton1: TSpeedButton;
    ActConsultaProd: TAction;
    QryEntradas: TFDQuery;
    QrySaidas: TFDQuery;
    GrpPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    ActFechamentoEstoque: TAction;
    QrySaidasSUM: TFMTBCDField;
    ChFechamento: TCheckBox;
    ChProduto: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure RadioTipoClick(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure ActConsultaProdExecute(Sender: TObject);
    procedure ActFechamentoEstoqueExecute(Sender: TObject);
  private
    { Private declarations }
    sIDProduto: Integer;
    sAnoAnt, sMesAnt: String;
  public
    { Public declarations }
  end;

var
  FrmFechamentoEstoque: TFrmFechamentoEstoque;

implementation

uses
  uLibrary, uDmWorkCom, uDmConexao, uFrmProdutos, uDmProdutos;

{$R *.dfm}

procedure TFrmFechamentoEstoque.FormShow(Sender: TObject);
var
  aData: TDateTime;
begin
  inherited;
  DataGrupo.DataSet := DmProdutos.CdsGrupo;
  DmProdutos.Dados_Grupo;
  aData := Retorna_Data_AnteriorPosterior(0, SVData);
  Datai.Date := PrimeiroDia(aData);
  Dataf.Date := UltimoDia(aData);
  RadioTipoClick(Sender);

end;

procedure TFrmFechamentoEstoque.RadioTipoClick(Sender: TObject);
begin
  inherited;
  GrpGrupos.Visible := false;
  GrpProduto.Visible := false;
  if RadioTipo.ItemIndex = 1 then // Grupos
    GrpGrupos.Visible := true
  else if RadioTipo.ItemIndex = 2 then // produtos
  begin
    GrpProduto.Visible := true;
    ActConsultaProdExecute(Sender);
  end;

end;

procedure TFrmFechamentoEstoque.ActConfirmarExecute(Sender: TObject);
var
  dia, mes, ano: word;
  aAno, aMes: String;
begin
  inherited;
  // verifica��es de seguranca
  if Datai.Date > Dataf.Date then
  begin
    MessageDlg('Per�odo inv�lido. A data final deve ser maior que a inicial!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (Datai.Date <> PrimeiroDia(Datai.Date)) or (Dataf.Date <> UltimoDia(Dataf.Date)) then
  begin
    MessageDlg('O per�odo deve ser indicado com o primeiro e �ltimo dia do m�s!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if VerificaMesPeriodoAtual(Datai.Date, SVData) then
  begin
    MessageDlg('N�o � permitido fechar o per�odo atual!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not VerificaMesPeriodo(Datai.Date, Dataf.Date) then
  begin
    MessageDlg('N�o � permitido fechamento em per�odos superior a um m�s!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // verifica fechamento anterior
  DecodeDate(Datai.Date, ano, mes, dia);
  Dec(mes);
  if mes < 1 then
  begin
    Dec(ano);
    mes := 12;
  end;
  sMesAnt := ZeroEsquerda(IntToStr(mes), 2);
  sAnoAnt := IntToStr(ano);
  aMes := ZeroEsquerda(IntToStr(mes), 2);
  aAno := IntToStr(ano);
  if Length(aAno) = 2 then
    aAno := '20' + aAno;
  if not DmProdutos.VerificaFechamentoAnterior(aMes, aAno) then
  begin
    MessageDlg('� preciso fechar per�odo anterior!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if VerificaMesFechado(Datai.Date) then
  begin
    MessageDlg('O per�odo indicado j� esta fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  MessageDlg('Uma vez fechado o estoque para o m�s ser� imposs�vel realizar lan�amentos para o mesmo. ', mtWarning, [mbOK], 0);
  // localiza produtos selecionados
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select produtos.id,produtos.descricao,');
  QryProdutos.SQL.Add('produtos.estoque from produtos');
  QryProdutos.SQL.Add('where produtos.ativo = ' + QuotedStr('T'));
  if RadioTipo.ItemIndex = 1 then // grupo
  begin
    QryProdutos.SQL.Add('and produtos.grupo = :pGrupo');
    QryProdutos.Params.ParamByName('pGrupo').AsInteger := DataGrupo.DataSet.FieldByname('ID').AsInteger;
  end
  else if RadioTipo.ItemIndex = 2 then // produto
  begin
    QryProdutos.SQL.Add('and produtos.id = :pIDProd');
    QryProdutos.Params.ParamByName('pIDProd').AsInteger := sIDProduto;
  end;
  QryProdutos.Open;
  // verifica dados
  if QryProdutos.IsEmpty then
  begin
    MessageDlg('N�o foram encontrados produtos para fechamento!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if MessageDlg('Tem certeza que quer realizar o fechamento do per�odo indicado?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // processa fechamento
    ActFechamentoEstoqueExecute(Sender);
    // conclus�o
    MessageDlg('Fechamento de estoque conclu�do com sucesso!!!', mtWarning, [mbOK], 0);
  end;

end;

procedure TFrmFechamentoEstoque.ActFecharExecute(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmFechamentoEstoque.EdtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmFechamentoEstoque.ActConsultaProdExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  try
    FrmProdutos.sIDProd := 0;
    FrmProdutos.ShowModal;
    if FrmProdutos.sIDProd > 0 then
    begin
      sIDProduto := FrmProdutos.sIDProd;
      DmProdutos.Dados_Produto(sIDProduto);
      EdtProduto.Text := DmProdutos.CdsProdutosDESCRICAO.AsString;
    end;
  finally
    FrmProdutos.Destroy;
  end;
end;

procedure TFrmFechamentoEstoque.ActFechamentoEstoqueExecute(Sender: TObject);
var
  Anterior, Entradas, Saidas, Saldo: Double;
  dia, mes, ano: word;
  aAno, aMes: String;
begin
  inherited;
  // processa fechamento de estoque
  DecodeDate(Datai.Date, ano, mes, dia);
  aMes := ZeroEsquerda(IntToStr(mes), 2);
  aAno := IntToStr(ano);
  QryProdutos.First;
  while not QryProdutos.Eof do
  begin
    Saldo := 0;
    // captura estoque anterior
    Anterior := RetornaEstoqueAnterior(Datai.Date, QryProdutos.FieldByname('ID').AsInteger);
    // captura total de entradas
    QryEntradas.Close;
    QryEntradas.Params.ParamByName('pID').AsInteger := QryProdutos.FieldByname('ID').AsInteger;
    QryEntradas.Params.ParamByName('pDatai').AsDate := Datai.Date;
    QryEntradas.Params.ParamByName('pDataf').AsDate := Dataf.Date;
    QryEntradas.Params.ParamByName('pIDEmpresa').AsInteger := sIDEmpresa;
    QryEntradas.Open;
    Entradas := QryEntradas.FieldByname('sum').AsFloat;
    // captura total de saidas
    QrySaidas.Close;
    QrySaidas.Params.ParamByName('pID').AsInteger := QryProdutos.FieldByname('ID').AsInteger;
    QrySaidas.Params.ParamByName('pDatai').AsDate := Datai.Date;
    QrySaidas.Params.ParamByName('pDataf').AsDate := Dataf.Date;
    QrySaidas.Params.ParamByName('pIDEmpresa').AsInteger := sIDEmpresa;
    QrySaidas.Open;
    Saidas := QrySaidas.FieldByname('sum').AsFloat;
    Saldo := ((Anterior + Entradas) - Saidas);
    // grava dados do fechamento do produto no per�odo
    if ChFechamento.Checked then
    begin
      DmProdutos.GravaFechamentoProd(QryProdutos.FieldByname('ID').AsInteger, aMes, aAno, Saldo);
    end;
    // grava estoque atual no produto
    if ChProduto.Checked then
    begin
      Grava_EstoqueProduto(QryProdutos.FieldByname('ID').AsInteger, Saldo);
    end;
    // proximo produto
    QryProdutos.Next;
  end;

end;

end.
