{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit uFuncoesPAFECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, ExtCtrls, ComCtrls, ActnList, uLibrary, IniFiles, StdCtrls, SqlExpr,
  ACBrDevice, ACBrBAL, DBClient, uMensagem, FireDAC.Comp.Client;

type
  TFuncoesPAF = class(TObject)
  Protected
    { Protected declarations }
  Private
    { Private declarations }
  Public
    { Puplica declarations }
    sCdsControleDoc, sCdsDadosTecnico: TClientDataSet;
    gNomeArqINI, gSerial, gGT, gCaixa, gPathArqMenu: String;
    gCDC, gCOO, gGNF, gGRG, gCCF, gCRZ, gCRO, gModeloECF: Integer;
    gChavePub, gChavePriv: String;
    sContaCER, sTipoTef, gQuantLinhas, gLinhaCorte: Integer;
    sTEFViaUnica: Boolean;
    gPossuiCampo29, gPossuiCampo711, gPossuiCampo713, gPossuiCampo715: Boolean;
    sControleECFAtivo: Integer;
    // dados softhouse
    gMD5, gNOME_APLICACAO, gCONTATO, gFormatoDec, gMascaraDec: String;
    gNOME_EXECUTAVEL, gVERSAO, gRazao_social: String;
    // Descricao de Formas de Pagamento
    gDINHEIRO, gCARTAO, gCHEQUE, gOUTROS, gNP, gCARNE, gBOLETO, gCONVENIO: String;
    gVLEnvio, gVLResposta: String;
    // Balanca
    gModeloBal, gHandShake, gParity, gStopBits, gDataBits, gDecimais, gAbastCupom, gNumDigito: Integer;
    gPortaBal, gDigito, gUFAlternada: String;
    gBalAtiva: Boolean;
    // ECF
    gBaudRateECF, gDataBitsECF, gParityECF, gStopBitsECF, gHandShakingECF: Integer;
    gHardFlowECF, gSoftFlowECF: Boolean;
    // TEF
    gTEF, gDAVPV, gPosto, gRestaurante, gVerEstadoECF: Boolean;
    gCartoes, gBaudRate: Integer;
    gPathReqTEF, gPathRespTEF, gPathGT: String;
    gPathTEF: String;
    // Dados da Redu��o
    gVendaBruta, gGrandeTotal, gCancelados, gDescontos, gSubstituicao, gNaoTributado, gIsentos: Double;
    gTotalizadores, gAliquotas: String;
    // Dados geral
    ArqTemp, gOperador, gNomeOperador, gCodNacional: String;
    pLetraMFAds, pMarcaECF, pTipoECF, gPortaECF: String;
    pModeloECF, gBinCartao: String;
    pSerial, pVersao, pDataSP, pHoraSP: String;
    gValorSangria: Double;
    gIndiceGerencial, gIndiceIdentifica, gIndiceParametro, gIndiceMesaAbr, gIndiceConfMesa, gIndiceTransfMesa, gIndiceAfericao, gIndiceEstFisico,
      gIndicePerdaCom, gIndiceRetCom, gIndiceSemCom, gIndicePerdaEst, gIndiceDescontinua: Integer;
    gIndiceEncerrante, gIndiceAbastec, gIndiceNFCe: Integer;
    gGerFechaCaixa, gLXFechaCaixa: Boolean;
    gArqTXTDav, gTXTAutomatico: Boolean;

    //
    Painel: TLabel;
    ArqTextoMD5: String;
    //
    gNSU, gIdentifica, gNomeRede, gValor, gData, gHora, gTransacao, gCodTrans: String;
    gFinalizacao, gNumeroCupom, gOperacao: String;
    gIDOperador: Integer;
    gVrOriginalTEF, gVrSaqueTEF, gVrDescontoTEF: Double;
    gParcelas: Integer;
    gAprovado: Boolean;
    Hwnd: THandle;

    Constructor CrieInstancia;

    Destructor DestruaInstancia;
    //
    function AbrePortaSerial: Boolean;
    procedure FechaPortaSerial;
    function VerificaGerenciadorPadrao(Identifica: String = ''): Boolean;
    function ConfirmaTransacao(pControle: Integer; pArquivo: String): Boolean;
    function NaoConfirmaTransacao(pControle: Integer; pArquivo: String; pExibeMensagemTef: Boolean = True): Boolean;
    function TransasaoTEFConfirmada(pArquivo: String): Boolean;
    function FuncaoAdministrativaTEF: Boolean;
    function RetornaNumeroBandeira(fArquivo: String): Integer;
    function CancelaTransacaoTEF(pControle: Integer; pArquivo: String): Boolean;
    function FuncaoVendaTEF(pTipo: Integer): Boolean;
    function AnalizaArquivoRetorno(var Aprovado: Boolean; var Mensagem: String; var EhCheque: Boolean; pControle: Integer;
      ArqOrigCancelamento: String = ''): Boolean;
    function VerificaArquivoSTS: Boolean;
    function ImprimeTransacaoTEF(pTipoRel, pVias, pControle: Integer; pFormaPag, pCOO: String; pValor: Double): Boolean;
    function ImprimeTransacaoTEFNFCe(pTipoRel, pVias, pControle: Integer; pFormaPag, pCOO: String; pValor: Double): Boolean;
    function RetornaVBECF: Double;
    procedure ExibeMensagem(Tempo: Integer; Mensagem: String);
    procedure ApagaArquivosTEF(pControle: Integer);
    procedure ZeraContadorCER;
    procedure IncrementaContadorCER;
    function VerificacoesPAFECF(var Mensagem: String): Boolean;
    procedure CapturaContadoresECF(pTipo: Integer = 0);
    function VerificaCupomAberto: Boolean;
    function CancelaCupomECF: Boolean;
    procedure LeArquivoINI;
    procedure GravaArqINI(pSerial, pTotalizador, pMD5: String; pModeloECF: Integer);
    procedure AtualizaINI(CapturaMD5Atual: Boolean = True);
    procedure ApagaArquivosTemporariosTEF;
    procedure AbreGavetaDinheiro;
    procedure EfetuaSuprimento(pValor: String);
    procedure EfetuaSangria(pValor: String);
    procedure LeituraX(Arquivo: Boolean = false; NomeArquivo: String = '');
    function AbreCupomFiscal: Boolean;
    function ImprimeItemECF(pUnid, pEAN, pDesc, pAliq, pTipo, tipoDescAcre: String; pQuant, pVal, pDesconto: Double): Boolean;
    function CancelarItemCupom(pItem: String): Boolean;
    function IniciaFechamentoCupom(pTipo, pVal: String): Boolean;
    function RegistraFormaPagtoCupom(pFormaPag: String; pVal: Double): Boolean;
    function TerminaFechamentoCupom(pMensagem: String): Boolean;
    function RetornaDataHoraECF(var Mensagem, pData, pHora: String): Boolean;
    procedure AbreJornadaFiscal(pValor: Double);
    procedure FecharAbreJornadaFiscal(DataHora: TDateTime = 0);
    function AbreCupomNaoFiscalECF(pTipoRel: Integer; pFormaPag, pCOO: String; pValor: Double): Boolean;
    function FechaCupomNaoFiscalECF: Boolean;
    function ImprimeLinhaDocNaoFiscalECF(pTipoRel: Integer; pTexto: String): Boolean;
    procedure CancelarCupomNaoFiscal;
    procedure AdicionarAliquotaECF(pAliq: String; pTipo: Integer);
    procedure AdicionarFormaPagtoECF(pFormaPag: String);
    procedure AdicionarRelatorioGerencialECF(pDescricao: String);
    function RemoveAspas(pTexto: String): String;
    function VerificaJornadaFiscal: Boolean;
    procedure EmiteReducaoZ;
    procedure MemoriaFiscal(pInicio, pFim: String; pDatai, pDataf: TDateTime; pTipo, pInterval, pTipoLeitura: Boolean; pNomeArq: String);
    function EspelhoMFD(pArquivo, pInicio, pFim: String; pDatai, pDataf: TDateTime; pInterval: Boolean): Boolean;
    function ArquivoMF(pArquivo: String): Boolean;
    function ArquivoMFD(pArquivo: String): Boolean;
    function ArqAC1704(pArquivo, pInicio, pFim: String; pDatai, pDataf: TDateTime; pInterval: Boolean): Boolean;
    function Abre_RelatorioGerencial(Indice: Integer): Boolean;
    procedure ImprimeRelatorioGerencial(pTexto: String);
    procedure FechaRelatorioGerencial(pTipoDoc: Integer = 0);
    function GravaDadosDocECF(pSigla: String; pTipo: Integer = 0): Boolean;
    function GeraMD5PAFECF: String;
    function AtivarBalancaCaixa: Boolean;
    function CapturarPesoBalanca: Double;
    procedure FinalizaLeitura;
    procedure Verifica_Campo9;
    procedure VerificaResolvePendenciaTEF(CdsPedidoFP: TClientDataSet; FechamentoCupom: Boolean = false; AberturaSistema: Boolean = false);
    function RestauraAplicativo: Boolean;
    function VerificaCaracterString(Texto, Caracter: String): Boolean;
    procedure CarregarDadosPathTEF;
    procedure MesasTransferidas;
    procedure MesasAbertas(pCdsMesas: TClientDataSet);
    function VerificaImpressoraLigada: Boolean;
    function VerificaCupomFiscalFechado: Boolean;
    function AbreGerenciadorPadrao: Boolean;
    procedure EmiteGerencialSangria(pCaixa, pOperador: String; pData: TDateTime; pValor: Double);
    procedure EmiteGerencialSangriaNFCe(pCaixa, pOperador: String; pData: TDateTime; pValor: Double);
    procedure EmiteGerencialSSuprimentoNFCe(pCaixa, pOperador: String; pData: TDateTime; pValor: Double);
    procedure EmiteGerencialVendaPrazo(pData: TDateTime; pValor: Double; pCliente: String);
    procedure EmiteGerencialVendaPrazoNFCe(pData: TDateTime; pValor: Double; pCliente: String);
    procedure ImprimirFechamentoCaixa(Operador, Caixa: String; Valor: Double);
    procedure RetornaIndiceAliquota(var CdsTotalizador: TClientDataSet);
    function RetornaIDEmpresa: Integer;
    function RetornaIDEmpresaCaixa: Integer;
    function RetornaSaldoCaixa(pCaixa: String; pData: TDateTime): Double;
    procedure CapturaDadosECF;
    procedure RelatorioAfericao(Codigo: Integer; Bico, Combustivel: String; quantiade, EI, EF: Double);
    procedure RelatorioPerdaComunicacao(CdsBicoComunica: TClientDataSet);
    procedure RelatorioRetornoComunicacao(CdsBicoComunica: TClientDataSet);
    procedure RelatorioSemComunicacao(CdsBicoComunica: TClientDataSet);
    procedure RelatorioPerdaCombustive(CdsTanquePerda: TClientDataSet);
    procedure RelatorioDescontinuidadeEncerrante(Bomba, Bico, Motivo, Justifica, Justifica1, Justifica2, Medidas, Medidas1, Medidas2: String;
      Data, hora: TDateTime; EI, EF: Double);
    procedure RelatorioEstoqueCombustivel(CdsTanqueEstoque: TClientDataSet);
    procedure GravaRegistrodePerdaImpresso(pID, pImpresso: Integer);
    procedure GravaPerdaCombustivelImpresso(pID: Integer);
    procedure LimpaInformacaoPerdaComunicacao;
    function RetornaUltimoEncerranteBico(pBico: String): Double;
    function RetornaVolPerdaPendente(pBico: String): Double;
    function VerificaRegistro1320(pBico: String; pData: TDateTime): Boolean;
    function RetornaTotalAbastcimentoCupom(pIDCupom: Integer): Integer;
    procedure EmiteGerencialVidaLink(Texto, pCOO, pFormaPag: String; pValor: Double);
    procedure EmiteGerencialVidaLinkNFCe(Texto, pCOO, pFormaPag: String; pValor: Double);
    procedure CapturaConfigECFBanco;
    procedure CapturaDadosUltimaZBanco(var CRZ, CRO: Integer; var VB: Double; NumSerie: String);
    procedure CapturaDadosUltimaZECF(var CRZ, CRO: Integer; var VB: Double);
    function RetornaQuantArqXML(Tipo: Integer): Integer;
    function FuncaoVendaRecarga(pDDD, pNumTel, pCEP: String): Boolean;
  end;

procedure BlockInput(ABlockInput: Boolean); stdcall; external 'USER32.DLL';

implementation

Uses Libeay32, uDmAcBr, ACBrECF, CharPrinter, uDmPosto;

var
  iRetorno: Integer;

function TFuncoesPAF.VerificaGerenciadorPadrao(Identifica: String = ''): Boolean;
var
  cConteudoArquivo: string;
  cArquivo: TextFile;
begin
  ExibeMensagem(0, 'verifica GP ativo');
  result := True;
  gIdentifica := FormatDateTime('hhmmss', Time);
  cConteudoArquivo := '000-000 = ATV' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '999-999 = 0';
  AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
  ReWrite(cArquivo);
  WriteLn(cArquivo, cConteudoArquivo);
  CloseFile(cArquivo);
  // caso exista o Intpos.sts elimina
  if FileExists(gPathRespTEF + 'INTPOS.STS') then
    DeleteFile(gPathRespTEF + 'INTPOS.STS');
  // renomeia o arquivo para comunicar com o GP
  RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
  // Sleep(2000);
  // aguarda retorno do GP
  if not VerificaArquivoSTS then
    result := false;
  // retorna o identificador
  if Identifica <> '' then
    gIdentifica := Identifica;

end;

function TFuncoesPAF.ConfirmaTransacao(pControle: Integer; pArquivo: String): Boolean;
var
  cLinhaArquivo, cConteudo, cCampoArquivo, aArquivo: string;
  cArquivo: TextFile;
  ConfirmaTransacao: Boolean;
begin
  ExibeMensagem(0, 'Confirma a Transa��o');
  result := false;
  cConteudo := '';
  cLinhaArquivo := '';
  cConteudo := '';
  if pArquivo = '' then
    aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001'
  else
    aArquivo := pArquivo;
  if FileExists(aArquivo) then
  begin
    result := True;
    AssignFile(cArquivo, aArquivo);
    Reset(cArquivo);
    while not System.EOF(cArquivo) do
    begin
      ReadLn(cArquivo, cLinhaArquivo);
      cCampoArquivo := copy(cLinhaArquivo, 1, 3);
      // Captura tipo de transacao
      if cCampoArquivo = '000' then
        gTransacao := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
      // carrega NCU para confirma��o de dados
      if cCampoArquivo = '012' then
        gNSU := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
      // carrega informa��es para confirma��o
      if (copy(cLinhaArquivo, 1, 3) = '002') or (copy(cLinhaArquivo, 1, 3) = '010') or (copy(cLinhaArquivo, 1, 3) = '012') or (copy(cLinhaArquivo, 1, 3) = '027')
      then
        cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
      // verifica final de verifica��o
      if (copy(cLinhaArquivo, 1, 3) = '999') then
        cConteudo := cConteudo + cLinhaArquivo;
    end;
    // fecha o arquivo TEF
    CloseFile(cArquivo);
    // completa informa��es para confirma��o
    cConteudo := '000-000 = CNF' + #13 + #10 + '001-000 = ' + FormatDateTime('hhmmss', Time) + #13 + #10 + cConteudo;
    Sleep(1000);
    // verifica gerenciador padr�o
    if not VerificaGerenciadorPadrao then
    begin
      RestauraAplicativo;
      MessageDlg('Gerenciador padr�o desativado e ser� ativado automaticamente!', mtWarning, [mbOK], 0);
      AbreGerenciadorPadrao;
      while not VerificaGerenciadorPadrao do
      begin
        MessageDlg('Erro ao ativar o GP automaticamente. Proceda a ativa��o manual!', mtWarning, [mbOK], 0);
      end;
    end;
    // grava arquivo de confirma��o
    ConfirmaTransacao := false;
    if gNSU <> '' then
    begin
      ConfirmaTransacao := True;
    end
    else
    begin
      if sTipoTef in [0, 2] then
        ConfirmaTransacao := True;
    end;
    //
    if ConfirmaTransacao then
    begin
      AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
      ReWrite(cArquivo);
      WriteLn(cArquivo, cConteudo);
      CloseFile(cArquivo);
      RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
      Sleep(2000);
      while not FileExists(gPathRespTEF + 'INTPOS.STS') do
        Sleep(1000);
      DeleteFile(gPathRespTEF + 'INTPOS.STS');
    end;
  end;

end;

function TFuncoesPAF.NaoConfirmaTransacao(pControle: Integer; pArquivo: String; pExibeMensagemTef: Boolean = True): Boolean;
var
  cLinhaArquivo, cConteudo, cCampoArquivo, AuxMensagem, aArquivo: string;
  cArquivo: TextFile;
begin
  ExibeMensagem(0, 'N�o confirma a transa��o');
  // zera vari�veis
  gNSU := '';
  gValor := '';
  gNomeRede := '';
  cConteudo := '';
  result := false;
  cLinhaArquivo := '';
  if pArquivo = '' then
    aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001'
  else
    aArquivo := pArquivo;
  // carrega arquivo com dados pendentes para n�o confirma��o
  if FileExists(aArquivo) then
  begin
    AssignFile(cArquivo, aArquivo);
    result := True;
    cConteudo := '000-000 = NCN' + #13 + #10 + '001-000 = ' + FormatDateTime('hhmmss', Time) + #13 + #10;
    Reset(cArquivo);
    while not System.EOF(cArquivo) do
    begin
      ReadLn(cArquivo, cLinhaArquivo);
      cCampoArquivo := copy(cLinhaArquivo, 1, 3);
      case StrToInt(cCampoArquivo) of
        0:
          gTransacao := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
        // 1: cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
        3:
          gValor := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
        10:
          begin
            cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
            gNomeRede := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
          end;
        12:
          begin
            cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
            gNSU := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
          end;
        27:
          cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
        999:
          cConteudo := cConteudo + cLinhaArquivo;
      end;
    end;
    CloseFile(cArquivo);
    Sleep(1000);
    // verifica gerenciador padr�o
    if not VerificaGerenciadorPadrao then
    begin
      RestauraAplicativo;
      ShowMessage('Gerenciador padr�o desativado e ser� ativado automaticamente!');
      AbreGerenciadorPadrao;
      while not VerificaGerenciadorPadrao do
      begin
        MessageDlg('Erro ao ativar o GP automaticamente. Proceda a ativa��o manual!', mtWarning, [mbOK], 0);
      end;
    end;
    AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
    ReWrite(cArquivo);
    WriteLn(cArquivo, cConteudo);
    CloseFile(cArquivo);
    RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
    Sleep(2000);
    while not FileExists(gPathRespTEF + 'INTPOS.STS') do
      Sleep(1000);
    DeleteFile(gPathRespTEF + 'INTPOS.STS');
    // carrega informa��es da mensagem de NSU
    if Trim(gValor) <> '' then
    begin
      if (not VerificaCaracterString(gValor, ',')) or (not VerificaCaracterString(gValor, ',')) then
        gValor := FormatFloat('0.00', StrToFloat(gValor) / 100);
    end;
    //
    if sTipoTef in [0, 2] then
    begin
      AuxMensagem := 'Cancelada a Transa��o' + #13 + #13 + 'Rede:   ' + gNomeRede + #13;
      if gNSU <> '' then
        AuxMensagem := AuxMensagem + 'NSU:    ' + gNSU + #13;
      if gValor <> '' then
        AuxMensagem := AuxMensagem + 'Valor:  ' + gValor;
      // exibe a mensagem
      MessageDlg(AuxMensagem, mtWarning, [mbOK], 0);
    end
    else
    begin
      if pExibeMensagemTef then
        MessageDlg('Transa��o nao efetuada. Favor reter o cupom!!!', mtWarning, [mbOK], 0);
    end;
  end;
  // limpa informa��o de campo NSU
  gNSU := '';
  // apaga arquivo
  ApagaArquivosTEF(pControle);
  DeleteFile(ArqTemp);

end;

function TFuncoesPAF.RetornaNumeroBandeira(fArquivo: String): Integer;
var
  cLinhaArquivo, cConteudo, cCampoArquivo: string;
  cArquivo: TextFile;
begin
  result := 0;
  cConteudo := '';
  cLinhaArquivo := '';
  // verifica se existe arquivo
  if FileExists(ArqTemp) then
  begin
    // carrega arquivo com dados pendentes para n�o confirma��o
    AssignFile(cArquivo, fArquivo);
    cConteudo := '000-000 = NCN' + #13 + #10;
    Reset(cArquivo);
    while not System.EOF(cArquivo) do
    begin
      ReadLn(cArquivo, cLinhaArquivo);
      cCampoArquivo := copy(cLinhaArquivo, 1, 3);
      case StrToInt(cCampoArquivo) of
        10:
          cConteudo := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
      end;
    end;
    CloseFile(cArquivo);
    // verifica a bandeira
    if UpperCase(cConteudo) = 'TECBAN' then
    begin
      result := 1;
    end;
    if UpperCase(cConteudo) = 'HCARD' then
    begin
      result := 2;
    end;
  end;

end;

function TFuncoesPAF.FuncaoAdministrativaTEF: Boolean;
var
  cArquivo: TextFile;
  cConteudoArquivo: string;
begin
  ExibeMensagem(0, 'Realizando TEF administrativo.');
  result := True;
  // Prepara arquivo de comunicacao
  gIdentifica := FormatDateTime('hhmmss', Time);
  cConteudoArquivo := '';
  // verifica tipo de tef
  if sTipoTef in [0, 2] then // discado
  begin
    cConteudoArquivo := '000-000 = ADM' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '701-000 = ' + gNOME_EXECUTAVEL + ' v' + gVERSAO + #13 + #10 +
      '706-000 = ' + '3' + #13 + #10 + '716-000 = ' + gRazao_social + #13 + #10 + '999-999 = 0';
  end
  else
  begin
    cConteudoArquivo := '000-000 = ADM' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 +
    // Adiciona para atender CIELO PP
      '210-084 = ' + 'RRSOFT1010' + #13 + #10 + '210-084 = ' + copy(gNOME_EXECUTAVEL, 1, 6) + copy(FiltraNumero(gVERSAO), 1, 2) + '10' + #13 + #10 +
      '701-034 = ' + '4' + #13 + #10 +
    //
      '999-999 = 0';
  end;
  AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
  ReWrite(cArquivo);
  WriteLn(cArquivo, cConteudoArquivo);
  CloseFile(cArquivo);
  RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
  Sleep(2000);

end;

function TFuncoesPAF.CancelaTransacaoTEF(pControle: Integer; pArquivo: String): Boolean;
var
  Aprovado, EhCheque, Impresso: Boolean;
  Mensagem, cLinhaArquivo, cConteudo, cCampoArquivo, aArquivo: string;
  cArquivo: TextFile;
  aVias: Integer;
begin
  ExibeMensagem(0, 'Cancelamento de transa��o.');
  result := false;
  // zera vari�veis
  gNSU := '';
  gValor := '';
  gNomeRede := '';
  cConteudo := '';
  cLinhaArquivo := '';
  gIdentifica := FormatDateTime('hhmmss', Time);
  if pArquivo = '' then
    aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001'
  else
    aArquivo := pArquivo;
  // carrega arquivo com dados pendentes para n�o confirma��o
  if FileExists(aArquivo) then
  begin
    AssignFile(cArquivo, aArquivo);
    result := True;
    cConteudo := '000-000 = CNC' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10;
    Reset(cArquivo);
    while not System.EOF(cArquivo) do
    begin
      ReadLn(cArquivo, cLinhaArquivo);
      cCampoArquivo := copy(cLinhaArquivo, 1, 3);
      case StrToInt(cCampoArquivo) of
        // 0: gTransacao := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
        // 1: cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
        03:
          begin
            cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
            gValor := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
          end;
        04:
          begin
            cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
            gValor := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
          end;
        10:
          begin
            cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
            gNomeRede := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
          end;
        12:
          begin
            cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
            gNSU := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
          end;
        22:
          cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
        23:
          cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
        27:
          cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
        999:
          cConteudo := cConteudo + cLinhaArquivo;
      end;
    end;
    CloseFile(cArquivo);
    Sleep(2000);
    if FileExists(aArquivo) then
      DeleteFile(aArquivo);
    // verifica gerenciador padr�o
    if not VerificaGerenciadorPadrao(gIdentifica) then
    begin
      RestauraAplicativo;
      ShowMessage('Gerenciador padr�o desativado e ser� ativado automaticamente!');
      AbreGerenciadorPadrao;
      while not VerificaGerenciadorPadrao do
      begin
        MessageDlg('Erro ao ativar o GP automaticamente. Proceda a ativa��o manual!', mtWarning, [mbOK], 0);
      end;
    end;
    AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
    ReWrite(cArquivo);
    WriteLn(cArquivo, cConteudo);
    CloseFile(cArquivo);
    RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
    Sleep(2000);
    Mensagem := '';
    CarregarDadosPathTEF;
    AnalizaArquivoRetorno(Aprovado, Mensagem, EhCheque, 1, pArquivo);
    RestauraAplicativo;
    // define numero de vias
    aVias := 2;
    if not sTEFViaUnica then
      aVias := 1;
    if not gPossuiCampo29 then
      aVias := 1;
    //
    if not Aprovado then
    begin
      ApagaArquivosTEF(1);
      RestauraAplicativo;
      ShowMessage(Mensagem);
    end
    else
    begin
      // ativa a impressora caso esteja desativada;
      if VerificaImpressoraLigada then
      begin
        if DmAcBr.ACBrECF1.Estado = estRelatorio then
          FechaRelatorioGerencial;
        if DmAcBr.ACBrECF1.Estado = estNaoFiscal then
          FechaCupomNaoFiscalECF;
      end;
      // trava o teclado
      if sTipoTef in [0, 2] then
        // BlockInput(true);
        // exibe a mensagem
        if gQuantLinhas > 0 then
        begin
          ExibeMensagem(5, Mensagem);
          while not Impresso do
          begin
            if not ImprimeTransacaoTEF(1, aVias, 1, '0', '0', 0) then
            begin
              if sTipoTef in [0, 2] then
                // BlockInput(false);
                if Confirmacao('Impressora n�o responde. Tentar novamente? ') then
                begin
                  if sTipoTef in [0, 2] then
                    // BlockInput(true);
                    VerificaImpressoraLigada;
                  FechaCupomNaoFiscalECF;
                  Impresso := false;
                end
                else
                begin
                  if sTipoTef in [0, 2] then // tef discado
                  begin
                    // BlockInput(false);
                    NaoConfirmaTransacao(1, '');
                    Impresso := True;
                  end
                  else
                  begin
                    ConfirmaTransacao(1, '');
                    MessageDlg('Transa��o TEF confirmada. Favor reimprimir a ultima transa��o!', mtInformation, [mbOK], 0);
                  end;
                  ApagaArquivosTEF(1);
                  ApagaArquivosTemporariosTEF;
                  DeleteFile(ArqTemp);
                end;
            end
            else
            begin
              if sTipoTef in [0, 2] then
                // BlockInput(false);
                ConfirmaTransacao(1, '');
              ApagaArquivosTEF(1);
              ApagaArquivosTemporariosTEF;
              DeleteFile(ArqTemp);
              Impresso := True;
            end;
          end;
        end
        else
        begin
          if sTipoTef in [0, 2] then
            // BlockInput(false);
            ConfirmaTransacao(1, '');
          ApagaArquivosTEF(1);
          ShowMessage(Mensagem);
        end;
      //
      if sTipoTef in [0, 2] then
        // BlockInput(false);
    end;
  end;
  // apaga arquivo
  ApagaArquivosTEF(pControle);
  DeleteFile(ArqTemp);

end;

function TFuncoesPAF.FuncaoVendaTEF(pTipo: Integer): Boolean;
var
  cConteudoArquivo: string;
  cArquivo: TextFile;
begin
  ExibeMensagem(0, 'Realizando TEF venda.');
  Sleep(1000);
  result := True;
  gIdentifica := FormatDateTime('hhmmss', Time);
  cConteudoArquivo := '';
  if pTipo = 1 then
  begin
    if sTipoTef in [0, 2] then // discado
    begin
      cConteudoArquivo := '000-000 = CHQ' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '002-000 = ' + gNumeroCupom + #13 + #10 + '003-000 = ' + gValor
        + #13 + #10 + '004-000 = ' + '0' + #13 + #10 + '701-000 = ' + gNOME_APLICACAO + ' v' + gVERSAO + #13 + #10 + '706-000 = ' + '3' + #13 + #10 +
        '716-000 = ' + gRazao_social + #13 + #10 + '999-999 = 0';
    end
    else
    begin
      cConteudoArquivo := '000-000 = CHQ' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '002-000 = ' + gNumeroCupom + #13 + #10 + '003-000 = ' + gValor
        + #13 + #10 + '004-000 = ' + 'R$' + #13 + #10 +
      // Adiciona para atender CIELO PP
        '210-084 = ' + copy(gNOME_APLICACAO, 1, 6) + copy(FiltraNumero(gVERSAO), 1, 2) + '10' + #13 + #10 + '701-034 = ' + '4' + #13 + #10 + '999-999 = 0';
    end;
  end
  else if pTipo = 2 then
  begin
    if sTipoTef in [0, 2] then // discado
    begin
      cConteudoArquivo := '000-000 = CRT' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '002-000 = ' + gNumeroCupom + #13 + #10 + '003-000 = ' + gValor
        + #13 + #10 + '004-000 = ' + '0' + #13 + #10 + '701-000 = ' + gNOME_APLICACAO + ' v' + gVERSAO + #13 + #10 + '706-000 = ' + '3' + #13 + #10 +
        '716-000 = ' + gRazao_social + #13 + #10 + '999-999 = 0';
    end
    else
    begin
      cConteudoArquivo := '000-000 = CRT' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '002-000 = ' + gNumeroCupom + #13 + #10 + '003-000 = ' + gValor
        + #13 + #10 + '004-000 = ' + 'R$' + #13 + #10 +
      // Adiciona para atender CIELO PP
        '210-084 = ' + copy(gNOME_APLICACAO, 1, 6) + copy(FiltraNumero(gVERSAO), 1, 2) + '10' + #13 + #10 + '701-034 = ' + '4' + #13 + #10 + '999-999 = 0';
    end;
  end;
  AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
  ReWrite(cArquivo);
  WriteLn(cArquivo, cConteudoArquivo);
  CloseFile(cArquivo);
  RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
  Sleep(2000);

end;

function TFuncoesPAF.AnalizaArquivoRetorno(var Aprovado: Boolean; var Mensagem: String; var EhCheque: Boolean; pControle: Integer;
  ArqOrigCancelamento: String = ''): Boolean;
var
  AuxTXT, cLinhaArquivo, cCampoArquivo: string;
  cArquivo: TextFile;
  Verifica, EhCancelamento: Boolean;
  aux: LongBool;
  i: Integer;
begin
  result := false;
  EhCheque := false;
  Verifica := false;
  gQuantLinhas := 0;
  gLinhaCorte := 0;
  gVrOriginalTEF := 0;
  gVrSaqueTEF := 0;
  gVrDescontoTEF := 0;
  gCodTrans := '';
  gNomeRede := '';
  gParcelas := 1;
  gNSU := '';
  EhCancelamento := false;
  gPossuiCampo29 := false;
  gPossuiCampo711 := false;
  gPossuiCampo713 := false;
  gPossuiCampo715 := false;
  if VerificaArquivoSTS then
  begin
    while not Verifica do
    begin
      if FileExists(gPathRespTEF + 'INTPOS.001') then
      begin
        Sleep(2000);
        Verifica := True;
        Aprovado := True;
        AssignFile(cArquivo, gPathRespTEF + 'INTPOS.001');
        Reset(cArquivo);
        while not System.EOF(cArquivo) do
        begin
          ReadLn(cArquivo, cLinhaArquivo);
          cCampoArquivo := copy(cLinhaArquivo, 1, 3);
          case StrToInt(cCampoArquivo) of
            0:
              begin
                gOperacao := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
                if gOperacao = 'CHQ' then
                  EhCheque := True;
                if gOperacao = 'CNC' then
                  EhCancelamento := True;
              end;
            1:
              begin
                if (copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10) <> gIdentifica) then
                begin
                  CloseFile(cArquivo);
                  Sleep(1000);
                  DeleteFile(gPathRespTEF + 'INTPOS.001');
                  Verifica := false;
                  result := false;
                  break;
                end;
              end;
            3:
              begin
                if sTipoTef = 1 then // dedicado
                begin
                  if copy(cLinhaArquivo, 5, 3) = '000' then
                  begin
                    AuxTXT := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
                    if VerificaCaracterString(AuxTXT, ',') or VerificaCaracterString(AuxTXT, '.') then
                      gVrOriginalTEF := StrToFloat(AuxTXT)
                    else
                      gVrOriginalTEF := (StrToFloat(AuxTXT) / 100);
                  end;
                end;
              end;
            9:
              begin
                if copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10) <> '0' then
                  Aprovado := false;
              end;
            10:
              begin
                if Aprovado then
                begin
                  if copy(cLinhaArquivo, 5, 3) = '000' then
                  begin
                    gNomeRede := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
                  end;
                end;
              end;
            11:
              begin
                if Aprovado then
                  gCodTrans := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            12:
              begin
                if Aprovado then
                  gNSU := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            18:
              begin
                if Aprovado then
                begin
                  if Trim(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) <> '' then
                    gParcelas := StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10));
                end;
              end;
            22:
              begin
                if Aprovado then
                  gData := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            23:
              begin
                if Aprovado then
                  gHora := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            25:
              begin
                if Aprovado then
                  gTransacao := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            27:
              begin
                if Aprovado then
                  gFinalizacao := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            28:
              begin
                if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) and (Aprovado) then
                begin
                  if EhCancelamento then
                  begin
                    if ArqOrigCancelamento <> '' then
                      DeleteFile(ArqOrigCancelamento);
                  end;
                  if copy(cLinhaArquivo, 5, 3) = '000' then
                  begin
                    gQuantLinhas := StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10));
                    gPossuiCampo29 := True;
                    CopyFile(pChar(gPathRespTEF + 'INTPOS.001'), pChar(ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001'), aux);
                  end;
                  // captura linha de corte
                  if copy(cLinhaArquivo, 5, 3) = '001' then
                  begin
                    gLinhaCorte := StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10));
                  end;
                end;
              end;
            30:
              begin
                Mensagem := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              end;
            200:
              begin
                if sTipoTef = 1 then // dedicado
                begin
                  if copy(cLinhaArquivo, 5, 3) = '000' then
                  begin
                    AuxTXT := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
                    if VerificaCaracterString(AuxTXT, ',') or VerificaCaracterString(AuxTXT, '.') then
                      gVrSaqueTEF := StrToFloat(AuxTXT)
                    else
                      gVrSaqueTEF := (StrToFloat(AuxTXT) / 100);
                  end;
                end;
              end;
            210:
              begin
                if sTipoTef = 1 then // dedicado
                begin
                  if copy(cLinhaArquivo, 5, 3) = '081' then
                  begin
                    AuxTXT := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
                    if VerificaCaracterString(AuxTXT, ',') or VerificaCaracterString(AuxTXT, '.') then
                      gVrDescontoTEF := StrToFloat(AuxTXT)
                    else
                      gVrDescontoTEF := gVrDescontoTEF / 100;
                    //
                    gVrDescontoTEF := gVrOriginalTEF - gVrDescontoTEF;
                  end;
                end;
              end;
            707:
              begin
                if sTipoTef in [0, 2] then
                begin
                  if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) then
                  begin
                    gVrOriginalTEF := StrToFloat(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10));
                    gVrOriginalTEF := gVrOriginalTEF / 100;
                  end;
                end;
              end;
            708:
              begin
                if sTipoTef in [0, 2] then
                begin
                  if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) then
                  begin
                    gVrSaqueTEF := StrToFloat(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10));
                    gVrSaqueTEF := gVrSaqueTEF / 100;
                  end;
                end;
              end;
            709:
              begin
                if sTipoTef in [0, 2] then
                begin
                  if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) then
                  begin
                    gVrDescontoTEF := StrToFloat(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10));
                    gVrDescontoTEF := gVrDescontoTEF / 100;
                  end;
                end;
              end;
            710:
              begin
                if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) and (Aprovado) then
                begin
                  // gPossuiCampo711 := true;
                  gPossuiCampo711 := false;
                end;
              end;
            712:
              begin
                if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) and (Aprovado) then
                begin
                  gPossuiCampo713 := True;
                end;
              end;
            714:
              begin
                if (StrToInt(copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10)) > 0) and (Aprovado) then
                begin
                  gPossuiCampo715 := True;
                end;
              end;
          end;
        end;
      end;
    end;
  end
  else
    MessageDlg('Erro ao comunicar com o Gerenciador Pad�o!', mtWarning, [mbOK], 0);
  CloseFile(cArquivo);
  // apaga arquivo de controle
  ApagaArquivosTEF(-1);

