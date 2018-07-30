unit uFrmGeraNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, pcnConversao, Menus, Mask, DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmGeraNFe = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    RadioOpcao: TRadioGroup;
    GroupBox2: TGroupBox;
    DataIni: TDateTimePicker;
    DataFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BtnLocalizar: TBitBtn;
    GroupBox3: TGroupBox;
    GridNFe: TDBGrid;
    QryNFe: TFDQuery;
    DataNFe: TDataSource;
    Panel1: TPanel;
    BtnValidarNFe: TBitBtn;
    GroupBox4: TGroupBox;
    EdtDados: TEdit;
    BtnStatusServ: TBitBtn;
    BtnConsultaRecLote: TBitBtn;
    BtnEnviarNFe: TBitBtn;
    BtnImprimirDanfe: TBitBtn;
    BtnEnviarEmail: TBitBtn;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    EdtNumLote: TEdit;
    ChApropria: TCheckBox;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BtnCartaCorrecao: TBitBtn;
    PnJustifica: TPanel;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    EdtJustifica: TEdit;
    MemoXML: TMemo;
    PopupMenu1: TPopupMenu;
    VerarquivoXML1: TMenuItem;
    LiberaravalidaodaNFe1: TMenuItem;
    ConsultareatualizardadosdaNFe1: TMenuItem;
    QryNFeID: TIntegerField;
    QryNFePEDIDO_NUM: TStringField;
    QryNFeIDCLIENTE: TIntegerField;
    QryNFeID_VENDEDOR: TIntegerField;
    QryNFeDATA_PEDIDO: TDateField;
    QryNFeHORA_PEDIDO: TTimeField;
    QryNFeDATA_ENTREGA: TDateField;
    QryNFeHORA_ENTREGA: TTimeField;
    QryNFeID_CLASSIFICACAO: TIntegerField;
    QryNFeCONFIRMADA: TStringField;
    QryNFeENTREGUE: TStringField;
    QryNFeVALOR: TFloatField;
    QryNFeDESCONTO: TFloatField;
    QryNFeACRESCIMO: TFloatField;
    QryNFeOUTRAS_DESPESAS: TFloatField;
    QryNFeVALOR_TOTAL: TFloatField;
    QryNFeCANCELADO: TStringField;
    QryNFeID_FORMAPAG: TIntegerField;
    QryNFeEND_ENTREGA: TStringField;
    QryNFeNUM_END_ENTREGA: TStringField;
    QryNFeCOMPL_END_ENTREGA: TStringField;
    QryNFeBAIRRO_END_ENTREGA: TStringField;
    QryNFeCID_END_ENTREGA: TStringField;
    QryNFeUF_END_ENTREGA: TStringField;
    QryNFeCEP_END_ENTREGA: TStringField;
    QryNFeCLIENTE: TStringField;
    QryNFeTIPODOC: TIntegerField;
    QryNFeTIPO_PEDIDO: TIntegerField;
    QryNFeVALOR_REAL: TFloatField;
    QryNFeMARGEM_VENDA: TFloatField;
    QryNFeVALOR_COMISSAO: TFloatField;
    QryNFeTOTAL_GERAL: TFloatField;
    QryNFeCOO: TIntegerField;
    QryNFeCCF: TIntegerField;
    QryNFeGNF: TIntegerField;
    QryNFeDAV: TStringField;
    QryNFeCNPJCPF: TStringField;
    QryNFeINSCEST: TStringField;
    QryNFeVALOR_TROCO: TFloatField;
    QryNFeCAIXA: TStringField;
    QryNFeIDEMPRESA: TIntegerField;
    QryNFeDAV_IMPRESSO: TIntegerField;
    QryNFeNATOP: TStringField;
    QryNFeALIQ_ICMS: TFloatField;
    QryNFeBASE_ICMS: TFloatField;
    QryNFeVALOR_ICMS: TFloatField;
    QryNFeALIQ_ICMS_ST: TFloatField;
    QryNFeBASE_ICMS_ST: TFloatField;
    QryNFeVALOR_ICMS_ST: TFloatField;
    QryNFeVALOR_PIS: TFloatField;
    QryNFeVALOR_COFINS: TFloatField;
    QryNFeVALOR_IPI: TFloatField;
    QryNFeMD5REGISTRO: TStringField;
    QryNFeNUMPV: TStringField;
    QryNFeCER: TIntegerField;
    QryNFeID_MESA: TIntegerField;
    QryNFeABASTECIMENTO: TStringField;
    QryNFeSTATUS_ABASTEC: TIntegerField;
    QryNFeNUMSERIEECF: TStringField;
    QryNFePLACA_VEIC: TStringField;
    QryNFeODOMETRO: TStringField;
    QryNFeCHAVE_NFE: TStringField;
    QryNFeSTATUS_NFE: TStringField;
    QryNFePROTOCOLO_NFE: TStringField;
    QryNFeRECIBO_NFE: TStringField;
    QryNFeDEVOLUCAO: TStringField;
    QryNFeNUMERO_DOC: TStringField;
    QryNFeSINCRONIZADO: TStringField;
    QryNFeIDUSUARIOCANC: TIntegerField;
    QryNFeVALOR_CARGA_TRIB: TFloatField;
    QryNFeNUMDAV: TStringField;
    QryNFeTIPO_FRETE: TIntegerField;
    QryNFeVALOR_FRETE: TFloatField;
    QryNFeVALOR_SEGURO: TFloatField;
    QryNFeVALOR_OUTROS: TFloatField;
    QryNFeBASE_ISS: TFloatField;
    QryNFeVALOR_ISS: TFloatField;
    QryNFeBASE_PIS: TFloatField;
    QryNFeBASE_COFINS: TFloatField;
    QryNFeBASE_IPI: TFloatField;
    QryNFeIDPLANOCONTAS: TIntegerField;
    QryNFeIDCENTROCUSTO: TIntegerField;
    QryNFeNFE_TIPOEMISS: TIntegerField;
    QryNFeNAUTORIZA_VIDALINK: TStringField;
    QryNFeNUM_LOTE: TStringField;
    QryNFeARQUIVO_XML: TStringField;
    QryNFeVAL_CARGA_FED: TFloatField;
    QryNFeVAL_CARGA_EST: TFloatField;
    QryNFeVAL_CARGA_MUN: TFloatField;
    QryNFeNOTAMANUAL: TStringField;
    QryNFeCOO_CONF_MESA: TIntegerField;
    QryNFeMODELO: TStringField;
    QryNFeDATA_AUTORIZA: TDateField;
    QryNFeHORA_AUTORIZA: TTimeField;
    QryNFeOBSNFE_1: TStringField;
    QryNFeOBSNFE_2: TStringField;
    QryNFeOBSNFE_3: TStringField;
    QryNFeOBSNFE_4: TStringField;
    QryNFeCODIGOSEFAZ: TIntegerField;
    QryNFeNUMEROSESSAO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure BtnValidarNFeClick(Sender: TObject);
    procedure BtnEnviarNFeClick(Sender: TObject);
    procedure BtnImprimirDanfeClick(Sender: TObject);
    procedure BtnEnviarEmailClick(Sender: TObject);
    procedure BtnStatusServClick(Sender: TObject);
    procedure BtnConsultaRecLoteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnCartaCorrecaoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdtJustificaKeyPress(Sender: TObject; var Key: Char);
    procedure MemoXMLKeyPress(Sender: TObject; var Key: Char);
    procedure GridNFeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerarquivoXML1Click(Sender: TObject);
    procedure EdtJustificaExit(Sender: TObject);
    procedure LiberaravalidaodaNFe1Click(Sender: TObject);
    procedure ConsultareatualizardadosdaNFe1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaDadosXML;
    function TestaNotaJaEnviada: Boolean;
  public
    { Public declarations }
  end;

