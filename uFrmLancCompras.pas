unit uFrmLancCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ExtCtrls, DBCtrls, uFrameBotaoVertical, Grids,
  DBGrids, Buttons, StdCtrls, Mask, ComCtrls, ActnList, DB, Menus, pcnAuxiliar,
  pcnConversao, System.Actions;

type
  TFrmLancCompras = class(TFrmCadPadrao)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    GrpDadosFornecedor: TGroupBox;
    DbIDFornecedor: TDBEdit;
    GrpDadosCompra: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DbID: TDBEdit;
    DbDataCad: TDBEdit;
    DbHoraCad: TDBEdit;
    DbDataEmissao: TDBEdit;
    DbHoraEmissao: TDBEdit;
    GrpValores: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DbValor: TDBEdit;
    DbDesconto: TDBEdit;
    DbAcrescimo: TDBEdit;
    DbOutros: TDBEdit;
    DbTotal: TDBEdit;
    GrpDadosFinanceiros: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DbIdClassifica: TDBEdit;
    DbIdFormaPag: TDBEdit;
    ComboClassifica: TDBLookupComboBox;
    ComboFormaPag: TDBLookupComboBox;
    GrpItens: TGroupBox;
    GriItens: TDBGrid;
    PnBotoes: TPanel;
    Frame: TFrameBotaoVertical;
    RadioTipoDoc: TDBRadioGroup;
    DataItens: TDataSource;
    DataFornecedor: TDataSource;
    DataFormaPag: TDataSource;
    DataClassifica: TDataSource;
    DataCtaReceber: TDataSource;
    ActCadCliente: TAction;
    ActConsultaCliente: TAction;
    ActCadClass: TAction;
    ActCadFormaPag: TAction;
    ActConfirmaCompra: TAction;
    DbCliente: TDBEdit;
    DbNotaFiscal: TDBEdit;
    Label8: TLabel;
    DataUF: TDataSource;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    GridContas: TDBGrid;
    SpbConCliente: TSpeedButton;
    SpbCadCliente: TSpeedButton;
    PopupMenu1: TPopupMenu;
    IncluirItem1: TMenuItem;
    ExcluirItem1: TMenuItem;
    N1: TMenuItem;
    F4Confirmar1: TMenuItem;
    EditarItem1: TMenuItem;
    LiberarCompraFechada1: TMenuItem;
    CancelarCompra1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ActIncluirItem: TAction;
    ActEditarItem: TAction;
    ActExcluirItem: TAction;
    ActRetirarConfirmacao: TAction;
    DataCST: TDataSource;
    DataCFOP: TDataSource;
    BitBtn4: TBitBtn;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    Label22: TLabel;
    DBEdit9: TDBEdit;
    ComboCFOP: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    Label25: TLabel;
    DBEdit10: TDBEdit;
    Label26: TLabel;
    DBEdit11: TDBEdit;
    ActImportarXML: TAction;
    N2: TMenuItem;
    ImportararquivoXMLNFe1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ImportararquivoXMLCTe1: TMenuItem;
    TbsTransp: TTabSheet;
    GrpTransportadora: TGroupBox;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label27: TLabel;
    DBEdit13: TDBEdit;
    Label28: TLabel;
    DBEdit14: TDBEdit;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    Label30: TLabel;
    DBEdit16: TDBEdit;
    Label31: TLabel;
    DBEdit17: TDBEdit;
    Label32: TLabel;
    DBEdit18: TDBEdit;
    Label33: TLabel;
    DBEdit19: TDBEdit;
    Label34: TLabel;
    DBEdit20: TDBEdit;
    Label35: TLabel;
    DBEdit21: TDBEdit;
    Label36: TLabel;
    DBEdit22: TDBEdit;
    Label37: TLabel;
    DBEdit23: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure ActConsultaClienteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction; var Handled: Boolean);
    procedure ActCadClassExecute(Sender: TObject);
    procedure ActCadFormaPagExecute(Sender: TObject);
    procedure ActCadClienteExecute(Sender: TObject);
    procedure DbIDFornecedorExit(Sender: TObject);
    procedure DbIDKeyPress(Sender: TObject; var Key: Char);
    procedure ActConfirmaCompraExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure GridContasTitleClick(Column: TColumn);
    Procedure Grava_TotalProdutos;
    procedure DbDescontoExit(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure CancelarCompra1Click(Sender: TObject);
    procedure ActIncluirItemExecute(Sender: TObject);
    procedure ActEditarItemExecute(Sender: TObject);
    procedure ActExcluirItemExecute(Sender: TObject);
    procedure ActRetirarConfirmacaoExecute(Sender: TObject);
    procedure ActImportarXMLExecute(Sender: TObject);
    procedure ImportararquivoXMLCTe1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_TotalCompra;
    procedure ConfirmaDadosCompra;
    procedure VerificaDados;
  public
    { Public declarations }
  end;

var
  FrmLancCompras: TFrmLancCompras;

implementation

uses uLibrary, uFrmClientes, uDmWorkCom, uFrmCadClassPedido,
  uFrmCadastroCliente, uFrmProdutos, uFrmLancItensCompra,
  uFrmComprasConsulta, uFrmSelEndereco, uFrmContatosADC, uDmAcBr, pcnNFe,
  uFrmCadProdutos, uDMClientes, uDmPosto, uDmProdutos;

{$R *.dfm}

procedure TFrmLancCompras.ActConsultaClienteExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmClientes, FrmClientes);
    FrmClientes.sCodCli := 0;
    FrmClientes.sApenasConsulta := true;
    FrmClientes.ShowModal;
    if FrmClientes.sCodCli > 0 then
    begin
      if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
        DataWork.DataSet.Edit;
      DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger := FrmClientes.sCodCli;
      if DmClientes.Dados_Contato(FrmClientes.sCodCli) then
        DataWork.DataSet.FieldByName('FORNECEDOR').AsString := DataFornecedor.DataSet.FieldByName('NOME').AsString
    end;
  finally
    FreeAndNil(FrmClientes);
  end;