end;

function TFuncoesPAF.VerificaArquivoSTS: Boolean;
var
  i: Integer;
begin
  result := false;
  for i := 1 to 7 do
  begin
    if FileExists(gPathRespTEF + 'INTPOS.STS') then
    begin
      result := True;
      DeleteFile(gPathRespTEF + 'INTPOS.STS');
      break;
    end;
    Sleep(1000);
    if (i = 7) then
    begin
      result := false;
      break;
    end;
  end;

end;

function TFuncoesPAF.RetornaVBECF: Double;
begin
  result := 0;
  try
    result := DmAcBr.ACBrECF1.VendaBruta;
  except
    MessageDlg('Erro na comunica��o com o ECF!!', mtError, [mbOK], 0);
  end;

end;

procedure TFuncoesPAF.LeArquivoINI;
var
  ArqINI: TIniFile;
  aux, aBico, aTanque, aBomba: String;
  auxvalor: Double;
  i: Integer;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini') then
  begin
    ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini');
    aux := ArqINI.ReadString('PAFECF', 'Serial', '');
    gSerial := Criptografa(aux, 10);
    gSerial := Trim(gSerial);
    aux := ArqINI.ReadString('PAFECF', 'GTECF', '');
    aux := Criptografa(Trim(aux), 10);
    gGT := aux;
    gModeloECF := ArqINI.ReadInteger('PAFECF', 'Modelo', 0);
    gPortaECF := ArqINI.ReadString('PAFECF', 'Porta', '');
    gBaudRateECF := ArqINI.ReadInteger('PAFECF', 'BaudRate', 9600);
    gDataBitsECF := ArqINI.ReadInteger('PAFECF', 'DataBitsECF', 8);
    gParityECF := ArqINI.ReadInteger('PAFECF', 'ParityECF', 0);
    gStopBitsECF := ArqINI.ReadInteger('PAFECF', 'StopBitsECF', 0);
    gHandShakingECF := ArqINI.ReadInteger('PAFECF', 'HandShakingECF', 2);
    gHardFlowECF := ArqINI.ReadBool('PAFECF', 'HardFlowECF', True);
    gSoftFlowECF := ArqINI.ReadBool('PAFECF', 'SoftFlowECF', false);
    //
    gCaixa := ArqINI.ReadString('PAFECF', 'CAIXA', '');
    gPathArqMenu := ArqINI.ReadString('PAFECF', 'PATHMENUFISCAL', '');
    //
    gModeloBal := ArqINI.ReadInteger('BALANCA', 'MODELO', 0);
    gHandShake := ArqINI.ReadInteger('BALANCA', 'HANDSHAKE', 0);
    gParity := ArqINI.ReadInteger('BALANCA', 'PARITY', 0);
    gStopBits := ArqINI.ReadInteger('BALANCA', 'STOPBITS', 0);
    gDataBits := ArqINI.ReadInteger('BALANCA', 'DATABITIS', 0);
    gBaudRate := ArqINI.ReadInteger('BALANCA', 'BAUDRATE', 0);
    gPortaBal := ArqINI.ReadString('BALANCA', 'PORTASERIAL', '');
    gDigito := ArqINI.ReadString('BALANCA', 'DIGITOVERIFICADOR', '');
    gBalAtiva := ArqINI.ReadBool('BALANCA', 'ATIVA', false);
    gNumDigito := ArqINI.ReadInteger('BALANCA', 'NUMDIGITOSCODIGO', 5);
    //
    gDINHEIRO := ArqINI.ReadString('FORMAPAGTO', 'DINHEIRO', '');
    gCARTAO := ArqINI.ReadString('FORMAPAGTO', 'CARTAO', '');
    gCHEQUE := ArqINI.ReadString('FORMAPAGTO', 'CHEQUE', '');
    gNP := ArqINI.ReadString('FORMAPAGTO', 'NP', '');
    gCARNE := ArqINI.ReadString('FORMAPAGTO', 'CARNE', '');
    gBOLETO := ArqINI.ReadString('FORMAPAGTO', 'BOLETO', '');
    gOUTROS := ArqINI.ReadString('FORMAPAGTO', 'OUTROS', '');
    gCONVENIO := ArqINI.ReadString('FORMAPAGTO', 'CONVENIO', '');
    //
    gTEF := ArqINI.ReadBool('TEF', 'TEF', false);
    gPathTEF := ArqINI.ReadString('TEF', 'PathTEFDial', 'C:\Tef_Dial\');
    gCartoes := ArqINI.ReadInteger('TEF', 'NumCartoes', 0);
    sContaCER := ArqINI.ReadInteger('TEF', 'CER', 0);
    sTEFViaUnica := ArqINI.ReadBool('TEF', 'VIAS', True);
    sTipoTef := ArqINI.ReadInteger('TEF', 'TIPOTEF', 0);
    gVerEstadoECF := ArqINI.ReadBool('TEF', 'VERESTADOECF', True);
    //
    gChavePub := ArqINI.ReadString('RSA', 'CHAVEPUB', '');
    gChavePriv := ArqINI.ReadString('RSA', 'CHAVEPRIV', '');
    // geral
    gDAVPV := ArqINI.ReadBool('GERAL', 'DAVPV', false);
    gPosto := ArqINI.ReadBool('GERAL', 'POSTO', false);
    gRestaurante := ArqINI.ReadBool('GERAL', 'RESTAURANTE', false);
    gDecimais := ArqINI.ReadInteger('GERAL', 'DECIMAIS', 2);
    gCodNacional := ArqINI.ReadString('GERAL', 'CNIEE', '0');
    gValorSangria := ArqINI.ReadFloat('GERAL', 'VALOR_SANGRIA', 0);
    gIndiceGerencial := ArqINI.ReadInteger('GERAL', 'INDICE_GERENCIAL', 0);
    gIndiceIdentifica := ArqINI.ReadInteger('GERAL', 'INDICE_IDENTIFICACAO', 0);
    gIndiceParametro := ArqINI.ReadInteger('GERAL', 'INDICE_PARAMETRO', 0);
    gIndiceAbastec := ArqINI.ReadInteger('GERAL', 'INDICE_ABASTEC', 0);
    gIndiceEncerrante := ArqINI.ReadInteger('GERAL', 'INDICE_ENCERRANTE', 0);
    gIndiceNFCe := ArqINI.ReadInteger('GERAL', 'INDICE_NFCE', 0);
    gIndiceMesaAbr := ArqINI.ReadInteger('GERAL', 'INDICE_MESA_ABR', 0);
    gIndiceConfMesa := ArqINI.ReadInteger('GERAL', 'INDICE_CONF_MESA', 0);
    gIndiceTransfMesa := ArqINI.ReadInteger('GERAL', 'INDICE_TRANSF_MESA', 0);
    gIndiceAfericao := ArqINI.ReadInteger('GERAL', 'INDICE_AFERICAO', 0);
    gIndiceEstFisico := ArqINI.ReadInteger('GERAL', 'INDICE_ESTFISICO', 0);
    gIndicePerdaCom := ArqINI.ReadInteger('GERAL', 'INDICE_PERCACOM', 0);
    gIndiceRetCom := ArqINI.ReadInteger('GERAL', 'INDICE_RETCOM', 0);
    gIndiceSemCom := ArqINI.ReadInteger('GERAL', 'INDICE_SEMCOM', 0);
    gIndicePerdaEst := ArqINI.ReadInteger('GERAL', 'INDICE_PERDAEST', 0);
    gIndiceDescontinua := ArqINI.ReadInteger('GERAL', 'INDICE_DESCONTINUA', 0);
    gGerFechaCaixa := ArqINI.ReadBool('GERAL', 'GER_FECHAR_CAIXA', false);
    gLXFechaCaixa := ArqINI.ReadBool('GERAL', 'LX_FECHAR_CAIXA', false);
    gAbastCupom := ArqINI.ReadInteger('GERAL', 'ABAST_CUPOM', 2);
    gVLEnvio := ArqINI.ReadString('GERAL', 'VIDALINK_ENVIO', '');
    gVLResposta := ArqINI.ReadString('GERAL', 'VIDALINK_RESPOSTA', '');
    gUFAlternada := ArqINI.ReadString('GERAL', 'UF_ALTERNADA', '');
    gArqTXTDav := ArqINI.ReadBool('GERAL', 'ARQ_TXT_DAV', false);
    gTXTAutomatico := ArqINI.ReadBool('GERAL', 'TXT_AUTOMATICO', false);
    //
    sCdsCtrlBicos.EmptyDataSet;
    for i := 1 to RetornaQuantBicos do
    begin
      aTanque := ArqINI.ReadString('POSTO', 'TANQUE_' + IntToStr(i), '');
      aBomba := ArqINI.ReadString('POSTO', 'BOMBA_' + IntToStr(i), '');
      aBico := ArqINI.ReadString('POSTO', 'BICO_' + IntToStr(i), '');
      // remove a criptografia
      aBico := Criptografa(aBico, 10);
      aTanque := Criptografa(aTanque, 10);
      aBomba := Criptografa(aBomba, 10);
      // inclui o registro
      if ((FiltraNumero(aTanque) <> '') and (FiltraNumero(aBomba) <> '')) then
      begin
        sCdsCtrlBicos.Append;
        sCdsCtrlBicos.FieldByName('TANQUE').AsInteger := StrToInt(FiltraNumero(aTanque));
        sCdsCtrlBicos.FieldByName('BOMBA').AsInteger := StrToInt(FiltraNumero(aBomba));
        sCdsCtrlBicos.FieldByName('BICO').AsString := aBico;
        sCdsCtrlBicos.Post;
      end;
    end;
    //
    gFormatoDec := '0.' + ZeroEsquerda('', gDecimais);
    case gDecimais of
      2:
        begin
          gMascaraDec := '###,###,###,##0.00';
        end;
      3:
        begin
          gMascaraDec := '###,###,###,###0.000';
        end;
      4:
        begin
          gMascaraDec := '###,###,###,####0.0000';
        end;
      5:
        begin
          gMascaraDec := '###,###,###,#####0.00000';
        end;
    end;
    //
    ArqINI.Free;
  end
  else
  begin
    CapturaConfigECFBanco;
    gSerial := '';
    gGT := '0';
    gDAVPV := True;
    gPosto := True;
    gRestaurante := True;
  end;
end;

procedure TFuncoesPAF.ZeraContadorCER;
var
  ArqINI: String;
  INI: TIniFile;
begin
  // atualiza contador CER
  if FileExists(ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini') then
  begin
    sContaCER := 0;
    ArqINI := ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini';
    INI := TIniFile.Create(ArqINI);
    try
      INI.WriteInteger('TEF', 'CER', sContaCER);
    finally
      INI.Free;
    end;
  end;

end;

procedure TFuncoesPAF.IncrementaContadorCER;
var
  ArqINI: String;
  INI: TIniFile;
begin
  // atualiza contador CER
  if FileExists(ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini') then
  begin
    Inc(sContaCER);
    ArqINI := ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini';
    INI := TIniFile.Create(ArqINI);
    try
      INI.WriteInteger('TEF', 'CER', sContaCER);
    finally
      INI.Free;
    end;
  end;

end;

function TFuncoesPAF.VerificacoesPAFECF(var Mensagem: String): Boolean;
var
  auxData, auxHora: String;
  aData, aHora, aDataECF, aHoraECF: TDateTime;
  aCRZ_Banco, aCRZ_ECF, aCRO_Banco, aCRO_ECF, i: Integer;
  aVB_Banco, aVB_ECF: Double;
  aRecupera: Boolean;
var
  formMensagem: TFormMensagem;
begin
  result := True;
  for i := 1 to 6 do
  begin
    auxData := auxData + ' ';
    auxHora := auxHora + ' ';
  end;
  //
  if not FileExists(ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini') then
  begin
    Mensagem := 'Arquivo de configura��o n�o encontrado. Verifique!';
    result := false;
  end
  else
  begin
    LeArquivoINI;
    if Trim(gSerial) <> Trim(sDadosECF.Serial) then
    begin
      Mensagem := 'Serial do ECF n�o confere. Verifique!';
      result := false;
    end
    else
    begin
      if Abs(StrToFloat(gGT) - sDadosECF.GT) > 0.01 then
      begin
        { Quanto o GT estiver diferente deve-se:
          * Caso o CRO da ultima redu��o gravada estiver menor ou igual ao da ECF, e
          o CRZ e Venda Bruta estiver igual, recupera os dados;
          * Caso o CRO da ultima redu��o Z gravada esteja maior que o da ECF,
          deve barrar;
          * Caso o CRZ ou Venda bruta da ultima redu��o Z gravada estiver
          diferente da ECF deve barrar. }
        // busca os dados da ultima Z no banco de dados
        try
          formMensagem := TFormMensagem.Create('Aguarde... GT Invalido. Conferindo dados do sistema!', 550, 150, clWhite, clSilver);
          formMensagem.mostrar;
          aRecupera := false;
          CapturaDadosUltimaZBanco(aCRZ_Banco, aCRO_Banco, aVB_Banco, DmAcBr.ACBrECF1.NumSerie);
          CapturaDadosUltimaZECF(aCRZ_ECF, aCRO_ECF, aVB_ECF);
        finally
          formMensagem.destruir;
          FreeAndNil(formMensagem);
        end;
        //
        if aCRO_Banco <= aCRO_ECF then
        begin
          if (aCRZ_Banco = aCRZ_ECF) and (aVB_Banco = aVB_ECF) then
          begin
            aRecupera := True;
          end;
        end;
        if not aRecupera then
        begin
          Mensagem := 'O GT, CRO, CRZ ou Venda bruta n�o confere. Verifique!';
          result := false;
        end
        else
          AtualizaINI(false);
      end
      else
      begin
        aDataECF := sDadosECF.Data;
        aHoraECF := sDadosECF.hora;
        aData := Date;
        aHora := Time;
        if aData <> aDataECF then
        begin
          Mensagem := 'A Data ECF n�o confere. Verifique!';
          // Result := false;
        end
        else
        begin
          if Abs(aHora - aHoraECF) > 15 then
          begin
            Mensagem := 'A hora do ECF n�o confere. Verifique!';
            // Result := false;
          end;
        end;
      end;
    end;
    // verifica configura��o de bicos
    if (gPosto) and (result) then
    begin
      if sCdsCtrlBicos.IsEmpty then
      begin
        Mensagem := 'N�o foi detectado a configura��o dos bicos. Verifique!';
        result := false;
      end;
      if result then
      begin
        with sCdsCtrlBicos do
        begin
          First;
          while not EOF do
          begin
            if not LocalizaDadosBomba(sCdsCtrlBicos.FieldByName('BOMBA').AsInteger) then
            begin
              Mensagem := 'Bomba n�mero ' + sCdsCtrlBicos.FieldByName('BOMBA').AsString + ', N�o encontrada no cadastro. Verifique!';
              result := false;
            end;
            if not LocalizaDadosBico(sCdsCtrlBicos.FieldByName('BICO').AsString) then
            begin
              Mensagem := 'Bico n�mero ' + sCdsCtrlBicos.FieldByName('BICO').AsString + ', N�o encontrada no cadastro. Verifique!';
              result := false;
            end;
            if not LocalizaDadosTanque(sCdsCtrlBicos.FieldByName('TANQUE').AsInteger) then
            begin
              Mensagem := 'Tanque n�mero ' + sCdsCtrlBicos.FieldByName('TANQUE').AsString + ', N�o encontrada no cadastro. Verifique!';
              result := false;
            end;
            Next;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFuncoesPAF.CapturaContadoresECF(pTipo: Integer = 0);
begin
  try
    if pTipo = 0 then
    begin
      gCDC := StrToInt(DmAcBr.ACBrECF1.NumCDC);
      gCOO := StrToInt(DmAcBr.ACBrECF1.NumCOO);
      gGNF := StrToInt(DmAcBr.ACBrECF1.NumGNF);
      gGRG := StrToInt(DmAcBr.ACBrECF1.NumGRG);
      gCCF := StrToInt(DmAcBr.ACBrECF1.NumCCF);
      gCRZ := StrToInt(DmAcBr.ACBrECF1.NumCRZ);
      gCRO := StrToInt(DmAcBr.ACBrECF1.NumCRO);
    end
    else
    begin
      gCDC := 0;
      gCOO := 0;
      gGNF := 0;
      gGRG := 0;
      gCCF := 0;
      gCRZ := 0;
      gCRO := 0;
    end;
  except
    MessageDlg('Erro ao comunicar com o ECF!', mtWarning, [mbOK], 0);
  end;

end;

function TFuncoesPAF.VerificaCupomAberto: Boolean;
begin
  result := false;
  try
    if DmAcBr.ACBrECF1.Estado <> estLivre then
      result := True;
  except
    MessageDlg('Erro ao cominicar com o ECF!', mtError, [mbOK], 0);
  end;

end;

function TFuncoesPAF.CancelaCupomECF: Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.CancelaCupom;
  except
    MessageDlg('Erro ao comunicar com a impressora!', mtWarning, [mbOK], 0);
    result := false;
  end;

end;

procedure TFuncoesPAF.GravaArqINI(pSerial, pTotalizador, pMD5: String; pModeloECF: Integer);
var
  ArqINI: TIniFile;
  aPath: String;
begin
  // Sleep(1000);
  aPath := ExtractFilePath(Application.ExeName);
  ArqINI := TIniFile.Create(aPath + 'ArqVerifica.INI');
  ArqINI.WriteString('PAFECF', 'Serial', Criptografa(pSerial, 10));
  ArqINI.WriteString('PAFECF', 'GTECF', Criptografa(pTotalizador, 10));
  // ArqIni.WriteInteger('PAFECF','Modelo',pModeloECF);
  ArqINI.WriteInteger('PAFECF', 'Modelo', gModeloECF);
  ArqINI.WriteString('PAFECF', 'Porta', gPortaECF);
  ArqINI.WriteInteger('PAFECF', 'BaudRate', gBaudRateECF);
  ArqINI.WriteInteger('PAFECF', 'DataBitsECF', gDataBitsECF);
  ArqINI.WriteInteger('PAFECF', 'ParityECF', gParityECF);
  ArqINI.WriteInteger('PAFECF', 'StopBitsECF', gStopBitsECF);
  ArqINI.WriteInteger('PAFECF', 'HandShakingECF', gHandShakingECF);
  ArqINI.WriteBool('PAFECF', 'HardFlowECF', gHardFlowECF);
  ArqINI.WriteBool('PAFECF', 'SoftFlowECF', gSoftFlowECF);
  ArqINI.WriteString('PAFECF', 'CAIXA', gCaixa);
  ArqINI.WriteString('PAFECF', 'PATHMENUFISCAL', gPathArqMenu);
  //
  ArqINI.WriteString('FORMAPAGTO', 'DINHEIRO', gDINHEIRO);
  ArqINI.WriteString('FORMAPAGTO', 'CARTAO', gCARTAO);
  ArqINI.WriteString('FORMAPAGTO', 'CHEQUE', gCHEQUE);
  ArqINI.WriteString('FORMAPAGTO', 'NP', gNP);
  ArqINI.WriteString('FORMAPAGTO', 'CARNE', gCARNE);
  ArqINI.WriteString('FORMAPAGTO', 'BOLETO', gBOLETO);
  ArqINI.WriteString('FORMAPAGTO', 'OUTROS', gOUTROS);
  ArqINI.WriteString('FORMAPAGTO', 'CONVENIO', gCONVENIO);
  //
  ArqINI.WriteInteger('BALANCA', 'MODELO', gModeloBal);
  ArqINI.WriteInteger('BALANCA', 'HANDSHAKE', gHandShake);
  ArqINI.WriteInteger('BALANCA', 'PARITY', gParity);
  ArqINI.WriteInteger('BALANCA', 'STOPBITS', gStopBits);
  ArqINI.WriteInteger('BALANCA', 'DATABITIS', gDataBits);
  ArqINI.WriteInteger('BALANCA', 'BAUDRATE', gBaudRate);
  ArqINI.WriteString('BALANCA', 'PORTASERIAL', gPortaBal);
  ArqINI.WriteString('BALANCA', 'DIGITOVERIFICADOR', gDigito);
  ArqINI.WriteInteger('BALANCA', 'NUMDIGITOSCODIGO', gNumDigito);
  ArqINI.WriteBool('BALANCA', 'ATIVA', gBalAtiva);
  //
  ArqINI.WriteBool('TEF', 'TEF', gTEF);
  ArqINI.WriteString('TEF', 'PathTEFDial', gPathTEF);
  ArqINI.WriteInteger('TEF', 'NumCartoes', gCartoes);
  ArqINI.WriteInteger('TEF', 'CER', sContaCER);
  ArqINI.WriteBool('TEF', 'VIAS', sTEFViaUnica);
  ArqINI.WriteInteger('TEF', 'TIPOTEF', sTipoTef);
  ArqINI.WriteBool('TEF', 'VERESTADOECF', gVerEstadoECF);
  //
  ArqINI.WriteString('RSA', 'CHAVEPUB', gChavePub);
  ArqINI.WriteString('RSA', 'CHAVEPRIV', gChavePriv);
  // geral
  ArqINI.WriteBool('GERAL', 'DAVPV', gDAVPV);
  ArqINI.WriteBool('GERAL', 'POSTO', gPosto);
  ArqINI.WriteBool('GERAL', 'RESTAURANTE', gRestaurante);
  ArqINI.WriteInteger('GERAL', 'DECIMAIS', gDecimais);
  ArqINI.WriteString('GERAL', 'CNIEE', gCodNacional);
  ArqINI.WriteFloat('GERAL', 'VALOR_SANGRIA', gValorSangria);
  ArqINI.WriteInteger('GERAL', 'INDICE_GERENCIAL', gIndiceGerencial);
  ArqINI.WriteInteger('GERAL', 'INDICE_IDENTIFICACAO', gIndiceIdentifica);
  ArqINI.WriteInteger('GERAL', 'INDICE_PARAMETRO', gIndiceParametro);
  ArqINI.WriteInteger('GERAL', 'INDICE_ABASTEC', gIndiceAbastec);
  ArqINI.WriteInteger('GERAL', 'INDICE_ENCERRANTE', gIndiceEncerrante);
  ArqINI.WriteInteger('GERAL', 'INDICE_NFCE', gIndiceNFCe);
  ArqINI.WriteInteger('GERAL', 'INDICE_MESA_ABR', gIndiceMesaAbr);
  ArqINI.WriteInteger('GERAL', 'INDICE_CONF_MESA', gIndiceConfMesa);
  ArqINI.WriteInteger('GERAL', 'INDICE_TRANSF_MESA', gIndiceTransfMesa);
  ArqINI.WriteInteger('GERAL', 'INDICE_AFERICAO', gIndiceAfericao);
  ArqINI.WriteInteger('GERAL', 'INDICE_ESTFISICO', gIndiceEstFisico);
  ArqINI.WriteInteger('GERAL', 'INDICE_PERCACOM', gIndicePerdaCom);
  ArqINI.WriteInteger('GERAL', 'INDICE_RETCOM', gIndiceRetCom);
  ArqINI.WriteInteger('GERAL', 'INDICE_SEMCOM', gIndiceSemCom);
  ArqINI.WriteInteger('GERAL', 'INDICE_PERDAEST', gIndicePerdaEst);
  ArqINI.WriteInteger('GERAL', 'INDICE_DESCONTINUA', gIndiceDescontinua);
  ArqINI.WriteBool('GERAL', 'GER_FECHAR_CAIXA', gGerFechaCaixa);
  ArqINI.WriteBool('GERAL', 'LX_FECHAR_CAIXA', gLXFechaCaixa);
  ArqINI.WriteInteger('GERAL', 'ABAST_CUPOM', gAbastCupom);
  ArqINI.WriteString('GERAL', 'VIDALINK_ENVIO', gVLEnvio);
  ArqINI.WriteString('GERAL', 'VIDALINK_RESPOSTA', gVLResposta);
  ArqINI.WriteString('GERAL', 'UF_ALTERNADA', gUFAlternada);
  ArqINI.WriteBool('GERAL', 'ARQ_TXT_DAV', gArqTXTDav);
  ArqINI.WriteBool('GERAL', 'TXT_AUTOMATICO', gTXTAutomatico);
  //
  ArqINI.Free;
end;

procedure TFuncoesPAF.AtualizaINI(CapturaMD5Atual: Boolean = True);
begin
  if sPAFNFCe = 0 then // paf-ecf
  begin
    if FileExists(ExtractFilePath(Application.ExeName) + 'ArqVerifica.ini') then
    begin
      CapturaDadosECF;
      gSerial := sDadosECF.Serial;
      gGT := FormatFloat('0.00', sDadosECF.GT);
      if CapturaMD5Atual then
        gMD5 := GeraMD5PAFECF;
      GravaArqINI(gSerial, gGT, gMD5, gModeloECF);
    end;
  end;

end;

procedure TFuncoesPAF.ApagaArquivosTemporariosTEF;
var
  i: Integer;
  aArquivo: String;
begin
  for i := 1 to gCartoes do
  begin
    aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(i) + '.001';
    if FileExists(aArquivo) then
      DeleteFile(aArquivo);
  end;

end;

procedure TFuncoesPAF.ApagaArquivosTEF(pControle: Integer);
var
  aArquivo: String;
begin
  ExibeMensagem(0, 'Aguarde processamento...');
  Sleep(2000);
  try
    // Cielo, Redecard, Amex
    CarregarDadosPathTEF;
    if (FileExists(gPathRespTEF + 'INTPOS.STS')) then
      DeleteFile(gPathRespTEF + 'INTPOS.STS');
    if (FileExists(gPathRespTEF + 'INTPOS.001')) then
      DeleteFile(gPathRespTEF + 'INTPOS.001');
    if (FileExists(gPathReqTEF + 'INTPOS.001')) then
      DeleteFile(gPathReqTEF + 'INTPOS.001');
    //
    if (FileExists(ExtractFilePath(Application.ExeName) + 'IMPRIME.000')) then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
    // apaga arquivos temporarios
    aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001';
    if FileExists(aArquivo) then
      DeleteFile(aArquivo);
  except
  end;

end;

procedure TFuncoesPAF.ExibeMensagem(Tempo: Integer; Mensagem: String);
begin
  RestauraAplicativo;
  Application.ProcessMessages;
  Painel.Caption := Mensagem;
  Application.ProcessMessages;
  if Tempo <> 0 then
  begin
    Tempo := Tempo * 1000;
    Sleep(Tempo);
  end;

end;

function TFuncoesPAF.ImprimeTransacaoTEF(pTipoRel, pVias, pControle: Integer; pFormaPag, pCOO: String; pValor: Double): Boolean;
var
  cLinhaArquivo, aTextoLinha, aux, aArquivo: string;
  cArquivo: TextFile;
  aLinha, i: Integer;
  auxBol: LongBool;
begin
  // pTipoRel = 0 - Comprovante de Credito
  // 1 - Relatorio Gerencial
  result := True;
  Sleep(1000);
  aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001';
  //
  if FileExists(aArquivo) then
  begin
    if FileExists(ExtractFilePath(Application.ExeName) + 'IMPRIME.000') then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
    CopyFile(pChar(aArquivo), pChar(ExtractFilePath(Application.ExeName) + 'IMPRIME.000'), auxBol);
    ExibeMensagem(0, 'Imprimindo Cupom TEF');
    try
      // verifica estado da impressora
      if DmAcBr.ACBrECF1.Estado = estRelatorio then
      begin
        result := false;
        exit;
      end;
      // abre cupom
      AbreCupomNaoFiscalECF(pTipoRel, pFormaPag, pCOO, pValor);
      if pTipoRel = 0 then
        GravaDadosDocECF('CC')
      else if pTipoRel = 1 then
        GravaDadosDocECF('RG');
    except
      result := false;
      exit;
    end;
    // verifica o tipo de TEF e faz a impress�o de acordo
    if sTipoTef = 0 then // discado
    begin
      for i := 1 to pVias do
      begin
        // exibe mensagem para destacar via
        if (i = 2) and (sTEFViaUnica) and (gPossuiCampo29) then
        begin
          aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
          if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aux) then
          begin
            result := false;
            exit;
          end;
          // exibe mensagem
          ExibeMensagem(5, 'Por favor, destaque a 1� Via');
          ExibeMensagem(0, 'Imprimindo Cupom TEF');
        end;
        // abre o arquivo e impreme dados
        AssignFile(cArquivo, ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
        Reset(cArquivo);
        aLinha := 0;
        while not System.EOF(cArquivo) do
        begin
          // le linha do arquivo
          ReadLn(cArquivo, cLinhaArquivo);
          // via completa
          if gPossuiCampo29 then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
        end;
        CloseFile(cArquivo);
      end;
    end
    else if sTipoTef = 1 then // dedicado
    begin
      for i := 1 to pVias do
      begin
        // exibe mensagem para destacar via
        if (i = 2) and (sTEFViaUnica) and (gPossuiCampo29) then
        begin
          aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
          if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aux) then
          begin
            result := false;
            exit;
          end;
          // exibe mensagem
          ExibeMensagem(5, 'Por favor, destaque a 1� Via');
          ExibeMensagem(0, 'Imprimindo Cupom TEF');
        end;
        // abre o arquivo e impreme dados
        AssignFile(cArquivo, ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
        Reset(cArquivo);
        aLinha := 0;
        while not System.EOF(cArquivo) do
        begin
          // exibe mensagem para destacar via
          if not(sTEFViaUnica) and (sTipoTef = 1) and (gLinhaCorte > 0) then // para TEF Dedicado
          begin
            if gLinhaCorte = aLinha then
            begin
              aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aux) then
              begin
                result := false;
                exit;
              end;
              // exibe mensagem
              ExibeMensagem(5, 'Por favor, destaque a 1� Via');
              ExibeMensagem(0, 'Imprimindo Cupom TEF');
            end;
          end;
          // le linha do arquivo
          ReadLn(cArquivo, cLinhaArquivo);
          // via completa
          if gPossuiCampo29 then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
        end;
        CloseFile(cArquivo);
      end;
    end
    else if sTipoTef = 2 then // PayGo
    begin
      for i := 1 to 2 do
      begin
        // exibe mensagem para destacar via
        if i = 2 then
        begin
          aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
          if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aux) then
          begin
            result := false;
            exit;
          end;
          // exibe mensagem
          ExibeMensagem(5, 'Por favor, destaque a 1� Via');
          ExibeMensagem(0, 'Imprimindo Cupom TEF');
        end;
        // abre o arquivo e impreme dados
        AssignFile(cArquivo, ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
        Reset(cArquivo);
        aLinha := 0;
        while not System.EOF(cArquivo) do
        begin
          // le linha do arquivo
          ReadLn(cArquivo, cLinhaArquivo);
          // via reduzida
          if (i = 1) and (gPossuiCampo711) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 711 then
            begin
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // via diferenciada para o cliente
          if (i = 1) and (gPossuiCampo713) and (not(gPossuiCampo711)) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 713 then
            begin
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // via completa campo 29
          if (i = 1) and (not(gPossuiCampo711)) and (not(gPossuiCampo713)) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // Op��es de impress�o da segunda via
          // via diferenciada para o estabelecimento
          if (i = 2) and (gPossuiCampo715) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 715 then
            begin
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // via completa campo 29
          if (i = 2) and (not(gPossuiCampo715)) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              if not ImprimeLinhaDocNaoFiscalECF(pTipoRel, aTextoLinha) then
              begin
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
        end;
        CloseFile(cArquivo);
      end;
    end;
  end;
  // fecha relatorio
  if not FechaCupomNaoFiscalECF then
  begin
    // Result := false;
    exit;
  end;

end;

{
  function TFuncoesPAF.ImprimeTransacaoTEF(pTipoRel,pVias,pControle:Integer;pFormaPag,
  pCOO:String;pValor:Double):Boolean;
  var cLinhaArquivo, aTextoLinha, aux, aArquivo: string;
  cArquivo  : TextFile;
  aLinha, i : Integer;
  auxBol : LongBool;
  aMudaViaEspecial, TemCampo711 : Boolean;
  begin
  // pTipoRel = 0 - Comprovante de Credito
  //            1 - Relatorio Gerencial
  TemCampo711 := false;
  result := true;
  Sleep(1000);
  aArquivo := ExtractFilePath(ArqTemp)+'INTPOS'+IntToStr(pControle)+'.001';
  //
  if FileExists(aArquivo) then
  begin
  if FileExists(ExtractFilePath(Application.ExeName)+'IMPRIME.000') then
  DeleteFile(ExtractFilePath(Application.ExeName)+'IMPRIME.000');
  CopyFile(pChar(aArquivo),pChar(ExtractFilePath(Application.ExeName)+'IMPRIME.000'),auxBol);
  ExibeMensagem(0,'Imprimindo Cupom TEF');
  try
  // verifica estado da impressora
  if DmAcBr.ACBrECF1.Estado = estRelatorio then
  begin
  result := false;
  exit;
  end;
  // abre cupom
  AbreCupomNaoFiscalECF(pTipoRel,pFormaPag,pCOO,pValor);
  if pTipoRel = 0 then
  GravaDadosDocECF('CC')
  else if pTipoRel = 1 then
  GravaDadosDocECF('RG');
  except
  Result := false;
  Exit;
  end;
  //
  for i := 1 to pVias do
  begin
  // exibe mensagem para destacar via
  if (i = 2) and (sTEFViaUnica) and (gImprimeCampo29) then
  begin
  aux := #13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aux) then
  begin
  Result := false;
  exit;
  end;
  // exibe mensagem
  ExibeMensagem(5,'Por favor, destaque a 1� Via');
  ExibeMensagem(0,'Imprimindo Cupom TEF');
  end;
  // abre o arquivo e impreme dados
  AssignFile(cArquivo,ExtractFilePath(Application.ExeName)+'IMPRIME.000');
  Reset(cArquivo);
  aLinha := 0;
  while not System.EOF(cArquivo) do
  begin
  // exibe mensagem para destacar via
  //        if not(sTEFViaUnica) and (sTipoTEF = 1) then // para TEF Dedicado
  if not(sTEFViaUnica) and (sTipoTEF = 1) and (gLinhaCorte > 0) then // para TEF Dedicado
  begin
  if gLinhaCorte = aLinha then
  begin
  aux := #13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aux) then
  begin
  Result := false;
  exit;
  end;
  // exibe mensagem
  ExibeMensagem(5,'Por favor, destaque a 1� Via');
  ExibeMensagem(0,'Imprimindo Cupom TEF');
  end;
  end;
  // le linha do arquivo
  ReadLn(cArquivo,cLinhaArquivo);
  // via completa
  if gImprimeCampo29 then
  begin
  if StrToInt(copy(cLinhaArquivo,1,3)) = 29 then
  begin
  Inc(aLinha);
  aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
  aTextoLinha := RemoveAspas(aTextoLinha);
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aTextoLinha) then
  begin
  Result := false;
  CloseFile(cArquivo);
  exit;
  end;
  end;
  end;
  // via reduzida
  if StrToInt(copy(cLinhaArquivo,1,3)) = 711 then
  begin
  TemCampo711 := true;
  aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
  aTextoLinha := RemoveAspas(aTextoLinha);
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aTextoLinha) then
  begin
  Result := false;
  CloseFile(cArquivo);
  exit;
  end;
  end;
  // via diferenciada para o cliente
  if (StrToInt(copy(cLinhaArquivo,1,3)) = 713) and (not TemCampo711) then
  begin
  aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
  aTextoLinha := RemoveAspas(aTextoLinha);
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aTextoLinha) then
  begin
  Result := false;
  CloseFile(cArquivo);
  exit;
  end;
  end;
  // exibe mensagem para destacar via
  aMudaViaEspecial := false;
  if (not(sTEFViaUnica)) and (StrToInt(copy(cLinhaArquivo,1,3)) = 714) then
  aMudaViaEspecial := true;
  if (not(gImprimeCampo29)) and (StrToInt(copy(cLinhaArquivo,1,3)) = 714) then
  aMudaViaEspecial := true;
  // mudan�a entra as vias
  if aMudaViaEspecial then
  begin
  aux := #13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aux) then
  begin
  Result := false;
  exit;
  end;
  // exibe mensagem
  ExibeMensagem(5,'Por favor, destaque a 1� Via');
  ExibeMensagem(0,'Imprimindo Cupom TEF');
  end;
  // via diferenciada para o estabelecimento
  if StrToInt(copy(cLinhaArquivo,1,3)) = 715 then
  begin
  aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
  aTextoLinha := RemoveAspas(aTextoLinha);
  if not ImprimeLinhaDocNaoFiscalECF(pTipoRel,aTextoLinha) then
  begin
  Result := false;
  CloseFile(cArquivo);
  exit;
  end;
  end;
  end;
  CloseFile( cArquivo );
  end;
  end;
  // fecha relatorio
  if not FechaCupomNaoFiscalECF then
  begin
  //    Result := false;
  Exit;
  end;

  end;
}

