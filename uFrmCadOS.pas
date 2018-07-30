unit uFrmCadOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, DB, ComCtrls, ImgList, ExtCtrls,
  StdCtrls, DBCtrls, Mask, uFrameBotaoHorizontal, Buttons, Grids, DBGrids,
  System.Actions, SHDocVw, Vcl.OleCtrls, pnfsConversao,
  System.Math;

type
  TFrmCadOS = class(TFrmCadPadrao)
    ImageList1: TImageList;
    PnCadOS: TPanel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    FrameBotaoHorizontal1: TFrameBotaoHorizontal;
    DataFormaPagto: TDataSource;
    DataUF: TDataSource;
    ActLancHoras: TAction;
    ActConsultaCliente: TAction;
    ActFecharOS: TAction;
    ActLiberarOS: TAction;
    GroupBox3: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    ComboUF: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DbIdCliente: TDBEdit;
    Label10: TLabel;
    dbedtDATA_INICIO: TDBEdit;
    dbedtDATA_FIM: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DbNControle: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    dbedtTEMPO_GASTO: TDBEdit;
    Label14: TLabel;
    dbedtHORA_FIM: TDBEdit;
    Label13: TLabel;
    dbedtHORA_INICIO: TDBEdit;
    Label11: TLabel;
    Label20: TLabel;
    ComboFormaPag: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DbRadioStatus: TDBRadioGroup;
    Bevel1: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    DataHoras: TDataSource;
    BitBtn4: TBitBtn;
    ActEmitirNFSe: TAction;
    TbsDados: TTabSheet;
    GroupBox1: TGroupBox;
    MemoDados: TMemo;
    TbsResposta: TTabSheet;
    GroupBox2: TGroupBox;
    MemoResp: TMemo;
    TbsXMLResp: TTabSheet;
    GroupBox4: TGroupBox;
    WBResposta: TWebBrowser;
    procedure ActionList1Update(Action: TBasicAction; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DbIdClienteExit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ActConsultaClienteExecute(Sender: TObject);
    procedure ActFecharOSExecute(Sender: TObject);
    procedure ActLiberarOSExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataWorkDataChange(Sender: TObject; Field: TField);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure ActRelatorioExecute(Sender: TObject);
    procedure ActLancHorasExecute(Sender: TObject);
    procedure ActEmitirNFSeExecute(Sender: TObject);
  private
    { Private declarations }
    gControle: integer;
    procedure VerificaDados;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure AlimentaComponente(sLote: string);
    function RoundTo5(Valor: Double; Casas: integer): Double;
  public
    { Public declarations }
  end;

var
  FrmCadOS: TFrmCadOS;

implementation

Uses uLibrary, uDmWorkCom, uFrmClientes, uFrmRelOS, uDMClientes,
  uFrmCadHorasOrdServ, uFrmConsOrdServ, uFrmRelOrdServ, uDmAcBr;

{$R *.dfm}

procedure TFrmCadOS.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(FrameBotaoHorizontal1, DataWork.DataSet);

end;

procedure TFrmCadOS.FormShow(Sender: TObject);
begin
  DataWork.DataSet := DmWorkCom.CDSOS;
  DataHoras.DataSet := DmWorkCom.CdsOSHoras;
  DataFormaPagto.DataSet := DmWorkCom.CdsFormaPag;
  DataUF.DataSet := DmClientes.CdsUF;
  inherited;
  DmWorkCom.Dados_OS(0);
  DmWorkCom.Dados_OSHoras(0);
  DmWorkCom.Dados_FormaPagto;
  DataUF.DataSet.Open;
  DmWorkCom.LerConfiguracaoNFSe;
  DmWorkCom.ConfiguraComponenteNFSe;
  //
  PageControl1.TabIndex := 0;
end;

procedure TFrmCadOS.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName) + 'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName) + 'temp.xml');

end;