var
  FrmGeraNFe: TFrmGeraNFe;

implementation

uses
  uDmConexao, uDmWorkCom, pcnNFe, DateUtils, uLibrary, uDmAcBr,
  uFrmConsultasNFe, uFrmClientes, uFrmCadClassPedido, uFrmCadFormaPag,
  uFrmPedidosConsulta, uFrmProdutos, uFrmLancPedidos, uMensagem, uDMClientes,
  uDmAuxiliar;

{$R *.dfm}

procedure TFrmGeraNFe.FormShow(Sender: TObject);
begin
  inherited;
  DataIni.Date := Date;
  DataFim.Date := Date;
  DmWorkCom.AtualizaConfigAcBr;
  Self.WindowState := wsMaximized;
  EdtDados.SetFocus;

end;

procedure TFrmGeraNFe.BtnLocalizarClick(Sender: TObject);
begin
  inherited;
  QryNFe.Close;
  QryNFe.Params.Clear;
  QryNFe.Close;
  QryNFe.SQL.Clear;
  QryNFe.SQL.Add('select * from pedido');
  QryNFe.SQL.Add('where cast(pedido.data_pedido as date) between :pDatai and :pDataf');
  case RadioOpcao.ItemIndex of
    0:
      QryNFe.SQL.Add('and pedido.pedido_num = :pDados');
    1:
      QryNFe.SQL.Add('and pedido.idcliente = :pDados');
    2:
      QryNFe.SQL.Add('and upper(pedido.cliente) like :pDados');
  end;
  // QryNFe.SQL.Add('and pedido.numero_doc is null');
  // QryNFe.SQL.Add('and pedido.chave_nfe is null');
  QryNFe.SQL.Add('and pedido.idempresa = :pIDEmpresa');
  QryNFe.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
  // QryNFe.SQL.Add('and pedido.cancelado = '+QuotedStr('N'));
  QryNFe.SQL.Add('and pedido.cnpjcpf is not null');
  QryNFe.SQL.Add('and pedido.cnpjcpf <> ' + QuotedStr(''));
  //QryNFe.SQL.Add('and pedido.cnpjcpf <> ' + QuotedStr('11111111111'));

  // parametros
  QryNFe.Params.ParamByName('pDatai').AsDate := DataIni.Date;
  QryNFe.Params.ParamByName('pDataf').AsDate := DataFim.Date;
  case RadioOpcao.ItemIndex of
    0:
      QryNFe.Params.ParamByName('pDados').AsString := EdtDados.Text;
    1:
      QryNFe.Params.ParamByName('pDados').AsInteger := StrToInt(EdtDados.Text);
    2:
      QryNFe.Params.ParamByName('pDados').AsString := '%' + UpperCase(EdtDados.Text);
  end;

  QryNFe.Params.ParamByName('pIDEmpresa').AsInteger := sIDEmpresa;
  QryNFe.Open;
  TFloatField(DataNFe.DataSet.FieldByName('VALOR')).DisplayFormat := '###,###,##0.00';
  TFloatField(DataNFe.DataSet.FieldByName('ACRESCIMO')).DisplayFormat := '###,###,##0.00';
  TFloatField(DataNFe.DataSet.FieldByName('DESCONTO')).DisplayFormat := '###,###,##0.00';
  TFloatField(DataNFe.DataSet.FieldByName('VALOR_TOTAL')).DisplayFormat := '###,###,##0.00';
  GridNFe.SetFocus;