function TFuncoesPAF.AbrePortaSerial: Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.Operador := gCaixa;
    if gModeloECF = 0 then
    begin
      MessageDlg('� necess�rio configurar uma impressora!', mtInformation, [mbOK], 0);
      Application.Terminate;
    end;
    DmAcBr.ACBrECF1.Modelo := TACBrECFModelo(gModeloECF);
    DmAcBr.ACBrECF1.Porta := gPortaECF;
    // caso n�o seja Sweda n�o passa os parametros abaixo
    if gModeloECF <> 3 then
    begin
      DmAcBr.ACBrECF1.Device.Baud := gBaudRateECF;
      DmAcBr.ACBrECF1.Device.Data := gDataBitsECF;

      DmAcBr.ACBrECF1.Device.Parity := TACBrSerialParity(gParityECF);
      DmAcBr.ACBrECF1.Device.Stop := TACBrSerialStop(gStopBitsECF);
      DmAcBr.ACBrECF1.Device.HandShake := TACBrHandShake(gHandShakingECF);

      DmAcBr.ACBrECF1.Device.HardFlow := gHardFlowECF;
      DmAcBr.ACBrECF1.Device.SoftFlow := gSoftFlowECF;
    end;
    //
    DmAcBr.ACBrECF1.Ativar;
  except
    // if gModeloECF <> 13 then
    begin
      MessageDlg('Erro ao comunicar com ECF. Verifique o ECF!', mtError, [mbOK], 0);
      result := false;
    end;
  end;

