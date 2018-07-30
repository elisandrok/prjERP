unit uFrmCaixaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, StdCtrls, Buttons, DB, ExtCtrls, Mask,
  DBCtrls, DBClient, Grids, DBGrids, System.Actions;

type
  TFrmCaixaDiario = class(TFrmPadrao)
    ActionList1: TActionList;
    ActAbreCaixa: TAction;
    ActSuprimento: TAction;
    ActSangria: TAction;
    ActLancamento: TAction;
    ActFecharCaixa: TAction;
    ActEncerrar: TAction;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DataCaixa: TDataSource;
    DataCaixaMov: TDataSource;
    DbDataMov: TDBEdit;
    DbHoraAbre: TDBEdit;
    DbHoraFecha: TDBEdit;
    DbValorAbre: TDBEdit;
    DbValorFecha: TDBEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ActRecebimento: TAction;
    ActPesquisar: TAction;
    Bevel1: TBevel;
    GridCaixaMov: TDBGrid;
    CdsCaixaAux: TClientDataSet;
    CdsCaixaAuxTOTALDESPESAS: TCurrencyField;
    CdsCaixaAuxTOTALRECEITAS: TCurrencyField;
    CdsCaixaAuxTOTALMOV: TCurrencyField;
    DataCaixaAux: TDataSource;
    DbTotalRec: TDBEdit;
    DbTotalDesp: TDBEdit;
    DbTotalMov: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DataFuncionario: TDataSource;
    ComboFunc: TDBLookupComboBox;
    procedure ActAbreCaixaExecute(Sender: TObject);
    procedure ActSuprimentoExecute(Sender: TObject);
    procedure ActSangriaExecute(Sender: TObject);
    procedure ActLancamentoExecute(Sender: TObject);
    procedure ActFecharCaixaExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure ActRecebimentoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboFuncKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure GravaTotaisCaixa;
  public
    { Public declarations }
  end;

var
  FrmCaixaDiario: TFrmCaixaDiario;

implementation

uses uLibrary, uDmWorkCom, uFrmAbreCaixa, uFrmMovCaixa, uFrmCadContas,
  uFrmCadastroCliente, uFrmClientes, uFrmSelEndereco, uFrmContatosADC,
  uDMClientes;

{$R *.dfm}