// Fun��o criada para arredondar valores quando a n Casa for maior ou igual a 5
// pois a fun��o RoundTo arredonda quando a n Casa for maior ou igual a 6
function TFrmCadOS.RoundTo5(Valor: Double; Casas: integer): Double;
var
  xValor, xDecimais: String;
  p, nCasas: integer;
  nValor: Double;
begin
  nValor := Valor;
  xValor := Trim(FloatToStr(Valor));
  p := pos(',', xValor);
  if Casas < 0 then
    nCasas := -Casas
  else
    nCasas := Casas;
  if p > 0 then
  begin
    xDecimais := Copy(xValor, p + 1, length(xValor));
    if length(xDecimais) > nCasas then
    begin
      if xDecimais[nCasas + 1] >= '5' then
        SetRoundMode(rmUP)
      else
        SetRoundMode(rmNearest);
    end;
    nValor := RoundTo(Valor, Casas);
  end;
  Result := nValor;

end;

procedure TFrmCadOS.ActIncluirExecute(Sender: TObject);
begin
  if gControle = 0 then
  begin
    PageControl1.TabIndex := 0;
    inherited;
    DbNControle.SetFocus;
  end;

end;

procedure TFrmCadOS.DbIdClienteExit(Sender: TObject);
begin
  inherited;
  if (DbIdCliente.Text <> '') and (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    if DmClientes.Dados_Contato(StrToInt(DbIdCliente.Text)) then
      DmWorkCom.PreencheDadosCliente(1)
    else
    begin
      MessageDlg('Cliente n�o encontrado. Verifique!!!', mtWarning, [mbOK], 0);
      DbIdCliente.SetFocus;
      Abort;
    end;
  end
  else if (DbIdCliente.Text = '') and (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ActConsultaClienteExecute(Sender);
    DbIdClienteExit(Sender);
  end

end;

procedure TFrmCadOS.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmCadOS.ActConsultaClienteExecute(Sender: TObject);
begin
  inherited;
  FrmClientes.sCodCli := 0;
  FrmClientes.sApenasConsulta := true;
  FrmClientes.ShowModal;
  if FrmClientes.sCodCli > 0 then
  begin
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('ID_CONTATO').AsInteger := FrmClientes.sCodCli;
    if DmClientes.Dados_Contato(FrmClientes.sCodCli) then
      DmWorkCom.PreencheDadosCliente(1);
  end;

end;

procedure TFrmCadOS.ActEmitirNFSeExecute(Sender: TObject);
var
  sNomeArq: String;
  sLote: string;
  sProtocolo: string;
  flag: Boolean;
begin
  inherited;

  DmAcBr.ACBrNFSe1.NotasFiscais.Clear;

  sLote := FormatDateTime('ddMMyyyyhhmmss', Now);

  AlimentaComponente(sLote);

  flag := DmAcBr.ACBrNFSe1.Enviar(sLote, true);

  sNomeArq := DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].NomeArq;

  sProtocolo := DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].NFSe.Protocolo;

  DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].Imprimir;

  if FileExists(sNomeArq) then
  begin

  end
  else if DmAcBr.ACBrNFSe1.ConsultarLoteRps(sLote, sProtocolo) then
  begin
    sNomeArq := DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].NomeArq;
  end
  else
  begin
    showmessage('Conferir no site [provedor nfse] a respectiva nfse emitida!')
  end;

  if FileExists(sNomeArq) then
  begin
    DmAcBr.ACBrNFSe1.NotasFiscais.Clear;
    DmAcBr.ACBrNFSe1.NotasFiscais.LoadFromFile(sNomeArq);
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('CHAVE_NFSE').AsString := DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].NFSe.InfID.ID;
    Grava_Dados(DataWork.DataSet);
    DmAcBr.ACBrNFSe1.NotasFiscais.Imprimir;

    MemoDados.Lines.Add('Arquivo Carregado de: ' + DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
    MemoResp.Lines.LoadFromFile(DmAcBr.ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
    LoadXML(MemoResp, WBResposta);
  end;

end;

procedure TFrmCadOS.ActFecharOSExecute(Sender: TObject);
var
  aValorConta: Double;
begin
  inherited;
  // verifica��es
  if DataHoras.DataSet.RecordCount = 0 then
  begin
    MessageDlg('� necess�rio cadastrar as horas trabalhadas!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataWork.DataSet.FieldByName('VALOR_COBRADO').AsFloat <= 0 then
  begin
    MessageDlg('� necess�rio informar o valor da Ordem de Servi�o!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataWork.DataSet.FieldByName('STATUS').AsInteger = 5 then
  begin
    MessageDlg('Esta Ordem de Servi�o j� esta fechada. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataWork.DataSet.FieldByName('STATUS').AsInteger = 2 then
  begin
    MessageDlg('Esta Ordem de Servi�o esta marcada como n�o aprovada. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o fechamento da ordem de servi�o?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // possiciona o ultimo lan�amento de horas
    DataHoras.DataSet.Last;
    // grava fechamento no pedido
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('STATUS').AsInteger := 5;
    DataWork.DataSet.FieldByName('DATA_FIM').AsDateTime := DataHoras.DataSet.FieldByName('DATA_TRAB').AsDateTime;
    DataWork.DataSet.FieldByName('HORA_FIM').AsDateTime := DataHoras.DataSet.FieldByName('HORA_FIM').AsDateTime;
    if DataWork.DataSet.FieldByName('VALOR_PAGO').AsFloat <= 0 then
      DataWork.DataSet.FieldByName('VALOR_PAGO').AsFloat := DataWork.DataSet.FieldByName('VALOR_COBRADO').AsFloat;
    // confirma os dados no banco de dados
    Grava_Dados(DataWork.DataSet);
    // gera formas de pagamento
    if (DataFormaPagto.DataSet.FieldByName('GERAR_CONTA').AsString = 'S') then
    begin
      aValorConta := DataWork.DataSet.FieldByName('VALOR_PAGO').AsFloat / DataFormaPagto.DataSet.FieldByName('QUANT_PAGTOS').AsInteger;
      DmWorkCom.Gerar_Contas(0, 0, DataWork.DataSet.FieldByName('ID').AsInteger, DataWork.DataSet.FieldByName('ID_CONTATO').AsInteger,
        DataFormaPagto.DataSet.FieldByName('QUANT_PAGTOS').AsInteger, DataFormaPagto.DataSet.FieldByName('FORMA_PAGTO').AsString,
        DataWork.DataSet.FieldByName('CONTATO').AsString, '', DataWork.DataSet.FieldByName('DATA_FIM').AsDateTime, aValorConta);
    end;
    VerificaDados;
  end;

end;

procedure TFrmCadOS.ActLancHorasExecute(Sender: TObject);
begin
  inherited;
  if DataWork.DataSet.RecordCount = 0 then
  begin
    MessageDlg('� necess�rio inserir uma OS antes de lan�ar as horas trabalhadas!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  try
    application.CreateForm(TFrmCadHorasOrdServ, FrmCadHorasOrdServ);
    FrmCadHorasOrdServ.sIDOS := DataWork.DataSet.FieldByName('ID').AsInteger;
    FrmCadHorasOrdServ.ShowModal;
  finally
    FreeAndNil(FrmCadHorasOrdServ);
  end;

end;

procedure TFrmCadOS.ActLiberarOSExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma a libera��o da ordem de servi�o?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
      DataWork.DataSet.Edit;
    DataWork.DataSet.FieldByName('STATUS').AsInteger := 4;
    Grava_Dados(DataWork.DataSet);
    // gera formas de pagamento
    if DataFormaPagto.DataSet.FieldByName('GERAR_CONTA').AsString = 'S' then
    begin
      Apaga_Contas(1, DataWork.DataSet.FieldByName('ID').AsInteger);
    end;
    VerificaDados;
    MessageDlg('Retirada do fechamento conclu�da com sucesso!!!', mtWarning, [mbOK], 0);
  end;

end;

procedure TFrmCadOS.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  try
    application.CreateForm(TFrmConsOrdServ, FrmConsOrdServ);
    FrmConsOrdServ.ShowModal;
  finally
    FreeAndNil(FrmConsOrdServ);
  end;

end;

procedure TFrmCadOS.ActRelatorioExecute(Sender: TObject);
begin
  inherited;
  try
    application.CreateForm(TFrmRelOrdServ, FrmRelOrdServ);
    FrmRelOrdServ.ShowModal;
  finally
    FreeAndNil(FrmRelOrdServ);
  end;
end;

procedure TFrmCadOS.AlimentaComponente(sLote: string);
var
  ValorISS: Double;
  aItemListaServ: string;
  // , aCodTribMun: String;
begin
  aItemListaServ := InputBox('Itens da Lista de Servi�o', 'Codigo', '14.01');
  { aCodTribMun := InputBox('C�digo Tributa��o Municipio', 'C�digo', '');
    if Trim(aCodTribMun) = '' then
    begin
    MessageDlg('� necess�rio informar o c�digo da tributa��o no munic�pio.', mtWarning, [mbOK], 0);
    exit;
    end; }
  //
  with DmAcBr.ACBrNFSe1 do
  begin
    NotasFiscais.NumeroLote := sLote;
    NotasFiscais.Transacao := true;

    with NotasFiscais.Add.NFSe do
    begin
      IdentificacaoRps.Numero := FormatFloat('#########0', DataWork.DataSet.FieldByName('N_CONTROLE').AsInteger);

      // Para o provedor ISS.NET em ambiente de Homologa��o mudar a s�rie para '8'
      IdentificacaoRps.Serie := '1';

      // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
      IdentificacaoRps.Tipo := trRPS;

      DataEmissao := Now;

      (*
        TnfseNaturezaOperacao = ( no1, no2, no3, no4, no5, no6, no7,
        no50, no51, no52, no53, no54, no55, no56, no57, no58, no59,
        no60, no61, no62, no63, no64, no65, no66, no67, no68, no69,
        no70, no71, no72, no78, no79,
        no101, no111, no121, no201, no301,
        no501, no511, no541, no551, no601, no701 );
      *)
      NaturezaOperacao := no1;
      // NaturezaOperacao := no51;

      // TnfseRegimeEspecialTributacao = ( retNenhum, retMicroempresaMunicipal, retEstimativa, retSociedadeProfissionais, retCooperativa, retMicroempresarioIndividual, retMicroempresarioEmpresaPP );
      // RegimeEspecialTributacao := retNenhum;
      RegimeEspecialTributacao := retEstimativa;

      // TnfseSimNao = ( snSim, snNao );
      OptanteSimplesNacional := snSim;

      // TnfseSimNao = ( snSim, snNao );
      IncentivadorCultural := snNao;

      // TnfseSimNao = ( snSim, snNao );
      // snSim = Ambiente de Produ��o
      // snNao = Ambiente de Homologa��o
      Producao := snNao;

      // TnfseStatusRPS = ( srNormal, srCancelado );
      Status := srNormal;

      // Somente Os provedores Betha, FISSLex e SimplISS permitem incluir no RPS
      // a TAG: OutrasInformacoes os demais essa TAG � gerada e preenchida pelo
      // WebService do provedor.
      OutrasInformacoes := 'Pagamento a Vista';

      // Usado quando o RPS for substituir outro
      // RpsSubstituido.Numero := FormatFloat('#########0', i);
      // RpsSubstituido.Serie  := 'UNICA';
      // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
      /// RpsSubstituido.Tipo   := trRPS;

      Servico.Valores.ValorServicos := DataWork.DataSet.FieldByName('VALOR_PAGO').AsFloat;
      Servico.Valores.ValorDeducoes := 0;
      Servico.Valores.ValorPis := 0;
      Servico.Valores.ValorCofins := 0;
      Servico.Valores.ValorInss := 0;
      Servico.Valores.ValorIr := 0;
      Servico.Valores.ValorCsll := 0;

      // TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao );
      // stRetencao = snSim
      // stNormal   = snNao

      // Neste exemplo n�o temos ISS Retido ( stNormal = N�o )
      // Logo o valor do ISS Retido � igual a zero.
      Servico.Valores.IssRetido := stNormal;
      Servico.Valores.ValorIssRetido := 0;

      Servico.Valores.OutrasRetencoes := 0;
      Servico.Valores.DescontoIncondicionado := 0;
      Servico.Valores.DescontoCondicionado := 0;

      Servico.Valores.BaseCalculo := Servico.Valores.ValorServicos - Servico.Valores.ValorDeducoes - Servico.Valores.DescontoIncondicionado;
      // No caso do provedor Ginfes devemos informar a aliquota j� dividida por 100
      // para outros provedores devemos informar por exemplo 3, mas ao fazer o calculo
      // do valor do ISS devemos dividir por 100
      Servico.Valores.Aliquota := DmWorkCom.sAliqISS;

      // Valor do ISS calculado multiplicando-se a base de calculo pela aliquota
      ValorISS := Servico.Valores.BaseCalculo * Servico.Valores.Aliquota / 100;

      // A fun��o RoundTo5 � usada para arredondar valores, sendo que o segundo
      // parametro se refere ao numero de casas decimais.
      // exemplos: RoundTo5(50.532, -2) ==> 50.53
      // exemplos: RoundTo5(50.535, -2) ==> 50.54
      // exemplos: RoundTo5(50.536, -2) ==> 50.54

      Servico.Valores.ValorISS := RoundTo5(ValorISS, -2);

      Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos - Servico.Valores.ValorPis - Servico.Valores.ValorCofins - Servico.Valores.ValorInss -
        Servico.Valores.ValorIr - Servico.Valores.ValorCsll - Servico.Valores.OutrasRetencoes - Servico.Valores.ValorIssRetido -
        Servico.Valores.DescontoIncondicionado - Servico.Valores.DescontoCondicionado;

      // TnfseResponsavelRetencao = ( ptTomador, rtPrestador );
      Servico.ResponsavelRetencao := ptTomador;

      aItemListaServ := Trim(StringReplace(aItemListaServ, '.', '', [rfReplaceAll]));

      Servico.ItemListaServico := aItemListaServ;

      // Para o provedor ISS.NET em ambiente de Homologa��o
      // o Codigo CNAE tem que ser '6511102'
      // Servico.CodigoCnae                := '123'; // Informa��o Opcional
      // Servico.CodigoTributacaoMunicipio := aCodTribMun;
      // Servico.CodigoCnae := Sistema.Empresa.cnae; // Informa��o Opcional
      // Servico.CodigoTributacaoMunicipio := Sistema.Empresa.CodigoTributacaoMunicipio;

      Servico.Discriminacao := DataWork.DataSet.FieldByName('CONSTATADO').AsString;

      // Para o provedor ISS.NET em ambiente de Homologa��o
      // o Codigo do Municipio tem que ser '999'
      Servico.CodigoMunicipio := DmWorkCom.CdsEmpresaCOD_MUNICIPIO.AsString;

      // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
      Servico.ExigibilidadeISS := exiExigivel;

      // Informar para Saatri
      Servico.CodigoPais := 1058; // Brasil
      Servico.MunicipioIncidencia := StrToIntDef(DmWorkCom.CdsEmpresaCOD_MUNICIPIO.AsString, 0);

      // Somente o provedor SimplISS permite infomar mais de 1 servi�o
      with Servico.ItemServico.Add do
      begin
        Descricao := DataWork.DataSet.FieldByName('REALIZADO').AsString;
        Quantidade := 1;
        ValorUnitario := DataWork.DataSet.FieldByName('VALOR_PAGO').AsFloat;
      end;

      Prestador.Cnpj := DmWorkCom.CdsEmpresaCNPJ_CPF.AsString;
      Prestador.InscricaoMunicipal := DmWorkCom.CdsEmpresaINSC_MUNIC.AsString;

      // Para o provedor ISSDigital deve-se informar tamb�m:
      Prestador.Senha := DmWorkCom.sNFSeSenha;
      Prestador.FraseSecreta := DmWorkCom.sNFSeFrase;
      Prestador.cUF := UFToInt(DmWorkCom.CdsEmpresaUF.AsString);

      PrestadorServico.Endereco.CodigoMunicipio := DmWorkCom.CdsEmpresaCOD_MUNICIPIO.AsString;
      PrestadorServico.RazaoSocial := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;

      DmClientes.CdsContatos.Close;
      DmClientes.CdsContatos.Params[0].AsInteger := DataWork.DataSet.FieldByName('ID_CONTATO').AsInteger;
      DmClientes.CdsContatos.Open;

      Tomador.IdentificacaoTomador.CpfCnpj := DmClientes.CdsContatosCNPJ_CPF.AsString;
      Tomador.IdentificacaoTomador.InscricaoMunicipal := '';

      Tomador.RazaoSocial := DmClientes.CdsContatosNOME.AsString;

      Tomador.Endereco.Endereco := DmClientes.CdsContatosENDERECO.AsString;
      Tomador.Endereco.Numero := DmClientes.CdsContatosNUM_END.AsString;
      Tomador.Endereco.Complemento := DmClientes.CdsContatosCOMPLEMENTO.AsString;
      Tomador.Endereco.Bairro := DmClientes.CdsContatosBAIRRO_END.AsString;
      Tomador.Endereco.CodigoMunicipio := DmClientes.CdsContatosCODCIDADE.AsString;
      Tomador.Endereco.UF := DmClientes.CdsContatosUF_END.AsString;
      Tomador.Endereco.CodigoPais := 1058; // Brasil
      Tomador.Endereco.CEP := DmClientes.CdsContatosCEP_END.AsString;
      // Provedor Equiplano � obrigat�rio o pais e IE
      Tomador.Endereco.xPais := 'BRASIL';
      Tomador.IdentificacaoTomador.InscricaoEstadual := DmClientes.CdsContatosINSC_RG.AsString;

      Tomador.Contato.Telefone := DmClientes.CdsContatosTELEFONE.AsString;
      Tomador.Contato.Email := DmClientes.CdsContatosEMAIL.AsString;

      // Usado quando houver um intermediario na presta��o do servi�o
      // IntermediarioServico.RazaoSocial        := 'razao';
      // IntermediarioServico.CpfCnpj            := '00000000000';
      // IntermediarioServico.InscricaoMunicipal := '12547478';


      // Usado quando o servi�o for uma obra
      // ConstrucaoCivil.CodigoObra := '88888';
      // ConstrucaoCivil.Art        := '433';

    end;

  end;

end;

procedure TFrmCadOS.VerificaDados;
begin
  GrupoDados.Enabled := true;
  if DataWork.DataSet.FieldByName('STATUS').AsInteger = 5 then
    GrupoDados.Enabled := false;

end;

procedure TFrmCadOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DataWork.DataSet.State in [dsInsert, dsEdit]) then
  begin
    MessageDlg('� necess�rio confirmar ou cancelar os dados da OS!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  inherited;
  DataFormaPagto.DataSet.Close;
  DataWork.DataSet.Close;
  DataHoras.DataSet.Close;
  DataUF.DataSet.Close;

end;

procedure TFrmCadOS.DataWorkDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DmWorkCom.Dados_OSHoras(DataWork.DataSet.FieldByName('ID').AsInteger);

end;

end.