end;

procedure TFuncoesPAF.FechaPortaSerial;
begin
  DmAcBr.ACBrECF1.Desativar;

end;

procedure TFuncoesPAF.AbreGavetaDinheiro;
begin
  try
    if not DmAcBr.ACBrECF1.GavetaAberta then
      DmAcBr.ACBrECF1.AbreGaveta;
  except
    MessageDlg('Erro de cominuca��o com a impressora!!!', mtError, [mbOK], 0);
  end;

end;

procedure TFuncoesPAF.EfetuaSangria(pValor: String);
begin
  try
    if StrToFloat(pValor) > 0 then
    begin
      DmAcBr.ACBrECF1.Sangria(StrToFloat(pValor), '');
      GravaDadosDocECF('CN')
    end;
  except
    ShowMessage('Falha de comunica��o com ECF!');
  end;

end;

procedure TFuncoesPAF.EfetuaSuprimento(pValor: String);
begin
  try
    if StrToFloat(pValor) > 0 then
    begin
      DmAcBr.ACBrECF1.Suprimento(StrToFloat(pValor), '');
      GravaDadosDocECF('CN')
    end;
  except
    ShowMessage('Falha de comunica��o com ECF!');
  end;

end;

procedure TFuncoesPAF.LeituraX(Arquivo: Boolean = false; NomeArquivo: String = '');
begin
  try
    if Arquivo then
      DmAcBr.ACBrECF1.LeituraXSerial(NomeArquivo)
    else
      DmAcBr.ACBrECF1.LeituraX;
  except
    ShowMessage('Falha de comunica��o com ECF!');
  end;