end;

procedure TFrmLancCompras.FormShow(Sender: TObject);
begin
  inherited;
  DataWork.DataSet := DmWorkCom.CdsCompras;
  DataItens.DataSet := DmWorkCom.CdsComprasItens;
  DataFornecedor.DataSet := DmClientes.CdsContatos;
  DataFormaPag.DataSet := DmWorkCom.CdsFormaPag;
  DataClassifica.DataSet := DmWorkCom.CdsPedidoClass;
  DataCtaReceber.DataSet := DmWorkCom.CdsContasAux;
  DataUF.DataSet := DmClientes.CdsUF;
  DataCST.DataSet := DmWorkCom.CdsCST;
  DataCFOP.DataSet := DmWorkCom.CdsCFOP;
  DmWorkCom.Dados_Compras(0);
  DmWorkCom.Dados_PedidoClassificacao(0);
  DmWorkCom.Dados_FormaPagto;
  DmClientes.Dados_Funcionario;
  DmClientes.Dados_Contato(0);
  DmWorkCom.Dados_ComprasItens(0);
  DmWorkCom.Dados_ContasPedido(0, 1);
  DmWorkCom.Dados_CST;
  DmWorkCom.Dados_CFOP;
  DataUF.DataSet.Open;
  PageControl1.TabIndex := 0;
  VerificaDados;
  DbNotaFiscal.SetFocus;

end;

procedure TFrmLancCompras.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(Frame, DataWork.DataSet);

end;

procedure TFrmLancCompras.ActCadClassExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  try
    FrmCadClassPedido.ShowModal;
  finally
    FrmCadClassPedido.Destroy;
  end;

end;

procedure TFrmLancCompras.ActCadFormaPagExecute(Sender: TObject);
begin
  inherited;
  //

end;

procedure TFrmLancCompras.ActCadClienteExecute(Sender: TObject);
begin
  inherited;
  //
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
  Application.CreateForm(TFrmContatosADC, FrmContatosADC);
  try
    FrmCadastroCliente.ShowModal;
    if FrmCadastroCliente.sIDCliente > 0 then
    begin
      if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
        ActIncluirExecute(Sender);
      DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger := FrmCadastroCliente.sIDCliente;
      DbIDFornecedorExit(Sender);
    end;
  finally
    FrmClientes.Destroy;
    FrmSelEndereco.Destroy;
    FrmContatosADC.Destroy;
    FrmCadastroCliente.Destroy;
  end;

end;

