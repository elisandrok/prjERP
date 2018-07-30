unit uFrmLancPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ExtCtrls, DBCtrls, uFrameBotaoVertical, Grids,
  DBGrids, Buttons, StdCtrls, Mask, ComCtrls, ActnList, DB, Menus, DBClient,
  System.Actions, uFrameBotaoHorizontal, frxClass, frxDBSet;

type
  TFrmLancPedidos = class(TFrmCadPadrao)
    PgcPedido: TPageControl;
    TbsLancamento: TTabSheet;
    GroupBox1: TGroupBox;
    GrpDadosCliente: TGroupBox;
    DbIDCliente: TDBEdit;
    GrpDadosPedido: TGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DbID: TDBEdit;
    DbDataEmissao: TDBEdit;
    DbHoraEmissao: TDBEdit;
    GrpItens: TGroupBox;
    GriItens: TDBGrid;
    TbsEndereco: TTabSheet;
    DataItens: TDataSource;
    DataCliente: TDataSource;
    DataVendedor: TDataSource;
    DataFormaPag: TDataSource;
    DataClassifica: TDataSource;
    DataCtaReceber: TDataSource;
    ActCadCliente: TAction;
    ActConsultaCliente: TAction;
    ActCadClass: TAction;
    ActCadFormaPag: TAction;
    ActConfirmaPedido: TAction;
    DbCliente: TDBEdit;
    DbPedido: TDBEdit;
    Label8: TLabel;
    DataUF: TDataSource;
    TbsContas: TTabSheet;
    GroupBox2: TGroupBox;
    GridContas: TDBGrid;
    PopupMenu1: TPopupMenu;
    F4Confirmar1: TMenuItem;
    LiberarPedidoFechado1: TMenuItem;
    CancelarPedido1: TMenuItem;
    N2: TMenuItem;
    ImprimirPedido1: TMenuItem;
    N3: TMenuItem;
    VerProdutosCadastrados1: TMenuItem;
    ActIncluirItens: TAction;
    ActEditarItens: TAction;
    ActExcluirItem: TAction;
    ActRetirarFechamento: TAction;
    AlterarNmerodopedido1: TMenuItem;
    AlterarDatadoPedido1: TMenuItem;
    CdsComissao: TClientDataSet;
    DataComissao: TDataSource;
    CdsComissaoCOMISSAO: TCurrencyField;
    CdsComissaoTOTALGERAL: TCurrencyField;
    N4: TMenuItem;
    CadastrarProdutos1: TMenuItem;
    DbIDVendedor: TDBEdit;
    ComboVendedor: TDBLookupComboBox;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    Image2: TImage;
    SpbConCliente: TBitBtn;
    SpbCadCliente: TBitBtn;
    TbsPagamento: TTabSheet;
    GrpDadosEntrega: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    DBNomeCli: TDBEdit;
    ComboUF: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    GrpValores: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DbValor: TDBEdit;
    DbDesconto: TDBEdit;
    DbAcrescimo: TDBEdit;
    DbOutros: TDBEdit;
    DbTotal: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    GrpDadosFinanceiros: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DbIdClassifica: TDBEdit;
    DbIdFormaPag: TDBEdit;
    ComboClassifica: TDBLookupComboBox;
    ComboFormaPag: TDBLookupComboBox;
    SpeedButton1: TBitBtn;
    SpeedButton2: TBitBtn;
    RadioTipoDoc: TDBRadioGroup;
    GrpLancItens: TGroupBox;
    grpButtons: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    DbRadioConfirmado: TDBRadioGroup;
    DbRadioEntregue: TDBRadioGroup;
    DbRadioCancelado: TDBRadioGroup;
    GroupBox4: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox6: TGroupBox;
    DbDataCad: TDBEdit;
    DbHoraCad: TDBEdit;
    BtnFinalizar: TBitBtn;
    BtnRetornar: TBitBtn;
    EdtCodigo: TMaskEdit;
    EdtDescricao: TMaskEdit;
    EdtQuant: TMaskEdit;
    SpeedButton3: TSpeedButton;
    PopupMenu2: TPopupMenu;
    ExcluirItem2: TMenuItem;
    CancelaritemdopedidoDAV1: TMenuItem;
    Label28: TLabel;
    EdtDesc: TMaskEdit;
    EdtValorUnit: TMaskEdit;
    Label29: TLabel;
    frxReport1: TfrxReport;
    frxDBPedido: TfrxDBDataset;
    frxDBItens: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    FrameBotaoHorizontal1: TFrameBotaoHorizontal;
    procedure FormShow(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction; var Handled: Boolean);
    procedure ActCadClassExecute(Sender: TObject);
    procedure ActCadFormaPagExecute(Sender: TObject);
    procedure ActCadClienteExecute(Sender: TObject);
    procedure DbIDClienteExit(Sender: TObject);
    procedure DbIDKeyPress(Sender: TObject; var Key: Char);
    procedure ActConfirmaPedidoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure GridContasTitleClick(Column: TColumn);
    Procedure Grava_TotalProdutos;
    procedure DbDescontoExit(Sender: TObject);
    procedure ActRelatorioExecute(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure CancelarPedido1Click(Sender: TObject);
    procedure VerProdutosCadastrados1Click(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActExcluirItemExecute(Sender: TObject);
    procedure ActRetirarFechamentoExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure AlterarNmerodopedido1Click(Sender: TObject);
    procedure AlterarDatadoPedido1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ActConsultaClienteExecute(Sender: TObject);
    procedure CadastrarProdutos1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DbIDVendedorExit(Sender: TObject);
    procedure EdtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure CancelaritemdopedidoDAV1Click(Sender: TObject);
    procedure EdtQuantKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDescExit(Sender: TObject);
  private
    { Private declarations }
    sIDCod, sIDTamanho: Integer;
    sNomeCor, sTamanho: String;
    procedure Atualizar_DadosPedido;
    procedure Grava_TotalPedido;
    procedure ConfirmaDadosPedido;
    procedure VerificaDados;
    procedure MontaGridContas;
    procedure ConfirmaDadosItens;
    procedure CalculaComissao;
    procedure ZeraCdsComissao;

  public
    { Public declarations }
  end;

var
  FrmLancPedidos: TFrmLancPedidos;

implementation

uses uLibrary, uFrmClientes, uDmWorkCom, uFrmCadClassPedido,
  uFrmCadastroCliente, uFrmLancItensPedido, uFrmPedidosConsulta, uFrmProdutos,
  uFrmSelEndereco, uFrmContatosADC, uFrmLancItensGrid, uFrmCadFormaPag,
  uFrmCadProdutos, uDMClientes, uDmProdutos, uFrmProdutoCores,
  uFrmProdutoTamanho;

{$R *.dfm}

procedure TFrmLancPedidos.FormShow(Sender: TObject);
begin
  inherited;
  DataWork.DataSet := DmWorkCom.CdsPedidos;
  DataItens.DataSet := DmWorkCom.CdsPedidoItens;
  DataCliente.DataSet := DmClientes.CdsContatos;
  DataVendedor.DataSet := DmClientes.CdsFuncionarios;
  DataFormaPag.DataSet := DmWorkCom.CdsFormaPag;
  DataClassifica.DataSet := DmWorkCom.CdsPedidoClass;
  DataCtaReceber.DataSet := DmWorkCom.CdsContasAux;
  DataUF.DataSet := DmClientes.CdsUF;
  DmWorkCom.Dados_Pedido(0);
  DmWorkCom.Dados_PedidoClassificacao(1);
  DmWorkCom.Dados_FormaPagto;
  DmClientes.Dados_Funcionario;
  DmClientes.Dados_Contato(0);
  DmWorkCom.Dados_PedidoItens(0);
  DmWorkCom.Dados_ContasPedido(0, 0);
  MontaGridContas;
  DataUF.DataSet.Open;
  PgcPedido.TabIndex := 0;
  VerificaDados;
  EdtDescricao.ReadOnly := true;
  if DmProdutos.CdsProdutos.FieldByname('EDITA_DESC_PED').AsString = 'S' then
    EdtDescricao.ReadOnly := false;
  DbIDCliente.SetFocus;

end;

procedure TFrmLancPedidos.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(FrameBotaoHorizontal1, DataWork.DataSet);

end;

procedure TFrmLancPedidos.ActCadClassExecute(Sender: TObject);
begin
  inherited;
  FrmCadClassPedido.ShowModal;
  DmWorkCom.Dados_PedidoClassificacao(1);

end;

procedure TFrmLancPedidos.ActCadFormaPagExecute(Sender: TObject);
begin
  inherited;
  //
  FrmCadFormaPag.ShowModal;
  DmWorkCom.Dados_FormaPagto;

end;

procedure TFrmLancPedidos.ActCadClienteExecute(Sender: TObject);
begin
  inherited;
  //
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
  Application.CreateForm(TFrmContatosADC, FrmContatosADC);
  try
    FrmCadastroCliente.ShowModal;
    if FrmCadastroCliente.sIDCliente > 0 then
    begin
      if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
        ActIncluirExecute(Sender);
      DataWork.DataSet.FieldByname('IDCLIENTE').AsInteger := FrmCadastroCliente.sIDCliente;
      DbIDClienteExit(Sender);
    end;
  finally
    FrmSelEndereco.Destroy;
    FrmContatosADC.Destroy;
    FrmCadastroCliente.Destroy;
  end;

end;

procedure TFrmLancPedidos.DbIDClienteExit(Sender: TObject);
begin
  inherited;
  if (DbIDCliente.Text <> '') and (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    if DmClientes.Dados_Contato(StrToInt(DbIDCliente.Text)) then
      DmWorkCom.PreencheDadosCliente(0)
    else
    begin
      MessageDlg('Cliente não encontrado. Verifique!!!', mtWarning, [mbOK], 0);
      DbIDCliente.SetFocus;
      Abort;
    end;
  end
  else if (DbIDCliente.Text = '') and (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ActConsultaClienteExecute(Sender);
    // DbIDClienteExit(Sender);
  end

end;

procedure TFrmLancPedidos.DbIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmLancPedidos.DbIDVendedorExit(Sender: TObject);
begin
  inherited;
  if Trim(FiltraNumero(DbIDVendedor.Text)) <> '' then
  begin
    if not DmClientes.Dados_FuncionarioAux(StrToInt(Trim(FiltraNumero(DbIDVendedor.Text)))) then
    begin
      MessageDlg('Código o vendedor não encontrado!', mtWarning, [mbOK], 0);
      DbIDVendedor.SetFocus;
      Abort;
    end;
  end;
  EdtCodigo.SetFocus;
end;

procedure TFrmLancPedidos.ActConfirmaPedidoExecute(Sender: TObject);
var
  aValorConta: Double;
begin
  inherited;
  // verificações
  if VerificaMesFechado(DataWork.DataSet.FieldByname('DATA_PEDIDO').AsDateTime) then
  begin
    MessageDlg('Não é permitido movimentação para o mes fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('TIPO_PEDIDO').AsInteger = 1) then
  begin
    MessageDlg('Orçamentos não podem ser finalizados!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataItens.DataSet.RecordCount = 0 then
  begin
    MessageDlg('Não é permitido finalizar o pedido sem itens. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataWork.DataSet.FieldByname('VALOR_TOTAL').AsFloat <= 0 then
  begin
    MessageDlg('Não é permitido finalizar o pedido com valores zerados ou negativos.', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('IDCLIENTE').IsNull) or (DataWork.DataSet.FieldByname('IDCLIENTE').AsString = '') then
  begin
    MessageDlg('É necessário informar o cliente. Verifique', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if PgcPedido.ActivePage <> TbsPagamento then
  begin
    PgcPedido.ActivePage := TbsPagamento;
  end
  else
  begin
    if (DataWork.DataSet.FieldByname('ID_CLASSIFICACAO').IsNull) or (DataWork.DataSet.FieldByname('ID_CLASSIFICACAO').AsString = '') then
    begin
      MessageDlg('É necessário selecionar a classificação do pedido.', mtWarning, [mbOK], 0);
      Abort;
    end;
    if (DataWork.DataSet.FieldByname('ID_FORMAPAG').IsNull) or (DataWork.DataSet.FieldByname('ID_FORMAPAG').AsString = '') then
    begin
      MessageDlg('É necessário selecionar a forma de pagamento do pedido.', mtWarning, [mbOK], 0);
      Abort;
    end;
    //
    if MessageDlg('Confirma o fechamento do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      // grava fechamento no pedido
      if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
        DataWork.DataSet.Edit;
      DataWork.DataSet.FieldByname('CONFIRMADA').AsString := 'S';
      Grava_Dados(DataWork.DataSet);
      // baixa estoque
      if (DataClassifica.DataSet.FieldByname('BAIXAR_ESTOQUE').AsString = 'S') and (DataClassifica.DataSet.FieldByname('TIPO').AsInteger <> 2) and
        (DataWork.DataSet.FieldByname('DAV').AsString = 'N') then
      begin
        DmWorkCom.Movimenta_Estoque(0, DataItens.DataSet);
      end;
      // gera formas de pagamento
      if (DataFormaPag.DataSet.FieldByname('GERAR_CONTA').AsString = 'S') and (DataClassifica.DataSet.FieldByname('TIPO').AsInteger <> 2) and
        (DataWork.DataSet.FieldByname('DAV').AsString = 'N') then
      begin
        aValorConta := DataWork.DataSet.FieldByname('VALOR_TOTAL').AsFloat / DataFormaPag.DataSet.FieldByname('QUANT_PAGTOS').AsInteger;
        DmWorkCom.Gerar_Contas(0, DataWork.DataSet.FieldByname('ID').AsInteger, 0, DataWork.DataSet.FieldByname('IDCLIENTE').AsInteger,
          DataFormaPag.DataSet.FieldByname('QUANT_PAGTOS').AsInteger, DataFormaPag.DataSet.FieldByname('FORMA_PAGTO').AsString,
          DataWork.DataSet.FieldByname('CLIENTE').AsString, '', DataWork.DataSet.FieldByname('DATA_PEDIDO').AsDateTime, aValorConta);
      end;
      MessageDlg('Pedido fechado com sucesso!!!', mtWarning, [mbOK], 0);
      DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByname('ID').AsInteger, 0);
      MontaGridContas;
      Atualizar_DadosPedido;
      VerificaDados;
      PgcPedido.ActivePage := TbsLancamento;
    end;
  end;

end;

procedure TFrmLancPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataItens.DataSet.Close;
  DataCliente.DataSet.Close;
  DataVendedor.DataSet.Close;
  DataFormaPag.DataSet.Close;
  DataClassifica.DataSet.Close;
  DataCtaReceber.DataSet.Close;
  DataWork.DataSet.Close;

end;

procedure TFrmLancPedidos.ActIncluirExecute(Sender: TObject);
begin
  sIDCod := 0;
  sIDTamanho := 0;
  sNomeCor := '';
  sTamanho := '';
  PgcPedido.TabIndex := 0;
  DmWorkCom.Dados_Pedido(0);
  DmWorkCom.Dados_PedidoItens(0);
  DmWorkCom.Dados_ContasPedido(0, 0);
  VerificaDados;
  inherited;
  DbIDCliente.SetFocus;
  // VerificaDados;
end;

procedure TFrmLancPedidos.ActConfirmarExecute(Sender: TObject);
begin
  if not DmWorkCom.VerificaCampos then
    Abort;
  inherited;
  // Grava_Dados(DataWork.DataSet);
  Grava_Dados(DataItens.DataSet);
  VerificaDados;

end;

procedure TFrmLancPedidos.GridContasTitleClick(Column: TColumn);
begin
  inherited;
  GridOrdem(DmWorkCom.CdsContas, GridContas, Column);

end;

procedure TFrmLancPedidos.Grava_TotalProdutos;
begin
  if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
    DataWork.DataSet.Edit;
  DataWork.DataSet.FieldByname('VALOR').AsFloat := Retorna_Total_Pedido(DataWork.DataSet.FieldByname('ID').AsInteger);
  DataWork.DataSet.FieldByname('VALOR_TOTAL').AsFloat := Retorna_Total_Pedido(DataWork.DataSet.FieldByname('ID').AsInteger);
  Grava_Dados(DataWork.DataSet);

end;

procedure TFrmLancPedidos.EdtCodigoKeyPress(Sender: TObject; var Key: Char);
var
  aIDProduto, aIDProdClone: Integer;
  aSelecionaNovoDetalhe: Boolean;
begin
  inherited;
  if Key = #27 then
  begin
    EdtCodigo.Clear;
    EdtDescricao.Clear;
    EdtQuant.Clear;
    EdtCodigo.SelectAll;
    EdtCodigo.SetFocus;
  end;
  if Key = #13 then
  begin
    ConfirmaDadosPedido;
    // Verificações
    if (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') then
    begin
      MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
    begin
      MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if DataItens.DataSet.State in [dsInsert, dsEdit] then
      Grava_Dados(DataItens.DataSet);
    //
    if DataWork.DataSet.RecordCount > 0 then
    begin
      if FiltraNumero(EdtCodigo.Text) <> '' then
      begin
        aIDProduto := StrToInt(FiltraNumero(EdtCodigo.Text));
        if DmProdutos.Dados_Produto(aIDProduto) then
        begin
          if DmProdutos.CdsProdutos.FieldByname('COMBUSTIVEL').AsString = 'S' then
          begin
            if (DataClassifica.DataSet.FieldByname('TIPO').AsInteger = 2) or (DataClassifica.DataSet.FieldByname('TIPO').AsInteger = 3) or
              (DataClassifica.DataSet.FieldByname('TIPO').AsInteger = 4) then
            begin
              MessageDlg('Este produto não pode ser vendido desta forma', mtWarning, [mbOK], 0);
              Abort;
            end;
          end;
          aIDProdClone := 0;
          // se tiver configurado Grade, solicita a mesma
          if DmWorkCom.sGradeProdutos = 'S' then
          begin
            // seleciona a cor
            aSelecionaNovoDetalhe := false;
            if (sIDCod > 0) then
            begin
              if not Confirmacao('Usar a cor selecionada na consulta?') then
              begin
                aSelecionaNovoDetalhe := true;
              end;
            end
            else
              aSelecionaNovoDetalhe := true;
            //
            if aSelecionaNovoDetalhe then
            begin
              try
                Application.CreateForm(TFrmProdutoCores, FrmProdutoCores);
                FrmProdutoCores.sApenasConsulta := true;
                FrmProdutoCores.ShowModal;
                sIDCod := FrmProdutoCores.sIDCor;
                sNomeCor := FrmProdutoCores.sNomeCor;
              finally
                FreeAndNil(FrmProdutoCores);
              end;
            end;
            // seleciona o tamanho
            aSelecionaNovoDetalhe := false;
            if (sIDTamanho > 0) then
            begin
              if not Confirmacao('Usar o tamanho selecionado na consulta?') then
              begin
                aSelecionaNovoDetalhe := true;
              end;
            end
            else
              aSelecionaNovoDetalhe := true;
            //
            if aSelecionaNovoDetalhe then
            begin
              try
                Application.CreateForm(TFrmProdutoTamanho, FrmProdutoTamanho);
                FrmProdutoTamanho.sApenasConsulta := true;
                FrmProdutoTamanho.ShowModal;
                sIDTamanho := FrmProdutoTamanho.sIDTamanho;
                sTamanho := FrmProdutoTamanho.xTamanho;
              finally
                FreeAndNil(FrmProdutoTamanho);
              end;
            end;
            // verifica se existe a grade do produto
            if not DmWorkCom.VerificaProdutoGrade(aIDProduto, sIDCod, sIDTamanho) then
            begin
              // se não existe realiza o clone do produto.
              aIDProdClone := DmWorkCom.ClonarProdutoCodTamanho(aIDProduto, sIDCod, sIDTamanho);
              if aIDProdClone <= 0 then
              begin
                MessageDlg('Erro ao clonar o produto. Verifique!!!', mtWarning, [mbOK], 0);
                Exit;
              end;
              DmProdutos.Dados_Produto(aIDProdClone);
              EdtCodigo.Text := IntToStr(aIDProdClone);
            end;
          end;
          //
          EdtDescricao.Text := DmProdutos.CdsProdutos.FieldByname('DESCRICAO').AsString;
          EdtValorUnit.Text := DmProdutos.CdsProdutos.FieldByname('PRECO_VENDA').AsString;
          EdtDesc.Text := '0';
          EdtQuant.Text := '1';
          EdtQuant.SelectAll;
          EdtQuant.SetFocus;
        end
        else
        begin
          MessageDlg('Produto não localizado. Verifique!!!', mtWarning, [mbOK], 0);
          EdtCodigo.SelectAll;
          EdtCodigo.SetFocus;
          Abort;
        end;
      end
      else
      begin
        SpeedButton3Click(Sender);
      end;
    end;
  end;

end;

procedure TFrmLancPedidos.EdtDescExit(Sender: TObject);
var
  AuxDesc: Double;
begin
  inherited;
  if Trim(EdtDesc.Text) <> '' then
  begin
    try
      AuxDesc := StrToFloat(EdtDesc.Text);
    except
      MessageDlg('O valor do desconto informádo é invalido!', mtWarning, [mbOK], 0);
      EdtDesc.SelectAll;
      EdtDesc.SetFocus;
    end;
  end
  else
    EdtDesc.Text := '0';

end;

procedure TFrmLancPedidos.EdtQuantKeyPress(Sender: TObject; var Key: Char);
var
  aQuantidade, aDesconto: Double;
begin
  inherited;
  if Key = #13 then
  begin
    if FiltraNumero(EdtQuant.Text) <> '' then
    begin
      try
        aQuantidade := StrToFloat(EdtQuant.Text);
        EdtQuant.Text := FormatFloat('0.000', aQuantidade);
      except
        MessageDlg('Quantidade inválida!!!', mtWarning, [mbOK], 0);
        DataItens.DataSet.Cancel;
        Abort;
      end;
      try
        aDesconto := StrToFloat(EdtDesc.Text);
        EdtDesc.Text := FormatFloat('0.000', aDesconto);
      except
        MessageDlg('Desconto inválido!!!', mtWarning, [mbOK], 0);
        DataItens.DataSet.Cancel;
        Abort;
      end;
      // registra o produto
      if (aQuantidade > 0) and (DmProdutos.CdsProdutos.RecordCount > 0) then
      begin
        //
        if Confirmacao('Confirma a inclusão do item?') then
        begin
          // localiza dados do NCM
          DmProdutos.Dados_NCM(DmProdutos.CdsProdutos.FieldByname('CODIGO_NCM').AsString, DmProdutos.CdsProdutos.FieldByname('EXCECAO_NCM').AsInteger);
          DataItens.DataSet.Append;
          DataItens.DataSet.FieldByname('IDPRODUTO').AsInteger := DmProdutos.CdsProdutos.FieldByname('ID').AsInteger;
          if DmWorkCom.sGradeProdutos = 'N' then
            DataItens.DataSet.FieldByname('DESCRICAO').AsString := Trim(Copy(EdtDescricao.Text, 1, 50))
          else
          begin
            DataItens.DataSet.FieldByname('DESCRICAO').AsString := Trim(Copy(EdtDescricao.Text, 1, 29)) + ' ' + Trim(Copy(sNomeCor, 1, 15)) + ' ' +
              Trim(sTamanho);
          end;
          DataItens.DataSet.FieldByname('EAN13').AsString := DmProdutos.CdsProdutos.FieldByname('EAN13').AsString;
          DataItens.DataSet.FieldByname('VALOR').AsFloat := DmProdutos.CdsProdutos.FieldByname('PRECO_VENDA').AsCurrency;
          DataItens.DataSet.FieldByname('VALOR_REAL').AsFloat := DmProdutos.CdsProdutos.FieldByname('PRECO_VENDA').AsCurrency;
          DataItens.DataSet.FieldByname('TIPOPROD').AsInteger := DmProdutos.CdsProdutos.FieldByname('TIPOPROD').AsInteger;
          DataItens.DataSet.FieldByname('QUANTIDADE').AsFloat := aQuantidade;
          DataItens.DataSet.FieldByname('DESCONTO').AsFloat := aDesconto;
          DataItens.DataSet.FieldByname('ID_COR').AsInteger := sIDCod;
          DataItens.DataSet.FieldByname('ID_TAMANHO').AsInteger := sIDTamanho;
          ConfirmaDadosItens;
          DmWorkCom.Dados_PedidoItens(DataWork.DataSet.FieldByname('ID').AsInteger);
          DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByname('ID').AsInteger, 0);
        end;
        sIDCod := 0;
        sIDTamanho := 0;
        sNomeCor := '';
        sTamanho := '';
        EdtCodigo.Clear;
        EdtDescricao.Clear;
        EdtValorUnit.Clear;
        EdtDesc.Clear;
        EdtQuant.Clear;
        EdtCodigo.SelectAll;
        EdtCodigo.SetFocus;
      end
      else
      begin
        MessageDlg('Não é permitido valores negativos!!!', mtWarning, [mbOK], 0);
        EdtQuant.SelectAll;
        EdtQuant.SetFocus;
        Abort;
      end;
    end
    else
    begin
      sIDCod := 0;
      sIDTamanho := 0;
      sNomeCor := '';
      sTamanho := '';
      EdtCodigo.Clear;
      EdtDescricao.Clear;
    end;
  end;
end;

procedure TFrmLancPedidos.Grava_TotalPedido;
var
  aTotalPedido: Double;
begin
  aTotalPedido := DataWork.DataSet.FieldByname('VALOR').AsFloat + DataWork.DataSet.FieldByname('OUTRAS_DESPESAS').AsFloat +
    DataWork.DataSet.FieldByname('ACRESCIMO').AsFloat - DataWork.DataSet.FieldByname('DESCONTO').AsFloat;
  if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
    DataWork.DataSet.Edit;
  DataWork.DataSet.FieldByname('VALOR_TOTAL').AsFloat := aTotalPedido;
  CalculaComissao;

end;

procedure TFrmLancPedidos.ConfirmaDadosPedido;
begin
  if DataWork.DataSet.State in [dsInsert, dsEdit] then
  begin
    if not DmWorkCom.VerificaCampos then
      Abort;
    Grava_Dados(DataWork.DataSet);
  end;

end;

procedure TFrmLancPedidos.DbDescontoExit(Sender: TObject);
begin
  inherited;
  Grava_TotalPedido;

end;

procedure TFrmLancPedidos.ActRelatorioExecute(Sender: TObject);
begin
  inherited;
  if DataWork.DataSet.RecordCount > 0 then
  begin
    if (DataClassifica.DataSet.FieldByname('TIPO').AsInteger = 2) and (DataWork.DataSet.FieldByname('NUMPV').AsString <> '') then
    begin
      MessageDlg('Não é permitido imprimir Pre-Venda!', mtWarning, [mbOK], 0);
      Abort;
    end;
    //
    try
      if DataClassifica.DataSet.FieldByname('TIPO').AsInteger <> 4 then
      begin
        if sModeloPedido = 0 then
          frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Relatorios\PedidoDav.fr3')
        else
          frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Relatorios\PedidoComum.fr3');
        frxReport1.ShowReport();
      end
      else
      begin
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Relatorios\PedidoDavOS.fr3');
        frxReport1.ShowReport();
      end;
    finally
      if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
        DataWork.DataSet.Edit;
      DataWork.DataSet.FieldByname('DAV_IMPRESSO').AsInteger := 1;
      Grava_Dados(DataWork.DataSet);
    end;
    VerificaDados;
  end;

end;

procedure TFrmLancPedidos.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  FrmPedidosConsulta.sIDPedido := 0;
  FrmPedidosConsulta.ShowModal;
  if FrmPedidosConsulta.sIDPedido > 0 then
  begin
    if DmWorkCom.Dados_Pedido(FrmPedidosConsulta.sIDPedido) then
    begin
      DmWorkCom.Dados_PedidoItens(DataWork.DataSet.FieldByname('ID').AsInteger);
      DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByname('ID').AsInteger, 0);
      MontaGridContas;
    end;
    PgcPedido.TabIndex := 0;
  end;
  VerificaDados;
end;

procedure TFrmLancPedidos.VerificaDados;
begin
  DmWorkCom.CdsConsulta.SaveToFile('c:\arquivo.xml', dfXML);
  // verifica se cliente permite alterar o nome
  DmClientes.Dados_Contato(DataWork.DataSet.FieldByname('ID').AsInteger);
  DBNomeCli.Enabled := false;
  if sEditaCliPed = 'S' then
    DBNomeCli.Enabled := true;
  // Atualizar_DadosPedido;
  GrpDadosCliente.Enabled := true;
  // GrpDadosPedido.Enabled      := true;
  GrpDadosFinanceiros.Enabled := true;
  GrpDadosEntrega.Enabled := true;
  GrpValores.Enabled := true;
  GriItens.Enabled := true;
  RadioTipoDoc.Enabled := true;
  DbRadioEntregue.ReadOnly := false;
  ActConfirmaPedido.Enabled := true;
  if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') or (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') then
  begin
    GrpDadosCliente.Enabled := false;
    // GrpDadosPedido.Enabled      := false;
    GrpDadosFinanceiros.Enabled := false;
    GrpDadosEntrega.Enabled := false;
    GrpValores.Enabled := false;
    GriItens.Enabled := false;
    RadioTipoDoc.Enabled := false;
    DbRadioEntregue.ReadOnly := true;
    ActConfirmaPedido.Enabled := false;
  end;
  CalculaComissao;

end;

procedure TFrmLancPedidos.CancelaritemdopedidoDAV1Click(Sender: TObject);
begin
  inherited;
  ConfirmaDadosPedido;
  // VERIFICAÇÕES
  if (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if (DataWork.DataSet.RecordCount > 0) and (DataItens.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Confirma o cancelamento do item?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      if not(DataItens.DataSet.State in [dsInsert, dsEdit]) then
        DataItens.DataSet.Edit;
      DataItens.DataSet.FieldByname('CANCELADO').AsString := 'S';
      Grava_Dados(DataItens.DataSet);
      Atualizar_DadosPedido;
    end;
  end;

end;

procedure TFrmLancPedidos.CancelarPedido1Click(Sender: TObject);
begin
  inherited;
  //
  if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Não pode cancelar pedido finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if Verifica_ContasQuitadas(DataWork.DataSet.FieldByname('ID').AsInteger) then
  begin
    MessageDlg('Não pode cancelar pedido com contas quitadas. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o cancelamento do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByname('CANCELADO').AsString := 'S';
    Grava_Dados(DataWork.DataSet);
    // exclui contas do cadastro
    if DataFormaPag.DataSet.FieldByname('GERAR_CONTA').AsString = 'S' then
    begin
      Apaga_Contas(0, DataWork.DataSet.FieldByname('ID').AsInteger);
    end;
    MessageDlg('Pedido cancelado com sucesso!!!', mtWarning, [mbOK], 0);
  end;
  DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByname('ID').AsInteger, 0);
  MontaGridContas;
  VerificaDados;

end;

procedure TFrmLancPedidos.VerProdutosCadastrados1Click(Sender: TObject);
begin
  inherited;
  FrmProdutos.sIDProd := 0;
  FrmProdutos.ShowModal;

end;

procedure TFrmLancPedidos.ActExcluirExecute(Sender: TObject);
begin
  // verifica se pedido já esta confirmado ou cancelado
  if (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') or (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado ou Confirmado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // verifica contas quitadas
  if VerificaContasQuitadas(DataWork.DataSet.FieldByname('ID').AsInteger) then
  begin
    MessageDlg('Há contas a receber geradas por este pedido que estão quitadas. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if MessageDlg('Confirma a Exclusão deste pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;
  inherited;
  DmWorkCom.Dados_PedidoItens(0);
  VerificaDados;

end;

procedure TFrmLancPedidos.ActExcluirItemExecute(Sender: TObject);
begin
  inherited;
  ConfirmaDadosPedido;
  // VERIFICAÇÕES
  if (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if (DataWork.DataSet.RecordCount > 0) and (DataItens.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Confirma a exclusão do item?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      ExcluiItensComposicao(DataWork.DataSet.FieldByname('ID').AsInteger, DataItens.DataSet.FieldByname('ID').AsInteger);
      DataItens.DataSet.Delete;
      // Grava_Dados(DataWork.DataSet,DataItens.DataSet);
      ActConfirmarExecute(Sender);
      Grava_TotalProdutos;
      Grava_TotalPedido;
    end;
  end;

end;

procedure TFrmLancPedidos.ActRetirarFechamentoExecute(Sender: TObject);
begin
  inherited;
  if DataWork.DataSet.FieldByname('DAV_IMPRESSO').AsInteger = 1 then
  begin
    MessageDlg('Não é permitido alterar DAV Impresso!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if VerificaMesFechado(DataWork.DataSet.FieldByname('DATA_PEDIDO').AsDateTime) then
  begin
    MessageDlg('Não é permitido movimentação para o mes fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'N') then
  begin
    MessageDlg('Este pedido não esta finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if Verifica_ContasQuitadas(DataWork.DataSet.FieldByname('ID').AsInteger) then
  begin
    MessageDlg('Não pode liberar pedido com contas quitadas. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // verifica se foi emitido cupom fiscal
  if DataWork.DataSet.FieldByname('COO').AsInteger > 0 then
  begin
    MessageDlg('Não é permitido retirar confirmação de pedido com cupom fiscal emitido!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma a retirada do fechamento do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByname('CONFIRMADA').AsString := 'N';
    Grava_Dados(DataWork.DataSet);
    // retorna estoque
    if (DataClassifica.DataSet.FieldByname('BAIXAR_ESTOQUE').AsString = 'S') and (DataClassifica.DataSet.FieldByname('TIPO').AsInteger <> 2) and
      (DataWork.DataSet.FieldByname('DAV').AsString = 'N') then
    begin
      DmWorkCom.Movimenta_Estoque(1, DataItens.DataSet);
    end;
    // gera formas de pagamento
    if (DataFormaPag.DataSet.FieldByname('GERAR_CONTA').AsString = 'S') and (DataClassifica.DataSet.FieldByname('TIPO').AsInteger <> 2) and
      (DataWork.DataSet.FieldByname('DAV').AsString = 'N') then
    begin
      Apaga_Contas(0, DataWork.DataSet.FieldByname('ID').AsInteger);
    end;
    MessageDlg('Retirada do fechamento concluída com sucesso!!!', mtWarning, [mbOK], 0);
  end;
  DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByname('ID').AsInteger, 0);
  MontaGridContas;
  Atualizar_DadosPedido;
  VerificaDados;

end;

procedure TFrmLancPedidos.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  VerificaDados;

end;

procedure TFrmLancPedidos.AlterarNmerodopedido1Click(Sender: TObject);
begin
  inherited;
  // verifica se pedido já esta confirmado ou cancelado
  if (DataWork.DataSet.FieldByname('CANCELADO').AsString = 'S') or (DataWork.DataSet.FieldByname('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado ou Confirmado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // verifica contas quitadas
  if VerificaContasQuitadas(DataWork.DataSet.FieldByname('ID').AsInteger) then
  begin
    MessageDlg('Há contas a receber geradas por este pedido que estão quitadas. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  DmWorkCom.InformaNumped;

end;

procedure TFrmLancPedidos.MontaGridContas;
begin
  GridContas.Columns[0].Title.caption := 'Data';
  GridContas.Columns[0].Width := 72;
  GridContas.Columns[1].Title.caption := 'Conta';
  GridContas.Columns[1].Width := 80;
  GridContas.Columns[2].Title.caption := 'Serie';
  GridContas.Columns[2].Width := 33;
  GridContas.Columns[3].Title.caption := 'Vencimento';
  GridContas.Columns[3].Width := 70;
  GridContas.Columns[4].Title.caption := 'Quitação';
  GridContas.Columns[4].Width := 70;
  GridContas.Columns[5].Title.caption := 'Valor';
  GridContas.Columns[5].Width := 90;
  GridContas.Columns[6].Title.caption := 'Desconto';
  GridContas.Columns[6].Width := 90;
  GridContas.Columns[7].Title.caption := 'Acrescimo';
  GridContas.Columns[7].Width := 90;
  GridContas.Columns[8].Title.caption := 'Valor Pago';
  GridContas.Columns[8].Width := 90;

end;

procedure TFrmLancPedidos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FrmProdutos.sIDProd := 0;
  FrmProdutos.sApenasConsulta := true;
  FrmProdutos.ShowModal;
  if FrmProdutos.sIDProd > 0 then
  begin
    EdtCodigo.Text := IntToStr(FrmProdutos.sIDProd);
    sIDCod := FrmProdutos.xIDCor;
    sIDTamanho := FrmProdutos.xIDTamanho;
    sNomeCor := FrmProdutos.xNomeCor;
    sTamanho := FrmProdutos.xTamanho;
    EdtCodigo.SetFocus;
  end;

end;

procedure TFrmLancPedidos.AlterarDatadoPedido1Click(Sender: TObject);
var
  aData: string;
  aDataPed: TDateTime;
begin
  inherited;
  //
  if DataWork.DataSet.RecordCount = 0 then
  begin
    MessageDlg('É necessário selecionar o pedido. Verifique!!!', mtWarning, [mbOK], 0);
    Abort
  end;
  // solicita a data
  if InputQuery('Alteração de data do pedido', 'Informe a Data "DD/MM/AAAA":', aData) then
  begin
    try
      aDataPed := StrToDate(aData);
    except
      MessageDlg('Data inválida. Verifique!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByname('DATA_PEDIDO').AsDateTime := aDataPed;
    Grava_Dados(DataWork.DataSet);
  end;

end;

procedure TFrmLancPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  AlterVirgulaPonto(Self, Key);

end;

procedure TFrmLancPedidos.ConfirmaDadosItens;
var
  ValorTotalItem, ValorCarga: Double;
begin
  ValorTotalItem := TruncaValor((((DataItens.DataSet.FieldByname('QUANTIDADE').AsFloat * DataItens.DataSet.FieldByname('VALOR').AsFloat) -
    DataItens.DataSet.FieldByname('DESCONTO').AsFloat) + DataItens.DataSet.FieldByname('ACRESCIMO').AsFloat), 2);
  // calcula a carga a ser adicionada
  ValorCarga := ((ValorTotalItem * DmProdutos.CdsNCM.FieldByname('ALIQ_NACIONAL').AsFloat) / 100);
  // grava no pedido
  if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
    DataWork.DataSet.Edit;
  DataWork.DataSet.FieldByname('valor_carga_trib').AsFloat := DataWork.DataSet.FieldByname('valor_carga_trib').AsFloat + ValorCarga;
  Grava_Dados(DataItens.DataSet);
  Grava_TotalProdutos;
  Grava_TotalPedido;
  Grava_Dados(DataWork.DataSet);

end;

procedure TFrmLancPedidos.Atualizar_DadosPedido;
begin
  if DataWork.DataSet.FieldByname('ID').AsInteger > 0 then
  begin
    DmWorkCom.Dados_Pedido(DataWork.DataSet.FieldByname('ID').AsInteger);
    DmWorkCom.Dados_PedidoItens(DataWork.DataSet.FieldByname('ID').AsInteger);
    DmWorkCom.Dados_ContasPedido(DataWork.DataSet.FieldByname('ID').AsInteger, 0);
    MontaGridContas;
  end;

end;

procedure TFrmLancPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  if not CdsComissao.Active then
    CdsComissao.CreateDataSet;
  CdsComissao.EmptyDataSet;
  ZeraCdsComissao;
  sIDCod := 0;
  sIDTamanho := 0;
  sNomeCor := '';
  sTamanho := '';

end;

procedure TFrmLancPedidos.CalculaComissao;
var
  aPercComissao: Double;
  aDiaSemana: String;
begin
  if DataWork.DataSet.RecordCount > 0 then
  begin
    // grava dados
    CdsComissao.Edit;
    CdsComissaoCOMISSAO.AsCurrency := Retorna_ComissaoPedido(DataWork.DataSet.FieldByname('ID').AsInteger);
    CdsComissaoTOTALGERAL.AsCurrency := DataWork.DataSet.FieldByname('VALOR_TOTAL').AsCurrency + CdsComissaoCOMISSAO.AsCurrency;
    CdsComissao.Post;
  end;
end;

procedure TFrmLancPedidos.ZeraCdsComissao;
begin
  if CdsComissao.RecordCount = 0 then
    CdsComissao.Append
  else
    CdsComissao.Edit;
  CdsComissaoCOMISSAO.AsCurrency := 0;
  CdsComissaoTOTALGERAL.AsCurrency := 0;
  CdsComissao.Post;

end;

procedure TFrmLancPedidos.ActConsultaClienteExecute(Sender: TObject);
begin
  inherited;
  FrmClientes.sCodCli := 0;
  FrmClientes.sApenasConsulta := true;
  FrmClientes.ShowModal;
  if FrmClientes.sCodCli > 0 then
  begin
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByname('IDCLIENTE').AsInteger := FrmClientes.sCodCli;
    if DmClientes.Dados_Contato(FrmClientes.sCodCli) then
    begin
      if (DataWork.DataSet.State in [dsInsert, dsEdit]) then
        DataWork.DataSet.FieldByname('IDCLIENTE').AsInteger := FrmClientes.sCodCli;
      DbIDCliente.SetFocus;
    end;
  end;

end;

procedure TFrmLancPedidos.CadastrarProdutos1Click(Sender: TObject);
begin
  inherited;
  //
  AbreForm(TFrmCadProdutos, FrmCadProdutos);

end;

end.