end;

function TFuncoesPAF.AbreCupomFiscal: Boolean;
begin
  result := True;
  try
    if Trim(ClienteCupom.CPF) <> '11111111111' then
    begin
      DmAcBr.ACBrECF1.AbreCupom(ClienteCupom.CPF, ClienteCupom.Cliente, ClienteCupom.Endereco + ',' + ClienteCupom.Numero + '-' + ClienteCupom.Bairro);
    end
    else
    begin
      DmAcBr.ACBrECF1.AbreCupom;
    end;
  except
    if gModeloECF <> 13 then
    begin
      MessageDlg('Erro ao abrir cupom fiscal. Verifique o ECF!', mtError, [mbOK], 0);
      result := false;
    end;
  end;

end;

function TFuncoesPAF.ImprimeItemECF(pUnid, pEAN, pDesc, pAliq, pTipo, tipoDescAcre: String; pQuant, pVal, pDesconto: Double): Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.VendeItem(pEAN, pDesc, pAliq, pQuant, pVal, pDesconto, pUnid, '$', tipoDescAcre);
  except
    result := false;
  end;
end;

function TFuncoesPAF.CancelarItemCupom(pItem: String): Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.CancelaItemVendido(StrToInt(pItem));
  except
    result := false;
  end;

end;

function TFuncoesPAF.IniciaFechamentoCupom(pTipo, pVal: String): Boolean;
var
  auxEpson: Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.SubtotalizaCupom(StrToFloat(pVal), '');
  except
    if gModeloECF <> 13 then
      result := false;
  end;

end;

function TFuncoesPAF.RegistraFormaPagtoCupom(pFormaPag: String; pVal: Double): Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.EfetuaPagamento(pFormaPag, pVal);
  except
    if gModeloECF <> 13 then
      result := false;
  end;

end;

function TFuncoesPAF.TerminaFechamentoCupom(pMensagem: String): Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.FechaCupom(pMensagem);
  except
    if gModeloECF <> 13 then
      result := false;
  end;

end;

function TFuncoesPAF.RetornaDataHoraECF(var Mensagem, pData, pHora: String): Boolean;
var
  aux: String;
begin
  result := True;
  try
    pData := FormatDateTime('DD/MM/YYYY', DmAcBr.ACBrECF1.DataHora);
    pHora := FormatDateTime('HH:MM:SS', DmAcBr.ACBrECF1.DataHora);
  except
    Mensagem := 'Falha na comunica��o com o ECF';
    result := false;
  end;

end;

constructor TFuncoesPAF.CrieInstancia;
begin

end;

destructor TFuncoesPAF.DestruaInstancia;
begin

end;

procedure TFuncoesPAF.AbreJornadaFiscal(pValor: Double);
begin
  try
    DmAcBr.ACBrECF1.LeituraX;
    if pValor > 0 then
    begin
      DmAcBr.ACBrECF1.Suprimento(pValor, '');
      GravaDadosDocECF('CN')
    end
  except
    ShowMessage('Erro ao comunicar com a impressora!');
  end;

end;

procedure TFuncoesPAF.FecharAbreJornadaFiscal(DataHora: TDateTime = 0);
begin
  try
    DmAcBr.ACBrECF1.ReducaoZ(DataHora);
  except
    ShowMessage('Erro ao comunicar com a impressora!');
  end;

end;

function TFuncoesPAF.AbreCupomNaoFiscalECF(pTipoRel: Integer; pFormaPag, pCOO: String; pValor: Double): Boolean;
begin
  result := True;
  if pTipoRel = 0 then
    DmAcBr.ACBrECF1.AbreCupomVinculado(pCOO, pFormaPag, pValor)
  else if pTipoRel = 1 then
  begin
    if gIndiceGerencial > 0 then
      DmAcBr.ACBrECF1.AbreRelatorioGerencial(gIndiceGerencial)
    else
      DmAcBr.ACBrECF1.AbreRelatorioGerencial;
  end

end;

function TFuncoesPAF.FechaCupomNaoFiscalECF: Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.FechaRelatorio
  except
    result := false;
  end;

end;

function TFuncoesPAF.ImprimeLinhaDocNaoFiscalECF(pTipoRel: Integer; pTexto: String): Boolean;
begin
  result := True;
  try
    if pTipoRel = 0 then
      DmAcBr.ACBrECF1.LinhaCupomVinculado(pTexto)
    else if pTipoRel = 1 then
      DmAcBr.ACBrECF1.LinhaRelatorioGerencial(pTexto);
  except
    // MessageDlg('Erro ao comunicar com a impressora!!!', mtWarning, [mbOK], 0);
    result := false;
  end;

end;

procedure TFuncoesPAF.CancelarCupomNaoFiscal;
begin
  DmAcBr.ACBrECF1.CancelaNaoFiscal;
end;

procedure TFuncoesPAF.AdicionarAliquotaECF(pAliq: string; pTipo: Integer);
begin
  try
    DmAcBr.ACBrECF1.ProgramaAliquota(StrToFloat(pAliq));
  except
    MessageDlg('Erro ao cadastrar aliquota!!!', mtWarning, [mbOK], 0);
  end;

end;

procedure TFuncoesPAF.AdicionarFormaPagtoECF(pFormaPag: String);
begin
  try
    DmAcBr.ACBrECF1.ProgramaFormaPagamento(pFormaPag);
  except
    MessageDlg('Erro ao cadastrar aliquota!!!', mtWarning, [mbOK], 0);
  end;

end;

function TFuncoesPAF.RemoveAspas(pTexto: String): String;
var
  i: Integer;
begin
  result := '';
  for i := 1 to Length(pTexto) do
  begin
    if copy(pTexto, i, 1) <> '"' then
      result := result + copy(pTexto, i, 1);
  end;
end;

function TFuncoesPAF.VerificaJornadaFiscal: Boolean;
begin
  try
    result := True;
    if DmAcBr.ACBrECF1.DataMovimento < SVData then
    begin
      // if DmAcBr.ACBrECF1.Estado <> estLivre then
      begin
        result := false;
        exit;
      end;
    end
    else if DmAcBr.ACBrECF1.DataMovimento = SVData then
    begin
      if DmAcBr.ACBrECF1.Estado = estRequerX then
        result := false;
    end;
  except
    MessageDlg('Erro ao comunicar com a impressora!!!', mtWarning, [mbOK], 0);
    Abort;
  end;

end;

procedure TFuncoesPAF.EmiteReducaoZ;
begin
  if SVData = DmAcBr.ACBrECF1.DataMovimento then
  begin
    MessageDlg('Para emitir a redu��o do dia, use a op��o para fechar a Jornada Fiscal!', mtWarning, [mbOK], 0);
    Abort;
  end;
  try
    DmAcBr.ACBrECF1.ReducaoZ();
  except
    MessageDlg('Erro ao comunicar com a impressora!', mtError, [mbOK], 0)
  end;

end;

procedure TFuncoesPAF.MemoriaFiscal(pInicio, pFim: String; pDatai, pDataf: TDateTime; pTipo, pInterval, pTipoLeitura: Boolean; pNomeArq: String);
var
  Datai, Dataf: TDateTime;
begin
  // ptipo - true  = gerar arquivo
  // false = imprimir relatorio
  // pinterval - true  = por data
  // false = por redu��o
  if not pTipo then // imprimir
  begin
    if pInterval then
      DmAcBr.ACBrECF1.LeituraMemoriaFiscal(pDatai, pDataf, pTipoLeitura) // data
    else
      DmAcBr.ACBrECF1.LeituraMemoriaFiscal(StrToInt(pInicio), StrToInt(pFim), pTipoLeitura); // CRZ
  end
  else
  begin
    if pInterval then
      DmAcBr.ACBrECF1.LeituraMemoriaFiscalSerial(pDatai, pDataf, pNomeArq, pTipoLeitura)
    else
      DmAcBr.ACBrECF1.LeituraMemoriaFiscalSerial(StrToInt(pInicio), StrToInt(pFim), pNomeArq, pTipoLeitura);
  end;

end;

function TFuncoesPAF.EspelhoMFD(pArquivo, pInicio, pFim: String; pDatai, pDataf: TDateTime; pInterval: Boolean): Boolean;
var
  Datai, Dataf: TDateTime;
begin
  // pinterval - true  = por data
  // false = por redu��o
  Datai := StrToDate(FormatDateTime('DD/MM/YYYY', pDatai));
  Dataf := StrToDate(FormatDateTime('DD/MM/YYYY', pDataf));
  result := True;
  try
    if pInterval then
    begin
      // if not gMFDDLL then
      // DmAcBr.ACBrECF1.EspelhoMFD_DLL(Datai,Dataf,pArquivo)
      // else
      DmAcBr.ACBrECF1.PafMF_MFD_Espelho(Datai, Dataf, pArquivo);
    end
    else
    begin
      // if not gMFDDLL then
      // DmAcBr.ACBrECF1.EspelhoMFD_DLL(StrToInt(pInicio),StrToInt(pFim),pArquivo)
      // else
      DmAcBr.ACBrECF1.PafMF_MFD_Espelho(StrToInt(pInicio), StrToInt(pFim), pArquivo);
    end;
  except
    result := false;
  end;

end;

function TFuncoesPAF.ArquivoMF(pArquivo: String): Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.PafMF_ArqMF_Binario(pArquivo);
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      result := false;
    end
  end;

end;

function TFuncoesPAF.ArquivoMFD(pArquivo: String): Boolean;
begin
  result := True;
  try
    DmAcBr.ACBrECF1.PafMF_ArqMFD_Binario(pArquivo);
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      result := false;
    end
  end;

end;

function TFuncoesPAF.Abre_RelatorioGerencial(Indice: Integer): Boolean;
begin
  result := True;
  try
    if Indice > 0 then
      DmAcBr.ACBrECF1.AbreRelatorioGerencial(Indice)
    else
      DmAcBr.ACBrECF1.AbreRelatorioGerencial;
  except
    MessageDlg('Erro ao comunicar com a impressora!!!', mtError, [mbOK], 0);
    result := false;
  end;

end;

procedure TFuncoesPAF.FechaRelatorioGerencial(pTipoDoc: Integer = 0);
var
  aSigla: String;
begin
  try
    DmAcBr.ACBrECF1.FechaRelatorio;
    xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', DmAcBr.ACBrECF1.DataHora));
    xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', DmAcBr.ACBrECF1.DataHora));;
    // verifica a sigla
    case pTipoDoc of
      0:
        aSigla := 'RG';
      1:
        aSigla := 'CM';
    end;
    GravaDadosDocECF(aSigla);
  except
    MessageDlg('Erro ao comunicar com a impressora!!!', mtError, [mbOK], 0);
  end;

end;

procedure TFuncoesPAF.ImprimeRelatorioGerencial(pTexto: String);
begin
  pTexto := pTexto + #13 + #10;
  try
    DmAcBr.ACBrECF1.LinhaRelatorioGerencial(pTexto);
  except
    MessageDlg('Erro ao comunicar com a impressora!!!', mtError, [mbOK], 0);
  end;

end;

function TFuncoesPAF.GravaDadosDocECF(pSigla: String; pTipo: Integer): Boolean;
var
  hora, minuto, segundo, miliseg: word;
begin
  result := True;
  try
    DecodeTime(xHoraECF, hora, minuto, segundo, miliseg);
    case pTipo of
      0:
        begin
          segundo := segundo - 1;
        end;
      1:
        begin
          segundo := segundo - 2;
        end;
    end;
    xHoraECF := EncodeTime(hora, minuto, segundo, miliseg);
    // obtem contadores
    CapturaContadoresECF;
    // grava dados no banco
    sCdsControleDoc.Append;
    sCdsControleDoc.FieldByName('SIGLA').AsString := pSigla;
    sCdsControleDoc.FieldByName('DATA').AsDateTime := xDataECF;
    sCdsControleDoc.FieldByName('HORA').AsDateTime := xHoraECF;
    Grava_Dados(sCdsControleDoc);
  except
    result := false;
  end;

end;

function TFuncoesPAF.GeraMD5PAFECF: String;
var
  Arquivo: TextFile;
  NomeArq, aMD5, RegN: String;
  F: TSearchRec;
  Ret, Cont: Integer;
begin
  try
    sCdsDadosTecnico.Open;
    // Apaga arquivo anterior
    ArqTextoMD5 := ExtractFilePath(Application.ExeName) + 'ArqMD5.txt';
    if FileExists(ArqTextoMD5) then
      DeleteFile(ArqTextoMD5);
    // cria o arquivo TXT na mesma pasta do sistema
    AssignFile(Arquivo, ArqTextoMD5);
    ReWrite(Arquivo);
    try
      // grava Registro N1
      RegN := 'N1';
      RegN := RegN + ZeroEsquerda(sCdsDadosTecnico.FieldByName('CNPJ').AsString, 14);
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('INSCEST').AsString, 1, 14);
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('INSCMUN').AsString, 1, 14);
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('EMPRESA').AsString, 1, 50);
      WriteLn(Arquivo, RegN);
      // Grava Registro N2
      RegN := 'N2';
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('NR_LAUDO_TECNICO').AsString, 1, 10);
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('DENOMINACAO').AsString, 1, 50);
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('VERSAO').AsString, 1, 10);
      WriteLn(Arquivo, RegN);
      // lista todos os arquivo exe da pasta do aplicativo e gera o MF5
      Cont := 0;
      Ret := FindFirst(ExtractFilePath(Application.ExeName) + '\*.exe', faAnyFile, F);
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          if (F.Name <> 'ConfigPDV.exe') and (F.Name <> 'Gestor.exe') and (F.Name <> 'Sintegra.exe') and (F.Name <> 'Relatorios.exe') and
            (F.Name <> 'GeradorSPED.exe') and (F.Name <> 'NFCe.exe') and (F.Name <> 'SPED.exe') and (F.Name <> '_QrCode.dll') or (F.Name <> 'Atualiza_MD5.exe')
          then
          begin
            NomeArq := AlinhaTXT(F.Name, 1, 50);
            if Length(NomeArq) > 50 then
            begin
              NomeArq := UpperCase(copy(NomeArq, Length(NomeArq) - 49, 50));
            end;
            aMD5 := AlinhaTXT(MD5Arquivo(NomeArq), 1, 32);
            RegN := 'N3';
            RegN := RegN + NomeArq + aMD5;
            WriteLn(Arquivo, RegN);
            Inc(Cont);
          end
        end;
        Ret := FindNext(F);
      end;
      // lista as DLL's
      Ret := FindFirst(ExtractFilePath(Application.ExeName) + '\*.dll', faAnyFile, F);
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          // NomeArq := AlinhaTXT(ExtractFilePath(Application.ExeName)+F.Name,1,50);
          NomeArq := AlinhaTXT(F.Name, 1, 50);
          if Length(NomeArq) > 50 then
          begin
            NomeArq := copy(NomeArq, Length(NomeArq) - 49, 50);
          end;
          aMD5 := AlinhaTXT(MD5Arquivo(NomeArq), 1, 32);
          RegN := 'N3';
          RegN := RegN + NomeArq + aMD5;
          WriteLn(Arquivo, RegN);
          Inc(Cont);
        end;
        Ret := FindNext(F);
      end;
    finally
      RegN := 'N9';
      RegN := RegN + ZeroEsquerda(sCdsDadosTecnico.FieldByName('CNPJ').AsString, 14);
      RegN := RegN + AlinhaTXT(sCdsDadosTecnico.FieldByName('INSCEST').AsString, 1, 14);
      RegN := RegN + ZeroEsquerda(IntToStr(Cont), 6);
      WriteLn(Arquivo, RegN);
      FindClose(F);
    end;
    CloseFile(Arquivo);
    Sleep(1000);
    // gera MD5 do arquivo texto
  finally
    DmAcBr.ACBrEAD1.AssinarArquivoComEAD(ArqTextoMD5);
    result := MD5Arquivo(ArqTextoMD5);
  end;

end;

function TFuncoesPAF.AtivarBalancaCaixa: Boolean;
begin
  result := True;
  try
    // se houver conec��o aberta, Fecha a conec��o
    if DmAcBr.ACBrBAL1.Ativo then
      DmAcBr.ACBrBAL1.Desativar;
    // configura porta de comunica��o
    DmAcBr.ACBrBAL1.Modelo := TACBrBALModelo(gModeloBal);
    DmAcBr.ACBrBAL1.Device.HandShake := TACBrHandShake(gHandShake);
    DmAcBr.ACBrBAL1.Device.Parity := TACBrSerialParity(gParity);
    DmAcBr.ACBrBAL1.Device.Stop := TACBrSerialStop(gStopBits);
    DmAcBr.ACBrBAL1.Device.Data := gDataBits;
    DmAcBr.ACBrBAL1.Device.Baud := gBaudRate;
    DmAcBr.ACBrBAL1.Device.Porta := gPortaBal;
    // Conecta com a balan�a
    DmAcBr.ACBrBAL1.Ativar;
  except
    result := false;
  end;

end;