end;

procedure TFrmGeraNFe.BtnValidarNFeClick(Sender: TObject);
var
  aNumIten: Integer;
  aChaveNfe, aRecibo, aProcolo, aNomeArq, aStatus: String;
  aDtAutori, aHrAutori: TDateTime;
begin
  inherited;
  if DataNFe.DataSet.RecordCount = 0 then
  begin
    MessageDlg('É necessário selecionar o pedido!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmClientes.Dados_Contato(QryNFeIDCLIENTE.AsInteger) then
  begin
    MessageDlg('Cliente não esta cadastrado. Verifique!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmWorkCom.Dados_Pedido(QryNFeID.AsInteger) then
  begin
    MessageDlg('Pedido não encontrado. Verifique!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if not DmWorkCom.Dados_PedidoItens(QryNFeID.AsInteger) then
  begin
    MessageDlg('Não há itens para este pedido. Verifique!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DmWorkCom.CdsPedidos.FieldByName('NATOP').AsString = '' then
  begin
    MessageDlg('Lançamento sem a NATOP. Verifique!!!', mtInformation, [mbOK], 0);
    Exit;
  end;
  // if DmWorkCom.CdsPedidos.FieldByName('NUMERO_DOC').AsString <> '' then
  // begin
  // MessageDlg('Já existe numero de nota para esse registro. Verifique!!!', mtInformation, [mbOK], 0);
  // Exit;
  // end;
  if QryNFeCHAVE_NFE.AsString <> '' then
  begin
    MessageDlg('Já foi gerado NFe para este pedido!!!', mtInformation, [mbOK], 0);
    Exit;
  end;
  //
  //try
    if DmWorkCom.GerarNFe(QryNFe.FieldByName('ID').AsInteger, ChApropria.Checked) then
    begin
      if DmAcBr.ACBrNFe1.NotasFiscais.Count > 0 then
      begin
        // executa validação do arquivo
        DmAcBr.ACBrNFe1.NotasFiscais.GerarNFe;

        //DmAcBr.ACBrNFe1.NotasFiscais.Validar;
        // comandos para gerar arquivo XML
        DmAcBr.ACBrNFe1.NotasFiscais.Assinar;
        DmAcBr.ACBrNFe1.NotasFiscais.Items[0].GravarXML;
        // grava o arquivo XML
        DmWorkCom.GravaArquivoXML(DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, DmAcBr.ACBrNFe1.NotasFiscais.Items[0].XML);
        //
        aChaveNfe := Copy(DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);;
        aProcolo := '';
        aRecibo := '';
        aNomeArq := DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
        aStatus := '';
        aDtAutori := Now;
        aHrAutori := Now;
        // grava chave NFe
        if aChaveNfe <> '' then
        begin
          DmWorkCom.GravaChaveNFEPedido(aChaveNfe, aProcolo, aRecibo, EdtNumLote.Text, aNomeArq, aStatus, DmWorkCom.sFormas, QryNFeID.AsInteger, aDtAutori,
            aHrAutori);
          // BtnLocalizarClick(Sender);
          QryNFe.Refresh;
        end;
        MessageDlg('Arquivo gerado em: ' + DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NomeArq, mtInformation, [mbOK], 0);
      end;
    end;
  {except
    on E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;}

end;

procedure TFrmGeraNFe.BtnEnviarNFeClick(Sender: TObject);
var
  aChaveNfe, aRecibo, aProcolo, aNomeArq, aStatus: String;
  formMensagem: TFormMensagem;
  aDtAutori, aHrAutori: TDateTime;
begin
  inherited;
  try
    if (QryNFeCHAVE_NFE.AsString = '') or (Trim(QryNFeSTATUS_NFE.AsString) <> '') then
    begin
      TestaNotaJaEnviada;
      //Exit;
    end;
    //
    CarregaDadosXML;
    // verifica numero do lote informado
    EdtNumLote.Text := FiltraNumero(EdtNumLote.Text);
    if Trim(EdtNumLote.Text) = '' then
    begin
      EdtNumLote.Text := FormatDateTime('ddMMyyyyhhmmss', Now);
    end;
    //
    formMensagem := TFormMensagem.Create('Aguarde... Enviando NFe!', 550, 150, clBlack, clSilver);
    formMensagem.mostrar;
    Refresh;
    // limpa valores
    aChaveNfe := '';
    aProcolo := '';
    aRecibo := '';
    aNomeArq := '';
    aStatus := '';

    // enviar ao portal
    DmAcBr.ACBrNFe1.Enviar(EdtNumLote.Text);
    //
    aChaveNfe := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
    aProcolo := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
    aRecibo := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
    aNomeArq := DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
    aStatus := IntToStr(DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat);
    aDtAutori := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto;
    aHrAutori := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto;
    // grava chave NFe
    if (aChaveNfe <> '') and (aRecibo <> '') and (aStatus = '100') then
    begin
      DmWorkCom.GravaChaveNFEPedido(aChaveNfe, aProcolo, aRecibo, EdtNumLote.Text, aNomeArq, aStatus, DmWorkCom.sFormas, QryNFeID.AsInteger, aDtAutori,
        aHrAutori);
      // atualiza o XML
      DmAcBr.ACBrNFe1.NotasFiscais.Items[0].GravarXML;
      DmWorkCom.GravaArquivoXML(DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, DmAcBr.ACBrNFe1.NotasFiscais.Items[0].XML);
      // verifica se tem produto combustivel para gerar o abastecimento
      DmWorkCom.VerificaGeraAbsProdCombustivel(QryNFe.FieldByName('ID').AsInteger, QryNFe.FieldByName('NUMERO_DOC').AsString);
      // altera o status dos abastecimentos vinculados
      DmWorkCom.VerificaAlteraStatusAbastecimento(QryNFe.FieldByName('ID').AsInteger);
    end;
    BtnLocalizarClick(Sender);
    formMensagem.destruir;
    FreeAndNil(formMensagem);
  except
    on E: Exception do
    begin
      formMensagem.destruir;
      FreeAndNil(formMensagem);
      ShowMessage(E.Message);
    end;
  end;

end;

{
  procedure TFrmGeraNFe.BtnEnviarNFeClick(Sender: TObject);
  var aChaveNfe, aRecibo, aProcolo, aNomeArq, aStatus : String;
  formMensagem: TFormMensagem;
  begin
  inherited;
  try
  if (QryNFeCHAVE_NFE.AsString = '') or (Trim(QryNFeSTATUS_NFE.AsString) <> '') then
  begin
  TestaNotaJaEnviada;
  Exit;
  end;
  //
  CarregaDadosXML;
  // verifica numero do lote informado
  EdtNumLote.Text := FiltraNumero(EdtNumLote.Text);
  if Trim(EdtNumLote.Text) = '' then
  begin
  EdtNumLote.Text := FormatDateTime('yyyymmss',Now);
  end;
  //
  formMensagem := TFormMensagem.Create('Aguarde... Enviando NFe!',550,150,clBlack,clSilver);
  formMensagem.mostrar;
  Refresh;
  // limpa valores
  aChaveNfe := '';
  aProcolo  := '';
  aRecibo   := '';
  aNomeArq  := '';
  aStatus   := '';

  // enviar ao portal
  DmAcBr.ACBrNFe1.Enviar(EdtNumLote.Text);
  //
  aChaveNfe := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
  aProcolo  := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
  aRecibo   := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
  aNomeArq  := DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
  aStatus   := IntToStr(DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat);
  // grava chave NFe
  if (aChaveNfe <> '') and (aRecibo <> '') and (aStatus = '100') then
  begin
  DmWorkCom.GravaChaveNFEPedido(aChaveNfe,
  aProcolo,
  aRecibo,
  EdtNumLote.Text,
  aNomeArq,
  aStatus,
  DmWorkCom.sFormas,
  QryNFeID.AsInteger);
  // verifica se tem produto combustivel para gerar o abastecimento
  DmWorkCom.VerificaGeraAbsProdCombustivel(QryNFe.FieldByName('ID').AsInteger,
  QryNFe.FieldByName('NUMERO_DOC').AsString);
  end;
  BtnLocalizarClick(Sender);
  FormMensagem.destruir;
  FreeAndNil(FormMensagem);
  except
  on E : Exception do
  begin
  FormMensagem.destruir;
  FreeAndNil(FormMensagem);
  ShowMessage(E.Message);
  end;
  end;

  end;
}

procedure TFrmGeraNFe.BtnImprimirDanfeClick(Sender: TObject);
begin
  inherited;
  if QryNFeCHAVE_NFE.AsString = '' then
  begin
    MessageDlg('Registro selecionado não possui chave!', mtWarning, [mbOK], 0);
    Exit;
  end;
  //
  CarregaDadosXML;
  if DmAcBr.ACBrNFe1.NotasFiscais.Count > 0 then
  begin
    if QryNFeSTATUS_NFE.AsString <> '100' then
    begin
      DmAcBr.ACBrNFe1.DANFE.NFeCancelada := True;
      DmAcBr.ACBrNFe1.DANFE.ProtocoloNFe := QryNFePROTOCOLO_NFE.AsString + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
    end;
    // emite o Danfe
    DmAcBr.ACBrNFe1.NotasFiscais.Imprimir;
    // retorna o status
    if QryNFeSTATUS_NFE.AsString <> '100' then
    begin
      DmAcBr.ACBrNFe1.DANFE.NFeCancelada := false;
      DmAcBr.ACBrNFe1.DANFE.ProtocoloNFe := '';
    end;
  end;

end;

procedure TFrmGeraNFe.BtnEnviarEmailClick(Sender: TObject);
var
  Endereco, Mensagem: TStrings;
begin
  inherited;
  if (QryNFeCHAVE_NFE.AsString = '') or (Trim(QryNFeSTATUS_NFE.AsString) <> '100') then
  begin
    MessageDlg('NFe não enviada ou com status diferente do esperado!', mtWarning, [mbOK], 0);
    Exit;
  end;
  //
  CarregaDadosXML;
  if DmAcBr.ACBrNFe1.NotasFiscais.Count > 0 then
  begin
    // verifica cadastro do cliente
    if DmClientes.Dados_Contato(QryNFeIDCLIENTE.AsInteger) then
    begin
      if DmClientes.CdsContatosEMAIL.AsString = '' then
      begin
        MessageDlg('Não há email cadastrado para o cliente da nota!', mtWarning, [mbOK], 0);
        Exit;
      end;
      // carrega email do destinatario no strings
      Mensagem := TStrings.Create;
      Mensagem.Add('NFe');
      Endereco := TStrings.Create;
      Endereco.Add(DmWorkCom.CdsEmpresaEMAIL.AsString);
      // configura o componente acbremail
      DmAcBr.ACBrNFe1.MAIL := DmAcBr.ACBrMail1;
      DmAcBr.ACBrMail1.From := DmWorkCom.CdsEmpresaEMAIL.AsString;
      DmAcBr.ACBrMail1.FromName := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;
      DmAcBr.ACBrMail1.Host := DmWorkCom.sSMPTHost; // troque pelo seu servidor smtp
      DmAcBr.ACBrMail1.Username := DmWorkCom.sSMTPUsu;
      DmAcBr.ACBrMail1.Password := DmWorkCom.sSMTPPass;
      DmAcBr.ACBrMail1.Port := DmWorkCom.sSMTPPort; // troque pela porta do seu servidor smtp
      DmAcBr.ACBrMail1.SetSSL := True; // Verifique se o seu servidor necessita SSL
      // enviar email
      DmAcBr.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(DmClientes.CdsContatosEMAIL.AsString, 'NFe', Mensagem, True, Endereco);
      {
        DmAcBr.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(DmWorkCom.sSMPTHost,
        DmWorkCom.sSMTPPort,
        DmWorkCom.sSMTPUsu,
        DmWorkCom.sSMTPPass,
        DmWorkCom.CdsEmpresaEMAIL.AsString,
        QryNFeCLIENTE.AsString,
        'NFe',
        Mensagem,
        true,
        true,
        Endereco,
        nil,
        false,
        true,
        DmWorkCom.CdsEmpresaFANTASIA.AsString);
      }
      MessageDlg('Email enviado com sucesso!', mtInformation, [mbOK], 0);
      FreeAndNil(Endereco);
    end;
  end;
end;

procedure TFrmGeraNFe.BtnStatusServClick(Sender: TObject);
var
  formMensagem: TFormMensagem;
  auxbool: Boolean;
begin
  inherited;
  try
    formMensagem := TFormMensagem.Create('Aguarde... Verificando Status do serviço!', 550, 150, clBlack, clSilver);
    formMensagem.mostrar;
    Refresh;
    auxbool := DmAcBr.ACBrNFe1.Configuracoes.WebServices.Visualizar;
    DmAcBr.ACBrNFe1.Configuracoes.WebServices.Visualizar := True;
    DmAcBr.ACBrNFe1.WebServices.StatusServico.Executar;
    DmAcBr.ACBrNFe1.Configuracoes.WebServices.Visualizar := auxbool;
  finally
    formMensagem.destruir;
    FreeAndNil(formMensagem);
  end;

end;

procedure TFrmGeraNFe.BtnConsultaRecLoteClick(Sender: TObject);
begin
  inherited;
  AbreForm(TFrmConsultasNFe, FrmConsultasNFe);

end;

procedure TFrmGeraNFe.BitBtn1Click(Sender: TObject);
begin
  inherited;
  // Lancamento de Encomendas
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmPedidosConsulta, FrmPedidosConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmLancPedidos, FrmLancPedidos);
  try
    FrmLancPedidos.ShowModal;
  finally
    FrmLancPedidos.Destroy;
    FrmProdutos.Destroy;
    FrmPedidosConsulta.Destroy;
    FrmCadFormaPag.Destroy;
    FrmCadClassPedido.Destroy;
    FrmClientes.Destroy;
  end;

end;

procedure TFrmGeraNFe.BtnCartaCorrecaoClick(Sender: TObject);
var
  idLote, Correcao, CNPJ: string;
  nSeqEvento: Integer;
  formMensagem: TFormMensagem;
begin
  inherited;
  if (QryNFeCHAVE_NFE.AsString = '') or (Trim(QryNFeSTATUS_NFE.AsString) <> '100') then
  begin
    MessageDlg('NFe não enviada ou com status diferente do esperado!', mtWarning, [mbOK], 0);
    Exit;
  end;
  //
  CarregaDadosXML;
  idLote := FormatDateTime('mmss', Now);
  CNPJ := Copy(QryNFeCHAVE_NFE.AsString, 7, 14);
  nSeqEvento := DmWorkCom.RetornaSequenciaCartaCorrecao;
  Correcao := '';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
    Exit;
  try
    formMensagem := TFormMensagem.Create('Aguarde... Enviando carta de correção!', 550, 150, clBlack, clSilver);
    formMensagem.mostrar;
    Refresh;
    //
    DmAcBr.ACBrNFe1.EventoNFe.Evento.Clear;
    with DmAcBr.ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := QryNFeCHAVE_NFE.AsString;
      infEvento.CNPJ := CNPJ;
      infEvento.dhEvento := Now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := nSeqEvento;
      infEvento.detEvento.xCorrecao := Correcao;
    end;
    DmAcBr.ACBrNFe1.EnviarEvento(StrToInt(idLote));
    formMensagem.destruir;
    FreeAndNil(formMensagem);
    MessageDlg('Carta de correção enviada com sucesso', mtInformation, [mbOK], 0);
  except
    on E: Exception do
    begin
      formMensagem.destruir;
      FreeAndNil(formMensagem);
      ShowMessage(E.Message);
    end
  end;

end;

procedure TFrmGeraNFe.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if QryNFe.RecordCount = 0 then
  begin
    ShowMessage('É necessário seleciona NFe!');
    Abort;
  end;
  if QryNFeCANCELADO.AsString <> 'N' then
  begin
    ShowMessage('A NFe selecionada já esta cancelada!');
    Abort;
  end;
  if (QryNFeCHAVE_NFE.AsString = '') or (Trim(QryNFeSTATUS_NFE.AsString) <> '100') then
  begin
    MessageDlg('NFe não enviada ou com status diferente do esperado!', mtWarning, [mbOK], 0);
    Exit;
  end;
  //
  CarregaDadosXML;
  // exibe a tela de justificativa
  PnJustifica.Visible := True;
  EdtJustifica.Clear;
  EdtJustifica.SetFocus;

end;

procedure TFrmGeraNFe.EdtJustificaKeyPress(Sender: TObject; var Key: Char);
var
  aCNPJ: String;
  formMensagem: TFormMensagem;
begin
  inherited;
  if Key = #27 then
  begin
    PnJustifica.Visible := false;
  end;
  if Key = #13 then
  begin
    if EdtJustifica.Text <> '' then
    begin
      try
        formMensagem := TFormMensagem.Create('Aguarde... cancelando a NFe!', 550, 150, clBlack, clSilver);
        formMensagem.mostrar;
        Refresh;
        //
        aCNPJ := Copy(QryNFeCHAVE_NFE.AsString, 7, 14);
        with DmAcBr.ACBrNFe1.EventoNFe.Evento.Add do
        begin
          infEvento.chNFe := QryNFeCHAVE_NFE.AsString;
          infEvento.CNPJ := aCNPJ;
          infEvento.dhEvento := Now;
          infEvento.tpEvento := teCancelamento;
          infEvento.detEvento.xJust := EdtJustifica.Text;
          infEvento.detEvento.nProt := QryNFePROTOCOLO_NFE.AsString;
        end;
        DmAcBr.ACBrNFe1.EnviarEvento(StrToInt(QryNFeNUM_LOTE.AsString));
        PnJustifica.Visible := false;
        // grava NFe como cancelada
        if DmWorkCom.Dados_Pedido(QryNFeID.AsInteger) then
        begin
          DmWorkCom.CdsPedidos.Edit;
          DmWorkCom.CdsPedidosSTATUS_NFE.AsString := IntToStr(DmAcBr.ACBrNFe1.WebServices.EnvEvento.cStat);
          DmWorkCom.CdsPedidosCANCELADO.AsString := 'S';
          Grava_Dados(DmWorkCom.CdsPedidos);
        end;
        // altera o status dos abastecimentos vinculados
        DmWorkCom.VerificaAlteraStatusAbastecimento(QryNFe.FieldByName('ID').AsInteger, True);
        //
        formMensagem.destruir;
        FreeAndNil(formMensagem);
        MessageDlg('NFe cancelada com sucesso', mtInformation, [mbOK], 0);
        BtnLocalizarClick(Sender);
      except
        on E: Exception do
        begin
          formMensagem.destruir;
          FreeAndNil(formMensagem);
          ShowMessage(E.Message);
        end
      end;
    end
    else
    begin
      ShowMessage('É necessário informar a Justificativa!');
      EdtJustifica.SetFocus;
    end;
  end;

end;

procedure TFrmGeraNFe.CarregaDadosXML;
begin
  // carrega dados do XML no acbr caso tenha
  if QryNFe.RecordCount > 0 then
  begin
    if QryNFe.FieldByName('CHAVE_NFE').Text <> '' then
    begin
      DmAcBr.ACBrNFe1.NotasFiscais.Clear;
      if DmWorkCom.LocalizaXMLBanco(MemoXML, QryNFeCHAVE_NFE.AsString) then
      begin
        DmAcBr.ACBrNFe1.NotasFiscais.Clear;
        DmAcBr.ACBrNFe1.NotasFiscais.LoadFromString(MemoXML.Text);
        if QryNFe.FieldByName('ARQUIVO_XML').Text <> '' then
        begin
          // salva o arquivo caso o mesmo não exista
          if not FileExists(QryNFe.FieldByName('ARQUIVO_XML').Text) then
          begin
            DmAcBr.ACBrNFe1.NotasFiscais.Items[0].GravarXML;
          end;
        end;
      end;
    end;
  end;

end;

procedure TFrmGeraNFe.MemoXMLKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
    MemoXML.Visible := false;
end;

procedure TFrmGeraNFe.GridNFeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  try
    if QryNFe.FieldByName('STATUS_NFE').AsString = '100' Then
    begin
      GridNFe.Canvas.Font.Color := clGreen;
    end
    else if QryNFe.FieldByName('STATUS_NFE').AsString = '101' Then
    begin
      GridNFe.Canvas.Font.Color := clRed;
    end
    else if QryNFe.FieldByName('STATUS_NFE').AsString = '128' Then
    begin
      GridNFe.Canvas.Font.Color := clRed;
    end
    else if QryNFe.FieldByName('STATUS_NFE').AsString = '135' Then
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

procedure TFrmGeraNFe.VerarquivoXML1Click(Sender: TObject);
begin
  inherited;
  if QryNFe.RecordCount > 0 then
  begin
    if QryNFe.FieldByName('CHAVE_NFE').Text <> '' then
    begin
      MemoXML.Visible := True;
      MemoXML.SetFocus;
    end;
  end;

end;

procedure TFrmGeraNFe.EdtJustificaExit(Sender: TObject);
begin
  inherited;
  PnJustifica.Visible := false;

end;

function TFrmGeraNFe.TestaNotaJaEnviada: Boolean;
var
  formMensagem: TFormMensagem;
  aChaveNfe, aRecibo, aProcolo, aNomeArq, aStatus: String;
  aDtAutori, aHrAutori: TDateTime;
begin
  Result := false;
  if (QryNFeCHAVE_NFE.AsString <> '') then
  begin
    try
      formMensagem := TFormMensagem.Create('Aguarde... Consultando a Chave da NFe!', 550, 150, clBlack, clSilver);
      formMensagem.mostrar;
      Refresh;
      //
      DmAcBr.ACBrNFe1.WebServices.Consulta.NFeChave := QryNFeCHAVE_NFE.AsString;
      DmAcBr.ACBrNFe1.WebServices.Consulta.Executar;
      // captura os dados
      aChaveNfe := DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.chNFe;
      aProcolo := DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.nProt;
      aRecibo := QryNFeRECIBO_NFE.AsString;
      aNomeArq := QryNFeARQUIVO_XML.AsString;
      aStatus := IntToStr(DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.cStat);
      aDtAutori := QryNFeDATA_AUTORIZA.AsDateTime;
      aHrAutori := QryNFeHORA_AUTORIZA.AsDateTime;
      // grava chave NFe
      if aChaveNfe <> '' then
      begin
        DmWorkCom.GravaChaveNFEPedido(aChaveNfe, aProcolo, aRecibo, EdtNumLote.Text, aNomeArq, aStatus, DmWorkCom.sFormas, QryNFeID.AsInteger, aDtAutori,
          aHrAutori);
      end;

      formMensagem.destruir;
      FreeAndNil(formMensagem);
    except
      on Exc: Exception do
      begin
        formMensagem.destruir;
        FreeAndNil(formMensagem);
        ShowMessage(Exc.Message);
      end;
    end;
  end;

end;

procedure TFrmGeraNFe.LiberaravalidaodaNFe1Click(Sender: TObject);
begin
  inherited;
  if QryNFe.RecordCount > 0 then
  begin
    if QryNFeCHAVE_NFE.AsString = '' then
    begin
      MessageDlg('Não existe validação para a nota selecionada!', mtWarning, [mbOK], 0);
      Exit;
    end;
    if Confirmacao('Confirma a retirada da validação da NFe?') then
    begin
      if DmAuxiliar.Dados_NFeXML(QryNFeCHAVE_NFE.AsString) then
        DmAuxiliar.Exclui_NFeXML(QryNFeCHAVE_NFE.AsString);
      DmWorkCom.GravaChaveNFEPedido('', '', '', '', '', '', DmWorkCom.sFormas, QryNFeID.AsInteger, Now, Now);
      QryNFe.Refresh;
      // BtnLocalizarClick(Sender);
    end;
  end;

end;

procedure TFrmGeraNFe.ConsultareatualizardadosdaNFe1Click(Sender: TObject);
begin
  inherited;
  if QryNFe.RecordCount > 0 then
  begin
    if QryNFe.FieldByName('CHAVE_NFE').Text <> '' then
    begin
      try
        // CarregaDadosXML;
        // consulta a NFCe
        if not DmWorkCom.TestaNotaJaEnviada(QryNFe.FieldByName('ID').AsInteger, QryNFe.FieldByName('CHAVE_NFE').AsString) then
        begin
          MessageDlg('O Registro seleconado ainda não foi enviado ou não foi localizado na SEFAZ!', mtWarning, [mbOK], 0);
          Exit;
        end;
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;
  end;
end;

end.