procedure TFrmLancCompras.DbIDFornecedorExit(Sender: TObject);
begin
  inherited;
  if (DbIDFornecedor.Text <> '') and (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    if DmClientes.Dados_Contato(StrToInt(DbIDFornecedor.Text)) then
      DataWork.DataSet.FieldByName('FORNECEDOR').AsString := DataFornecedor.DataSet.FieldByName('NOME').AsString
    else
    begin
      MessageDlg('Fornecedor não encontrado. Verifique!!!', mtWarning, [mbOK], 0);
      DbIDFornecedor.SetFocus;
      Abort;
    end;
  end
  else if (DbIDFornecedor.Text = '') and (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ActConsultaClienteExecute(Sender);
    DbIDFornecedorExit(Sender);
  end;

end;

procedure TFrmLancCompras.DbIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmLancCompras.ActConfirmaCompraExecute(Sender: TObject);
var
  aValorConta: Double;
begin
  inherited;
  // verificações
  if VerificaMesFechado(DataWork.DataSet.FieldByName('DATA_COMPRA').AsDateTime) then
  begin
    MessageDlg('Não é permitido movimentação para o mes fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataItens.DataSet.RecordCount = 0 then
  begin
    MessageDlg('Não é permitido finalizar o Lançamento sem itens. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataWork.DataSet.FieldByName('VALOR_TOTAL').AsFloat <= 0 then
  begin
    MessageDlg('Não é permitido finalizar o Lançamentocom valores zerados ou negativos.', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('ID_CLASSIFICACAO').IsNull) or (DataWork.DataSet.FieldByName('ID_CLASSIFICACAO').AsString = '') then
  begin
    MessageDlg('É necessário selecionar a classificação do Lançamento.', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('ID_FORMAPAG').IsNull) or (DataWork.DataSet.FieldByName('ID_FORMAPAG').AsString = '') then
  begin
    MessageDlg('É necessário selecionar a forma de pagamento do Lançamento.', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('IDFORNECEDOR').IsNull) or (DataWork.DataSet.FieldByName('IDFORNECEDOR').AsString = '') then
  begin
    MessageDlg('É necessário informar o cliente. Verifique', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o fechamento do Lançamento?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // grava fechamento no Compras
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('CONFIRMADA').AsString := 'S';
    Grava_Dados(DataWork.DataSet);
    // baixa estoque
    if DataClassifica.DataSet.FieldByName('BAIXAR_ESTOQUE').AsString = 'S' then
    begin
      DmWorkCom.Movimenta_Estoque(1, DataItens.DataSet);
      // resolve pendencia de  combustivel
      DmPosto.VerificaResolvePennciaEstoqueCombustivel(DataItens.DataSet);
    end;
    // gera formas de pagamento
    if DataFormaPag.DataSet.FieldByName('GERAR_CONTA').AsString = 'S' then
    begin
      aValorConta := DataWork.DataSet.FieldByName('VALOR_TOTAL').AsFloat / DataFormaPag.DataSet.FieldByName('QUANT_PAGTOS').AsInteger;
      DmWorkCom.Gerar_Contas(1, DataWork.DataSet.FieldByName('ID').AsInteger, 0, DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger,
        DataFormaPag.DataSet.FieldByName('QUANT_PAGTOS').AsInteger, DataFormaPag.DataSet.FieldByName('FORMA_PAGTO').AsString,
        DataWork.DataSet.FieldByName('FORNECEDOR').AsString, '', DataWork.DataSet.FieldByName('DATA_COMPRA').AsDateTime, aValorConta);
    end;
    MessageDlg('Lançamento fechado com sucesso!!!', mtWarning, [mbOK], 0);
    DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByName('ID').AsInteger, 1);
    VerificaDados;
  end;

end;

procedure TFrmLancCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataItens.DataSet.Close;
  DataFornecedor.DataSet.Close;
  DataFormaPag.DataSet.Close;
  DataClassifica.DataSet.Close;
  DataCtaReceber.DataSet.Close;
  DataCST.DataSet.Close;
  DataCFOP.DataSet.Close;
  DataWork.DataSet.Close;

end;

procedure TFrmLancCompras.ActIncluirExecute(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  inherited;
  VerificaDados;
  DbNotaFiscal.SetFocus;
end;

procedure TFrmLancCompras.ActConfirmarExecute(Sender: TObject);
begin
  if not DmWorkCom.VerificaCamposCompra then
    Abort;
  inherited;
  VerificaDados;

end;

procedure TFrmLancCompras.GridContasTitleClick(Column: TColumn);
begin
  inherited;
  GridOrdem(DmWorkCom.CdsContas, GridContas, Column);

end;

procedure TFrmLancCompras.ImportararquivoXMLCTe1Click(Sender: TObject);
var
  aCST, aArquivoXML: String;
  i, n: Integer;
  aCadProduto: Boolean;
begin
  inherited;
  // realiza a importação do arquivo XML da NFe
  aArquivoXML := '';
  OpenDialog1.Execute;
  aArquivoXML := OpenDialog1.FileName;
  if aArquivoXML <> '' then
  begin
    DmAcBr.ACBrCTe1.Conhecimentos.Clear;
    try
      DmAcBr.ACBrCTe1.Conhecimentos.LoadFromFile(aArquivoXML);
    except
      MessageDlg('O arquivo selecionado é inválido. Verifique!!!', mtWarning, [mbOK], 0);
      Exit;
    end;
    // grava os dados
    for n := 0 to DmAcBr.ACBrCTe1.Conhecimentos.Count - 1 do
    begin
      with DmAcBr.ACBrCTe1.Conhecimentos.Items[n].CTe do
      begin
        // verifica Chave NFe
        if DmWorkCom.VerificaExisteNFeChave(infCTe.ID) then
        begin
          MessageDlg('Existe uma CTe registrada com a chave selecionada. Verifique!!!', mtWarning, [mbOK], 0);
          Exit;
        end;
        // prepara registro
        if DataWork.DataSet.State in [dsInsert, dsEdit] then
        begin
          MessageDlg('Existe um registro aberto. Este será salvo para inclusão de um novo', mtWarning, [mbOK], 0);
          Grava_Dados(DataWork.DataSet);
          DmWorkCom.Dados_Compras(0);
          DmWorkCom.Dados_ComprasItens(0);
        end;
        ActIncluirExecute(Sender);
        // verifica se existe o fornecedor no cadastro
        if not DmClientes.Dados_ContatoCNPJ(FiltraNumero(Emit.CNPJ)) then
        begin
          // Cadastra o Fornecedor
          Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
          Application.CreateForm(TFrmClientes, FrmClientes);
          Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
          Application.CreateForm(TFrmContatosADC, FrmContatosADC);
          try
            FrmCadastroCliente.sIDCliente := 0;
            FrmCadastroCliente.sCadNFe := true;
            FrmCadastroCliente.xCNPJ_CPF := rem.CNPJCPF;
            FrmCadastroCliente.xINSC_RG := rem.IE;
            FrmCadastroCliente.xNOME := rem.xNOME;
            FrmCadastroCliente.xENDERECO := rem.enderReme.xLgr;
            FrmCadastroCliente.xNUM_END := rem.enderReme.nro;
            FrmCadastroCliente.xBAIRRO_END := rem.enderReme.xBairro;
            FrmCadastroCliente.xCOMPLEMENTO := rem.enderReme.xCpl;
            FrmCadastroCliente.xCODCIDADE := IntToStr(rem.enderReme.cMun);
            FrmCadastroCliente.xCIDADE_END := rem.enderReme.xMun;
            FrmCadastroCliente.xUF_END := rem.enderReme.UF;
            FrmCadastroCliente.xCEP_END := IntToStr(rem.enderReme.CEP);
            FrmCadastroCliente.xTELEFONE := rem.fone;
            FrmCadastroCliente.ShowModal;
            if FrmCadastroCliente.sIDCliente > 0 then
            begin
              if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
                DataWork.DataSet.Edit;
              DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger := FrmCadastroCliente.sIDCliente;
              DbIDFornecedorExit(Sender);
            end;
          finally
            FrmClientes.Destroy;
            FrmSelEndereco.Destroy;
            FrmContatosADC.Destroy;
            FrmCadastroCliente.Destroy;
          end;
        end
        else
        begin
          if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
            DataWork.DataSet.Edit;
          DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger := DmClientes.CdsContatosID.AsInteger;
          DbIDFornecedorExit(Sender);

        end;
        //
        DmWorkCom.CdsComprasDATA_EMISSAO.AsDateTime := Ide.dhEmi;
        DmWorkCom.CdsComprasDATA_COMPRA.AsDateTime := Ide.dhCont;
        DmWorkCom.CdsComprasNOTA.AsString := IntToStrZero(Ide.nCT, 6);
        DmWorkCom.CdsComprasCHAVE_NFE.AsString := infCTe.ID;
        DmWorkCom.CdsComprasSTATUS_NFE.AsString := IntToStr(procCTe.cStat);
        DmWorkCom.CdsComprasNATOP.AsString := Ide.natOp;
        DmWorkCom.CdsComprasVALOR.AsFloat := vPrest.vTPrest;
        DmWorkCom.CdsComprasVALOR_FRETE.AsFloat := vPrest.vTPrest;
        DmWorkCom.CdsComprasVALOR_PIS.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_COFINS.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_IPI.AsFloat := 0;
        DmWorkCom.CdsComprasBASE_ICMS.AsFloat := imp.vTotTrib;
        DmWorkCom.CdsComprasVALOR_ICMS.AsFloat := 0;
        DmWorkCom.CdsComprasBASE_ICMS_ST.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_ICMS_ST.AsFloat := 0;
        DmWorkCom.CdsComprasDESCONTO.AsFloat := 0;
        DmWorkCom.CdsComprasACRESCIMO.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_OUTROS.AsFloat := 0;
        DmWorkCom.CdsComprasOUTRAS_DESPESAS.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_TOTAL.AsFloat := vPrest.vTPrest;
        // transportadora
        DmWorkCom.CdsComprasTRANSP_CNPJ_CPF.AsString := Emit.CNPJ;
        DmWorkCom.CdsComprasTRANSP_INSC_RG.AsString := Emit.IE;
        DmWorkCom.CdsComprasTRANSP_NOME.AsString := Emit.xNOME;
        DmWorkCom.CdsComprasTRANSP_ENDERECO.AsString := Emit.enderEmit.xLgr;
        DmWorkCom.CdsComprasTRANSP_NUM_END.AsString := Emit.enderEmit.nro;
        DmWorkCom.CdsComprasTRANSP_BAIRRO_END.AsString := Emit.enderEmit.xBairro;
        DmWorkCom.CdsComprasTRANSP_COMPLEMENTO.AsString := Emit.enderEmit.xCpl;
        DmWorkCom.CdsComprasTRANSP_CODCIDADE.AsString := IntToStr(Emit.enderEmit.cMun);
        DmWorkCom.CdsComprasTRANSP_CIDADE_END.AsString := Emit.enderEmit.xMun;
        DmWorkCom.CdsComprasTRANSP_UF_END.AsString := Emit.enderEmit.UF;
        DmWorkCom.CdsComprasTRANSP_CEP_END.AsString := IntToStr(Emit.enderEmit.CEP);
        DmWorkCom.CdsComprasTRANSP_TELEFONE.AsString := Emit.enderEmit.fone;
        //
        Grava_Dados(DataWork.DataSet);
      end;
    end;
  end;

end;

procedure TFrmLancCompras.Grava_TotalProdutos;
begin
  if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
    DataWork.DataSet.Edit;
  DataWork.DataSet.FieldByName('VALOR').AsFloat := Retorna_Total_Compra(DataWork.DataSet.FieldByName('ID').AsInteger);
  DataWork.DataSet.FieldByName('VALOR_TOTAL').AsFloat := Retorna_Total_Compra(DataWork.DataSet.FieldByName('ID').AsInteger);
  Grava_Dados(DataWork.DataSet);

end;

procedure TFrmLancCompras.Grava_TotalCompra;
var
  aTotalCompra: Double;
begin
  aTotalCompra := DataWork.DataSet.FieldByName('VALOR').AsFloat + DataWork.DataSet.FieldByName('OUTRAS_DESPESAS').AsFloat +
    DataWork.DataSet.FieldByName('ACRESCIMO').AsFloat - DataWork.DataSet.FieldByName('DESCONTO').AsFloat;
  if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
    DataWork.DataSet.Edit;
  DataWork.DataSet.FieldByName('VALOR_TOTAL').AsFloat := aTotalCompra;

end;

procedure TFrmLancCompras.ConfirmaDadosCompra;
begin
  if DataWork.DataSet.State in [dsInsert, dsEdit] then
    Grava_Dados(DataWork.DataSet);

end;

procedure TFrmLancCompras.DbDescontoExit(Sender: TObject);
begin
  inherited;
  Grava_TotalCompra;

end;

procedure TFrmLancCompras.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  FrmComprasConsulta.sIDCompra := 0;
  FrmComprasConsulta.ShowModal;
  if FrmComprasConsulta.sIDCompra > 0 then
  begin
    if DmWorkCom.Dados_Compras(FrmComprasConsulta.sIDCompra) then
    begin
      DmWorkCom.Dados_ComprasItens(DataWork.DataSet.FieldByName('ID').AsInteger);
      DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByName('ID').AsInteger, 1);
    end;
    VerificaDados;
    PageControl1.TabIndex := 0;
  end;
end;

procedure TFrmLancCompras.VerificaDados;
begin
  DbIDFornecedor.Enabled := true;
  ActConfirmaCompra.Enabled := true;
  GrpDadosFornecedor.Enabled := true;
  GrpDadosFinanceiros.Enabled := true;
  GrpValores.Enabled := true;
  RadioTipoDoc.Enabled := true;
  GrpTransportadora.Enabled := true;
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'S') or (DataWork.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    DbIDFornecedor.Enabled := false;
    ActConfirmaCompra.Enabled := false;
    GrpDadosFornecedor.Enabled := false;
    GrpDadosFinanceiros.Enabled := false;
    GrpValores.Enabled := false;
    GriItens.Enabled := false;
    RadioTipoDoc.Enabled := false;
    GrpTransportadora.Enabled := false;
  end;

end;

procedure TFrmLancCompras.CancelarCompra1Click(Sender: TObject);
begin
  inherited;
  //
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Não pode cancelar Lançamento. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if Verifica_ContasQuitadas(DataWork.DataSet.FieldByName('ID').AsInteger) then
  begin
    MessageDlg('Não pode cancelar Lançamento com contas quitadas. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o cancelamento do Lançamento?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('CANCELADO').AsString := 'S';
    Grava_Dados(DataWork.DataSet);
    // exclui contas do cadastro
    if DataFormaPag.DataSet.FieldByName('GERAR_CONTA').AsString = 'S' then
    begin
      Apaga_Contas(0, DataWork.DataSet.FieldByName('ID').AsInteger);
    end;
    MessageDlg('Lançamento cancelado com sucesso!!!', mtWarning, [mbOK], 0);
  end;
  DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByName('ID').AsInteger, 1);
  VerificaDados;

end;

procedure TFrmLancCompras.ActIncluirItemExecute(Sender: TObject);
begin
  inherited;
  ConfirmaDadosCompra;
  // verificações
  if (DataWork.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if DataWork.DataSet.RecordCount > 0 then
  begin
    DataItens.DataSet.Append;
    FrmLancItensCompra.UF_Fornecedor := DataFornecedor.DataSet.FieldByName('UF_END').AsString;
    FrmLancItensCompra.ShowModal;
    Grava_TotalProdutos;
  end;

end;

procedure TFrmLancCompras.ActEditarItemExecute(Sender: TObject);
begin
  inherited;
  ConfirmaDadosCompra;
  // verificações
  if (DataWork.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if DataWork.DataSet.RecordCount > 0 then
  begin
    if DataItens.DataSet.RecordCount > 0 then
    begin
      DataItens.DataSet.Edit;
      FrmLancItensCompra.UF_Fornecedor := DataFornecedor.DataSet.FieldByName('UF_END').AsString;
      FrmLancItensCompra.ShowModal;
      Grava_TotalProdutos;
    end;
  end;

end;

procedure TFrmLancCompras.ActExcluirItemExecute(Sender: TObject);
begin
  inherited;
  ConfirmaDadosCompra;
  // verificações
  if (DataWork.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este Lançamento já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if DataWork.DataSet.RecordCount > 0 then
  begin
    if MessageDlg('Confirma a exclusão do item?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      DataItens.DataSet.Delete;
      Grava_Dados(DataItens.DataSet);
      Grava_TotalProdutos;
    end;
  end;

end;

procedure TFrmLancCompras.ActRetirarConfirmacaoExecute(Sender: TObject);
begin
  inherited;
  if VerificaMesFechado(DataWork.DataSet.FieldByName('DATA_COMPRA').AsDateTime) then
  begin
    MessageDlg('Não é permitido movimentação para o mes fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByName('CONFIRMADA').AsString = 'N') then
  begin
    MessageDlg('Este Lançamento não esta finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if Verifica_ContasQuitadas(DataWork.DataSet.FieldByName('ID').AsInteger) then
  begin
    MessageDlg('Não pode liberar Lançamento com contas quitadas. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma a retirada do fechamento do Lançamento?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('CONFIRMADA').AsString := 'N';
    Grava_Dados(DataWork.DataSet);
    // retorna estoque
    if DataClassifica.DataSet.FieldByName('BAIXAR_ESTOQUE').AsString = 'S' then
      DmWorkCom.Movimenta_Estoque(0, DataItens.DataSet);
    // gera formas de pagamento
    if DataFormaPag.DataSet.FieldByName('GERAR_CONTA').AsString = 'S' then
    begin
      Apaga_Contas(0, DataWork.DataSet.FieldByName('ID').AsInteger);
    end;
    MessageDlg('Retirada do fechamento concluída com sucesso!!!', mtWarning, [mbOK], 0);
  end;
  DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByName('ID').AsInteger, 1);
  VerificaDados;

end;

procedure TFrmLancCompras.ActImportarXMLExecute(Sender: TObject);
var
  aCST, aArquivoXML: String;
  i, n: Integer;
  aCadProduto: Boolean;
begin
  inherited;
  // realiza a importação do arquivo XML da NFe
  aArquivoXML := '';
  OpenDialog1.Execute;
  aArquivoXML := OpenDialog1.FileName;
  if aArquivoXML <> '' then
  begin
    DmAcBr.ACBrNFe1.NotasFiscais.Clear;
    try
      DmAcBr.ACBrNFe1.NotasFiscais.LoadFromFile(aArquivoXML);
    except
      MessageDlg('O arquivo selecionado é inválido. Verifique!!!', mtWarning, [mbOK], 0);
      Exit;
    end;
    // grava os dados
    for n := 0 to DmAcBr.ACBrNFe1.NotasFiscais.Count - 1 do
    begin
      with DmAcBr.ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
        // verifica Chave NFe
        if DmWorkCom.VerificaExisteNFeChave(infNFe.ID) then
        begin
          MessageDlg('Existe uma NFe registrada com a chave selecionada. Verifique!!!', mtWarning, [mbOK], 0);
          Exit;
        end;
        // prepara registro
        if DataWork.DataSet.RecordCount > 0 then
        begin
          MessageDlg('Existe um registro aberto. Este será salvo para inclusão de um novo', mtWarning, [mbOK], 0);
          if DataWork.DataSet.State in [dsInsert, dsEdit] then
            Grava_Dados(DataWork.DataSet);
          DmWorkCom.Dados_Compras(0);
          DmWorkCom.Dados_ComprasItens(0);
        end;
        ActIncluirExecute(Sender);
        // verifica se existe o fornecedor no cadastro
        if not DmClientes.Dados_ContatoCNPJ(FiltraNumero(Emit.CNPJCPF)) then
        begin
          // Cadastra o Fornecedor
          Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
          Application.CreateForm(TFrmClientes, FrmClientes);
          Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
          Application.CreateForm(TFrmContatosADC, FrmContatosADC);
          try
            FrmCadastroCliente.sIDCliente := 0;
            FrmCadastroCliente.sCadNFe := true;
            FrmCadastroCliente.xCNPJ_CPF := Emit.CNPJCPF;
            FrmCadastroCliente.xINSC_RG := Emit.IE;
            FrmCadastroCliente.xNOME := Emit.xNOME;
            FrmCadastroCliente.xENDERECO := Emit.enderEmit.xLgr;
            FrmCadastroCliente.xNUM_END := Emit.enderEmit.nro;
            FrmCadastroCliente.xBAIRRO_END := Emit.enderEmit.xBairro;
            FrmCadastroCliente.xCOMPLEMENTO := Emit.enderEmit.xCpl;
            FrmCadastroCliente.xCODCIDADE := IntToStr(Emit.enderEmit.cMun);
            FrmCadastroCliente.xCIDADE_END := Emit.enderEmit.xMun;
            FrmCadastroCliente.xUF_END := Emit.enderEmit.UF;
            FrmCadastroCliente.xCEP_END := IntToStr(Emit.enderEmit.CEP);
            FrmCadastroCliente.xTELEFONE := Emit.enderEmit.fone;
            FrmCadastroCliente.ShowModal;
            if FrmCadastroCliente.sIDCliente > 0 then
            begin
              if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
                DataWork.DataSet.Edit;
              DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger := FrmCadastroCliente.sIDCliente;
              DbIDFornecedorExit(Sender);
            end;
          finally
            FrmClientes.Destroy;
            FrmSelEndereco.Destroy;
            FrmContatosADC.Destroy;
            FrmCadastroCliente.Destroy;
          end;
        end
        else
        begin
          if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
            DataWork.DataSet.Edit;
          DataWork.DataSet.FieldByName('IDFORNECEDOR').AsInteger := DmClientes.CdsContatosID.AsInteger;
          DbIDFornecedorExit(Sender);

        end;
        //
        DmWorkCom.CdsComprasDATA_EMISSAO.AsDateTime := Ide.dEmi;
        DmWorkCom.CdsComprasDATA_COMPRA.AsDateTime := Ide.dSaiEnt;
        DmWorkCom.CdsComprasNOTA.AsString := IntToStrZero(Ide.nNF, 6);
        DmWorkCom.CdsComprasCHAVE_NFE.AsString := infNFe.ID;
        DmWorkCom.CdsComprasSTATUS_NFE.AsString := IntToStr(procNFe.cStat);
        DmWorkCom.CdsComprasNATOP.AsString := Ide.natOp;
        DmWorkCom.CdsComprasVALOR.AsFloat := Total.ICMSTot.vNF;
        DmWorkCom.CdsComprasVALOR_FRETE.AsFloat := Total.ICMSTot.vFrete;
        DmWorkCom.CdsComprasVALOR_PIS.AsFloat := Total.ICMSTot.vPIS;
        DmWorkCom.CdsComprasVALOR_COFINS.AsFloat := Total.ICMSTot.vCOFINS;
        DmWorkCom.CdsComprasVALOR_IPI.AsFloat := Total.ICMSTot.vIPI;
        DmWorkCom.CdsComprasBASE_ICMS.AsFloat := Total.ICMSTot.vBC;
        DmWorkCom.CdsComprasVALOR_ICMS.AsFloat := Total.ICMSTot.vICMS;
        DmWorkCom.CdsComprasBASE_ICMS_ST.AsFloat := Total.ICMSTot.vBCST;
        DmWorkCom.CdsComprasVALOR_ICMS_ST.AsFloat := Total.ICMSTot.vST;
        DmWorkCom.CdsComprasDESCONTO.AsFloat := Total.ICMSTot.vDesc;
        DmWorkCom.CdsComprasACRESCIMO.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_OUTROS.AsFloat := Total.ICMSTot.vOutro;
        DmWorkCom.CdsComprasOUTRAS_DESPESAS.AsFloat := 0;
        DmWorkCom.CdsComprasVALOR_TOTAL.AsFloat := Total.ICMSTot.vNF;
        // transportadora
        if Transp.modFrete = mfContaEmitente then
          DmWorkCom.CdsComprasTIPO_FRETE.AsInteger := 0
        else if Transp.modFrete = mfContaDestinatario then
          DmWorkCom.CdsComprasTIPO_FRETE.AsInteger := 1
        else if Transp.modFrete = mfContaTerceiros then
          DmWorkCom.CdsComprasTIPO_FRETE.AsInteger := 2
        else if Transp.modFrete = mfSemFrete then
          DmWorkCom.CdsComprasTIPO_FRETE.AsInteger := 3;
        DmWorkCom.CdsComprasTRANSP_CNPJ_CPF.AsString := Transp.Transporta.CNPJCPF;
        DmWorkCom.CdsComprasTRANSP_INSC_RG.AsString := Transp.Transporta.IE;
        DmWorkCom.CdsComprasTRANSP_NOME.AsString := Transp.Transporta.xNOME;
        DmWorkCom.CdsComprasTRANSP_ENDERECO.AsString := Transp.Transporta.xEnder;
        DmWorkCom.CdsComprasTRANSP_NUM_END.AsString := FiltraNumero(Transp.Transporta.xEnder);
        DmWorkCom.CdsComprasTRANSP_BAIRRO_END.AsString := '';
        DmWorkCom.CdsComprasTRANSP_COMPLEMENTO.AsString := '';
        DmWorkCom.CdsComprasTRANSP_CODCIDADE.AsString := '';
        DmWorkCom.CdsComprasTRANSP_CIDADE_END.AsString := Transp.Transporta.xMun;
        DmWorkCom.CdsComprasTRANSP_UF_END.AsString := Transp.Transporta.UF;
        DmWorkCom.CdsComprasTRANSP_CEP_END.AsString := '';
        DmWorkCom.CdsComprasTRANSP_TELEFONE.AsString := '';
        //
        Grava_Dados(DataWork.DataSet);
        // itens da nota
        for i := 0 to Det.Count - 1 do
        begin
          with Det.Items[i] do
          begin
            case Imposto.ICMS.CST of
              cst00:
                aCST := '000';
              cst10:
                aCST := '010';
              cst20:
                aCST := '020';
              cst30:
                aCST := '030';
              cst40:
                aCST := '040';
              cst41:
                aCST := '041';
              cst45:
                aCST := '045';
              cst50:
                aCST := '050';
              cst51:
                aCST := '051';
              cst60:
                aCST := '060';
              cst70:
                aCST := '070';
              cst80:
                aCST := '080';
              cst81:
                aCST := '081';
              cst90:
                aCST := '090';
            end;
            // localiza o produto no cadastro
            if not DmProdutos.Dados_Produto(Prod.cEAN) then
            begin
              aCadProduto := true;
              if Confirmacao('Produto não localizado no cadastro deseja localiza manualmente?') then
              begin
                FrmProdutos.sIDProd := 0;
                FrmProdutos.sApenasConsulta := true;
                FrmProdutos.EdtLocalizar.Text := Prod.xProd;
                FrmProdutos.ShowModal;
                if FrmProdutos.sIDProd > 0 then
                begin
                  aCadProduto := false;
                  DmProdutos.Dados_Produto(FrmProdutos.sIDProd);
                end
                else
                begin
                end;
              end;
              // verifica se é para cadastrar
              if aCadProduto then
              begin
                if Confirmacao('Deseja cadastrar novo produto?') then
                begin
                  Application.CreateForm(TFrmCadProdutos, FrmCadProdutos);
                  try
                    FrmCadProdutos.sIDProduto := 0;
                    FrmCadProdutos.sCadNFe := true;
                    FrmCadProdutos.xDESCRICAO := Prod.xProd;
                    FrmCadProdutos.xREFERENCIA := Prod.cProd;
                    FrmCadProdutos.xEAN13 := Prod.cEAN;
                    FrmCadProdutos.xUNIDADE := Prod.uCom;
                    FrmCadProdutos.xCODIGO_NCM := Prod.NCM;
                    FrmCadProdutos.xCST_INTERNO := aCST;
                    FrmCadProdutos.xCFOP_INTERNO := Prod.CFOP;
                    FrmCadProdutos.xALIQUOTA_ICMS := Imposto.ICMS.pICMS;
                    FrmCadProdutos.xALIQUOTA_IPI := Imposto.IPI.pIPI;
                    FrmCadProdutos.xPRECO_COMPRA := Prod.vUnCom;
                    FrmCadProdutos.xREDUCAO_BASE := Imposto.ICMS.pRedBC;
                    FrmCadProdutos.xMVA := Imposto.ICMS.pMVAST;
                    FrmCadProdutos.xALIQUOTA_PIS := Imposto.PIS.pPIS;
                    FrmCadProdutos.xALIQUOTA_COFINS := Imposto.COFINS.pCOFINS;
                    FrmCadProdutos.xUF_Fornec := Emit.enderEmit.UF;
                    FrmCadProdutos.xQuantCompra := Prod.qCom;
                    FrmCadProdutos.ShowModal;
                    if FrmCadProdutos.sIDProduto > 0 then
                    begin
                      DmProdutos.Dados_Produto(FrmCadProdutos.sIDProduto);
                    end;
                  finally
                    FreeAndNil(FrmCadProdutos);
                  end;
                end;
              end;
            end;
            // registra o item caso o mesmo esteja cadastrado
            if DmProdutos.CdsProdutos.RecordCount > 0 then
            begin
              DmWorkCom.CdsComprasItens.Append;
              DmWorkCom.CdsComprasItensCST.AsString := aCST;
              DmWorkCom.CdsComprasItensCFOP.AsString := Prod.CFOP;
              DmWorkCom.CdsComprasItensIDPRODUTO.AsInteger := DmProdutos.CdsProdutosID.AsInteger;
              DmWorkCom.CdsComprasItensDESCRICAO.AsString := Prod.xProd;
              DmWorkCom.CdsComprasItensUNIDADE.AsString := Prod.uCom;
              DmWorkCom.CdsComprasItensQUANTIDADE.AsFloat := Prod.qCom;
              DmWorkCom.CdsComprasItensVALOR.AsFloat := Prod.vUnCom;
              DmWorkCom.CdsComprasItensDESCONTO.AsFloat := Prod.vDesc;
              DmWorkCom.CdsComprasItensACRESCIMO.AsFloat := 0;
              DmWorkCom.CdsComprasItensVALOR_TOTAL.AsFloat := (Prod.qCom * Prod.vUnCom) - Prod.vDesc;
              DmWorkCom.CdsComprasItensBASE_ICMS.AsFloat := Imposto.ICMS.vBC;
              DmWorkCom.CdsComprasItensALIQ_ICMS.AsFloat := Imposto.ICMS.pICMS;
              DmWorkCom.CdsComprasItensVALOR_ICMS.AsFloat := Imposto.ICMS.pICMS;
              DmWorkCom.CdsComprasItensBASE_ICMS_ST.AsFloat := Imposto.ICMS.vBCST;
              DmWorkCom.CdsComprasItensALIQ_ICMS_ST.AsFloat := Imposto.ICMS.pICMSST;
              DmWorkCom.CdsComprasItensVALOR_ICMS_ST.AsFloat := Imposto.ICMS.vICMSST;
              DmWorkCom.CdsComprasItensVALOR_PIS.AsFloat := Imposto.PIS.vPIS;
              DmWorkCom.CdsComprasItensVALOR_COFINS.AsFloat := Imposto.COFINS.vCOFINS;
              DmWorkCom.CdsComprasItensVALOR_IPI.AsFloat := 0;
              Grava_Dados(DmWorkCom.CdsComprasItens);
            end
            else
            begin
              MessageDlg('O produto de codigo ' + Prod.cEAN + ' não foi lançado!', mtInformation, [mbOK], 0);
            end;
          end;
        end;
      end;
    end;
  end;

end;

end.