function TFuncoesPAF.CapturarPesoBalanca: Double;
Var
  TimeOut: Integer;
begin
  TimeOut := 2000;
  DmAcBr.ACBrBAL1.LePeso(TimeOut);
  result := DmAcBr.ACBrBAL1.UltimoPesoLido;

end;

procedure TFuncoesPAF.FinalizaLeitura;
begin
  DmAcBr.ACBrBAL1.Desativar;

end;

procedure TFuncoesPAF.Verifica_Campo9;
var
  aux: Integer;
  cLinhaArquivo, aRetTransacao, cCampoArquivo: string;
  cArquivo: TextFile;
begin
  aux := 0;
  if FileExists(gPathRespTEF + 'INTPOS.001') then // Verifica o arquivo INTPOS.001 de resposta.
  begin
    AssignFile(cArquivo, gPathRespTEF + 'INTPOS.001');
    Reset(cArquivo);
    while not System.EOF(cArquivo) do
    begin
      ReadLn(cArquivo, cLinhaArquivo);
      cCampoArquivo := copy(cLinhaArquivo, 1, 3);
      // Verifica se a Transa��o foi Aprovada.
      case StrToInt(cCampoArquivo) of
        9:
          begin
            aRetTransacao := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
            if (aRetTransacao) = 'FF' then
              aux := 1;
          end;
      end;
    end;
    CloseFile(cArquivo);
  end;
  if aux = 1 then
  begin
    DeleteFile(gPathRespTEF + 'INTPOS.001');
    DeleteFile(gPathRespTEF + 'INTPOS.STS');
  end;

end;

procedure TFuncoesPAF.VerificaResolvePendenciaTEF(CdsPedidoFP: TClientDataSet; FechamentoCupom: Boolean; AberturaSistema: Boolean);
var
  ArqTEF, aNSU: String;
  // F: TSearchRec;
  // Ret : Integer;
  aControle: Integer;
  NaoConfirma, sOK: Boolean;
  aux: LongBool;
begin
  if not AberturaSistema then
  begin
    if VerificaImpressoraLigada then
    begin
      if DmAcBr.ACBrECF1.Estado = estRelatorio then
        DmAcBr.ACBrECF1.FechaRelatorio;
    end;
  end;
  //
  NaoConfirma := false;
  sOK := True;
  aNSU := '';
  aControle := RetornaNumCartoesFechamento(CdsPedidoFP.FieldByName('IDPEDIDO').AsInteger);
  while not CdsPedidoFP.EOF do
  begin
    // carrega informa��es de path da bandeira
    CarregarDadosPathTEF;
    // realiza a n�o confirma��o
    if sTipoTef in [0, 2] then // discado
    begin
      if CdsPedidoFP.FieldByName('CONFIRMADO').AsString = 'N' then
      begin
        sOK := NaoConfirmaTransacao(aControle, '');
      end
      else
      begin
        sOK := CancelaTransacaoTEF(aControle, '')
      end;
    end
    else
    begin
      if (not FechamentoCupom) and (VerificaCupomFiscalFechado) then
      begin
        sOK := ConfirmaTransacao(aControle, '');
        if gNSU <> '' then
          aNSU := aNSU + gNSU + ',';
      end
      else
      begin
        sOK := NaoConfirmaTransacao(aControle, '', false);
        if sOK then
          NaoConfirma := True;
      end;
    end;
    // Incrementa o numero do controle
    Dec(aControle);
    CdsPedidoFP.Next;
  end;
  // apaga arquivos TEF
  if sOK then
  begin
    ApagaArquivosTemporariosTEF;
    if sTipoTef = 1 then
    begin
      if NaoConfirma then
        MessageDlg('Transa��o nao efetuada. Favor reter o cupom!!!', mtWarning, [mbOK], 0);
      // exibe mensagem
      if aNSU <> '' then
      begin
        MessageDlg('Transa��o TEF efetuada. Favor re-imprimir �ltimo cupom.' + #13 + #10 + 'NSU(s): ' + copy(aNSU, 1, Length(aNSU) - 1) + #13 + #10 +
          'Para Rede Cielo utilizar �ltimos 6 digitos', mtWarning, [mbOK], 0)
      end;
    end;
  end

end;

function TFuncoesPAF.RestauraAplicativo: Boolean;
begin
  result := True;
  try
    // procura aplica��o em execu��o
    Hwnd := FindWindow('TApplication', pChar(Application.Title));
    // Se aplica��o n�o estiver em uso executa
    if Hwnd <> 0 then
    begin
      SetForegroundWindow(Hwnd);
      Application.Restore;
    end;
  except
    result := false;
  end;

end;

function TFuncoesPAF.VerificaCaracterString(Texto, Caracter: String): Boolean;
var
  i: Integer;
begin
  result := false;
  for i := 0 to Length(Texto) do
  begin
    if copy(Texto, i, 1) = Caracter then
    begin
      result := True;
      break;
    end;
  end;

end;

procedure TFuncoesPAF.CarregarDadosPathTEF;
begin
  gPathReqTEF := gPathTEF + 'Req\';
  gPathRespTEF := gPathTEF + 'Resp\';
  if sTipoTef in [0, 2] then
    gPathGT := gPathTEF + 'Tef_dial.exe'
  else
    gPathGT := gPathTEF + 'ClientSitef.exe';
end;

procedure TFuncoesPAF.MesasTransferidas;
var
  Q: TFDQuery;
  aux: String;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select i.numero_mesa_orig,m.numero_mesa,');
    Q.SQL.Add('i.id_produto,i.descricao,i.preco_total,i.quant');
    Q.SQL.Add('from mesas_abertas m, mesas_itens i');
    Q.SQL.Add('where i.id_mesa = m.id');
    Q.SQL.Add('and m.status = 0');
    Q.SQL.Add('and i.id_mesa_origem > 0');
    Q.Open;
    if not Q.IsEmpty then
    begin
      Abre_RelatorioGerencial(gIndiceTransfMesa);
      // IncrementaContadorCER;
      //
      ImprimeRelatorioGerencial('TRANSFERENCIAS ENTRE MESAS');
      ImprimeRelatorioGerencial('');
      Q.First;
      while not Q.EOF do
      begin
        aux := 'Orig.: ' + Trim(Q.FieldByName('numero_mesa_orig').AsString) + ' ' + 'Dest.: ' + Trim(Q.FieldByName('numero_mesa').AsString) + ' ' + 'Prod.: ' +
          copy(Q.FieldByName('descricao').AsString, 1, 22) + ' ' + 'Qtde: ' + FormatFloat('0.000', Q.FieldByName('quant').AsFloat) + ' ' + 'Valor: ' +
          FormatFloat('0.00', Q.FieldByName('preco_total').AsFloat);
        ImprimeRelatorioGerencial(aux);
        //
        Q.Next;
      end;
      FechaRelatorioGerencial;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TFuncoesPAF.VerificaImpressoraLigada: Boolean;
begin
  result := false;
  try
    DmAcBr.ACBrECF1.Desativar;
    DmAcBr.ACBrECF1.Ativar;
    result := DmAcBr.ACBrECF1.Ativo;
    if not result then
      sControleECFAtivo := 1;
  except
    result := false;
  end;

end;

function TFuncoesPAF.VerificaCupomFiscalFechado: Boolean;
var
  SQL: TFDQuery;
  aCOODoc: Integer;
begin
  SQL := TFDQuery.Create(nil);
  try
    SQL.Connection := ConexaoDados;
    // captura o COO do documentos emitidos
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select max(c.coo) from controledocecf c');
    SQL.SQL.Add('where c.sigla = ' + QuotedStr('RV'));
    SQL.SQL.Add('and c.data = :pdata');
    SQL.Params.ParamByName('pData').AsDate := Date;
    SQL.Open;
    aCOODoc := SQL.FieldByName('max').AsInteger;
    SQL.Close;
    // captura o COO do DAV_PAF
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select p.confirmada from pedido p');
    SQL.SQL.Add('where p.coo = :pCOO');
    SQL.Params.ParamByName('pCOO').AsInteger := aCOODoc;
    SQL.Open;
    // compara
    result := True;
    if SQL.FieldByName('confirmada').AsString = 'N' then
      result := false;
    SQL.Close;
  finally
    FreeAndNil(SQL);
  end;

end;

function TFuncoesPAF.AbreGerenciadorPadrao: Boolean;
var
  Aplicativo: String;
begin
  result := True;
  try
    Aplicativo := gPathGT;
    ApagaArquivosTEF(1);
    ApagaArquivosTemporariosTEF;
    if FileExists(Aplicativo) then
    begin
      WinExec(pAnsiChar(Aplicativo), SW_SHOWMAXIMIZED);
    end;
    Sleep(2000);
    CarregarDadosPathTEF;
  except
    MessageDlg('Applicativo GP n�o encontrado!', mtWarning, [mbOK], 0);
    result := false;
  end;

end;

procedure TFuncoesPAF.EmiteGerencialSangria(pCaixa, pOperador: String; pData: TDateTime; pValor: Double);
begin
  Abre_RelatorioGerencial(gIndiceGerencial);
  ImprimeRelatorioGerencial('              SANGRIA DE CAIXA              ');
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('CAIXA: ' + pCaixa);
  ImprimeRelatorioGerencial('OPERADOR: ' + pOperador);
  ImprimeRelatorioGerencial('DATA: ' + FormatDateTime('DD/MM/YYYY', pData));
  ImprimeRelatorioGerencial('VALOR: ' + FormatFloat('0.00', pValor));
  ImprimeRelatorioGerencial('                                            ');
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.EmiteGerencialVendaPrazo(pData: TDateTime; pValor: Double; pCliente: String);
begin
  Abre_RelatorioGerencial(gIndiceGerencial);
  ImprimeRelatorioGerencial('              VENDA A PRAZO                 ');
  ImprimeRelatorioGerencial('DATA: ' + FormatDateTime('DD/MM/YYYY', pData));
  ImprimeRelatorioGerencial('VALOR DO COMPRA: ' + FormatFloat('0.00', pValor));
  ImprimeRelatorioGerencial('CLIENTE: ' + copy(pCliente, 1, 33));
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('   --------------------------------------   ');
  ImprimeRelatorioGerencial('           ASSINATURA DO CLIENTE            ');
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('     RECONHE�O E PAGAREI A DIVIDA ACIMA     ');
  ImprimeRelatorioGerencial('                                            ');
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.ImprimirFechamentoCaixa(Operador, Caixa: String; Valor: Double);
begin
  Abre_RelatorioGerencial(gIndiceGerencial);
  ImprimeRelatorioGerencial('Relatorio de fechamento de caixa');
  ImprimeRelatorioGerencial('Data Fechamento: ' + FormatDateTime('DD/MM/YYYY', Now));
  ImprimeRelatorioGerencial('Hora Fechamento: ' + FormatDateTime('HH:MM:SS', Now));
  ImprimeRelatorioGerencial('Operador Atual: ' + Operador);
  ImprimeRelatorioGerencial('Caixa aberto para: ' + Caixa);
  ImprimeRelatorioGerencial('Valor informado na sangria: ' + FormatFloat('0.00', Valor));
  FechaRelatorioGerencial;
end;

procedure TFuncoesPAF.RetornaIndiceAliquota(var CdsTotalizador: TClientDataSet);
var
  i: Integer;
begin
  if sControleECFAtivo = 0 then
  begin
    DmAcBr.ACBrECF1.LerTotaisAliquota;
    for i := 0 to DmAcBr.ACBrECF1.Aliquotas.Count - 1 do
    begin
      CdsTotalizador.Append;
      CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda(DmAcBr.ACBrECF1.Aliquotas[i].Indice, 2);
      CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := DmAcBr.ACBrECF1.Aliquotas[i].Aliquota;
      CdsTotalizador.Post;
    end;
  end
  else
  begin
    // 7%
    CdsTotalizador.Append;
    CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda('1', 2);
    CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := 7;
    CdsTotalizador.Post;
    // 12%
    CdsTotalizador.Append;
    CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda('2', 2);
    CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := 12;
    CdsTotalizador.Post;
    // 17%
    CdsTotalizador.Append;
    CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda('3', 2);
    CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := 17;
    CdsTotalizador.Post;
    // 18%
    CdsTotalizador.Append;
    CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda('4', 2);
    CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := 18;
    CdsTotalizador.Post;
    // 25%
    CdsTotalizador.Append;
    CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda('5', 2);
    CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := 25;
    CdsTotalizador.Post;
    // 7.6%
    CdsTotalizador.Append;
    CdsTotalizador.FieldByName('TOTALIZADOR').AsString := ZeroEsquerda('6', 2);
    CdsTotalizador.FieldByName('ALIQUOTA').AsFloat := 7.6;
    CdsTotalizador.Post;
  end;

end;

function TFuncoesPAF.RetornaIDEmpresa: Integer;
var
  Q: TFDQuery;
begin
  result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select d.caixa,d.idempresa from dados_pdv d');
    Q.SQL.Add('where d.serial_ecf = :pSerial');
    Q.Params.ParamByName('pSerial').AsString := DmAcBr.ACBrECF1.NumSerie;
    Q.Open;
    if not Q.IsEmpty then
    begin
      result := Q.FieldByName('idempresa').AsInteger;
      gCaixa := Q.FieldByName('caixa').AsString;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TFuncoesPAF.RetornaSaldoCaixa(pCaixa: String; pData: TDateTime): Double;
var
  Q: TFDQuery;