procedure TFrmCaixaDiario.ActAbreCaixaExecute(Sender: TObject);
begin
  inherited;
  //
  if DmWorkCom.Dados_Caixa(SVData) then
  begin
    MessageDlg('Já existe caixa aberto para o dia!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // efetua abertura
  AbreForm(TFrmAbrecaixa, FrmAbrecaixa);
  DmWorkCom.Dados_CaixaMov(DataCaixa.DataSet.FieldByname('ID').AsInteger);
  GravaTotaisCaixa;
end;

procedure TFrmCaixaDiario.ActSuprimentoExecute(Sender: TObject);
var
  aValorAbre: String;
  aValor: Double;
begin
  inherited;
  //
  if DataCaixa.DataSet.FieldByname('DATA_ABERTURA').AsDateTime <> SVData then
  begin
    MessageDlg('Não é permitido efetuar lançamentos em data diferente da atual!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmWorkCom.Dados_Caixa(SVData) then
  begin
    MessageDlg('Não há caixa aberto. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end
  else
  begin
    if DataCaixa.DataSet.FieldByname('FECHADO').AsString = 'S' then
    begin
      MessageDlg('O caixa já foi fechado!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  //
  if InputQuery('Suprimento', 'Informe o valor:', aValorAbre) then
  begin
    try
      aValor := StrToFloat(aValorAbre);
      DataCaixaMov.DataSet.Append;
      DataCaixaMov.DataSet.FieldByname('HISTORICO').AsString := 'SUPRIMENTO DE CAIXA';
      DataCaixaMov.DataSet.FieldByname('ORIGEM').AsString := 'MOVIMENTO';
      DataCaixaMov.DataSet.FieldByname('DC').AsString := 'C';
      DataCaixaMov.DataSet.FieldByname('VALOR').AsCurrency := aValor;
      DataCaixaMov.DataSet.Post;
      Grava_Dados(DataCaixaMov.DataSet);
    except
      MessageDlg('Erro ao lançar suprimento!!!', mtWarning, [mbOK], 0);
    end;
  end;
  GravaTotaisCaixa;
end;

procedure TFrmCaixaDiario.ActSangriaExecute(Sender: TObject);
var
  aValorAbre: String;
  aValor: Double;
begin
  inherited;
  //
  if DataCaixa.DataSet.FieldByname('DATA_ABERTURA').AsDateTime <> SVData then
  begin
    MessageDlg('Não é permitido efetuar lançamentos em data diferente da atual!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmWorkCom.Dados_Caixa(SVData) then
  begin
    MessageDlg('Não há caixa aberto. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end
  else
  begin
    if DataCaixa.DataSet.FieldByname('FECHADO').AsString = 'S' then
    begin
      MessageDlg('O caixa já foi fechado!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  //
  if InputQuery('Sangria', 'Informe o valor:', aValorAbre) then
  begin
    try
      aValor := StrToFloat(aValorAbre);
      DataCaixaMov.DataSet.Append;
      DataCaixaMov.DataSet.FieldByname('HISTORICO').AsString := 'SANGRIA DE CAIXA';
      DataCaixaMov.DataSet.FieldByname('ORIGEM').AsString := 'MOVIMENTO';
      DataCaixaMov.DataSet.FieldByname('DC').AsString := 'D';
      DataCaixaMov.DataSet.FieldByname('VALOR').AsCurrency := aValor;
      DataCaixaMov.DataSet.Post;
      Grava_Dados(DataCaixaMov.DataSet);
    except
      MessageDlg('Erro ao lançar sangria!!!', mtWarning, [mbOK], 0);
    end;
  end;
  GravaTotaisCaixa;
end;

procedure TFrmCaixaDiario.ActLancamentoExecute(Sender: TObject);
begin
  inherited;
  //
  if DataCaixa.DataSet.FieldByname('DATA_ABERTURA').AsDateTime <> SVData then
  begin
    MessageDlg('Não é permitido efetuar lançamentos em data diferente da atual!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmWorkCom.Dados_Caixa(SVData) then
  begin
    MessageDlg('Não há caixa aberto. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end
  else
  begin
    if DataCaixa.DataSet.FieldByname('FECHADO').AsString = 'S' then
    begin
      MessageDlg('O caixa já foi fechado!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  // lança movimento
  AbreForm(TFrmMovCaixa, FrmMovCaixa);
  DmWorkCom.Dados_CaixaMov(DataCaixa.DataSet.FieldByname('ID').AsInteger);
  GravaTotaisCaixa;

end;

procedure TFrmCaixaDiario.ActFecharCaixaExecute(Sender: TObject);
var
  aValorAbre: String;
  aValor: Double;
begin
  inherited;
  //
  if DataCaixa.DataSet.FieldByname('FECHADO').AsString = 'S' then
  begin
    MessageDlg('O caixa já foi fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o fehamento do caixa do dia ' + datetostr(DataCaixa.DataSet.FieldByname('DATA_ABERTURA').AsDateTime), mtConfirmation, [mbYes, mbNo],
    0) = mryes then
  begin
    if InputQuery('Fechamento', 'Informe o valor:', aValorAbre) then
    begin
      try
        aValor := StrToFloat(aValorAbre);
        if not(DataCaixa.DataSet.State in [dsInsert, dsEdit]) then
          DataCaixa.DataSet.Edit;
        DataCaixa.DataSet.FieldByname('DATA_FECHAMENTO').AsDateTime := SVData;
        DataCaixa.DataSet.FieldByname('HORA_FECHAMENTO').AsDateTime := SVHora;
        DataCaixa.DataSet.FieldByname('VALOR_FECHAMENTO').AsCurrency := aValor;
        DataCaixa.DataSet.FieldByname('FECHADO').AsString := 'S';
        DataCaixa.DataSet.Post;
        Grava_Dados(DataCaixa.DataSet);
      except
        MessageDlg('Erro ao efetuar fechamento!!!', mtWarning, [mbOK], 0);
      end;
    end;
  end;

end;

procedure TFrmCaixaDiario.ActEncerrarExecute(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmCaixaDiario.ActPesquisarExecute(Sender: TObject);
var
  aDataMov: String;
  aData: TDateTime;
begin
  inherited;
  //
  if InputQuery('Pesquisa', 'Informe a data (DD/MM/YYYY):', aDataMov) then
  begin
    try
      aData := StrToDate(aDataMov);
      if not DmWorkCom.Dados_Caixa(aData) then
      begin
        MessageDlg('Não foi encontrado movimento para a data informada!!!', mtWarning, [mbOK], 0);
        Abort;
      end;
      DmWorkCom.Dados_CaixaMov(DataCaixa.DataSet.FieldByname('ID').AsInteger);
      GravaTotaisCaixa;
    except
      MessageDlg('Data inválida. Verifique!!!', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFrmCaixaDiario.ActRecebimentoExecute(Sender: TObject);
begin
  inherited;
  //
  if DataCaixa.DataSet.FieldByname('DATA_ABERTURA').AsDateTime <> SVData then
  begin
    MessageDlg('Não é permitido efetuar lançamentos em data diferente da atual!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmWorkCom.Dados_Caixa(SVData) then
  begin
    MessageDlg('Não há caixa aberto. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end
  else
  begin
    if DataCaixa.DataSet.FieldByname('FECHADO').AsString = 'S' then
    begin
      MessageDlg('O caixa já foi fechado!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  //
  Application.CreateForm(TFrmCadContas, FrmCadContas);
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
  Application.CreateForm(TFrmContatosADC, FrmContatosADC);
  try
    DmWorkCom.sTipoConta := 0;
    FrmCadContas.GrpContato.Caption := ' Cliente ';
    FrmCadContas.ShowModal;
  finally
    FrmContatosADC.Destroy;
    FrmSelEndereco.Destroy;
    FrmCadContas.Destroy;
    FrmCadastroCliente.Destroy;
    FrmClientes.Destroy;
  end;
  DmWorkCom.Dados_Caixa(SVData);
  DmWorkCom.Dados_CaixaMov(DataCaixa.DataSet.FieldByname('ID').AsInteger);
  GravaTotaisCaixa;
end;

procedure TFrmCaixaDiario.FormShow(Sender: TObject);
begin
  inherited;
  DataFuncionario.DataSet := DmClientes.CdsFuncionarios;
  DataCaixa.DataSet := DmWorkCom.CdsCaixa;
  DataCaixaMov.DataSet := DmWorkCom.CdsCaixaMov;
  DmClientes.Dados_Funcionario;
  DmWorkCom.Dados_Caixa(SVData);
  DmWorkCom.Dados_CaixaMov(DataCaixa.DataSet.FieldByname('ID').AsInteger);
  if not CdsCaixaAux.Active then
    CdsCaixaAux.CreateDataSet;
  CdsCaixaAux.EmptyDataSet;
  CdsCaixaAux.Append;
  if DataCaixa.DataSet.RecordCount > 0 then
    GravaTotaisCaixa;
  GridCaixaMov.SetFocus;

end;

procedure TFrmCaixaDiario.GravaTotaisCaixa;
var
  aValAbre: Double;
begin
  aValAbre := 0;
  if (DataCaixa.DataSet.RecordCount > 0) and (DataCaixa.DataSet.FieldByname('VALOR_ABERTURA').AsFloat > 0) then
    aValAbre := DataCaixa.DataSet.FieldByname('VALOR_ABERTURA').AsFloat;
  CalculaTotaisCaixaMov(DataCaixa.DataSet.FieldByname('DATA_ABERTURA').AsDateTime);
  if not(CdsCaixaAux.State in [dsInsert, dsEdit]) then
    CdsCaixaAux.Edit;
  CdsCaixaAuxTOTALDESPESAS.AsCurrency := sTotalDespesa;
  CdsCaixaAuxTOTALRECEITAS.AsCurrency := sTotalReceita;
  CdsCaixaAuxTOTALMOV.AsCurrency := (aValAbre + sTotalReceita) - sTotalDespesa;
  CdsCaixaAux.Post;

end;

procedure TFrmCaixaDiario.ComboFuncKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmCaixaDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataCaixa.DataSet.Close;
  DataCaixaMov.DataSet.Close;
  DataFuncionario.DataSet.Close

end;

end.