begin
  result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select c.id, (select sum(m.valor) from caixa_mov m');
    Q.SQL.Add('              where m.id_caixa = c.id');
    Q.SQL.Add('              and m.dc = ' + QuotedStr('C') + ') as credito,');
    Q.SQL.Add('             (select sum(m.valor) from caixa_mov m');
    Q.SQL.Add('              where m.id_caixa = c.id');
    Q.SQL.Add('              and m.dc = ' + QuotedStr('D') + ') as dedito');
    Q.SQL.Add('from caixa c');
    Q.SQL.Add('where c.data_abertura = :pData');
    Q.SQL.Add('and c.caixa = :pCaixa');
    Q.SQL.Add('and c.data_fechamento is null');
    Q.Params.ParamByName('pCaixa').AsString := pCaixa;
    Q.Params.ParamByName('pData').AsDate := pData;
    Q.Open;
    result := Q.FieldByName('credito').AsFloat - Q.FieldByName('dedito').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TFuncoesPAF.TransasaoTEFConfirmada(pArquivo: String): Boolean;
var
  cLinhaArquivo, cCampoArquivo, aNSU, aNomeRede: string;
  cArquivo: TextFile;
  Q: TFDQuery;
begin
  result := false;
  aNSU := '';
  aNomeRede := '';
  // carrega arquivo com dados pendentes para n�o confirma��o
  if FileExists(pArquivo) then
  begin
    AssignFile(cArquivo, pArquivo);
    result := True;
    Reset(cArquivo);
    while not System.EOF(cArquivo) do
    begin
      ReadLn(cArquivo, cLinhaArquivo);
      cCampoArquivo := copy(cLinhaArquivo, 1, 3);
      if StrToInt(cCampoArquivo) = 10 then
      begin
        aNomeRede := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
      end;
      if StrToInt(cCampoArquivo) = 12 then
      begin
        aNSU := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
      end;
    end;
    CloseFile(cArquivo);
    // verifica gerenciador padr�o
    try
      Q := TFDQuery.Create(nil);
      with Q do
      begin
        Connection := ConexaoDados;
        Close;
        SQL.Clear;
        SQL.Add('select p.confirmado from pedido_formapag p');
        SQL.Add('where p.nome_rede = ' + QuotedStr(aNomeRede));
        SQL.Add('and p.nsu_doc = ' + QuotedStr(aNSU));
        Open;
        if FieldByName('CONFIRMADO').AsString = 'S' then
          result := True;
      end;
    finally
      FreeAndNil(Q);
    end;
  end
end;

procedure TFuncoesPAF.AdicionarRelatorioGerencialECF(pDescricao: String);
begin
  try
    DmAcBr.ACBrECF1.ProgramaRelatoriosGerenciais(pDescricao);
  except
    MessageDlg('Erro ao cadastrar indice!!!', mtWarning, [mbOK], 0);
  end;

end;

function TFuncoesPAF.RetornaIDEmpresaCaixa: Integer;
var
  Q: TFDQuery;
begin
  result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select d.idempresa from dados_pdv d');
    Q.SQL.Add('where d.caixa = :pCaixa');
    Q.Params.ParamByName('pCaixa').AsString := gCaixa;
    Q.Open;
    result := Q.FieldByName('idempresa').AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.CapturaDadosECF;
var
  aDataHoraECF: TDateTime;
begin
  sDadosECF.Serial := DmAcBr.ACBrECF1.NumSerie;
  sDadosECF.GT := DmAcBr.ACBrECF1.GrandeTotal;
  aDataHoraECF := DmAcBr.ACBrECF1.DataHora;
  sDadosECF.Data := StrToDate(FormatDateTime('DD/MM/YYYY', aDataHoraECF));
  sDadosECF.hora := StrToTime(FormatDateTime('HH:MM:SS', aDataHoraECF));
end;

procedure TFuncoesPAF.GravaPerdaCombustivelImpresso(pID: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update tanque_perdas tq set');
    Q.SQL.Add('tq.impresso = 1');
    Q.SQL.Add('where tq.id = :pID');
    Q.Params.ParamByName('pID').AsInteger := pID;
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.GravaRegistrodePerdaImpresso(pID, pImpresso: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update bico_comunica bi set');
    Q.SQL.Add('bi.impresso = ' + IntToStr(pImpresso));
    Q.SQL.Add('where bi.id = :pID');
    Q.Params.ParamByName('pID').AsInteger := pID;
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.LimpaInformacaoPerdaComunicacao;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('delete from bico_comunica');
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.RelatorioAfericao(Codigo: Integer; Bico, Combustivel: String; quantiade, EI, EF: Double);
var
  Texto: String;
begin
  Texto := '#AB:B' + Bico + ' EI' + ZeroEsquerda(FormatFloat('0.000', EI), 11) + ' EF' + ZeroEsquerda(FormatFloat('0.000', EF), 11) + ' V' +
    FormatFloat('0.000', quantiade);
  Abre_RelatorioGerencial(gIndiceAfericao);
  ImprimeRelatorioGerencial('AFERICAO DE BICO                            ');
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('COD.PROD: ' + IntToStr(Codigo));
  ImprimeRelatorioGerencial('NUM.BICO: ' + Bico);
  ImprimeRelatorioGerencial('ESPPECIE: ' + copy(Combustivel, 1, 32));
  ImprimeRelatorioGerencial('QUANTIDADE: ' + FormatFloat('0.000', quantiade));
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial(Texto);
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.RelatorioDescontinuidadeEncerrante(Bomba, Bico, Motivo, Justifica, Justifica1, Justifica2, Medidas, Medidas1, Medidas2: String;
  Data, hora: TDateTime; EI, EF: Double);
var
  Texto: String;
  IDProduto: Integer;
begin
  Texto := '#DE:B' + ZeroEsquerda(Bico, 2) + ' EI' + ZeroEsquerda(FormatFloat('0.000', EF), 11) + ' EF' + ZeroEsquerda(FormatFloat('0.000', EI), 11);
  Abre_RelatorioGerencial(gIndiceDescontinua);
  ImprimeRelatorioGerencial('DESCONTINUIDADE DE ENCERRANTES              ');
  ImprimeRelatorioGerencial('                                            ');
  ImprimeRelatorioGerencial('Numero Bomba: ' + Bomba);
  ImprimeRelatorioGerencial('Numero Bico: ' + Bico);
  ImprimeRelatorioGerencial('Data Ocorrencia: ' + FormatDateTime('DD/MM/YYYY', Data));
  ImprimeRelatorioGerencial('Hora Ocorrencia: ' + FormatDateTime('HH:MM:SS', hora));
  ImprimeRelatorioGerencial('Motivo Ocorrencia: ' + Motivo);
  ImprimeRelatorioGerencial('Justificativa: ');
  ImprimeRelatorioGerencial(Justifica);
  ImprimeRelatorioGerencial(Justifica1);
  ImprimeRelatorioGerencial(Justifica2);
  ImprimeRelatorioGerencial('Medidas: ');
  ImprimeRelatorioGerencial(Medidas);
  ImprimeRelatorioGerencial(Medidas1);
  ImprimeRelatorioGerencial(Medidas2);
  ImprimeRelatorioGerencial(Texto);
  FechaRelatorioGerencial;
  // #DE:B01 EI0678198,668 EF0000000,000

end;

procedure TFuncoesPAF.RelatorioEstoqueCombustivel(CdsTanqueEstoque: TClientDataSet);
var
  Texto, AuxVol: String;
begin
  Abre_RelatorioGerencial(gIndiceEstFisico);
  ImprimeRelatorioGerencial('ESTOQUE FISICO DE COMBUST�VEIS');
  with CdsTanqueEstoque do
  begin
    while not EOF do
    begin
      AuxVol := RetornaFormatoMilhar(FieldByName('EST_FISICO').AsFloat);
      Texto := '#EF:TA=' + ZeroEsquerda(FieldByName('TANQUE_NUMERO').AsString, 2) + ' ' + 'VOL=' + AuxVol + ' ' + FieldByName('DESCRICAO').AsString;
      // #EF:TA=01 VOL=22.839,452 GASOLINA COMUM
      ImprimeRelatorioGerencial(Texto);
      Next;
    end;
  end;
  FechaRelatorioGerencial;

end;

{
  procedure TFuncoesPAF.RelatorioEstoqueCombustivel(
  CdsTanqueEstoque: TClientDataSet);
  var Texto : String;
  begin
  Abre_RelatorioGerencial(gIndiceEstFisico);
  ImprimeRelatorioGerencial('ESTOQUE FISICO DE COMBUST�VEIS');
  with CdsTanqueEstoque do
  begin
  while not Eof do
  begin
  Texto := '#EF:TA'+FieldByName('TANQUE_NUMERO').AsString+'VOL'+
  FormatFloat('0.000',FieldByName('ESTOQUE').AsFloat)+' '+
  FieldByName('DESCRICAO').AsString;
  ImprimeRelatorioGerencial(Texto);
  Next;
  end;
  end;
  FechaRelatorioGerencial;

  end;
}
procedure TFuncoesPAF.RelatorioPerdaCombustive(CdsTanquePerda: TClientDataSet);
var
  Texto, Volume: String;
begin
  Abre_RelatorioGerencial(gIndicePerdaEst);
  ImprimeRelatorioGerencial('PERDA DE COMBUST�VEIS');
  with CdsTanquePerda do
  begin
    while not EOF do
    begin
      Volume := RetornaFormatoMilhar(FieldByName('QUANTIDADE').AsFloat);
      Texto := '#PE:TQ=' + ZeroEsquerda(FieldByName('TANQUE_NUMERO').AsString, 2) + ' ' + 'VOL=' + Volume + ' ' + FieldByName('DESCRICAO').AsString;
      ImprimeRelatorioGerencial(Texto);
      // grava o registro como impresso
      GravaPerdaCombustivelImpresso(FieldByName('ID').AsInteger);
      Next;
    end;
  end;
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.RelatorioPerdaComunicacao(CdsBicoComunica: TClientDataSet);
var
  IDProduto: Integer;
begin
  Abre_RelatorioGerencial(gIndicePerdaCom);
  ImprimeRelatorioGerencial('ALERTA: PERDA DE COMUNICACAO                ');
  ImprimeRelatorioGerencial('                                            ');
  with CdsBicoComunica do
  begin
    while not EOF do
    begin
      ImprimeRelatorioGerencial('COD.PROD: ' + FieldByName('ID_PRODUTO').AsString);
      ImprimeRelatorioGerencial('BICO: ' + FieldByName('Num_Bico').AsString + '-' + copy(FieldByName('Combustivel').AsString, 1, 35));
      ImprimeRelatorioGerencial('INICIO: ' + FormatDateTime('hh:mm:ss', FieldByName('Inicio').AsDateTime));
      ImprimeRelatorioGerencial('#PC:B' + ZeroEsquerda(FieldByName('Num_Bico').AsString, 2) + ' EF' +
        ZeroEsquerda(FormatFloat('0.000', FieldByName('EF').AsFloat), 11));
      ImprimeRelatorioGerencial('                                            ');
      // grava o registro como impresso
      GravaRegistrodePerdaImpresso(FieldByName('ID').AsInteger, 1);
      Next;
    end;
  end;
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.RelatorioRetornoComunicacao(CdsBicoComunica: TClientDataSet);
var
  aTempo: TDateTime;
  IDProduto: Integer;
  // EncConcentrador : Double;
begin
  Abre_RelatorioGerencial(gIndiceRetCom);
  ImprimeRelatorioGerencial('ALERTA: RETORNO DE COMUNICACAO              ');
  ImprimeRelatorioGerencial('                                            ');
  with CdsBicoComunica do
  begin
    while not EOF do
    begin
      // captura o encerrante do concentrador
      // EncConcentrador := DmPosto.RetornaEncBicoConcentrador(FieldByName('Num_Bico').AsString);
      // EncConcentrador := TruncaValor(EncConcentrador,3);
      // if EncConcentrador = 0 then
      // EncConcentrador := FieldByName('EI').AsFloat;
      //
      aTempo := FieldByName('Fim').AsDateTime - FieldByName('Inicio').AsDateTime;
      ImprimeRelatorioGerencial('COD.PROD: ' + FieldByName('ID_PRODUTO').AsString);
      ImprimeRelatorioGerencial('BICO:' + FieldByName('Num_Bico').AsString + '-' + copy(FieldByName('Combustivel').AsString, 1, 35));
      ImprimeRelatorioGerencial('INICIO: ' + FormatDateTime('hh:mm:ss', FieldByName('Inicio').AsDateTime) + ' ' + 'FIM: ' + FormatDateTime('hh:mm:ss',
        FieldByName('Fim').AsDateTime) + ' ' + 'TEMPO: ' + FormatDateTime('hh:mm:ss', aTempo));
      // ImprimeRelatorioGerencial('#RC:B'+ZeroEsquerda(FieldByName('Num_Bico').AsString,2)+' EF'+ZeroEsquerda(FormatFloat('0.000',EncConcentrador),11));
      ImprimeRelatorioGerencial('#RC:B' + ZeroEsquerda(FieldByName('Num_Bico').AsString, 2) + ' EF' +
        ZeroEsquerda(FormatFloat('0.000', FieldByName('EI').AsFloat), 11));
      ImprimeRelatorioGerencial('                                            ');
      // grava o registro como impresso
      GravaRegistrodePerdaImpresso(FieldByName('ID').AsInteger, 2);
      Next;
    end;
  end;
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.RelatorioSemComunicacao(CdsBicoComunica: TClientDataSet);
var
  aTempo1, aTempo2: TTime;
  IDProduto: Integer;
  aTempo: String;
  hora, Hora1, Hora2, Min, Min1, Min2, Seg, Seg1, Seg2, MSeg, MSeg1, MSeg2: word;
begin
  Abre_RelatorioGerencial(gIndiceSemCom);
  ImprimeRelatorioGerencial('ALERTA: SEM COMUNICACAO              ');
  ImprimeRelatorioGerencial('                                            ');
  with CdsBicoComunica do
  begin
    while not EOF do
    begin
      if FieldByName('DATA_MOVIMENTO').AsDateTime < DmAcBr.ACBrECF1.DataMovimento then
      begin
        aTempo1 := FieldByName('Inicio').AsDateTime - StrToTime('23:59:59');
        DecodeTime(aTempo1, Hora1, Min1, Seg1, MSeg1);

        aTempo2 := StrToTime(FormatDateTime('hh:mm:ss', xHoraECF));
        DecodeTime(aTempo2, Hora2, Min2, Seg2, MSeg2);

        Seg := Seg1 + Seg2;
        if Seg > 60 then
        begin
          Min1 := Min1 + 1;
          Seg := Seg - 60;
        end;

        Min := Min1 + Min2;
        if Min > 60 then
        begin
          Hora1 := Hora1 + 1;
          Min := Min - 60;
        end;

        hora := Hora1 + Hora2;

        aTempo := IntToStr(hora) + ':' + IntToStr(Min) + ':' + IntToStr(Seg);
      end
      else
      begin
        aTempo := TimeToStr(xHoraECF - FieldByName('Inicio').AsDateTime);
      end;
      // aTempo := FieldByName('Fim').AsDateTime - FieldByName('Inicio').AsDateTime;
      ImprimeRelatorioGerencial('COD.PROD: ' + FieldByName('ID_PRODUTO').AsString);
      ImprimeRelatorioGerencial('BICO: ' + FieldByName('Num_Bico').AsString + '-' + copy(FieldByName('Combustivel').AsString, 1, 35));
      ImprimeRelatorioGerencial('INICIO: ' + FormatDateTime('hh:mm:ss', FieldByName('Inicio').AsDateTime) + ' ' + 'FIM: ' + FormatDateTime('hh:mm:ss',
        xHoraECF) + ' ' +
        // 'FIM: '+FormatDateTime('hh:mm:ss',FieldByName('Fim').AsDateTime)+' '+
        'TEMPO: ' + aTempo);
      // 'TEMPO: '+FormatDateTime('hh:mm:ss',aTempo));
      ImprimeRelatorioGerencial('#SC:B' + ZeroEsquerda(FieldByName('Num_Bico').AsString, 2) + ' EF' +
        ZeroEsquerda(FormatFloat('0.000', FieldByName('EF').AsFloat), 11));
      ImprimeRelatorioGerencial('                                            ');
      Next;
    end;
  end;
  FechaRelatorioGerencial;

end;

{
  procedure TFuncoesPAF.RelatorioSemComunicacao(
  CdsBicoComunica: TClientDataSet);
  var aTempo : TDateTime;
  IDProduto : Integer;
  begin
  Abre_RelatorioGerencial(gIndiceSemCom);
  ImprimeRelatorioGerencial('ALERTA: SEM COMUNICACAO              ');
  ImprimeRelatorioGerencial('                                            ');
  with CdsBicoComunica do
  begin
  while not Eof do
  begin
  aTempo := xHoraECF - FieldByName('Inicio').AsDateTime;
  //      aTempo := FieldByName('Fim').AsDateTime - FieldByName('Inicio').AsDateTime;
  ImprimeRelatorioGerencial('COD.PROD: '+FieldByName('ID_PRODUTO').AsString);
  ImprimeRelatorioGerencial('BICO: '+FieldByName('Num_Bico').AsString+'-'+Copy(FieldByName('Combustivel').AsString,1,35));
  ImprimeRelatorioGerencial('INICIO: '+FormatDateTime('hh:mm:ss',FieldByName('Inicio').AsDateTime)+' '+
  'FIM: '+FormatDateTime('hh:mm:ss',xHoraECF)+' '+
  //                                'FIM: '+FormatDateTime('hh:mm:ss',FieldByName('Fim').AsDateTime)+' '+
  'TEMPO: '+FormatDateTime('hh:mm:ss',aTempo));
  ImprimeRelatorioGerencial('#SC:B'+ZeroEsquerda(FieldByName('Num_Bico').AsString,2)+' EF'+ZeroEsquerda(FormatFloat('0.000',FieldByName('EF').AsFloat),11));
  ImprimeRelatorioGerencial('                                            ');
  Next;
  end;
  end;
  FechaRelatorioGerencial;

  end;
}

function TFuncoesPAF.RetornaUltimoEncerranteBico(pBico: String): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select enc_final from proc_retorna_enc_final_real(' + QuotedStr(pBico) + ')');
    {
      Q.SQL.Add('select max(a.encerrante) as encerrante');
      Q.SQL.Add('from abastecimentos a');
      Q.SQL.Add('where a.num_bico = '+QuotedStr(pBico));
    }
    Q.Open;
    result := Q.FieldByName('enc_final').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TFuncoesPAF.VerificaRegistro1320(pBico: String; pData: TDateTime): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select p.data');
    Q.SQL.Add('from placas_abastec p, bicos_abastec bi');
    Q.SQL.Add('where p.id_bico = bi.id');
    Q.SQL.Add('and bi.bico_concentrador = :pBico');
    Q.SQL.Add('and p.data = :pData');
    Q.Params.ParamByName('pBico').AsString := pBico;
    Q.Params.ParamByName('pData').AsDate := pData;
    Q.Open;
    result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TFuncoesPAF.RetornaTotalAbastcimentoCupom(pIDCupom: Integer): Integer;
var
  Q: TFDQuery;
begin
  result := 0;
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select count(i.idpedido) as total');
      SQL.Add('from pedido_itens i, produtos p');
      SQL.Add('where p.id = i.idproduto');
      SQL.Add('and i.idpedido = ' + IntToStr(pIDCupom));
      SQL.Add('and p.combustivel = ' + QuotedStr('S'));
      Open;
      result := FieldByName('total').AsInteger;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.EmiteGerencialVidaLink(Texto, pCOO, pFormaPag: String; pValor: Double);
var
  aOK: Boolean;
begin
  try
    aOK := True;
    DmAcBr.ACBrECF1.AbreCupomVinculado(pCOO, pFormaPag, pValor);
  except
    aOK := false;
  end;
  // se n�o abrir o vinculado abre o gerencial
  if not aOK then
    DmAcBr.ACBrECF1.AbreRelatorioGerencial();
  // imprime a autoriza��o
  ImprimeRelatorioGerencial(Texto);
  // fecha o vinculado
  FechaRelatorioGerencial;

end;

procedure TFuncoesPAF.MesasAbertas(pCdsMesas: TClientDataSet);
var
  aux: String;
begin
  if not pCdsMesas.IsEmpty then
  begin
    Abre_RelatorioGerencial(gIndiceMesaAbr);
    // IncrementaContadorCER;
    //
    ImprimeRelatorioGerencial('MESAS ABERTAS');
    ImprimeRelatorioGerencial('');
    pCdsMesas.First;
    while not pCdsMesas.EOF do
    begin
      aux := 'Numero: ' + Trim(pCdsMesas.FieldByName('numero_mesa').AsString) + ' ' + 'Data: ' +
        FormatDateTime('dd/mm/yyyy', pCdsMesas.FieldByName('data').AsDateTime) + ' ' + 'Hora: ' +
        FormatDateTime('hh:mm:ss', pCdsMesas.FieldByName('hora').AsDateTime);
      ImprimeRelatorioGerencial(aux);
      //
      pCdsMesas.Next;
    end;
    FechaRelatorioGerencial;
  end;

end;

procedure TFuncoesPAF.EmiteGerencialVendaPrazoNFCe(pData: TDateTime; pValor: Double; pCliente: String);
var
  prn: TCharPrinter;
begin
  // Cria o objeto de impressora
  try
    prn := TCharPrinter.Create;

    // Abre o documento para impress�o
    prn.OpenDoc('');

    // Inicializa a impressora
    prn.SendData(#27'@');

    // Envia seu texto
    prn.SendData('              VENDA A PRAZO                 ');
    prn.SendData('DATA: ' + FormatDateTime('DD/MM/YYYY', pData) + #13 + #10);
    prn.SendData('VALOR DO COMPRA: ' + FormatFloat('0.00', pValor) + #13 + #10);
    prn.SendData('CLIENTE: ' + copy(pCliente, 1, 33) + #13 + #10);
    prn.SendData('                                            ' + #13 + #10);
    prn.SendData('                                            ' + #13 + #10);
    prn.SendData('                                            ' + #13 + #10);
    prn.SendData('   --------------------------------------   ' + #13 + #10);
    prn.SendData('           ASSINATURA DO CLIENTE            ' + #13 + #10);
    prn.SendData('                                            ' + #13 + #10);
    prn.SendData('     RECONHE�O E PAGAREI A DIVIDA ACIMA     ' + #13 + #10);
    prn.SendData('                                            ' + #13 + #10);

    // Avan�o de p�gina
    prn.SendData(#12);

    // fecha o relatorio
    prn.CloseDoc;
  finally
    prn.Free;
  end;

end;

procedure TFuncoesPAF.EmiteGerencialVidaLinkNFCe(Texto, pCOO, pFormaPag: String; pValor: Double);
var
  aOK: Boolean;
  prn: TCharPrinter;
begin
  // Abre o documento para impress�o
  try
    aOK := True;
    prn := TCharPrinter.Create;
    prn.OpenDoc('');
    prn.SendData(#27'@');
  except
    aOK := false;
  end;
  // imprime a autoriza��o
  try
    prn.SendData('              CUPOM VIDALINK                ');
    prn.SendData(Texto + #13 + #10);
  except
    aOK := false;
  end;
  // fecha o vinculado
  try
    prn.SendData(#12);
    prn.CloseDoc;
  except
    aOK := false;
  end;
end;

function TFuncoesPAF.ImprimeTransacaoTEFNFCe(pTipoRel, pVias, pControle: Integer; pFormaPag, pCOO: String; pValor: Double): Boolean;
var
  cLinhaArquivo, aTextoLinha, aux, aArquivo: string;
  cArquivo: TextFile;
  aLinha, i: Integer;
  auxBol: LongBool;
  prn: TCharPrinter;
begin
  // pTipoRel = 0 - Comprovante de Credito
  // 1 - Relatorio Gerencial
  result := True;
  Sleep(1000);
  aArquivo := ExtractFilePath(ArqTemp) + 'INTPOS' + IntToStr(pControle) + '.001';
  //
  if FileExists(aArquivo) then
  begin
    if FileExists(ExtractFilePath(Application.ExeName) + 'IMPRIME.000') then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
    CopyFile(pChar(aArquivo), pChar(ExtractFilePath(Application.ExeName) + 'IMPRIME.000'), auxBol);
    ExibeMensagem(0, 'Imprimindo Cupom TEF');
    try
      // abre cupom
      prn := TCharPrinter.Create;
      prn.OpenDoc('');
      // Inicializa a impressora
      prn.SendData(#27'@');
      prn.SendData('           CUPOM TEF VINCULADO           ');
    except
      result := false;
      exit;
    end;
    // verifica o tipo de TEF e faz a impress�o de acordo
    if sTipoTef = 0 then // discado
    begin
      for i := 1 to pVias do
      begin
        // exibe mensagem para destacar via
        if (i = 2) and (sTEFViaUnica) and (gPossuiCampo29) then
        begin
          try
            aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
            prn.SendData(aux);
          except
            result := false;
            exit;
          end;
          // exibe mensagem
          ExibeMensagem(5, 'Por favor, destaque a 1� Via');
          ExibeMensagem(0, 'Imprimindo Cupom TEF');
        end;
        // abre o arquivo e impreme dados
        AssignFile(cArquivo, ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
        Reset(cArquivo);
        aLinha := 0;
        while not System.EOF(cArquivo) do
        begin
          // le linha do arquivo
          ReadLn(cArquivo, cLinhaArquivo);
          // via completa
          if gPossuiCampo29 then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
        end;
        CloseFile(cArquivo);
      end;
    end
    else if sTipoTef = 1 then // dedicado
    begin
      for i := 1 to pVias do
      begin
        // exibe mensagem para destacar via
        if (i = 2) and (sTEFViaUnica) and (gPossuiCampo29) then
        begin
          try
            aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
            prn.SendData(aux);
          except
            result := false;
            exit;
          end;
          // exibe mensagem
          ExibeMensagem(5, 'Por favor, destaque a 1� Via');
          ExibeMensagem(0, 'Imprimindo Cupom TEF');
        end;
        // abre o arquivo e impreme dados
        AssignFile(cArquivo, ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
        Reset(cArquivo);
        aLinha := 0;
        while not System.EOF(cArquivo) do
        begin
          // exibe mensagem para destacar via
          if not(sTEFViaUnica) and (sTipoTef = 1) and (gLinhaCorte > 0) then // para TEF Dedicado
          begin
            if gLinhaCorte = aLinha then
            begin
              try
                aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
                prn.SendData(aux);
              except
                result := false;
                exit;
              end;
              // exibe mensagem
              ExibeMensagem(5, 'Por favor, destaque a 1� Via');
              ExibeMensagem(0, 'Imprimindo Cupom TEF');
            end;
          end;
          // le linha do arquivo
          ReadLn(cArquivo, cLinhaArquivo);
          // via completa
          if gPossuiCampo29 then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
        end;
        CloseFile(cArquivo);
      end;
    end
    else if sTipoTef = 2 then // PayGo
    begin
      for i := 1 to 2 do
      begin
        // exibe mensagem para destacar via
        if i = 2 then
        begin
          try
            aux := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
            prn.SendData(aux);
          except
            result := false;
            exit;
          end;
          // exibe mensagem
          ExibeMensagem(5, 'Por favor, destaque a 1� Via');
          ExibeMensagem(0, 'Imprimindo Cupom TEF');
        end;
        // abre o arquivo e impreme dados
        AssignFile(cArquivo, ExtractFilePath(Application.ExeName) + 'IMPRIME.000');
        Reset(cArquivo);
        aLinha := 0;
        while not System.EOF(cArquivo) do
        begin
          // le linha do arquivo
          ReadLn(cArquivo, cLinhaArquivo);
          // via reduzida
          if (i = 1) and (gPossuiCampo711) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 711 then
            begin
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // via diferenciada para o cliente
          if (i = 1) and (gPossuiCampo713) and (not(gPossuiCampo711)) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 713 then
            begin
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // via completa campo 29
          if (i = 1) and (not(gPossuiCampo711)) and (not(gPossuiCampo713)) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // Op��es de impress�o da segunda via
          // via diferenciada para o estabelecimento
          if (i = 2) and (gPossuiCampo715) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 715 then
            begin
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
          // via completa campo 29
          if (i = 2) and (not(gPossuiCampo715)) then
          begin
            if StrToInt(copy(cLinhaArquivo, 1, 3)) = 29 then
            begin
              Inc(aLinha);
              aTextoLinha := copy(cLinhaArquivo, 11, Length(cLinhaArquivo) - 10);
              aTextoLinha := RemoveAspas(aTextoLinha);
              try
                prn.SendData(aTextoLinha);
              except
                result := false;
                CloseFile(cArquivo);
                exit;
              end;
            end;
          end;
        end;
        CloseFile(cArquivo);
      end;
    end;
  end;
  // fecha relatorio
  // fecha relatorio
  try
    prn.SendData(#12);
    prn.CloseDoc;
    prn.Free;
  except
    result := false;
    exit;
  end;

  {
    var cLinhaArquivo, aTextoLinha, aux, aArquivo: string;
    cArquivo  : TextFile;
    aLinha, i : Integer;
    auxBol : LongBool;
    aMudaViaEspecial, TemCampo711 : Boolean;
    prn:TCharPrinter;
    begin
    // pTipoRel = 0 - Comprovante de Credito
    //            1 - Relatorio Gerencial
    TemCampo711 := false;
    result := true;
    Sleep(1000);
    aArquivo := ExtractFilePath(ArqTemp)+'INTPOS'+IntToStr(pControle)+'.001';
    //
    if FileExists(aArquivo) then
    begin
    if FileExists(ExtractFilePath(Application.ExeName)+'IMPRIME.000') then
    DeleteFile(ExtractFilePath(Application.ExeName)+'IMPRIME.000');
    CopyFile(pChar(aArquivo),pChar(ExtractFilePath(Application.ExeName)+'IMPRIME.000'),auxBol);
    ExibeMensagem(0,'Imprimindo Cupom TEF');
    try
    // abre cupom
    prn := TCharPrinter.Create;
    Prn.OpenDoc('');
    // Inicializa a impressora
    Prn.SendData(#27'@');
    Prn.SendData('           CUPOM TEF VINCULADO           ');
    except
    Result := false;
    Exit;
    end;
    //
    for i := 1 to pVias do
    begin
    // exibe mensagem para destacar via
    if (i = 2) and (sTEFViaUnica) and (gPossuiCampo29) then
    begin
    try
    aux := #13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;
    Prn.SendData(aux);
    except
    Result := false;
    exit;
    end;
    // exibe mensagem
    if sPAFNFCe = 0 then // paf-ecf
    ExibeMensagem(5,'Por favor, destaque a 1� Via');
    ExibeMensagem(0,'Imprimindo Cupom TEF');
    end;
    // abre o arquivo e impreme dados
    AssignFile(cArquivo,ExtractFilePath(Application.ExeName)+'IMPRIME.000');
    Reset(cArquivo);
    aLinha := 0;
    while not System.EOF(cArquivo) do
    begin
    // exibe mensagem para destacar via
    //        if not(sTEFViaUnica) and (sTipoTEF = 1) then // para TEF Dedicado
    if not(sTEFViaUnica) and (sTipoTEF = 1) and (gLinhaCorte > 0) then // para TEF Dedicado
    begin
    if gLinhaCorte = aLinha then
    begin
    try
    aux := #13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;
    Prn.SendData(aux);
    except
    Result := false;
    exit;
    end;
    // exibe mensagem
    if sPAFNFCe = 0 then // paf-ecf
    ExibeMensagem(5,'Por favor, destaque a 1� Via');
    ExibeMensagem(0,'Imprimindo Cupom TEF');
    end;
    end;
    // le linha do arquivo
    ReadLn(cArquivo,cLinhaArquivo);
    // via completa
    if gPossuiCampo29 then
    begin
    if StrToInt(copy(cLinhaArquivo,1,3)) = 29 then
    begin
    Inc(aLinha);
    aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
    aTextoLinha := RemoveAspas(aTextoLinha);
    try
    Prn.SendData(aTextoLinha);
    except
    Result := false;
    CloseFile(cArquivo);
    exit;
    end;
    end;
    end;
    // via reduzida
    if StrToInt(copy(cLinhaArquivo,1,3)) = 711 then
    begin
    TemCampo711 := true;
    aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
    aTextoLinha := RemoveAspas(aTextoLinha);
    try
    Prn.SendData(aTextoLinha);
    except
    Result := false;
    CloseFile(cArquivo);
    exit;
    end;
    end;
    // via diferenciada para o cliente
    if (StrToInt(copy(cLinhaArquivo,1,3)) = 713) and (not TemCampo711) then
    begin
    aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
    aTextoLinha := RemoveAspas(aTextoLinha);
    try
    Prn.SendData(aTextoLinha);
    except
    Result := false;
    CloseFile(cArquivo);
    exit;
    end;
    end;
    // exibe mensagem para destacar via
    aMudaViaEspecial := false;
    if (not(sTEFViaUnica)) and (StrToInt(copy(cLinhaArquivo,1,3)) = 714) then
    aMudaViaEspecial := true;
    if (not(gPossuiCampo29)) and (StrToInt(copy(cLinhaArquivo,1,3)) = 714) then
    aMudaViaEspecial := true;
    // mudan�a entra as vias
    if aMudaViaEspecial then
    begin
    try
    aux := #13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;
    Prn.SendData(aux);
    except
    Result := false;
    exit;
    end;
    // exibe mensagem
    if sPAFNFCe = 0 then // paf-ecf
    ExibeMensagem(5,'Por favor, destaque a 1� Via');
    ExibeMensagem(0,'Imprimindo Cupom TEF');
    end;
    // via diferenciada para o estabelecimento
    if StrToInt(copy(cLinhaArquivo,1,3)) = 715 then
    begin
    aTextoLinha := copy(cLinhaArquivo,11,Length(cLinhaArquivo)-10);
    aTextoLinha := RemoveAspas(aTextoLinha);
    try
    Prn.SendData(aTextoLinha);
    except
    Result := false;
    CloseFile(cArquivo);
    exit;
    end;
    end;
    end;
    CloseFile( cArquivo );
    end;
    end;
    // fecha relatorio
    try
    Prn.SendData (#12);
    Prn.CloseDoc;
    Prn.Free;
    except
    Result := false;
    Exit;
    end;
  }
end;

procedure TFuncoesPAF.EmiteGerencialSangriaNFCe(pCaixa, pOperador: String; pData: TDateTime; pValor: Double);
var
  prn: TCharPrinter;
begin
  prn := TCharPrinter.Create;
  prn.OpenDoc('');
  prn.SendData(#27'@');
  prn.SendData('              SANGRIA DE CAIXA              ');
  prn.SendData('                                            ' + #13 + #10);
  prn.SendData('CAIXA: ' + pCaixa + #13 + #10);
  prn.SendData('OPERADOR: ' + pOperador + #13 + #10);
  prn.SendData('DATA: ' + FormatDateTime('DD/MM/YYYY', pData) + #13 + #10);
  prn.SendData('VALOR: ' + FormatFloat('0.00', pValor) + #13 + #10);
  prn.SendData('                                            ' + #13 + #10);
  prn.SendData('                                            ' + #13 + #10);
  prn.SendData(#12);
  prn.CloseDoc;
  prn.Free;

end;

procedure TFuncoesPAF.EmiteGerencialSSuprimentoNFCe(pCaixa, pOperador: String; pData: TDateTime; pValor: Double);
var
  prn: TCharPrinter;
begin
  prn := TCharPrinter.Create;
  prn.OpenDoc('');
  prn.SendData(#27'@');
  prn.SendData('           SUPRIMENTO DE CAIXA              ');
  prn.SendData('                                            ' + #13 + #10);
  prn.SendData('CAIXA: ' + pCaixa + #13 + #10);
  prn.SendData('OPERADOR: ' + pOperador + #13 + #10);
  prn.SendData('DATA: ' + FormatDateTime('DD/MM/YYYY', pData) + #13 + #10);
  prn.SendData('VALOR: ' + FormatFloat('0.00', pValor) + #13 + #10);
  prn.SendData('                                            ' + #13 + #10);
  prn.SendData('                                            ' + #13 + #10);
  prn.SendData(#12);
  prn.CloseDoc;
  prn.Free;

end;

function TFuncoesPAF.ArqAC1704(pArquivo, pInicio, pFim: String; pDatai, pDataf: TDateTime; pInterval: Boolean): Boolean;
var
  Datai, Dataf: TDateTime;
begin
  // pinterval - true  = por data
  // false = por redu��o
  result := True;
  try
    Datai := StrToDate(FormatDateTime('DD/MM/YYYY', pDatai));
    Dataf := StrToDate(FormatDateTime('DD/MM/YYYY', pDataf));
    if pInterval then
      DmAcBr.ACBrECF1.PafMF_MFD_Cotepe1704(Datai, Dataf, pArquivo)
      // DmAcBr.ACBrECF1.PafMF_LMFC_Cotepe1704(Datai, Dataf, pArquivo)
    else
      DmAcBr.ACBrECF1.PafMF_MFD_Cotepe1704(StrToInt(pInicio), StrToInt(pFim), pArquivo);
    // DmAcBr.ACBrECF1.PafMF_LMFC_Cotepe1704(StrToInt(pInicio),StrToInt(pFim),pArquivo);
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      result := false;
    end
  end;

end;

procedure TFuncoesPAF.CapturaConfigECFBanco;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select * from config_pdv');
    Q.Open;
    if not Q.IsEmpty then
    begin
      gPortaECF := Q.FieldByName('PORTA').AsString;
      gModeloECF := Q.FieldByName('MODELO').AsInteger;
      gBaudRateECF := Q.FieldByName('BAUDRATE').AsInteger;
      gDataBitsECF := Q.FieldByName('DATABITS').AsInteger;
      gParityECF := Q.FieldByName('PARITY').AsInteger;
      gStopBitsECF := Q.FieldByName('STOPBITS').AsInteger;
      gHandShakingECF := Q.FieldByName('HANDSHAKING').AsInteger;
      if Q.FieldByName('HARDFLOW').AsInteger = 0 then
        gHardFlowECF := false
      else
        gHardFlowECF := True;
      if Q.FieldByName('SOFTFLOW').AsInteger = 0 then
        gSoftFlowECF := false
      else
        gSoftFlowECF := True;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.CapturaDadosUltimaZBanco(var CRZ, CRO: Integer; var VB: Double; NumSerie: String);
var
  Q: TFDQuery;
begin
  CRZ := 0;
  CRO := 0;
  VB := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select x.contador_reinicio,x.contador_reducao,');
    Q.SQL.Add('x.venda_bruta from registro60m x');
    Q.SQL.Add('where x.id = (select max(y.id) from registro60m y');
    Q.SQL.Add('              where y.seriaecf = ' + QuotedStr(NumSerie) + ')');
    Q.Open;
    if not Q.IsEmpty then
    begin
      CRZ := Q.FieldByName('contador_reducao').AsInteger;
      CRO := Q.FieldByName('contador_reinicio').AsInteger;
      VB := Q.FieldByName('venda_bruta').AsFloat;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TFuncoesPAF.CapturaDadosUltimaZECF(var CRZ, CRO: Integer; var VB: Double);
Var
  aIni: TMemIniFile;
  aStringList: TStringList;
  Resp, AuxVB: String;
  i: Integer;
begin
  CRZ := 0;
  CRO := 0;
  VB := 0;
  Resp := DmAcBr.ACBrECF1.DadosUltimaReducaoZ;
  // Resp := DmAcBr.ACBrECF1.DadosReducaoZ;
  aStringList := TStringList.Create;
  aIni := TMemIniFile.Create('TempECF.ini');
  try
    aStringList.Text := Resp;
    aIni.SetStrings(aStringList);
    // grava arquivos com dados da redu��o
    if FileExists(ExtractFilePath(Application.ExeName) + 'TempECF.ini') then
      SysUtils.DeleteFile(ExtractFilePath(Application.ExeName) + 'TempECF.ini');
    aStringList.SaveToFile(ExtractFilePath(Application.ExeName) + 'TempECF.ini');
    // Lendo o dados
    CRZ := StrToInt(aIni.ReadString('ECF', 'NumCRZ', ''));
    CRO := StrToInt(aIni.ReadString('ECF', 'NumCRO', ''));
    AuxVB := aIni.ReadString('Totalizadores', 'VendaBruta', '0');
    if FiltraNumero(AuxVB) <> '' then
    begin
      VB := StrToFloat(AuxVB);
    end
  finally
    aIni.Free;
    aStringList.Free;
  end;

end;

function TFuncoesPAF.RetornaVolPerdaPendente(pBico: String): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select sum(b.volume) as Volume');
    Q.SQL.Add('from bico_perdas b');
    Q.SQL.Add('where b.numbico = ' + QuotedStr(pBico));
    Q.SQL.Add('and b.pendente = ' + QuotedStr('S'));
    Q.Open;
    result := Q.FieldByName('Volume').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TFuncoesPAF.RetornaQuantArqXML(Tipo: Integer): Integer;
var
  F: TSearchRec;
  Ret, Cont: Integer;
begin
  try
    // lista todos os arquivo exe da pasta do aplicativo e gera o MF5
    Cont := 0;
    if Tipo = 0 then // redu��es
      Ret := FindFirst(gPathArqMenu + 'REDUCAO_*.xml', faAnyFile, F)
    else
      Ret := FindFirst(gPathArqMenu + 'ESTOQUE_*.xml', faAnyFile, F);
    while Ret = 0 do
    begin
      if F.Attr and faDirectory <> faDirectory then
      begin
        Inc(Cont);
      end;
      Ret := FindNext(F);
    end;
  finally
    result := Cont;
  end;
end;

function TFuncoesPAF.FuncaoVendaRecarga(pDDD, pNumTel, pCEP: String): Boolean;
var
  cConteudoArquivo: string;
  cArquivo: TextFile;
begin
  { XXX } ExibeMensagem(0, 'Realizando Recarga de Pr� pago.');
  // Sleep(1000); alterado para ficar mais rapido
  Sleep(500);
  result := True;
  gIdentifica := FormatDateTime('hhmmss', Time);
  cConteudoArquivo := '';
  cConteudoArquivo := '000-000 = CEL' + #13 + #10 + '001-000 = ' + gIdentifica + #13 + #10 + '150-001 = ' + pDDD + #13 + #10 + '150-002 = ' + pNumTel + #13 +
    #10 + '210-036 = ' + pCEP + #13 + #10 + '999-999 = 0';
  AssignFile(cArquivo, gPathReqTEF + 'IntPos.tmp');
  ReWrite(cArquivo);
  WriteLn(cArquivo, cConteudoArquivo);
  CloseFile(cArquivo);
  RenameFile(gPathReqTEF + 'IntPos.tmp', gPathReqTEF + 'IntPos.001');
  // Sleep(2000); alterado para ficar mais rapido
  Sleep(1000);

end;

end.
