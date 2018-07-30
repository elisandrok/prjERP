unit uDmPosto;

interface

uses
  SysUtils, Classes, DB, FMTBcd, DBClient, Provider, Windows, Messages,
  Variants, Graphics, Controls, Forms, ExtCtrls, ComCtrls, ImgList, Dialogs,
  Menus, uFuncoesPAFECF, uDmAcBr, ACBrDevice, pcnConversao, IniFiles,
  ACBrPAFClass, StdCtrls, ActnList, jpeg, OleCtrls, SHDocVw, CharPrinter,
  ACBrSintegra, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmPosto = class(TDataModule)
    QryAbastecimentos: TFDQuery;
    DspAbastecimentos: TDataSetProvider;
    CdsAbastecimentos: TClientDataSet;
    CdsAbastecimentos1: TClientDataSet;
    QryBombasLacre: TFDQuery;
    QryBombasLacreID: TIntegerField;
    QryBombasLacreID_BOMBA: TIntegerField;
    QryBombasLacreNUM_LACRE: TStringField;
    QryBombasLacreDATA_APLIC: TSQLTimeStampField;
    DspBombasLacre: TDataSetProvider;
    CdsBombasLacre: TClientDataSet;
    CdsBombasLacreID: TIntegerField;
    CdsBombasLacreID_BOMBA: TIntegerField;
    CdsBombasLacreNUM_LACRE: TStringField;
    CdsBombasLacreDATA_APLIC: TSQLTimeStampField;
    QryPlacasAbastec: TFDQuery;
    DspPlacasAbastec: TDataSetProvider;
    CdsPlacasAbastec: TClientDataSet;
    QryBicoPerda: TFDQuery;
    QryBicoPerdaID: TIntegerField;
    QryBicoPerdaNUMBICO: TStringField;
    QryBicoPerdaDATA_MOVTO: TSQLTimeStampField;
    QryBicoPerdaHORA_MOVTO: TSQLTimeStampField;
    QryBicoPerdaVOLUME: TFloatField;
    QryBicoPerdaPENDENTE: TStringField;
    QryBicoPerdaEF: TFloatField;
    DspBicoPerda: TDataSetProvider;
    CdsBicoPerda: TClientDataSet;
    CdsBicoPerdaID: TIntegerField;
    CdsBicoPerdaNUMBICO: TStringField;
    CdsBicoPerdaDATA_MOVTO: TSQLTimeStampField;
    CdsBicoPerdaHORA_MOVTO: TSQLTimeStampField;
    CdsBicoPerdaVOLUME: TFloatField;
    CdsBicoPerdaPENDENTE: TStringField;
    CdsBicoPerdaEF: TFloatField;
    CdsTanques: TClientDataSet;
    CdsTanquesID: TIntegerField;
    CdsTanquesTANQUE_NUMERO: TIntegerField;
    CdsTanquesID_PRODUTO: TIntegerField;
    CdsTanquesDESCRICAO: TStringField;
    CdsTanquesCAPACIDADE: TFloatField;
    CdsTanquesDATA_ESTOQUE: TSQLTimeStampField;
    CdsTanquesHORA_ESTOQUE: TSQLTimeStampField;
    CdsTanquesEST_FISICO: TFloatField;
    DspTanques: TDataSetProvider;
    QryTanques: TFDQuery;
    QryTanquesID: TIntegerField;
    QryTanquesTANQUE_NUMERO: TIntegerField;
    QryTanquesID_PRODUTO: TIntegerField;
    QryTanquesDESCRICAO: TStringField;
    QryTanquesCAPACIDADE: TFloatField;
    QryTanquesDATA_ESTOQUE: TSQLTimeStampField;
    QryTanquesHORA_ESTOQUE: TSQLTimeStampField;
    QryTanquesEST_FISICO: TFloatField;
    CdsTanquePerda: TClientDataSet;
    CdsTanquePerdaID: TIntegerField;
    CdsTanquePerdaDATA: TDateField;
    CdsTanquePerdaTANQUE_NUMERO: TIntegerField;
    CdsTanquePerdaQUANTIDADE: TFloatField;
    CdsTanquePerdaIMPRESSO: TIntegerField;
    CdsTanquePerdaNUM_BICO: TStringField;
    CdsTanquePerdaID_PRODUTO: TIntegerField;
    CdsTanquePerdaDESCRICAO: TStringField;
    DspTanquePerda: TDataSetProvider;
    QryTanquePerda: TFDQuery;
    QryTanquePerdaID: TIntegerField;
    QryTanquePerdaDATA: TDateField;
    QryTanquePerdaTANQUE_NUMERO: TIntegerField;
    QryTanquePerdaQUANTIDADE: TFloatField;
    QryTanquePerdaIMPRESSO: TIntegerField;
    QryTanquePerdaNUM_BICO: TStringField;
    QryTanquePerdaID_PRODUTO: TIntegerField;
    QryTanquePerdaDESCRICAO: TStringField;
    CdsBombas: TClientDataSet;
    CdsBombasID: TIntegerField;
    CdsBombasDESCRICAO: TStringField;
    CdsBombasBOMBA_NUMERO: TIntegerField;
    CdsBombasSERIE: TStringField;
    CdsBombasFABRICANTE: TStringField;
    CdsBombasMODELO: TStringField;
    CdsBombasTIPO_MEDICAO: TIntegerField;
    DspBombas: TDataSetProvider;
    QryBombas: TFDQuery;
    QryBombasID: TIntegerField;
    QryBombasDESCRICAO: TStringField;
    QryBombasBOMBA_NUMERO: TIntegerField;
    QryBombasSERIE: TStringField;
    QryBombasFABRICANTE: TStringField;
    QryBombasMODELO: TStringField;
    QryBombasTIPO_MEDICAO: TIntegerField;
    CdsBicos: TClientDataSet;
    CdsBicosID: TIntegerField;
    CdsBicosID_TANQUE: TIntegerField;
    CdsBicosID_BOMBA: TIntegerField;
    CdsBicosBICO_CONCENTRADOR: TStringField;
    CdsBicosPRECO: TFloatField;
    CdsBicosENCERRANTE: TFloatField;
    CdsBicosNUM_LOGICO: TStringField;
    DspBicos: TDataSetProvider;
    QryBicos: TFDQuery;
    QryBicosID: TIntegerField;
    QryBicosID_TANQUE: TIntegerField;
    QryBicosID_BOMBA: TIntegerField;
    QryBicosBICO_CONCENTRADOR: TStringField;
    QryBicosPRECO: TFloatField;
    QryBicosENCERRANTE: TFloatField;
    QryBicosNUM_LOGICO: TStringField;
    CdsConfigPosto: TClientDataSet;
    CdsConfigPostoID: TIntegerField;
    CdsConfigPostoPORTA_CBC: TIntegerField;
    CdsConfigPostoIP_CBC: TStringField;
    CdsConfigPostoTIPO_CBC: TIntegerField;
    CdsConfigPostoPORTA_IP_CBC: TIntegerField;
    CdsConfigPostoCBC_IDENTIFICADOR: TStringField;
    CdsConfigPostoCONCENTRADOR: TIntegerField;
    CdsConfigPostoSPI_SERIAL: TIntegerField;
    CdsConfigPostoSPI_IP: TIntegerField;
    CdsConfigPostoSPI_HOST: TStringField;
    DspConfigPosto: TDataSetProvider;
    QryConfigPosto: TFDQuery;
    QryConfigPostoID: TIntegerField;
    QryConfigPostoPORTA_CBC: TIntegerField;
    QryConfigPostoIP_CBC: TStringField;
    QryConfigPostoTIPO_CBC: TIntegerField;
    QryConfigPostoPORTA_IP_CBC: TIntegerField;
    QryConfigPostoCBC_IDENTIFICADOR: TStringField;
    QryConfigPostoCONCENTRADOR: TIntegerField;
    QryConfigPostoSPI_SERIAL: TIntegerField;
    QryConfigPostoSPI_IP: TIntegerField;
    QryConfigPostoSPI_HOST: TStringField;
    QryBicoComunica: TFDQuery;
    QryBicoComunicaID: TIntegerField;
    QryBicoComunicaID_BICO: TIntegerField;
    QryBicoComunicaCOMUNICACAO: TIntegerField;
    QryBicoComunicaINICIO: TTimeField;
    QryBicoComunicaFIM: TTimeField;
    QryBicoComunicaNUM_BICO: TStringField;
    QryBicoComunicaCOMBUSTIVEL: TStringField;
    QryBicoComunicaEI: TFloatField;
    QryBicoComunicaEF: TFloatField;
    QryBicoComunicaDATA_MOVIMENTO: TDateField;
    QryBicoComunicaIMPRESSO: TIntegerField;
    QryBicoComunicaID_PRODUTO: TIntegerField;
    DspBicoComunica: TDataSetProvider;
    CdsBicoComunica: TClientDataSet;
    CdsBicoComunicaID: TIntegerField;
    CdsBicoComunicaID_BICO: TIntegerField;
    CdsBicoComunicaCOMUNICACAO: TIntegerField;
    CdsBicoComunicaINICIO: TTimeField;
    CdsBicoComunicaFIM: TTimeField;
    CdsBicoComunicaNUM_BICO: TStringField;
    CdsBicoComunicaCOMBUSTIVEL: TStringField;
    CdsBicoComunicaEI: TFloatField;
    CdsBicoComunicaEF: TFloatField;
    CdsBicoComunicaDATA_MOVIMENTO: TDateField;
    CdsBicoComunicaIMPRESSO: TIntegerField;
    CdsBicoComunicaID_PRODUTO: TIntegerField;
    QryBicoPerdaTRAVA_ABAST: TStringField;
    CdsBicoPerdaTRAVA_ABAST: TStringField;
    QryBicoPerdaEA: TFloatField;
    CdsBicoPerdaEA: TFloatField;
    QryBicosATIVO: TStringField;
    CdsBicosATIVO: TStringField;
    QryAbastTemp: TFDQuery;
    QryAbastTempID: TIntegerField;
    QryAbastTempNUM_BICO: TStringField;
    QryAbastTempDATA: TSQLTimeStampField;
    QryAbastTempHORA: TSQLTimeStampField;
    QryAbastTempENCERRANTE: TFloatField;
    QryAbastTempLITROS: TFloatField;
    QryAbastTempPRECO_UNIT: TFloatField;
    QryAbastTempVALOR_TOTAL: TFloatField;
    QryAbastTempSTATUS_ABASTEC: TIntegerField;
    QryAbastTempCOO_CUPOM: TIntegerField;
    QryAbastTempNOTAFISCAL_NUM: TStringField;
    QryAbastTempMD5REGISTRO: TStringField;
    QryAbastTempDESCRICAO: TStringField;
    QryAbastTempIDPRODUTO: TIntegerField;
    QryAbastTempNUMSERIEECF: TStringField;
    QryAbastTempDATA_EMISSAO: TSQLTimeStampField;
    QryAbastTempHORA_EMISSAO: TSQLTimeStampField;
    QryAbastTempDATA_ABAST: TSQLTimeStampField;
    QryAbastTempHORA_ABASTEC: TSQLTimeStampField;
    QryAbastTempREMANECENTE: TStringField;
    QryAbastTempAUTOMATICO: TStringField;
    DspAbastTemp: TDataSetProvider;
    CdsAbastTemp: TClientDataSet;
    CdsAbastTempID: TIntegerField;
    CdsAbastTempNUM_BICO: TStringField;
    CdsAbastTempDATA: TSQLTimeStampField;
    CdsAbastTempHORA: TSQLTimeStampField;
    CdsAbastTempENCERRANTE: TFloatField;
    CdsAbastTempLITROS: TFloatField;
    CdsAbastTempPRECO_UNIT: TFloatField;
    CdsAbastTempVALOR_TOTAL: TFloatField;
    CdsAbastTempSTATUS_ABASTEC: TIntegerField;
    CdsAbastTempCOO_CUPOM: TIntegerField;
    CdsAbastTempNOTAFISCAL_NUM: TStringField;
    CdsAbastTempMD5REGISTRO: TStringField;
    CdsAbastTempDESCRICAO: TStringField;
    CdsAbastTempIDPRODUTO: TIntegerField;
    CdsAbastTempNUMSERIEECF: TStringField;
    CdsAbastTempDATA_EMISSAO: TSQLTimeStampField;
    CdsAbastTempHORA_EMISSAO: TSQLTimeStampField;
    CdsAbastTempDATA_ABAST: TSQLTimeStampField;
    CdsAbastTempHORA_ABASTEC: TSQLTimeStampField;
    CdsAbastTempREMANECENTE: TStringField;
    CdsAbastTempAUTOMATICO: TStringField;
    QryAbastecimentosID: TIntegerField;
    QryAbastecimentosNUM_BICO: TStringField;
    QryAbastecimentosDATA: TSQLTimeStampField;
    QryAbastecimentosHORA: TSQLTimeStampField;
    QryAbastecimentosENCERRANTE: TFMTBCDField;
    QryAbastecimentosLITROS: TFMTBCDField;
    QryAbastecimentosPRECO_UNIT: TFloatField;
    QryAbastecimentosVALOR_TOTAL: TFloatField;
    QryAbastecimentosSTATUS_ABASTEC: TIntegerField;
    QryAbastecimentosCOO_CUPOM: TIntegerField;
    QryAbastecimentosNOTAFISCAL_NUM: TStringField;
    QryAbastecimentosMD5REGISTRO: TStringField;
    QryAbastecimentosDESCRICAO: TStringField;
    QryAbastecimentosIDPRODUTO: TIntegerField;
    QryAbastecimentosNUMSERIEECF: TStringField;
    QryAbastecimentosDATA_EMISSAO: TSQLTimeStampField;
    QryAbastecimentosHORA_EMISSAO: TSQLTimeStampField;
    QryAbastecimentosDATA_ABAST: TSQLTimeStampField;
    QryAbastecimentosHORA_ABASTEC: TSQLTimeStampField;
    QryAbastecimentosREMANECENTE: TStringField;
    QryAbastecimentosAUTOMATICO: TStringField;
    CdsAbastecimentosID: TIntegerField;
    CdsAbastecimentosNUM_BICO: TStringField;
    CdsAbastecimentosDATA: TSQLTimeStampField;
    CdsAbastecimentosHORA: TSQLTimeStampField;
    CdsAbastecimentosENCERRANTE: TFMTBCDField;
    CdsAbastecimentosLITROS: TFMTBCDField;
    CdsAbastecimentosPRECO_UNIT: TFloatField;
    CdsAbastecimentosVALOR_TOTAL: TFloatField;
    CdsAbastecimentosSTATUS_ABASTEC: TIntegerField;
    CdsAbastecimentosCOO_CUPOM: TIntegerField;
    CdsAbastecimentosNOTAFISCAL_NUM: TStringField;
    CdsAbastecimentosMD5REGISTRO: TStringField;
    CdsAbastecimentosDESCRICAO: TStringField;
    CdsAbastecimentosIDPRODUTO: TIntegerField;
    CdsAbastecimentosNUMSERIEECF: TStringField;
    CdsAbastecimentosDATA_EMISSAO: TSQLTimeStampField;
    CdsAbastecimentosHORA_EMISSAO: TSQLTimeStampField;
    CdsAbastecimentosDATA_ABAST: TSQLTimeStampField;
    CdsAbastecimentosHORA_ABASTEC: TSQLTimeStampField;
    CdsAbastecimentosREMANECENTE: TStringField;
    CdsAbastecimentosAUTOMATICO: TStringField;
    CdsAbastecimentos1ID: TIntegerField;
    CdsAbastecimentos1NUM_BICO: TStringField;
    CdsAbastecimentos1DATA: TSQLTimeStampField;
    CdsAbastecimentos1HORA: TSQLTimeStampField;
    CdsAbastecimentos1ENCERRANTE: TFMTBCDField;
    CdsAbastecimentos1LITROS: TFMTBCDField;
    CdsAbastecimentos1PRECO_UNIT: TFloatField;
    CdsAbastecimentos1VALOR_TOTAL: TFloatField;
    CdsAbastecimentos1STATUS_ABASTEC: TIntegerField;
    CdsAbastecimentos1COO_CUPOM: TIntegerField;
    CdsAbastecimentos1NOTAFISCAL_NUM: TStringField;
    CdsAbastecimentos1MD5REGISTRO: TStringField;
    CdsAbastecimentos1DESCRICAO: TStringField;
    CdsAbastecimentos1IDPRODUTO: TIntegerField;
    CdsAbastecimentos1NUMSERIEECF: TStringField;
    CdsAbastecimentos1DATA_EMISSAO: TSQLTimeStampField;
    CdsAbastecimentos1HORA_EMISSAO: TSQLTimeStampField;
    CdsAbastecimentos1DATA_ABAST: TSQLTimeStampField;
    CdsAbastecimentos1HORA_ABASTEC: TSQLTimeStampField;
    CdsAbastecimentos1REMANECENTE: TStringField;
    CdsAbastecimentos1AUTOMATICO: TStringField;
    QryPlacasAbastecID: TIntegerField;
    QryPlacasAbastecID_TANQUE: TIntegerField;
    QryPlacasAbastecID_BOMBA: TIntegerField;
    QryPlacasAbastecID_BICO: TIntegerField;
    QryPlacasAbastecDATA: TSQLTimeStampField;
    QryPlacasAbastecHORA: TSQLTimeStampField;
    QryPlacasAbastecMOTIVO: TStringField;
    QryPlacasAbastecCNPJ: TStringField;
    QryPlacasAbastecCPF: TStringField;
    QryPlacasAbastecNUM_LACRE_OUT: TStringField;
    QryPlacasAbastecNUM_LACRE_IN: TStringField;
    QryPlacasAbastecENCERRANTE_OUT: TFloatField;
    QryPlacasAbastecENCERRANTE_IN: TFloatField;
    QryPlacasAbastecVESPEB: TFloatField;
    QryPlacasAbastecJUSTIFICATIVA: TStringField;
    QryPlacasAbastecMEDIDAS: TStringField;
    QryPlacasAbastecPRESTADORA: TStringField;
    QryPlacasAbastecMOTIVO1: TStringField;
    QryPlacasAbastecMOTIVO2: TStringField;
    QryPlacasAbastecMEDIDAS1: TStringField;
    QryPlacasAbastecMEDIDAS2: TStringField;
    QryPlacasAbastecJUSTIFICATIVA1: TStringField;
    QryPlacasAbastecJUSTIFICATIVA2: TStringField;
    CdsPlacasAbastecID: TIntegerField;
    CdsPlacasAbastecID_TANQUE: TIntegerField;
    CdsPlacasAbastecID_BOMBA: TIntegerField;
    CdsPlacasAbastecID_BICO: TIntegerField;
    CdsPlacasAbastecDATA: TSQLTimeStampField;
    CdsPlacasAbastecHORA: TSQLTimeStampField;
    CdsPlacasAbastecMOTIVO: TStringField;
    CdsPlacasAbastecCNPJ: TStringField;
    CdsPlacasAbastecCPF: TStringField;
    CdsPlacasAbastecNUM_LACRE_OUT: TStringField;
    CdsPlacasAbastecNUM_LACRE_IN: TStringField;
    CdsPlacasAbastecENCERRANTE_OUT: TFloatField;
    CdsPlacasAbastecENCERRANTE_IN: TFloatField;
    CdsPlacasAbastecVESPEB: TFloatField;
    CdsPlacasAbastecJUSTIFICATIVA: TStringField;
    CdsPlacasAbastecMEDIDAS: TStringField;
    CdsPlacasAbastecPRESTADORA: TStringField;
    CdsPlacasAbastecMOTIVO1: TStringField;
    CdsPlacasAbastecMOTIVO2: TStringField;
    CdsPlacasAbastecMEDIDAS1: TStringField;
    CdsPlacasAbastecMEDIDAS2: TStringField;
    CdsPlacasAbastecJUSTIFICATIVA1: TStringField;
    CdsPlacasAbastecJUSTIFICATIVA2: TStringField;
    QryLivroLMC: TFDQuery;
    QryLivroLMCNUM_LIVRO: TIntegerField;
    QryLivroLMCQUANT_PAG: TIntegerField;
    QryLivroLMCDATA_ABERTURA: TDateField;
    QryLivroLMCDATA_FECHAMENTO: TDateField;
    QryLivroLMCPAG_ATUAL_IMPRESSA: TIntegerField;
    QryLivroLMCID_RESPONSAVEL: TIntegerField;
    QryLivroLMCID_CONFERENTE: TIntegerField;
    QryLivroLMCID_GERENTE: TIntegerField;
    DspLivroLMC: TDataSetProvider;
    CdsLivroLMC: TClientDataSet;
    CdsLivroLMCNUM_LIVRO: TIntegerField;
    CdsLivroLMCQUANT_PAG: TIntegerField;
    CdsLivroLMCDATA_ABERTURA: TDateField;
    CdsLivroLMCDATA_FECHAMENTO: TDateField;
    CdsLivroLMCPAG_ATUAL_IMPRESSA: TIntegerField;
    CdsLivroLMCID_RESPONSAVEL: TIntegerField;
    CdsLivroLMCID_CONFERENTE: TIntegerField;
    CdsLivroLMCID_GERENTE: TIntegerField;
    QryLivroLMCPag: TFDQuery;
    QryLivroLMCPagNUM_LIVRO: TIntegerField;
    QryLivroLMCPagNUM_PAGINA: TIntegerField;
    QryLivroLMCPagDATA_PAGINA: TDateField;
    QryLivroLMCPagID_PRODUTO: TIntegerField;
    QryLivroLMCPagEST_FECHAMENTO: TFloatField;
    DspLivroLMCPag: TDataSetProvider;
    CdsLivroLMCPag: TClientDataSet;
    CdsLivroLMCPagNUM_LIVRO: TIntegerField;
    CdsLivroLMCPagNUM_PAGINA: TIntegerField;
    CdsLivroLMCPagDATA_PAGINA: TDateField;
    CdsLivroLMCPagID_PRODUTO: TIntegerField;
    CdsLivroLMCPagEST_FECHAMENTO: TFloatField;
    QryLivroLMCPagDESCRICAO: TStringField;
    CdsLivroLMCPagDESCRICAO: TStringField;
    procedure DspConfigPostoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspBicosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspBombasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsBicosNewRecord(DataSet: TDataSet);
    procedure CdsBombasNewRecord(DataSet: TDataSet);
    procedure CdsTanquesNewRecord(DataSet: TDataSet);
    procedure DspTanquesGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsConfigPostoNewRecord(DataSet: TDataSet);
    procedure CdsBicoPerdaNewRecord(DataSet: TDataSet);
    procedure DspBicoPerdaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspPlacasAbastecGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsPlacasAbastecNewRecord(DataSet: TDataSet);
    procedure DspBombasLacreGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspAbastecimentosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsBombasLacreNewRecord(DataSet: TDataSet);
    procedure CdsAbastecimentosNewRecord(DataSet: TDataSet);
    procedure CdsAbastecimentosBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DspAbastTempGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsAbastTempNewRecord(DataSet: TDataSet);
    procedure DspLivroLMCGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspLivroLMCPagGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
  private
    SALDO, VTACF, VTANF, AFER, VESPEB: Double;
    procedure FormataCampos;
    { Private declarations }
  public
    { Public declarations }
    function Dados_ConfigPosto: Boolean;
    function Dados_Bicos: Boolean; overload;
    function Dados_Bicos(pNumBico: String): Boolean; overload;
    function Dados_Bicos(IDBomba, IDTanque: Integer): Boolean; overload;
    function Dados_Bicos_Perda(pID: Integer): Boolean; overload;
    function Dados_Bicos_Perda(NumBico: String; Pendente: String = ''; pTipo: Integer = 0): Boolean; overload;
    function Dados_Bomba: Boolean; overload;
    function Dados_Bomba(pIDBomba: Integer): Boolean; overload;
    function Dados_Bomba_Lacre(pIDBomba: Integer): Boolean;
    function Dados_Tanque: Boolean; overload;
    function Dados_Tanque(pIDTanque: Integer): Boolean; overload;
    function Dados_TanquePerda: Boolean;
    // function Dados_TanqueEstoque:Boolean;
    function Dados_Abastecimentos(pNumBomba: Integer = 0; pID: Integer = 0): Boolean;
    function Dados_Abastecimentos1(pNumBomba: Integer = 0; pID: Integer = 0): Boolean;
    function Dados_AbastTemp: Boolean;
    function Dados_PlacaAbastec: Boolean;
    function Dados_LivroLMC: Boolean;
    function Dados_LivroLMCPag(pNumLivro: Integer): Boolean;
    procedure RegistraAbastecimentos(pNumBico, pData, pHora: String; pEncerrante, pLitros, pValUnit, pTotal: Double; pRemanecente: Boolean = false;
      pAutomatico: Boolean = false; pNumNota: String = '');
    procedure RegistraAbastTemporario(pNumBico, pData, pHora: String; pEncerrante, pLitros, pValUnit, pTotal: Double; pRemanecente: Boolean = false;
      pAutomatico: Boolean = false; pNumNota: String = '');
    procedure GravaEstoqueFisico(pID: Integer; pEstoque: Double);
    procedure LimpaEstoqueFisicoAnterior;
    procedure ResolvePendenciaEstoqueCombustivel(NumBico: String);
    function RetornaEncerranteFim(DataMov: TDateTime; NumBico: String): Double;
    function RetornaEncerranteIni(DataMov: TDateTime; NumBico: String): Double;
    function RetornaEncerranteUltZ(DataMov: TDateTime; NumBico: String): Double;
    function RetornaQuantVendida(DataMov: TDateTime; NumBico: String): Double;
    function RetornaQuantVendidaPeriodo(DataMov, HoraBase: TDateTime; NumBico: String; TipoMov: Integer): Double;
    function VerificaBicoLiberadoEstoque(NumBico: String): Boolean;
    function VerificaInformacaoEstFisico(var Tanques: String): Boolean;
    function VerificaMovimentoBico(DataMov: TDateTime; NumBico: String): Boolean;
    function VerificaMovimentoBicoNF(DataMov: TDateTime; NumBico: String): Boolean;
    function VerificaMovtoBicoAbast(DataMov: TDateTime; NumBico: String): Boolean;
    procedure VerificaResolvePennciaEstoqueCombustivel(fItens: TDataSet);
    procedure AdicionaPerdaBico(NumBico, Trava: String; Volume, ef, ea: Double);
    function GeraCupomSaldoRemanescente(FechamentoDia: Boolean = false): Boolean;
    function RetornaEncBicoConcentrador(NumBico: String): Double;
    function RetornaEncerranteBico(pIDBico: Integer): Double;
    function Gera_Registro_Manutencao_Bomba(ef, EI: Double; pIDBomba, pIDTanque, pIDBico: Integer; pData, pHora: TDateTime;
      pCNPJ, pCPF, pLacreOld, pLacreNew, pMotivo, pMotivo1, pMotivo2, pJustificativa, pJustificativa1, pJustificativa2, pMedidas, pMedidas1,
      pMedidas2: String): Boolean;
    function RetornaIDTanque(pTanque: Integer): Integer;
    function retornaIDBomba(pBomba: Integer): Integer;
    function RetornaIDBico(pIDTanque, pIDBomba: Integer): Integer;
    function Grava_Encerrante_Manutencao_Bomba(pIDPlaca: Integer; pEncerrante, pVESPEB: Double): Boolean;
    procedure GravaArquivoConfigPosto;
    procedure RetornaStatusAbastecCupom(pIDCupom: Integer);
    procedure AlteraStatusAbastecimento(pID, pStatus, pCOO: Integer; pNotaFiscal: String; pDataEmissao: TDateTime = 0; pHoraEmissao: TDateTime = 0);
    procedure GravaEncerranteBico(pNumBico: String; pEncerrante: Double);
    procedure GravaPerdaComunicacaoBico(Comunica: Integer; NumBico: String; EI: Double);
    procedure GravaPerdaCombustivel(NumBico: String; EI: Double);
    function VerificaComunicacaoBicos(ReducaoZ: Boolean = false; SemComunicacao: Boolean = false; pDataMov: TDateTime = 0): Boolean;
    function VerificaRetornoComunicacaoBico(ReducaoZ: Boolean = true): Boolean;
    function RetornaDadosBicoPerda(var NumBico: String; var ef: Double; var EI: Double; var Data: TDateTime; var Hora: TDateTime; IDPerda: Integer): Boolean;
    procedure AtivaDesativaBicos(Ativo: String);
    function VerificaRegistroSemComunicacao(NumBico: String): Boolean;
    procedure ResolveDescontinuidade(NumBico: String);
    procedure MoveAbastecimentosTemporarios(NumBico: String);
    function ConectaConcentrador: Boolean;
    procedure DesconectaConcentrador;
    function RetornaCasasDecimais(Valor: String): Integer;
    function VerificaPerdaComunicacaoBicos: Boolean;
    function VerificaPerdaComunicacaoGeral: Boolean;
    function RetornaTotalAfericoesBico(pNumBico: String): Integer;
    function RetornaDadosDescontinuidade(var EncIn: Double; var EncOut: Double; var HoraQuebra: TDateTime; pIDBico: Integer; pDataMov: TDateTime): Boolean;
    function RetornaVolAbastPendente(NumBico: String): Double;
    procedure ConfrontaEstoqueFisico;
    function VerificaPermissaoImprimirCupomLivre(var Mensagem: String): Boolean;
    function GeraAbastecimentoSaldoRemanecente(var Quantidade: Double; var DataAbastec: TDateTime; pDataMov: TDateTime; pNumBico: String;
      pVESPEB: Double): Double;
    function GeraAbastecimentoSaldoRemanecentePeriodo(var Quantidade: Double; var DataAbastec: TDateTime; pDataMov: TDateTime; pNumBico: String;
      pVESPEB: Double; pTipo: Integer; pHoraBase: TDateTime): Double;
    function RetornaCapacidadeTanque(pIDProduto: Integer): Double;
    Procedure RetornaDadosVespeb(var pVESPEB: Double; var pEnc_Out: Double; var pEnc_In: Double; pIDBico: Integer; pData: TDateTime);
    function VerificaDescontinuidadeRegistrada(pIDBico: Integer; pData: TDateTime; pVESPEB: Double): Boolean;
    procedure Grava_RegistroLivroLMC(pPagina: Integer; pLivro: Integer = 0; pQuantPag: Integer = 0; pDataAbertura: TDateTime = 0;
      pDataFechamento: TDateTime = 0; pIDResponsavel: Integer = 0; pIDConferente: Integer = 0; pIDGerente: Integer = 0);
    function VerificaPrimeiroItemDataLivro(pData: TDateTime): Boolean;
  end;

var
  DmPosto: TDmPosto;

implementation

uses
  uDmConexao, uDmWorkCom, uLibrary, uDMClientes, uFuncoesPosto, uDmProdutos;

{$R *.dfm}

procedure TDmPosto.FormataCampos;
begin
  // Bombas Lacre
  CdsBombasLacreDATA_APLIC.DisplayFormat := 'dd/mm/yyyy';
  CdsBombasLacre.FieldByName('DATA_APLIC').EditMask := '!99/99/0000;1; ';
  // livro LMC
  CdsLivroLMC.FieldByName('DATA_ABERTURA').EditMask := '!99/99/0000;1; ';
  CdsLivroLMCDATA_ABERTURA.DisplayFormat := 'dd/mm/yyyy';
  CdsLivroLMC.FieldByName('DATA_FECHAMENTO').EditMask := '!99/99/0000;1; ';
  CdsLivroLMCDATA_FECHAMENTO.DisplayFormat := 'dd/mm/yyyy';
  CdsLivroLMCPag.FieldByName('DATA_PAGINA').EditMask := '!99/99/0000;1; ';
  CdsLivroLMCPagDATA_PAGINA.DisplayFormat := 'dd/mm/yyyy';
  // abastecimentos
  CdsAbastecimentos.FieldByName('DATA').EditMask := '!99/99/0000;1; ';
  CdsAbastecimentosDATA.DisplayFormat := 'dd/mm/yyyy';
  CdsAbastecimentos.FieldByName('HORA').EditMask := '!90:00;1;';
  CdsAbastecimentosHORA.DisplayFormat := 'hh:mm';
  CdsAbastecimentos.FieldByName('HORA_EMISSAO').EditMask := '!90:00;1;';
  CdsAbastecimentosHORA_EMISSAO.DisplayFormat := 'hh:mm';
  CdsAbastecimentos.FieldByName('HORA_ABASTEC').EditMask := '!90:00;1;';
  CdsAbastecimentosHORA_ABASTEC.DisplayFormat := 'hh:mm';
  CdsAbastecimentosLITROS.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentosLITROS.EditFormat := '###,###,###0,000';
  CdsAbastecimentosENCERRANTE.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentosENCERRANTE.EditFormat := '###,###,###0,000';
  CdsAbastecimentosPRECO_UNIT.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentosPRECO_UNIT.EditFormat := '###,###,###0,000';
  CdsAbastecimentosVALOR_TOTAL.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentosVALOR_TOTAL.EditFormat := '###,###,###0,000';
  // abastecimentos
  CdsAbastecimentos1.FieldByName('DATA').EditMask := '!99/99/0000;1; ';
  CdsAbastecimentos1DATA.DisplayFormat := 'dd/mm/yyyy';
  CdsAbastecimentos1.FieldByName('HORA').EditMask := '!90:00;1;';
  CdsAbastecimentos1HORA.DisplayFormat := 'hh:mm';
  CdsAbastecimentos1.FieldByName('HORA_EMISSAO').EditMask := '!90:00;1;';
  CdsAbastecimentos1HORA_EMISSAO.DisplayFormat := 'hh:mm';
  CdsAbastecimentos1.FieldByName('HORA_ABASTEC').EditMask := '!90:00;1;';
  CdsAbastecimentos1HORA_ABASTEC.DisplayFormat := 'hh:mm';
  CdsAbastecimentos1LITROS.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentos1LITROS.EditFormat := '###,###,###0,000';
  CdsAbastecimentos1ENCERRANTE.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentos1ENCERRANTE.EditFormat := '###,###,###0,000';
  CdsAbastecimentos1PRECO_UNIT.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentos1PRECO_UNIT.EditFormat := '###,###,###0,000';
  CdsAbastecimentos1VALOR_TOTAL.DisplayFormat := '###,###,###0.000';
  CdsAbastecimentos1VALOR_TOTAL.EditFormat := '###,###,###0,000';
  // tanques
  CdsTanquesEST_FISICO.DisplayFormat := '###,###,###0.000';
  CdsTanquesEST_FISICO.EditFormat := '###,###,###0,000';
  CdsTanques.FieldByName('DATA_ESTOQUE').EditMask := '!99/99/0000;1; ';
  CdsTanquesDATA_ESTOQUE.DisplayFormat := 'dd/mm/yyyy';

end;

function TDmPosto.Dados_Abastecimentos(pNumBomba, pID: Integer): Boolean;
begin
  CdsAbastecimentos.Close;
  CdsAbastecimentos.Params.Clear;
  //
  QryAbastecimentos.Close;
  QryAbastecimentos.SQL.Clear;
  QryAbastecimentos.SQL.Add('select a.* from abastecimentos a');
  QryAbastecimentos.SQL.Add('left outer join bicos_abastec bi on bi.bico_concentrador = a.num_bico');
  QryAbastecimentos.SQL.Add('left outer join bombas_abastec bo on bo.id = bi.id_bomba');
  if pID = 0 then
  begin
    QryAbastecimentos.SQL.Add('where (a.status_abastec = 1 or a.status_abastec = 3)');
    // QryAbastecimentos.SQL.Add('where a.status_abastec = 1');
    if pNumBomba > 0 then
      QryAbastecimentos.SQL.Add('and bo.bomba_numero = ' + IntToStr(pNumBomba));
  end
  else if pID > 0 then
  begin
    QryAbastecimentos.SQL.Add('where a.id = ' + IntToStr(pID));
  end;
  //
  CdsAbastecimentos.FetchParams;
  CdsAbastecimentos.Open;
  TFloatField(CdsAbastecimentos.FieldByName('litros')).DisplayFormat := '###,###,###0.000';
  TFloatField(CdsAbastecimentos.FieldByName('preco_unit')).DisplayFormat := '###,###,###0.000';
  TFloatField(CdsAbastecimentos.FieldByName('valor_total')).DisplayFormat := '###,###,###0.000';
  //
  Result := false;
  if CdsAbastecimentos.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Abastecimentos1(pNumBomba, pID: Integer): Boolean;
begin
  CdsAbastecimentos1.Close;
  CdsAbastecimentos1.Params.Clear;
  //
  QryAbastecimentos.Close;
  QryAbastecimentos.SQL.Clear;
  QryAbastecimentos.SQL.Add('select a.* from abastecimentos a');
  QryAbastecimentos.SQL.Add('left outer join bicos_abastec bi on bi.bico_concentrador = a.num_bico');
  QryAbastecimentos.SQL.Add('left outer join bombas_abastec bo on bo.id = bi.id_bomba');
  if pID = 0 then
  begin
    // QryAbastecimentos.SQL.Add('where a.status_abastec = 1');
    QryAbastecimentos.SQL.Add('where (a.status_abastec = 1 or a.status_abastec = 3)');
    QryAbastecimentos.SQL.Add('and (a.coo_cupom is null or a.coo_cupom = 0)');
    QryAbastecimentos.SQL.Add('and not(exists(select i.id_abastecimento,i.cfop from pedido p');
    QryAbastecimentos.SQL.Add('               inner join pedido_itens i on p.id = i.idpedido');
    QryAbastecimentos.SQL.Add('               where i.id_abastecimento = a.id');
    QryAbastecimentos.SQL.Add('               and i.cfop <> ' + QuotedStr('5929'));
    QryAbastecimentos.SQL.Add('               and p.cancelado = ' + QuotedStr('N') + '))');
    if pNumBomba > 0 then
      QryAbastecimentos.SQL.Add('and bo.bomba_numero = ' + IntToStr(pNumBomba));
  end
  else if pID > 0 then
  begin
    QryAbastecimentos.SQL.Add('where a.id = ' + IntToStr(pID));
  end;
  //
  CdsAbastecimentos1.FetchParams;
  CdsAbastecimentos1.Open;
  TFloatField(CdsAbastecimentos1.FieldByName('litros')).DisplayFormat := '###,###,###0.000';
  TFloatField(CdsAbastecimentos1.FieldByName('preco_unit')).DisplayFormat := '###,###,###0.000';
  TFloatField(CdsAbastecimentos1.FieldByName('valor_total')).DisplayFormat := '###,###,###0.000';
  //
  Result := false;
  if CdsAbastecimentos1.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bicos: Boolean;
begin
  CdsBicos.Close;
  CdsBicos.Params.Clear;
  QryBicos.Close;
  QryBicos.SQL.Clear;
  QryBicos.SQL.Add('select * from bicos_abastec');
  //
  CdsBicos.FetchParams;
  CdsBicos.Open;
  //
  Result := false;
  if CdsBicos.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bicos(IDBomba, IDTanque: Integer): Boolean;
begin
  CdsBicos.Close;
  CdsBicos.Params.Clear;
  QryBicos.Close;
  QryBicos.SQL.Clear;
  QryBicos.SQL.Add('select * from bicos_abastec b');
  if IDTanque > 0 then
    QryBicos.SQL.Add('where b.id_tanque = :pIDTanque');
  if IDBomba > 0 then
  begin
    if IDTanque > 0 then
      QryBicos.SQL.Add('and b.id_bomba = :pIDBomba')
    else
      QryBicos.SQL.Add('where b.id_bomba = :pIDBomba');
  end;
  //
  CdsBicos.FetchParams;
  if IDTanque > 0 then
    CdsBicos.Params.ParamByName('pIDTanque').AsInteger := IDTanque;
  if IDBomba > 0 then
    CdsBicos.Params.ParamByName('pIDBomba').AsInteger := IDBomba;
  CdsBicos.Open;
  //
  Result := false;
  if CdsBicos.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bicos(pNumBico: String): Boolean;
begin
  CdsBicos.Close;
  CdsBicos.Params.Clear;
  QryBicos.Close;
  QryBicos.SQL.Clear;
  QryBicos.SQL.Add('select * from bicos_abastec b');
  QryBicos.SQL.Add('where b.bico_concentrador = :pBico');
  //
  CdsBicos.FetchParams;
  CdsBicos.Params.ParamByName('pBico').AsString := pNumBico;
  CdsBicos.Open;
  //
  Result := false;
  if CdsBicos.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bicos_Perda(NumBico: String; Pendente: String = ''; pTipo: Integer = 0): Boolean;
begin
  CdsBicoPerda.Close;
  CdsBicoPerda.Params.Clear;
  QryBicoPerda.Close;
  QryBicoPerda.SQL.Clear;
  QryBicoPerda.SQL.Add('select * from bico_perdas b');
  QryBicoPerda.SQL.Add('where b.numbico = :pNumBico');
  if Pendente <> '' then
    QryBicoPerda.SQL.Add('and b.pendente = ' + QuotedStr(Pendente));
  if pTipo = 1 then
    QryBicoPerda.SQL.Add('and b.trava_abast = ' + QuotedStr('N'));
  if pTipo = 2 then
    QryBicoPerda.SQL.Add('and b.trava_abast = ' + QuotedStr('S'));
  //
  CdsBicoPerda.FetchParams;
  CdsBicoPerda.Params.ParamByName('pNumBico').AsString := NumBico;
  CdsBicoPerda.Open;
  Result := false;
  if CdsBicoPerda.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bomba: Boolean;
begin
  CdsBombas.Close;
  CdsBombas.Params.Clear;
  QryBombas.Close;
  QryBombas.SQL.Clear;
  QryBombas.SQL.Add('select * from bombas_abastec b');
  //
  CdsBombas.FetchParams;
  CdsBombas.Open;
  //
  Result := false;
  if CdsBombas.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bomba(pIDBomba: Integer): Boolean;
begin
  CdsBombas.Close;
  CdsBombas.Params.Clear;
  QryBombas.Close;
  QryBombas.SQL.Clear;
  QryBombas.SQL.Add('select * from bombas_abastec b');
  QryBombas.SQL.Add('where b.id = :pID');
  //
  CdsBombas.FetchParams;
  CdsBombas.Params.ParamByName('pID').AsInteger := pIDBomba;
  CdsBombas.Open;
  //
  Result := false;
  if CdsBombas.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Bomba_Lacre(pIDBomba: Integer): Boolean;
begin
  CdsBombasLacre.Close;
  CdsBombasLacre.Params.ParamByName('pIDBomba').AsInteger := pIDBomba;
  CdsBombasLacre.Open;
  //
  Result := false;
  if CdsBombasLacre.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_ConfigPosto: Boolean;
begin
  CdsConfigPosto.Close;
  CdsConfigPosto.Open;
  //
  Result := false;
  if CdsConfigPosto.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_LivroLMC: Boolean;
begin
  CdsLivroLMC.Close;
  CdsLivroLMC.Open;
  //
  Result := false;
  if CdsLivroLMC.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_LivroLMCPag(pNumLivro: Integer): Boolean;
begin
  CdsLivroLMCPag.Close;
  CdsLivroLMCPag.Params.ParamByName('pNumLivro').AsInteger := pNumLivro;
  CdsLivroLMCPag.Open;
  //
  Result := false;
  if CdsLivroLMCPag.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_PlacaAbastec: Boolean;
begin
  CdsPlacasAbastec.Close;
  CdsPlacasAbastec.Open;
  //
  Result := false;
  if CdsPlacasAbastec.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Tanque(pIDTanque: Integer): Boolean;
begin
  CdsTanques.Close;
  CdsTanques.Params.Clear;
  QryTanques.Close;
  QryTanques.SQL.Clear;
  QryTanques.SQL.Add('select * from tanques_abastec t');
  QryTanques.SQL.Add('where t.id = :pID');
  //
  CdsTanques.FetchParams;
  CdsTanques.Params.ParamByName('pID').AsInteger := pIDTanque;
  CdsTanques.Open;
  //
  Result := false;
  if CdsTanques.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Dados_Tanque: Boolean;
begin
  CdsTanques.Close;
  CdsTanques.Params.Clear;
  QryTanques.Close;
  QryTanques.SQL.Clear;
  QryTanques.SQL.Add('select * from tanques_abastec t');
  //
  CdsTanques.FetchParams;
  CdsTanques.Open;
  //
  Result := false;
  if CdsTanques.RecordCount > 0 then
    Result := true;

end;

{
  function TDmWorkCom.Dados_TanqueEstoque: Boolean;
  begin
  CdsTanqueEstoque.Close;
  CdsTanqueEstoque.Params.Clear;
  QryTanqueEstoque.Close;
  QryTanqueEstoque.SQL.Clear;
  QryTanqueEstoque.SQL.Add('select tq.tanque_numero,p.descricao, p.estoque');
  QryTanqueEstoque.SQL.Add('from tanques_abastec tq, produtos p');
  QryTanqueEstoque.SQL.Add('where tq.id_produto = p.id');
  //
  CdsTanqueEstoque.FetchParams;
  CdsTanqueEstoque.Open;
  //
  Result := false;
  if CdsTanqueEstoque.RecordCount > 0 then
  Result := True;

  end;
}

function TDmPosto.Dados_TanquePerda: Boolean;
begin
  CdsTanquePerda.Close;
  CdsTanquePerda.Params.Clear;
  QryTanquePerda.Close;
  QryTanquePerda.SQL.Clear;
  QryTanquePerda.SQL.Add('select * from tanque_perdas t');
  QryTanquePerda.SQL.Add('where t.data = current_date');
  QryTanquePerda.SQL.Add('and t.impresso = 0');
  //
  CdsTanquePerda.FetchParams;
  CdsTanquePerda.Open;
  //
  Result := false;
  if CdsTanquePerda.RecordCount > 0 then
    Result := true;

end;

procedure TDmPosto.DspConfigPostoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONFIG_POSTO';

end;

procedure TDmPosto.DspLivroLMCGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'LIVRO_LMC';

end;

procedure TDmPosto.DspBicosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'BICOS_ABASTEC';

end;

procedure TDmPosto.DspBombasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'BOMBAS_ABASTEC';

end;

procedure TDmPosto.RegistraAbastecimentos(pNumBico, pData, pHora: String; pEncerrante, pLitros, pValUnit, pTotal: Double; pRemanecente, pAutomatico: Boolean;
  pNumNota: String);
var
  aEstAtual, aNovoEstoque: Double;
begin
  // localiza dados necess�rios
  Dados_Bicos(pNumBico);
  Dados_Bomba(CdsBicos.FieldByName('ID_BOMBA').AsInteger);
  Dados_Tanque(CdsBicos.FieldByName('ID_TANQUE').AsInteger);
  DmProdutos.Dados_Produto(CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
  DmProdutos.Dados_MovimentoEst(CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
  // grava pedido
  CdsAbastecimentos.Append;
  CdsAbastecimentos.FieldByName('NUM_BICO').AsString := pNumBico;
  CdsAbastecimentos.FieldByName('DATA_ABAST').AsDateTime := SVData;
  CdsAbastecimentos.FieldByName('HORA_ABASTEC').AsDateTime := SVHora;

  // CdsAbastecimentos.FieldByName('DATA_ABAST').AsDateTime   := StrToDate(pData);
  // CdsAbastecimentos.FieldByName('HORA_ABASTEC').AsDateTime := StrToTime(pHora);

  CdsAbastecimentos.FieldByName('ENCERRANTE').AsFloat := pEncerrante;
  CdsAbastecimentos.FieldByName('LITROS').AsFloat := pLitros;
  CdsAbastecimentos.FieldByName('PRECO_UNIT').AsFloat := TruncaValor(pValUnit, DmWorkCom.PAFECF.gDecimais);
  // CdsAbastecimentos.FieldByName('PRECO_UNIT').AsFloat      :=  pValUnit;
  // CdsAbastecimentos.FieldByName('VALOR_TOTAL').AsFloat     := pTotal;
  CdsAbastecimentos.FieldByName('VALOR_TOTAL').AsFloat := pLitros * TruncaValor(pValUnit, DmWorkCom.PAFECF.gDecimais);
  CdsAbastecimentos.FieldByName('IDPRODUTO').AsInteger := DmProdutos.CdsProdutos.FieldByName('ID').AsInteger;
  CdsAbastecimentos.FieldByName('DESCRICAO').AsString := DmProdutos.CdsProdutos.FieldByName('DESCRICAO').AsString;
  if pRemanecente then
    CdsAbastecimentos.FieldByName('REMANECENTE').AsString := 'S';
  if pAutomatico then
    CdsAbastecimentos.FieldByName('AUTOMATICO').AsString := 'S';
  if pNumNota <> '' then
  begin
    CdsAbastecimentos.FieldByName('NOTAFISCAL_NUM').AsString := pNumNota;
    CdsAbastecimentos.FieldByName('STATUS_ABASTEC').AsInteger := 3;
  end;
  Grava_Dados(CdsAbastecimentos);
  // baixa o estoque do combustivel
  aEstAtual := Retorna_EstoqueAtual(CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
  aNovoEstoque := aEstAtual - pLitros;
  // grava tabela de produtos
  if not(DmProdutos.CdsProdutos.State in [dsInsert, dsEdit]) then
    DmProdutos.CdsProdutos.Edit;
  DmProdutos.CdsProdutos.FieldByName('ESTOQUE').AsFloat := aNovoEstoque;
  DmProdutos.CdsProdutos.FieldByName('DATA_ESTOQUE').AsDateTime := SVData;
  DmProdutos.CdsProdutos.FieldByName('HORA_ESTOQUE').AsDateTime := SVHora;
  Grava_Dados(DmProdutos.CdsProdutos);
  // grava no produto
  Grava_MovEstoque(CdsTanques.FieldByName('ID_PRODUTO').AsInteger, aNovoEstoque);
  DmProdutos.Grava_EstoqueDia(CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
  // grava tabela de movimento de estoque
  DmProdutos.Grava_TabMovEst(0, CdsTanques.FieldByName('ID_PRODUTO').AsInteger, pLitros);

end;

procedure TDmPosto.CdsBicosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('BICOS_ABASTEC');

end;

procedure TDmPosto.CdsBombasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('BOMBAS_ABASTEC');

end;

procedure TDmPosto.CdsTanquesNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('TANQUES_ABASTEC');

end;

procedure TDmPosto.DspTanquesGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'TANQUES_ABASTEC';

end;

procedure TDmPosto.CdsConfigPostoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CONFIG_POSTO');
  DataSet.FieldByName('PORTA_CBC').AsInteger := 0;
  DataSet.FieldByName('IP_CBC').AsString := 'localhost';
  DataSet.FieldByName('TIPO_CBC').AsInteger := 0;
  DataSet.FieldByName('PORTA_IP_CBC').AsInteger := 2001;
  DataSet.FieldByName('CBC_IDENTIFICADOR').AsString := 'N';

end;

procedure TDmPosto.CdsBicoPerdaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('BICO_PERDAS');
  DataSet.FieldByName('PENDENTE').AsString := 'S';
  DataSet.FieldByName('DATA_MOVTO').AsDateTime := Now;
  DataSet.FieldByName('HORA_MOVTO').AsDateTime := Now;

end;

procedure TDmPosto.DspBicoPerdaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'BICO_PERDAS';

end;

procedure TDmPosto.LimpaEstoqueFisicoAnterior;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update tanques_abastec x set');
    Q.SQL.Add('x.est_fisico = 0');
    Q.SQL.Add('where x.est_fisico > 0');
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.GravaEstoqueFisico(pID: Integer; pEstoque: Double);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update tanques_abastec x set');
    Q.SQL.Add('x.data_estoque = current_date,');
    Q.SQL.Add('x.hora_estoque = current_time,');
    Q.SQL.Add('x.est_fisico = :pEstoque');
    Q.SQL.Add('where x.id = ' + IntToStr(pID));
    Q.Params.ParamByName('pEstoque').AsFloat := pEstoque;
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;
end;

function TDmPosto.VerificaBicoLiberadoEstoque(NumBico: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select x.id from tanque_perdas x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.resolvido = ' + QuotedStr('N'));
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.VerificaResolvePennciaEstoqueCombustivel(fItens: TDataSet);
var
  NumBico: String;
begin
  fItens.First;
  while not fItens.Eof do
  begin
    if DmProdutos.Dados_Produto(fItens.FieldByName('IDPRODUTO').AsInteger) then
    begin
      if DmProdutos.CdsProdutos.FieldByName('COMBUSTIVEL').AsString = 'S' then
      begin
        NumBico := RetornaBicoProduto(fItens.FieldByName('IDPRODUTO').AsInteger);
        if VerificaBicoLiberadoEstoque(NumBico) then
          ResolvePendenciaEstoqueCombustivel(NumBico);
      end;
    end;
    fItens.Next;
  end;
end;

procedure TDmPosto.ResolvePendenciaEstoqueCombustivel(NumBico: String);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('update tanque_perdas x set');
    Q.SQL.Add('x.resolvido = ' + QuotedStr('S'));
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaInformacaoEstFisico(var Tanques: String): Boolean;
var
  Q: TFDQuery;
begin
  Tanques := '';
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select x.tanque_numero from tanques_abastec x');
    Q.SQL.Add('where (x.est_fisico is null or x.est_fisico = 0)');
    Q.Open;
    Result := false;
    if not Q.IsEmpty then
    begin
      Result := true;
      while not Q.Eof do
      begin
        Tanques := Tanques + Q.FieldByName('tanque_numero').AsString + ', ';
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaMovimentoBico(DataMov: TDateTime; NumBico: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select x.id from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_emissao > :pData');
    // Q.SQL.Add('and x.data_emissao >= :pData');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaEncerranteFim(DataMov: TDateTime; NumBico: String): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select coalesce(max(x.encerrante),0) as valor');
    Q.SQL.Add('from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast = :pData');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Q.FieldByName('valor').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaEncerranteIni(DataMov: TDateTime; NumBico: String): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select coalesce(min(x.encerrante  - x.litros),0) as valor');
    Q.SQL.Add('from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast = :pData');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Q.FieldByName('valor').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaQuantVendida(DataMov: TDateTime; NumBico: String): Double;
var
  Q: TFDQuery;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select coalesce(sum(x.litros),0) as valor from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_emissao > :pData');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Q.FieldByName('valor').AsFloat;
    Q.Close;
    // captura os volumes de notas emitidas
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select coalesce(sum(x.litros),0) as valor from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast > :pData');
    // Q.SQL.Add('and x.data_abast >= :pData');
    Q.SQL.Add('and x.status_abastec = 3');
    Q.SQL.Add('and (x.coo_cupom is null or x.coo_cupom = 0)');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Result + Q.FieldByName('valor').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaEncerranteUltZ(DataMov: TDateTime; NumBico: String): Double;
var
  Q: TFDQuery;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select x.encerrante');
    Q.SQL.Add('from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast <= :pData');
    Q.SQL.Add('and x.remanecente = ' + QuotedStr('N'));
    Q.SQL.Add('order by x.data_abast,x.hora_abastec,x.encerrante');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    while not Q.Eof do
    begin
      Result := Q.FieldByName('encerrante').AsFloat;
      Q.Next;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;
  {
    Q := TFDQuery.Create(nil);
    try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select coalesce(max(x.encerrante),0) as valor');
    Q.SQL.Add('from abastecimentos x');
    Q.SQL.Add('where x.num_bico = '+QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast <= :pData');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Q.FieldByName('valor').AsFloat;
    Q.Close;
    finally
    FreeAndNil(Q);
    end;
  }
end;

procedure TDmPosto.AdicionaPerdaBico(NumBico, Trava: String; Volume, ef, ea: Double);
begin
  CdsBicoPerda.Append;
  CdsBicoPerda.FieldByName('NUMBICO').AsString := NumBico;
  CdsBicoPerda.FieldByName('VOLUME').AsFloat := Volume;
  CdsBicoPerda.FieldByName('EF').AsFloat := ef;
  CdsBicoPerda.FieldByName('EA').AsFloat := ea;
  CdsBicoPerda.FieldByName('TRAVA_ABAST').AsString := Trava;
  Grava_Dados(CdsBicoPerda);
end;

procedure TDmPosto.DspPlacasAbastecGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PLACAS_ABASTEC';

end;

procedure TDmPosto.CdsPlacasAbastecNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PLACAS_ABASTEC');
  DataSet.FieldByName('DATA').AsDateTime := SVData;
  DataSet.FieldByName('HORA').AsDateTime := SVHora;

end;

function TDmPosto.GeraCupomSaldoRemanescente(FechamentoDia: Boolean = false): Boolean;
var
  Q: TFDQuery;
  EFRemanece, EncConcentrador, EncFinal, EncInicial, aQuantRem, SaldoRem, AuxVespeb: Double;
  DataAbastec: TDateTime;
begin
  Q := TFDQuery.Create(nil);
  try
    SALDO := 0;
    VTACF := 0;
    VTANF := 0;
    AFER := 0;
    VESPEB := 0;
    EFRemanece := 0;
    aQuantRem := 0;
    EncFinal := 0;
    EncConcentrador := 0;
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select * from proc_retorna_remanecente(:pData)');
    Q.Params.ParamByName('pData').AsDate := DmAcBr.ACBrECF1.DataMovimento;
    Q.Open;
    while not Q.Eof do
    begin
      EncFinal := TruncaValor(Q.FieldByName('ef').AsFloat, 3);
      EncInicial := TruncaValor(Q.FieldByName('ei').AsFloat, 3);
      EncConcentrador := DmPosto.RetornaEncBicoConcentrador(Q.FieldByName('bico_concentrador').AsString);
      EncConcentrador := TruncaValor(EncConcentrador, 3);
      if (EncConcentrador <> EncFinal) and (EncConcentrador > 0) and (EncFinal > 0) then
      begin
        if Q.FieldByName('quebra_negativa').AsString = 'N' then
          EncFinal := EncConcentrador;
      end;
      // verifica tipo de fechamento
      if not FechamentoDia then
      begin
        if Q.FieldByName('quebra_negativa').AsString = 'N' then
        begin
          // retorna o total de cupons emitidos para o item
          VTACF := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 4,
            Q.FieldByName('data_redz').AsDateTime, 'S');
          VTACF := StrToFloat(FormatFloat('0.000', VTACF));
          // retorna o total de NF emitida para o item
          VTANF := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 3,
            Q.FieldByName('data_redz').AsDateTime, 'S');
          VTANF := StrToFloat(FormatFloat('0.000', VTANF));
          // retorna o total de afericoes para o item
          AFER := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 2,
            Q.FieldByName('data_redz').AsDateTime, 'S');
          AFER := StrToFloat(FormatFloat('0.000', AFER));
        end
        else
        begin
          // retorna o total de cupons emitidos para o item
          VTACF := RetornaTotalAbastecPeriodo(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 4,
            Q.FieldByName('tipo').AsInteger, Q.FieldByName('data_redz').AsDateTime, 'S', Q.FieldByName('HORA_QUEBRA').AsDateTime);
          VTACF := StrToFloat(FormatFloat('0.000', VTACF));
          // retorna o total de NF emitida para o item
          VTANF := RetornaTotalAbastecPeriodo(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 3,
            Q.FieldByName('tipo').AsInteger, Q.FieldByName('data_redz').AsDateTime, 'S', Q.FieldByName('HORA_QUEBRA').AsDateTime);
          VTANF := StrToFloat(FormatFloat('0.000', VTANF));
          // retorna o total de afericoes para o item
          AFER := RetornaTotalAbastecPeriodo(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 2,
            Q.FieldByName('tipo').AsInteger, Q.FieldByName('data_redz').AsDateTime, 'S', Q.FieldByName('HORA_QUEBRA').AsDateTime);
          AFER := StrToFloat(FormatFloat('0.000', AFER));
        end;
        VESPEB := RetornaTotalVespebBico(Q.FieldByName('data_redz').AsDateTime, Q.FieldByName('ID_BICO').AsInteger);
        VESPEB := TruncaValor(VESPEB, 3);
      end
      else
      begin
        if Q.FieldByName('quebra_negativa').AsString = 'N' then
        begin
          // retorna o total de cupons emitidos para o item
          VTACF := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 4,
            DmAcBr.ACBrECF1.DataMovimento, 'N');
          VTACF := StrToFloat(FormatFloat('0.000', VTACF));
          // retorna o total de NF emitida para o item
          VTANF := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 3,
            DmAcBr.ACBrECF1.DataMovimento, 'N');
          VTANF := StrToFloat(FormatFloat('0.000', VTANF));
          // retorna o total de afericoes para o item
          AFER := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 2,
            DmAcBr.ACBrECF1.DataMovimento, 'N');
          AFER := StrToFloat(FormatFloat('0.000', AFER));
        end
        else
        begin
          // retorna o total de cupons emitidos para o item
          VTACF := RetornaTotalAbastecPeriodo(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 4,
            Q.FieldByName('tipo').AsInteger, DmAcBr.ACBrECF1.DataMovimento, 'N', Q.FieldByName('HORA_QUEBRA').AsDateTime);
          VTACF := StrToFloat(FormatFloat('0.000', VTACF));
          // retorna o total de NF emitida para o item
          VTANF := RetornaTotalAbastecPeriodo(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 3,
            Q.FieldByName('tipo').AsInteger, DmAcBr.ACBrECF1.DataMovimento, 'N', Q.FieldByName('HORA_QUEBRA').AsDateTime);
          VTANF := StrToFloat(FormatFloat('0.000', VTANF));
          // retorna o total de afericoes para o item
          AFER := RetornaTotalAbastecPeriodo(Q.FieldByName('bico_concentrador').AsString, Q.FieldByName('idproduto').AsInteger, 2,
            Q.FieldByName('tipo').AsInteger, DmAcBr.ACBrECF1.DataMovimento, 'N', Q.FieldByName('HORA_QUEBRA').AsDateTime);
          AFER := StrToFloat(FormatFloat('0.000', AFER));
        end;
        VESPEB := RetornaTotalVespebBico(DmAcBr.ACBrECF1.DataMovimento, Q.FieldByName('ID_BICO').AsInteger);
        VESPEB := TruncaValor(VESPEB, 3);
      end;
      // Formula para cauclo de saldo remanescente
      // EF � EI � VTACF � VTANF � AFER - VESPEB
      SALDO := EncFinal - EncInicial;
      SALDO := StrToFloat(FormatFloat('0.000', SALDO));
      // SALDO := TruncaValor(SALDO,3);
      SALDO := SALDO - VTACF;
      SALDO := StrToFloat(FormatFloat('0.000', SALDO));
      SALDO := SALDO - VTANF;
      SALDO := StrToFloat(FormatFloat('0.000', SALDO));
      SALDO := SALDO - AFER;
      SALDO := StrToFloat(FormatFloat('0.000', SALDO));
      if VESPEB > 0 then
      begin
        SALDO := SALDO - VESPEB;
      end;
      {
        if VESPEB < 0 then
        begin
        AuxVespeb := VESPEB*-1;
        SALDO := SALDO + AuxVespeb;
        end
        else if VESPEB > 0 then
        begin
        SALDO := SALDO - VESPEB;
        end;
      }
      // E (antes) = 150.000,000 E (ap�s) = 200.000,000 VESPEB = 200.000,000 � 150.000,000 = 50.000,00
      // E (antes) = 150.000,000 E (ap�s) = 130.000,000 VESPEB = 130.000,000 � 150.000,000 = -(20.000,00)
      if SALDO > 0 then
      begin
        Dados_Abastecimentos;
        while SALDO > 0 do // 16,25   -  8,32  =  7,93
        begin
          // captura o Enc Final do remanecente
          if Q.FieldByName('quebra_negativa').AsString = 'N' then
          begin
            EFRemanece := GeraAbastecimentoSaldoRemanecente(aQuantRem, DataAbastec, Q.FieldByName('data_redz').AsDateTime,
              Q.FieldByName('bico_concentrador').AsString, VESPEB);
          end
          else
          begin
            EFRemanece := GeraAbastecimentoSaldoRemanecentePeriodo(aQuantRem, DataAbastec, Q.FieldByName('data_redz').AsDateTime,
              Q.FieldByName('bico_concentrador').AsString, VESPEB, Q.FieldByName('tipo').AsInteger, Q.FieldByName('HORA_QUEBRA').AsDateTime);
          end;
          if EFRemanece > 0 then
          begin
            if (aQuantRem < SALDO) and (aQuantRem > 0) then
            begin
              SaldoRem := aQuantRem; // 8,32
              SALDO := SALDO - aQuantRem; // 16,25 - 8,32 = 7,93
              SALDO := StrToFloat(FormatFloat('0.000', SALDO));
            end
            else
            begin
              SaldoRem := aQuantRem;
              SALDO := 0;
            end;
            // registra novo pedido com saldo remanescente
            if not FechamentoDia then
            begin
              RegistraAbastecimentos(Q.FieldByName('bico_concentrador').AsString, DateToStr(DataAbastec), TimeToStr(Now), EFRemanece, SaldoRem,
                Q.FieldByName('valor').AsFloat, SALDO * Q.FieldByName('valor').AsFloat, true, true);
            end
            else
            begin
              RegistraAbastecimentos(Q.FieldByName('bico_concentrador').AsString, DateToStr(DmAcBr.ACBrECF1.DataMovimento), TimeToStr(Now), EFRemanece,
                SaldoRem, Q.FieldByName('valor').AsFloat, SALDO * Q.FieldByName('valor').AsFloat, true, true);
            end;
          end
          else
            SALDO := 0;
        end;
        // grava descontinuidade como resolvido caso tenha
        ResolveDescontinuidade(Q.FieldByName('bico_concentrador').AsString);
      end;
      // vrifica e move os abastecimentos pendentes
      DmPosto.MoveAbastecimentosTemporarios(Q.FieldByName('bico_concentrador').AsString);
      Q.Next;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

{
  function TDmPosto.GeraCupomSaldoRemanescente(ReducaoZPendente:String): Boolean;
  var Q : TFDQuery;
  EFRemanece, EncConcentrador, EncFinal, EncInicial, aQuantRem,
  SaldoRem : Double;
  begin
  Q := TFDQuery.Create(nil);
  try
  SALDO  := 0;
  VTACF  := 0;
  VTANF  := 0;
  AFER   := 0;
  VESPEB := 0;
  EFRemanece := 0;
  aQuantRem := 0;
  EncFinal := 0;
  EncConcentrador := 0;
  Q.Connection := ConexaoDados;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select * from proc_retorna_remanecente(:pData,:Pendente)');
  Q.Params.ParamByName('pData').AsDate      := DmAcBr.ACBrECF1.DataMovimento;
  Q.Params.ParamByName('Pendente').AsString := ReducaoZPendente;
  Q.Open;
  while not Q.Eof do
  begin
  EncFinal := TruncaValor(Q.FieldByName('ef').AsFloat,3);
  EncInicial := TruncaValor(Q.FieldByName('ei').AsFloat,3);
  EncConcentrador := DmPosto.RetornaEncBicoConcentrador(Q.FieldByName('bico_concentrador').AsString);
  EncConcentrador := TruncaValor(EncConcentrador,3);
  if (EncConcentrador <> EncFinal) and
  (EncConcentrador > 0) and
  (EncFinal > 0)then
  begin
  EncFinal := EncConcentrador;
  end;
  // retorna o total de cupons emitidos para o item
  VTACF := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString,
  Q.FieldByName('idproduto').AsInteger,
  4,Q.FieldByName('data_redz').AsDateTime,
  ReducaoZPendente);
  VTACF := StrToFloat(FormatFloat('0.000',VTACF));
  //      VTACF := TruncaValor(VTACF,3);
  // retorna o total de NF emitida para o item
  VTANF := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString,
  Q.FieldByName('idproduto').AsInteger,
  3,Q.FieldByName('data_redz').AsDateTime,
  ReducaoZPendente);
  VTANF := StrToFloat(FormatFloat('0.000',VTANF));
  //      VTANF := TruncaValor(VTANF,3);
  // retorna o total de afericoes para o item
  AFER := RetornaTotalAbastecimento(Q.FieldByName('bico_concentrador').AsString,
  Q.FieldByName('idproduto').AsInteger,
  2,Q.FieldByName('data_redz').AsDateTime,
  ReducaoZPendente);
  AFER := StrToFloat(FormatFloat('0.000',AFER));
  //      AFER := TruncaValor(AFER,3);
  VESPEB := RetornaTotalVespebBico(Q.FieldByName('data_redz').AsDateTime,Q.FieldByName('ID_BICO').AsInteger);
  VESPEB := TruncaValor(VESPEB,3);
  // Formula para cauclo de saldo remanescente
  // EF � EI � VTACF � VTANF � AFER - VESPEB
  SALDO := EncFinal-EncInicial;
  SALDO := StrToFloat(FormatFloat('0.000',SALDO));
  //      SALDO := TruncaValor(SALDO,3);
  SALDO := SALDO - VTACF;
  SALDO := StrToFloat(FormatFloat('0.000',SALDO));
  SALDO := SALDO - VTANF;
  SALDO := StrToFloat(FormatFloat('0.000',SALDO));
  SALDO := SALDO - AFER;
  SALDO := StrToFloat(FormatFloat('0.000',SALDO));
  if VESPEB < 0 then
  begin
  VESPEB := VESPEB*-1;
  SALDO := SALDO + VESPEB;
  end
  else if VESPEB > 0 then
  begin
  SALDO := SALDO - VESPEB;
  end;
  // E (antes) = 150.000,000 E (ap�s) = 200.000,000 VESPEB = 200.000,000 � 150.000,000 = 50.000,00
  // E (antes) = 150.000,000 E (ap�s) = 130.000,000 VESPEB = 130.000,000 � 150.000,000 = -(20.000,00)
  if SALDO > 0.01  then
  begin
  Dados_Abastecimentos;
  while SALDO > 0 do // 16,25   -  8,32  =  7,93
  begin
  // captura o Enc Final do remanecente
  EFRemanece := GeraAbastecimentoSaldoRemanecente(aQuantRem,
  Q.FieldByName('data_redz').AsDateTime,
  Q.FieldByName('bico_concentrador').AsString);
  if aQuantRem < SALDO then
  begin
  SaldoRem := aQuantRem; // 8,32
  SALDO := SALDO - aQuantRem; // 16,25 - 8,32 = 7,93
  SALDO := StrToFloat(FormatFloat('0.000',SALDO));
  end
  else
  begin
  SaldoRem := aQuantRem;
  SALDO := 0;
  end;
  // registra novo pedido com saldo remanescente
  RegistraAbastecimentos(Q.FieldByName('bico_concentrador').AsString,
  DateToStr(Q.FieldByName('data_redz').AsDateTime),
  TimeToStr(Now),
  EFRemanece,
  SaldoRem,
  Q.FieldByName('valor').AsFloat,
  SALDO*Q.FieldByName('valor').AsFloat,
  True,
  True);
  end;
  // grava descontinuidade como resolvido caso tenha
  ResolveDescontinuidade(Q.FieldByName('bico_concentrador').AsString);
  end;
  // vrifica e move os abastecimentos pendentes
  DmPosto.MoveAbastecimentosTemporarios(Q.FieldByName('bico_concentrador').AsString);
  Q.Next;
  end;
  Q.Close;
  finally
  FreeAndNil(Q);
  end;

  end;
}

procedure TDmPosto.AlteraStatusAbastecimento(pID, pStatus, pCOO: Integer; pNotaFiscal: String; pDataEmissao, pHoraEmissao: TDateTime);
begin
  if Dados_Abastecimentos(0, pID) then
  begin
    if not(CdsAbastecimentos.State in [dsInsert, dsEdit]) then
      CdsAbastecimentos.Edit;
    CdsAbastecimentos.FieldByName('NOTAFISCAL_NUM').AsString := pNotaFiscal;
    CdsAbastecimentos.FieldByName('COO_CUPOM').AsInteger := pCOO;
    CdsAbastecimentos.FieldByName('STATUS_ABASTEC').AsInteger := pStatus;
    CdsAbastecimentos.FieldByName('NUMSERIEECF').AsString := DmAcBr.ACBrECF1.NumSerie;
    if pDataEmissao > 0 then
    begin
      CdsAbastecimentos.FieldByName('DATA_EMISSAO').AsDateTime := pDataEmissao;
      CdsAbastecimentos.FieldByName('HORA_EMISSAO').AsDateTime := pHoraEmissao;
    end;
    Grava_Dados(CdsAbastecimentos);
  end;
end;

procedure TDmPosto.GravaEncerranteBico(pNumBico: String; pEncerrante: Double);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('update bicos_abastec b set');
    Q.SQL.Add('b.encerrante = :pEncerrante');
    Q.SQL.Add('where b.bico_concentrador = :pBico');
    Q.Params.ParamByName('pBico').AsString := pNumBico;
    Q.Params.ParamByName('pEncerrante').AsFloat := pEncerrante;
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.GravaPerdaCombustivel(NumBico: String; EI: Double);
var
  Q: TFDQuery;
  aIDTanque, aIDProd: Integer;
  aDescricao: String;
begin
  Q := TFDQuery.Create(nil);
  try
    if Dados_Bicos(NumBico) then
    begin
      // localiza dados necess�rios
      Dados_Bomba(CdsBicos.FieldByName('ID_BOMBA').AsInteger);
      Dados_Tanque(CdsBicos.FieldByName('ID_TANQUE').AsInteger);
      DmProdutos.Dados_Produto(CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
      aIDTanque := CdsTanques.FieldByName('TANQUE_NUMERO').AsInteger;
      aIDProd := CdsTanques.FieldByName('ID_PRODUTO').AsInteger;
      aDescricao := DmProdutos.CdsProdutos.FieldByName('DESCRICAO').AsString;
      //
      with Q do
      begin
        Connection := ConexaoDados;
        Close;
        SQL.Clear;
        SQL.Add('insert into tanque_perdas (');
        SQL.Add('  id,');
        SQL.Add('  data,');
        SQL.Add('  tanque_numero,');
        SQL.Add('  quantidade,');
        SQL.Add('  impresso,');
        SQL.Add('  num_bico,');
        SQL.Add('  id_produto,');
        SQL.Add('  descricao,');
        SQL.Add('  resolvido)');
        SQL.Add('values (');
        SQL.Add('  gen_id(tanque_perdas_id,1),');
        SQL.Add('  current_date,');
        SQL.Add('  :tanque_numero,');
        SQL.Add('  :quantidade,');
        SQL.Add('  0,');
        SQL.Add('  :num_bico,');
        SQL.Add('  :id_produto,');
        SQL.Add('  :descricao,');
        SQL.Add('  ' + QuotedStr('N') + ');');
        Params.ParamByName('tanque_numero').AsInteger := aIDTanque;
        Params.ParamByName('quantidade').AsFloat := EI;
        Params.ParamByName('num_bico').AsString := NumBico;
        Params.ParamByName('id_produto').AsInteger := aIDProd;
        Params.ParamByName('descricao').AsString := aDescricao;
        ExecSQL;
        Close;
      end;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.GravaPerdaComunicacaoBico(Comunica: Integer; NumBico: String; EI: Double);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('execute procedure proc_grava_perda_comunica_bc(:pComunica,:NumBico,:EI)');
      Params.ParamByName('pComunica').AsInteger := Comunica;
      Params.ParamByName('NumBico').AsString := NumBico;
      Params.ParamByName('EI').AsFloat := EI;
      ExecSQL;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaComunicacaoBicos(ReducaoZ: Boolean = false; SemComunicacao: Boolean = false; pDataMov: TDateTime = 0): Boolean;
var
  HoraInicio, MinutoInicio, SegundoInicio, FracaoInicio: word;
  HoraAtual, MinutoAtual, SegundoAtual, FracaoAtual: word;
  Seg1, Seg2: Double;
begin
  CdsBicoComunica.Close;
  CdsBicoComunica.Params.Clear;
  QryBicoComunica.Close;
  QryBicoComunica.SQL.Clear;
  QryBicoComunica.SQL.Add('select * from bico_comunica bc');
  QryBicoComunica.SQL.Add('where bc.fim is null');
  QryBicoComunica.SQL.Add('and bc.comunicacao = 1');
  if pDataMov = 0 then
    QryBicoComunica.SQL.Add('and bc.data_movimento = current_date')
  else
    QryBicoComunica.SQL.Add('and bc.data_movimento = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pDataMov)));
  if not SemComunicacao then
    QryBicoComunica.SQL.Add('and bc.impresso = 0');
  //
  CdsBicoComunica.FetchParams;
  CdsBicoComunica.Open;
  //
  Result := false;
  if CdsBicoComunica.RecordCount > 0 then
  begin
    if not ReducaoZ then
    begin
      // captura as horas
      DecodeTime(CdsBicoComunica.FieldByName('INICIO').AsDateTime, HoraInicio, MinutoInicio, SegundoInicio, FracaoInicio);
      DecodeTime(Now, HoraAtual, MinutoAtual, SegundoAtual, FracaoAtual);
      if HoraAtual > HoraInicio then // caso tenha mudado a hora
        MinutoAtual := MinutoAtual + 60;
      // 1 minuto = 60 segundos ent�o 10 minutos = 600
      Seg1 := (MinutoInicio * 60) + SegundoInicio;
      Seg2 := (MinutoAtual * 60) + SegundoAtual;
      // verifica
      if Seg2 - Seg1 > 600 then
        Result := true;
    end
    else
      Result := true;
  end;

end;

{
  function TDmPosto.VerificaComunicacaoBicos(ReducaoZ:Boolean=false;
  SemComunicacao:Boolean=false): Boolean;
  var HoraInicio, MinutoInicio, SegundoInicio, FracaoInicio : word;
  HoraAtual, MinutoAtual, SegundoAtual, FracaoAtual : word;
  Seg1, Seg2 : Double;
  begin
  CdsBicoComunica.Close;
  CdsBicoComunica.Params.Clear;
  QryBicoComunica.Close;
  QryBicoComunica.SQL.Clear;
  QryBicoComunica.SQL.Add('select * from bico_comunica bc');
  QryBicoComunica.SQL.Add('where bc.fim is null');
  QryBicoComunica.SQL.Add('and bc.comunicacao = 1');
  QryBicoComunica.SQL.Add('and bc.data_movimento = current_date');
  if not SemComunicacao then
  QryBicoComunica.SQL.Add('and bc.impresso = 0');
  //
  CdsBicoComunica.FetchParams;
  CdsBicoComunica.Open;
  //
  Result := false;
  if CdsBicoComunica.RecordCount > 0 then
  begin
  if not ReducaoZ then
  begin
  // captura as horas
  DecodeTime(CdsBicoComunica.FieldByName('INICIO').AsDateTime,HoraInicio,MinutoInicio,SegundoInicio,FracaoInicio);
  DecodeTime(Now,HoraAtual,MinutoAtual,SegundoAtual,FracaoAtual);
  if HoraAtual > HoraInicio then // caso tenha mudado a hora
  MinutoAtual := MinutoAtual + 60;
  // 1 minuto = 60 segundos ent�o 10 minutos = 600
  Seg1 := (MinutoInicio * 60) + SegundoInicio;
  Seg2 := (MinutoAtual * 60) + SegundoAtual;
  // verifica
  if Seg2 - Seg1 > 600 then
  Result := True;
  end
  else Result := True;
  end;

  end;
}
function TDmPosto.VerificaRetornoComunicacaoBico(ReducaoZ: Boolean = true): Boolean;
var
  aDataUltZ: TDateTime;
  AuxData: String;
begin
  if ReducaoZ then
    aDataUltZ := DmWorkCom.RetornaDataUltimaRedZ
  else
    aDataUltZ := Now;
  AuxData := FormatDateTime('MM/DD/YYYY', aDataUltZ);
  CdsBicoComunica.Close;
  CdsBicoComunica.Params.Clear;
  QryBicoComunica.Close;
  QryBicoComunica.SQL.Clear;
  QryBicoComunica.SQL.Add('select * from bico_comunica bc');
  QryBicoComunica.SQL.Add('where bc.fim is not null');
  QryBicoComunica.SQL.Add('and bc.comunicacao = 0');
  // QryBicoComunica.SQL.Add('and bc.data_movimento = current_date');
  QryBicoComunica.SQL.Add('and bc.data_movimento = ' + QuotedStr(AuxData));
  QryBicoComunica.SQL.Add('and bc.impresso = 1');
  //
  CdsBicoComunica.FetchParams;
  CdsBicoComunica.Open;
  //
  Result := false;
  if CdsBicoComunica.RecordCount > 0 then
    Result := true;

end;

function TDmPosto.Gera_Registro_Manutencao_Bomba(ef, EI: Double; pIDBomba, pIDTanque, pIDBico: Integer; pData, pHora: TDateTime;
  pCNPJ, pCPF, pLacreOld, pLacreNew, pMotivo, pMotivo1, pMotivo2, pJustificativa, pJustificativa1, pJustificativa2, pMedidas, pMedidas1,
  pMedidas2: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Result := true;
    try
      with Q do
      begin
        Connection := ConexaoDados;
        Close;
        SQL.Clear;
        SQL.Add('insert into placas_abastec (');
        SQL.Add('  id,');
        SQL.Add('  id_tanque,');
        SQL.Add('  id_bomba,');
        SQL.Add('  id_bico,');
        SQL.Add('  data,');
        SQL.Add('  hora,');
        SQL.Add('  motivo,');
        SQL.Add('  motivo1,');
        SQL.Add('  motivo2,');
        SQL.Add('  cnpj,');
        SQL.Add('  cpf,');
        SQL.Add('  num_lacre_out,');
        SQL.Add('  num_lacre_in,');
        SQL.Add('  encerrante_out,');
        SQL.Add('  encerrante_in,');
        SQL.Add('  vespeb,');
        SQL.Add('  justificativa,');
        SQL.Add('  justificativa1,');
        SQL.Add('  justificativa2,');
        SQL.Add('  medidas,');
        SQL.Add('  medidas1,');
        SQL.Add('  medidas2)');
        SQL.Add('values (');
        SQL.Add('  :id,');
        SQL.Add('  :id_tanque,');
        SQL.Add('  :id_bomba,');
        SQL.Add('  :id_bico,');
        SQL.Add('  :data,');
        SQL.Add('  :hora,');
        SQL.Add('  :motivo,');
        SQL.Add('  :motivo1,');
        SQL.Add('  :motivo2,');
        SQL.Add('  :cnpj,');
        SQL.Add('  :cpf,');
        SQL.Add('  :num_lacre_out,');
        SQL.Add('  :num_lacre_in,');
        SQL.Add('  :encerrante_out,');
        SQL.Add('  :encerrante_in,');
        SQL.Add('  :vespeb,');
        SQL.Add('  :justificativa,');
        SQL.Add('  :justificativa1,');
        SQL.Add('  :justificativa2,');
        SQL.Add('  :medidas,');
        SQL.Add('  :medidas1,');
        SQL.Add('  :medidas2)');
        // passa os paramentros
        Params.ParamByName('id').AsInteger := GenID('PLACAS_ABASTEC');
        Params.ParamByName('id_tanque').AsInteger := pIDTanque;
        Params.ParamByName('id_bomba').AsInteger := pIDBomba;
        Params.ParamByName('id_bico').AsInteger := pIDBico;
        Params.ParamByName('data').AsDate := pData;
        Params.ParamByName('hora').AsTime := pHora;
        Params.ParamByName('motivo').AsString := pMotivo;
        Params.ParamByName('motivo1').AsString := pMotivo1;
        Params.ParamByName('motivo2').AsString := pMotivo2;
        Params.ParamByName('cnpj').AsString := pCNPJ;
        Params.ParamByName('cpf').AsString := pCPF;
        Params.ParamByName('num_lacre_out').AsString := pLacreOld;
        Params.ParamByName('num_lacre_in').AsString := pLacreNew;
        Params.ParamByName('encerrante_out').AsFloat := ef;
        Params.ParamByName('encerrante_in').AsFloat := EI;
        Params.ParamByName('vespeb').AsFloat := EI - ef;
        Params.ParamByName('justificativa').AsString := pJustificativa;
        Params.ParamByName('justificativa1').AsString := pJustificativa1;
        Params.ParamByName('justificativa2').AsString := pJustificativa2;
        Params.ParamByName('medidas').AsString := pMedidas;
        Params.ParamByName('medidas1').AsString := pMedidas1;
        Params.ParamByName('medidas2').AsString := pMedidas2;
        // Exemplos de c�lculo do VESPEB:
        // E(antes) = 150.000,000 E(ap�s) = 200.000,000
        // VESPEB = 200.000,000 - 150.000,000 = 50.000,00
        // E(antes) = 150.000,000 E(ap�s) = 130.000,000
        // VESPEB = 130.000,000 - 150.000,000 = -(20.000,00)
        ExecSQL;
      end;
    except
      Result := false;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.Grava_Encerrante_Manutencao_Bomba(pIDPlaca: Integer; pEncerrante, pVESPEB: Double): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update placas_abastec p set');
    Q.SQL.Add('p.encerrante_in = :pEncerrante,');
    Q.SQL.Add('p.vespeb = :pVespeb');
    Q.SQL.Add('where p.id = :pID');
    Q.Params.ParamByName('pEncerrante').AsFloat := pEncerrante;
    Q.Params.ParamByName('pVespeb').AsFloat := pVESPEB;
    Q.Params.ParamByName('pID').AsInteger := pIDPlaca;
    //
    Result := true;
    try
      Q.ExecSQL;
    except
      Result := false;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.Grava_RegistroLivroLMC(pPagina: Integer; pLivro: Integer = 0; pQuantPag: Integer = 0; pDataAbertura: TDateTime = 0;
  pDataFechamento: TDateTime = 0; pIDResponsavel: Integer = 0; pIDConferente: Integer = 0; pIDGerente: Integer = 0);
begin
  if CdsLivroLMC.RecordCount = 0 then
  begin
    CdsLivroLMC.Append;
    CdsLivroLMC.FieldByName('NUM_LIVRO').AsInteger := pLivro;
    CdsLivroLMC.FieldByName('QUANT_PAG').AsInteger := pQuantPag;
    CdsLivroLMC.FieldByName('DATA_ABERTURA').AsDateTime := pDataAbertura;
  end
  else
    CdsLivroLMC.Edit;
  CdsLivroLMC.FieldByName('PAG_ATUAL_IMPRESSA').AsInteger := pPagina;
  // se for fechamento grava os dados referentes
  if pDataFechamento > 0 then
  begin
    CdsLivroLMC.FieldByName('DATA_FECHAMENTO').AsDateTime := pDataFechamento;
    CdsLivroLMC.FieldByName('ID_RESPONSAVEL').AsInteger := pIDResponsavel;
    CdsLivroLMC.FieldByName('ID_CONFERENTE').AsInteger := pIDConferente;
    CdsLivroLMC.FieldByName('ID_GERENTE').AsInteger := pIDGerente;
  end;
  //
  Grava_Dados(CdsLivroLMC);

end;

procedure TDmPosto.GravaArquivoConfigPosto;
var
  Q: TFDQuery;
  ArqIni: TIniFile;
  aPath: String;
  aControle: Integer;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select tq.tanque_numero,bo.bomba_numero,bi.bico_concentrador');
      SQL.Add('from tanques_abastec tq,bicos_abastec bi, bombas_abastec bo');
      SQL.Add('where bi.id_tanque = tq.id');
      SQL.Add('and bi.id_bomba = bo.id');
      Open;
      if not IsEmpty then
      begin
        aControle := 0;
        aPath := ExtractFilePath(Application.ExeName);
        ArqIni := TIniFile.Create(aPath + 'ArqVerifica.INI');
        while not Eof do
        begin
          Inc(aControle);
          ArqIni.WriteString('POSTO', 'TANQUE_' + IntToStr(aControle), Criptografa(ZeroEsquerda(FieldByName('tanque_numero').AsString, 5), 10));
          ArqIni.WriteString('POSTO', 'BOMBA_' + IntToStr(aControle), Criptografa(ZeroEsquerda(FieldByName('bomba_numero').AsString, 5), 10));
          ArqIni.WriteString('POSTO', 'BICO_' + IntToStr(aControle), Criptografa(ZeroEsquerda(FieldByName('bico_concentrador').AsString, 2), 10));
          //
          Next;
        end;
        ArqIni.Free;
      end;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaEncerranteBico(pIDBico: Integer): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select max(i.ef) as ef from pedido_itens i');
    Q.SQL.Add('where i.id_bico = :pIDBico');
    Q.Params.ParamByName('pIDBico').AsInteger := pIDBico;
    Q.Open;
    Result := Q.FieldByName('ef').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaIDBico(pIDTanque, pIDBomba: Integer): Integer;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select b.id from bicos_abastec b');
    Q.SQL.Add('where b.id_tanque = :pIDTanque');
    Q.SQL.Add('and b.id_bomba = :pIDBomba');
    Q.Params.ParamByName('pIDTanque').AsInteger := pIDTanque;
    Q.Params.ParamByName('pIDBomba').AsInteger := pIDBomba;
    Q.Open;
    Result := Q.FieldByName('id').AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.retornaIDBomba(pBomba: Integer): Integer;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select b.id from bombas_abastec b');
    Q.SQL.Add('where b.bomba_numero = :pBomba');
    Q.Params.ParamByName('pBomba').AsInteger := pBomba;
    Q.Open;
    Result := Q.FieldByName('id').AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaIDTanque(pTanque: Integer): Integer;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select t.id from tanques_abastec t');
    Q.SQL.Add('where t.tanque_numero = :pTanque');
    Q.Params.ParamByName('pTanque').AsInteger := pTanque;
    Q.Open;
    Result := Q.FieldByName('id').AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.RetornaStatusAbastecCupom(pIDCupom: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select i.coo, i.id_abastecimento,b.bico_concentrador');
    Q.SQL.Add('from pedido_itens i, bicos_abastec b');
    Q.SQL.Add('where b.id = i.id_bico');
    Q.SQL.Add('and i.idpedido = :pid');
    Q.Params.ParamByName('pID').AsInteger := pIDCupom;
    Q.Open;
    while not Q.Eof do
    begin
      AlteraStatusAbastecimento(Q.FieldByName('id_abastecimento').AsInteger, 1, 0, '');
      Q.Next;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.DspBombasLacreGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'BOMBAS_LACRES';

end;

procedure TDmPosto.DspAbastecimentosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'ABASTECIMENTOS';

end;

procedure TDmPosto.CdsBombasLacreNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('BOMBAS_LACRES');
  DataSet.FieldByName('ID_BOMBA').AsInteger := CdsBombas.FieldByName('ID').AsInteger;

end;

procedure TDmPosto.CdsAbastecimentosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('ABASTECIMENTOS');
  DataSet.FieldByName('DATA').AsDateTime := SVData;
  DataSet.FieldByName('HORA').AsDateTime := SVHora;
  DataSet.FieldByName('STATUS_ABASTEC').AsInteger := 1;
  DataSet.FieldByName('REMANECENTE').AsString := 'N';
  DataSet.FieldByName('AUTOMATICO').AsString := 'N';

end;

procedure TDmPosto.CdsAbastecimentosBeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmPosto.DataModuleCreate(Sender: TObject);
begin
  FormataCampos;
end;

procedure TDmPosto.DspLivroLMCPagGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'LIVRO_LMC_PAG';

end;

function TDmPosto.RetornaDadosBicoPerda(var NumBico: String; var ef: Double; var EI: Double; var Data: TDateTime; var Hora: TDateTime;
  IDPerda: Integer): Boolean;
var
  Q: TFDQuery;
begin
  {Result := false;
  NumBico := '';
  ef := 0;
  EI := 0;
  Data := Now;
  Hora := Now;
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select b.numbico,b.ef,b.ea,');
      SQL.Add('       b.data_movto,b.hora_movto');
      SQL.Add('from bico_perdas b');
      SQL.Add('where b.id = ' + IntToStr(IDPerda));
      Open;
      if not Q.IsEmpty then
      begin
        Result := true;
        NumBico := Q.FieldByName('numbico').AsString;
        ef := Q.FieldByName('ef').AsFloat;
        EI := Q.FieldByName('ea').AsFloat;
        Data := Q.FieldByName('data_movto').AsDateTime;
        Hora := Q.FieldByName('hora_movto').AsDateTime;
      end;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;}

end;

function TDmPosto.Dados_Bicos_Perda(pID: Integer): Boolean;
begin
  CdsBicoPerda.Close;
  CdsBicoPerda.Params.Clear;
  QryBicoPerda.Close;
  QryBicoPerda.SQL.Clear;
  QryBicoPerda.SQL.Add('select * from bico_perdas b');
  QryBicoPerda.SQL.Add('where b.id = :pID');
  //
  CdsBicoPerda.FetchParams;
  CdsBicoPerda.Params.ParamByName('pID').AsInteger := pID;
  CdsBicoPerda.Open;
  Result := false;
  if CdsBicoPerda.RecordCount > 0 then
    Result := true;

end;

procedure TDmPosto.AtivaDesativaBicos(Ativo: String);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('update bicos_abastec b set');
      SQL.Add('b.ativo = ' + QuotedStr(Ativo));
      ExecSQL;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaRegistroSemComunicacao(NumBico: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select b.id from bico_comunica b');
      SQL.Add('where b.num_bico = ' + QuotedStr(NumBico));
      SQL.Add('and b.fim is null');
      Open;
      Result := not Q.IsEmpty;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.RegistraAbastTemporario(pNumBico, pData, pHora: String; pEncerrante, pLitros, pValUnit, pTotal: Double; pRemanecente, pAutomatico: Boolean;
  pNumNota: String);
var
  aEstAtual, aNovoEstoque: Double;
begin
  // localiza dados necess�rios
  Dados_Bicos(pNumBico);
  Dados_Bomba(CdsBicos.FieldByName('ID_BOMBA').AsInteger);
  Dados_Tanque(CdsBicos.FieldByName('ID_TANQUE').AsInteger);
  DmProdutos.Dados_Produto(CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
  // grava pedido
  CdsAbastTemp.Append;
  CdsAbastTemp.FieldByName('NUM_BICO').AsString := pNumBico;
  CdsAbastTemp.FieldByName('DATA_ABAST').AsDateTime := StrToDate(pData);
  CdsAbastTemp.FieldByName('HORA_ABASTEC').AsDateTime := StrToTime(pHora);
  CdsAbastTemp.FieldByName('ENCERRANTE').AsFloat := pEncerrante;
  CdsAbastTemp.FieldByName('LITROS').AsFloat := pLitros;
  CdsAbastTemp.FieldByName('PRECO_UNIT').AsFloat := TruncaValor(pValUnit, DmWorkCom.PAFECF.gDecimais);
  CdsAbastTemp.FieldByName('VALOR_TOTAL').AsFloat := pLitros * TruncaValor(pValUnit, DmWorkCom.PAFECF.gDecimais);
  CdsAbastTemp.FieldByName('IDPRODUTO').AsInteger := DmProdutos.CdsProdutos.FieldByName('ID').AsInteger;
  CdsAbastTemp.FieldByName('DESCRICAO').AsString := DmProdutos.CdsProdutos.FieldByName('DESCRICAO').AsString;
  if pRemanecente then
    CdsAbastTemp.FieldByName('REMANECENTE').AsString := 'S';
  if pAutomatico then
    CdsAbastTemp.FieldByName('AUTOMATICO').AsString := 'S';
  if pNumNota <> '' then
    CdsAbastTemp.FieldByName('NOTAFISCAL_NUM').AsString := pNumNota;
  Grava_Dados(CdsAbastTemp);

end;

procedure TDmPosto.DspAbastTempGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'ABAST_PENDENTE';

end;

procedure TDmPosto.CdsAbastTempNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('ABAST_PENDENTE');
  DataSet.FieldByName('DATA').AsDateTime := SVData;
  DataSet.FieldByName('HORA').AsDateTime := SVHora;
  DataSet.FieldByName('STATUS_ABASTEC').AsInteger := 1;
  DataSet.FieldByName('REMANECENTE').AsString := 'N';
  DataSet.FieldByName('AUTOMATICO').AsString := 'N';

end;

function TDmPosto.Dados_AbastTemp: Boolean;
begin
  CdsAbastTemp.Close;
  CdsAbastTemp.Open;
  TFloatField(CdsAbastTemp.FieldByName('litros')).DisplayFormat := '###,###,###0.000';
  TFloatField(CdsAbastTemp.FieldByName('preco_unit')).DisplayFormat := '###,###,###0.000';
  TFloatField(CdsAbastTemp.FieldByName('valor_total')).DisplayFormat := '###,###,###0.000';
  //
  Result := false;
  if CdsAbastTemp.RecordCount > 0 then
    Result := true;

end;

procedure TDmPosto.ResolveDescontinuidade(NumBico: String);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('update bico_perdas b set');
      SQL.Add('b.pendente = ' + QuotedStr('N'));
      SQL.Add('where b.numbico = ' + QuotedStr(NumBico));
      ExecSQL;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.MoveAbastecimentosTemporarios(NumBico: String);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('execute procedure proc_move_abastec_pendente(:pNumBico)');
      Params.ParamByName('pNumBico').AsString := NumBico;
      ExecSQL;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaMovtoBicoAbast(DataMov: TDateTime; NumBico: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select x.id from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast = :pData');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaEncBicoConcentrador(NumBico: String): Double;
var
  aEncerrantes: ShortString;
  aux: String;
begin
  inherited;
  Result := 0;
  if ConectaConcentrador then
  begin
    aEncerrantes := LeSTEncerrante('L', NumBico);
    if Trim(aEncerrantes) <> 'FALHA' then
    begin
      aux := FiltraNumero(aEncerrantes);
      if aux = '' then
        aux := '0';
      Result := StrToFloat(aux) / RetornaCasasDecimais(aEncerrantes);
    end
    else
    begin
      Result := 0;
    end;
  end;

end;

function TDmPosto.ConectaConcentrador: Boolean;
begin
  Result := false;
  DmPosto.Dados_ConfigPosto;
  try
    // companytec
    if (DmPosto.CdsConfigPosto.FieldByName('TIPO_CBC').AsInteger = 1) then
    begin
      // abre a porta serial.
      if (DmPosto.CdsConfigPosto.FieldByName('PORTA_CBC').AsInteger > 0) then
      begin
        if InicializaSerial(DmPosto.CdsConfigPosto.FieldByName('PORTA_CBC').AsInteger) then
          Result := true;
      end
      else
      begin
        if InicializaSocket(DmPosto.CdsConfigPosto.FieldByName('IP_CBC').AsString) then
          Result := true;
      end;
    end;
  except
    MessageDlg('Erro ao executar comando de conex�o com o concentrador!', mtWarning, [mbOK], 0);
  end;

end;

procedure TDmPosto.DesconectaConcentrador;
begin
  Dados_ConfigPosto;
  try
    // companytec
    if (CdsConfigPosto.FieldByName('TIPO_CBC').AsInteger = 1) then
    begin
      // abre a porta serial.
      if (CdsConfigPosto.FieldByName('PORTA_CBC').AsInteger > 0) then
      begin
        FechaSerial
      end
      else
      begin
        FechaSerial
      end;
    end;
  except
    MessageDlg('Erro ao executar comando de desconex�o com o concentrador!', mtWarning, [mbOK], 0);
  end;

end;

function TDmPosto.RetornaCasasDecimais(Valor: String): Integer;
var
  i: Integer;
  Controle: Boolean;
  Zeros: String;
begin
  Result := 0;
  Zeros := '1';
  Controle := false;
  for i := 0 to length(Valor) do
  begin
    if Controle then
    begin
      if (copy(Valor, i, 1) = '0') or (copy(Valor, i, 1) = '1') or (copy(Valor, i, 1) = '2') or (copy(Valor, i, 1) = '3') or (copy(Valor, i, 1) = '4') or
        (copy(Valor, i, 1) = '5') or (copy(Valor, i, 1) = '6') or (copy(Valor, i, 1) = '7') or (copy(Valor, i, 1) = '8') or (copy(Valor, i, 1) = '9') then
      begin
        Zeros := Zeros + '0';
      end;
    end;
    if (copy(Valor, i, 1) = ',') or (copy(Valor, i, 1) = '.') then
      Controle := true;
  end;
  Result := StrToInt(Zeros);

end;

function TDmPosto.VerificaPerdaComunicacaoBicos: Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select b.data_movimento from bico_comunica b');
      SQL.Add('where b.fim is null');
      Open;
      Result := not Q.IsEmpty;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaTotalAfericoesBico(pNumBico: String): Integer;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select count(a.id) as quant');
      SQL.Add('from abastecimentos a');
      SQL.Add('where a.num_bico = ' + QuotedStr(pNumBico));
      SQL.Add('and a.status_abastec = 2');
      Open;
      Result := Q.FieldByName('quant').AsInteger;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaPerdaComunicacaoGeral: Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select liberado from proc_comunicacao_geral');
      Open;
      Result := false;
      if UpperCase(Trim(FieldByName('liberado').AsString)) = 'FALSE' then
        Result := true;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaDadosDescontinuidade(var EncIn: Double; var EncOut: Double; var HoraQuebra: TDateTime; pIDBico: Integer; pDataMov: TDateTime): Boolean;
var
  Q: TFDQuery;
begin
  EncIn := 0;
  EncOut := 0;
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select p.encerrante_out,p.encerrante_in,p.hora');
      SQL.Add('from placas_abastec p');
      SQL.Add('where p.id_bico = :pIDBico');
      SQL.Add('and p.data = :pData');
      Params.ParamByName('pIDBico').AsInteger := pIDBico;
      Params.ParamByName('pData').AsDate := pDataMov;
      Open;
      Result := false;
      if not IsEmpty then
      begin
        EncIn := Q.FieldByName('encerrante_in').AsFloat;
        EncOut := Q.FieldByName('encerrante_out').AsFloat;
        HoraQuebra := Q.FieldByName('hora').AsDateTime;
        Result := true;
      end;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaQuantVendidaPeriodo(DataMov, HoraBase: TDateTime; NumBico: String; TipoMov: Integer): Double;
var
  Q: TFDQuery;
  AuxHora: String;
begin
  // TipoMov 0 = Anterior e 1 =  posterior
  Result := 0;
  AuxHora := FormatDateTime('hh:mm:ss', HoraBase);
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select coalesce(sum(x.litros),0) as valor from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_emissao = :pData');
    if TipoMov = 1 then
      Q.SQL.Add('and cast(x.hora_emissao as time) >= ' + QuotedStr(AuxHora))
    else
      Q.SQL.Add('and cast(x.hora_emissao as time) <= ' + QuotedStr(AuxHora));
    Q.SQL.Add('and x.status_abastec = 4');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Q.FieldByName('valor').AsFloat;
    Q.Close;
    // captura os volumes de notas emitidas
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select coalesce(sum(x.litros),0) as valor from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast = :pData');
    if TipoMov = 1 then
      Q.SQL.Add('and cast(x.hora_abastec as time) >= ' + QuotedStr(AuxHora))
    else
      Q.SQL.Add('and cast(x.hora_abastec as time) <= ' + QuotedStr(AuxHora));
    Q.SQL.Add('and x.status_abastec = 3');
    Q.SQL.Add('and (x.coo_cupom is null or x.coo_cupom = 0)');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := Result + Q.FieldByName('valor').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.RetornaVolAbastPendente(NumBico: String): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select sum(a.litros) as quant');
      SQL.Add('from abast_pendente a');
      SQL.Add('where a.num_bico = ' + QuotedStr(NumBico));
      Open;
      Result := Q.FieldByName('quant').AsFloat;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmPosto.ConfrontaEstoqueFisico;
var
  Q: TFDQuery;
  aSaldoProd, aEstFisico, aPerdaProd: Double;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select b.bico_concentrador,t.est_fisico from tanques_abastec t');
      SQL.Add('inner join bicos_abastec b on b.id_tanque = t.id');
      Open;
      while not Q.Eof do
      begin
        // Vericica Saldo combustivel
        aSaldoProd := VerificaSaldoProdutoPosto(Q.FieldByName('bico_concentrador').AsString);
        aSaldoProd := TruncaValor(aSaldoProd, 3);
        aEstFisico := Q.FieldByName('est_fisico').AsFloat;
        aEstFisico := TruncaValor(aEstFisico, 3);
        if aSaldoProd <> aEstFisico then
        begin
          aPerdaProd := aEstFisico - aSaldoProd;
          aPerdaProd := TruncaValor(aPerdaProd, 3);
          if aPerdaProd < 0 then
            aPerdaProd := aPerdaProd * -1;
          // grava registro de perda de combustivel
          if not DmPosto.VerificaBicoLiberadoEstoque(Q.FieldByName('bico_concentrador').AsString) then
            DmPosto.GravaPerdaCombustivel(Q.FieldByName('bico_concentrador').AsString, aPerdaProd);
        end;
        Q.Next;
      end;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaPermissaoImprimirCupomLivre(var Mensagem: String): Boolean;
var
  Q: TFDQuery;
begin
  Mensagem := '';
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select liberado, retorno from proc_verifica_situacao_abs');
      Open;
      Result := false;
      if Trim(UpperCase(FieldByName('liberado').AsString)) = 'TRUE' then
        Result := true
      else
        Mensagem := FieldByName('retorno').AsString;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaPrimeiroItemDataLivro(pData: TDateTime): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select  l.num_livro from livro_lmc_pag l');
    Q.SQL.Add('where l.data_pagina = :pData');
    Q.Params.ParamByName('pData').AsDate := pData;
    Q.Open;
    Result := Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;
end;

function TDmPosto.VerificaMovimentoBicoNF(DataMov: TDateTime; NumBico: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select x.id from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(NumBico));
    Q.SQL.Add('and x.data_abast > :pData');
    // Q.SQL.Add('and x.data_abast >= :pData');
    Q.SQL.Add('and x.status_abastec = 3');
    Q.SQL.Add('and (x.coo_cupom is null or x.coo_cupom = 0)');
    Q.Params.ParamByName('pData').AsDate := DataMov;
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;
end;

function TDmPosto.RetornaCapacidadeTanque(pIDProduto: Integer): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select t.capacidade from tanques_abastec t');
      SQL.Add('where t.id_produto = ' + IntToStr(pIDProduto));
      Open;
      Result := Q.FieldByName('capacidade').AsFloat;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.GeraAbastecimentoSaldoRemanecente(var Quantidade: Double; var DataAbastec: TDateTime; pDataMov: TDateTime; pNumBico: String;
  pVESPEB: Double): Double;
var
  Q: TFDQuery;
  aEncAnterior, aEncAtual, aEncCompara, aLitrosAtual, aDif, AuxVespeb: Double;
begin
  Result := 0;
  Quantidade := 0;
  DataAbastec := Now;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select * from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(pNumBico));
    Q.SQL.Add('and x.data_abast >= :pData');
    Q.SQL.Add('order by x.encerrante');
    Q.Params.ParamByName('pData').AsDate := pDataMov;
    Q.Open;
    if not Q.IsEmpty then
    begin
      // captura o encerrante inicial // 3545,63
      aEncAnterior := Q.FieldByName('ENCERRANTE').AsFloat;
      aEncAnterior := TruncaValor(aEncAnterior, 3);
      aLitrosAtual := Q.FieldByName('LITROS').AsFloat;
      aLitrosAtual := TruncaValor(aLitrosAtual, 3);
      aEncAnterior := aEncAnterior - aLitrosAtual;
      while not Q.Eof do
      begin
        // captura a data do abastecimento
        DataAbastec := Q.FieldByName('DATA_ABAST').AsDateTime;
        // captura o encerrante do registro
        aEncAtual := Q.FieldByName('ENCERRANTE').AsFloat;
        aEncAtual := TruncaValor(aEncAtual, 3);
        // captura os litros do registro
        aLitrosAtual := Q.FieldByName('LITROS').AsFloat;
        aLitrosAtual := TruncaValor(aLitrosAtual, 3);
        // verifica se encerrante anterior + litros bate com o encerrante do registro
        aEncCompara := aEncAnterior + aLitrosAtual;
        aEncCompara := TruncaValor(aEncCompara, 3);
        aDif := aEncCompara - aEncAtual;
        if aDif < 0 then
        begin
          aDif := aDif * -1
        end
        else
        begin
          // dif = 1000 positivo
          // vespeb = -1000 negativo
          if VESPEB < 0 then
          begin
            AuxVespeb := VESPEB * -1;
            aDif := aDif - AuxVespeb;
          end;
        end;
        // verifica se tem vespeb
        if pVESPEB = aDif then
          aDif := 0;
        //
        if aDif > 0.01 then
        begin
          // se for diferente calcula o encerrante do remanecente
          Result := aEncAtual - aLitrosAtual;
          Quantidade := Result - aEncAnterior;
          Break;
        end
        else
        begin
          aEncAnterior := aEncAtual;
        end;
        // proximo registro
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;
end;

{
  function TDmPosto.GeraAbastecimentoSaldoRemanecente(var Quantidade:Double;
  pDataMov:TDateTime; pNumBico:String):Double;
  var Q : TFDQuery;
  aEncAnterior, aEncAtual, aEncCompara, aLitrosAtual, aDif : Double;
  begin
  Result := 0;
  Quantidade := 0;
  Q := TFDQuery.Create(nil);
  try
  Q.Connection := ConexaoDados;
  Q.Close;
  Q.SQL.Add('select * from abastecimentos x');
  Q.SQL.Add('where x.num_bico = '+QuotedStr(pNumBico));
  Q.SQL.Add('and x.data_abast >= :pData');
  Q.SQL.Add('order by x.encerrante');
  Q.Params.ParamByName('pData').AsDate := pDataMov;
  Q.Open;
  if not Q.IsEmpty then
  begin
  // captura o encerrante inicial // 3545,63
  aEncAnterior := Q.FieldByName('ENCERRANTE').AsFloat;
  aEncAnterior := TruncaValor(aEncAnterior,3);
  aLitrosAtual := Q.FieldByName('LITROS').AsFloat;
  aLitrosAtual := TruncaValor(aLitrosAtual,3);
  aEncAnterior := aEncAnterior - aLitrosAtual;
  while not Q.Eof do
  begin
  // captura o encerrante do registro
  aEncAtual  := Q.FieldByName('ENCERRANTE').AsFloat;
  aEncAtual  := TruncaValor(aEncAtual,3);
  // captura os litros do registro
  aLitrosAtual := Q.FieldByName('LITROS').AsFloat;
  aLitrosAtual := TruncaValor(aLitrosAtual,3);
  // verifica se encerrante anterior + litros bate com o encerrante do registro
  aEncCompara := aEncAnterior + aLitrosAtual;
  aEncCompara := TruncaValor(aEncCompara,3);
  aDif := aEncCompara - aEncAtual;
  if aDif < 0 then
  aDif := aDif * -1;
  if aDif > 0.01 then
  begin
  // se for diferente calcula o encerrante do remanecente
  Result := aEncAtual - aLitrosAtual;
  Quantidade := Result - aEncAnterior;
  Break;
  end
  else
  begin
  aEncAnterior := aEncAtual;
  end;
  // proximo registro
  Q.Next;
  end;
  end;
  Q.Close;
  finally
  FreeAndNil(Q);
  end;
  end;
}

procedure TDmPosto.RetornaDadosVespeb(var pVESPEB: Double; var pEnc_Out: Double; var pEnc_In: Double; pIDBico: Integer; pData: TDateTime);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select coalesce(sum(p.vespeb),0) as vespeb,');
      SQL.Add('       max(p.encerrante_out) as enc_out,');
      SQL.Add('       max(p.encerrante_in) as enc_in');
      SQL.Add('from placas_abastec p');
      SQL.Add('where p.data = :pData');
      SQL.Add('and p.id_bico = ' + IntToStr(pIDBico));
      Params.ParamByName('pData').AsDate := pData;
      Open;
      pVESPEB := Q.FieldByName('vespeb').AsFloat;
      pEnc_Out := Q.FieldByName('enc_out').AsFloat;
      pEnc_In := Q.FieldByName('enc_in').AsFloat;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.GeraAbastecimentoSaldoRemanecentePeriodo(var Quantidade: Double; var DataAbastec: TDateTime; pDataMov: TDateTime; pNumBico: String;
  pVESPEB: Double; pTipo: Integer; pHoraBase: TDateTime): Double;
var
  Q: TFDQuery;
  aEncAnterior, aEncAtual, aEncCompara, aLitrosAtual, aDif, AuxVespeb: Double;
  AuxHora: String;
begin
  Result := 0;
  Quantidade := 0;
  DataAbastec := Now;
  AuxHora := FormatDateTime('hh:mm:ss', pHoraBase);
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select * from abastecimentos x');
    Q.SQL.Add('where x.num_bico = ' + QuotedStr(pNumBico));
    Q.SQL.Add('and x.data_abast >= :pData');
    if pTipo = 1 then
      Q.SQL.Add('and cast(x.hora_abastec as time) >= ' + QuotedStr(AuxHora))
    else
      Q.SQL.Add('and cast(x.hora_abastec as time) <= ' + QuotedStr(AuxHora));
    Q.SQL.Add('order by x.encerrante');
    Q.Params.ParamByName('pData').AsDate := pDataMov;
    Q.Open;
    if not Q.IsEmpty then
    begin
      Dados_Bicos(Q.FieldByName('NUM_BICO').AsString);
      // captura o encerrante inicial // 3545,63
      aEncAnterior := Q.FieldByName('ENCERRANTE').AsFloat;
      aEncAnterior := TruncaValor(aEncAnterior, 3);
      aLitrosAtual := Q.FieldByName('LITROS').AsFloat;
      aLitrosAtual := TruncaValor(aLitrosAtual, 3);
      aEncAnterior := aEncAnterior - aLitrosAtual;
      while not Q.Eof do
      begin
        // captura a data do abastecimento
        DataAbastec := Q.FieldByName('DATA_ABAST').AsDateTime;
        // captura o encerrante do registro
        aEncAtual := Q.FieldByName('ENCERRANTE').AsFloat;
        aEncAtual := TruncaValor(aEncAtual, 3);
        // captura os litros do registro
        aLitrosAtual := Q.FieldByName('LITROS').AsFloat;
        aLitrosAtual := TruncaValor(aLitrosAtual, 3);
        // verifica se encerrante anterior + litros bate com o encerrante do registro
        aEncCompara := aEncAnterior + aLitrosAtual;
        aEncCompara := TruncaValor(aEncCompara, 3);
        aDif := aEncCompara - aEncAtual;
        if aDif < 0 then
        begin
          aDif := aDif * -1;
          // verifica se tem a descontinuidade registrada
          if VerificaDescontinuidadeRegistrada(CdsBicos.FieldByName('ID').AsInteger, Q.FieldByName('DATA_ABAST').AsDateTime, aDif) then
          begin
            aDif := 0;
          end;
        end
        else
        begin
          // dif = 1000 positivo
          // vespeb = -1000 negativo
          if VESPEB < 0 then
          begin
            AuxVespeb := VESPEB * -1;
            aDif := aDif - AuxVespeb;
          end;
        end;
        // verifica se tem vespeb
        // if pVespeb = aDif then
        // aDif := 0;
        //
        if aDif > 0.01 then
        begin
          // se for diferente calcula o encerrante do remanecente
          Result := aEncAtual - aLitrosAtual;
          Quantidade := Result - aEncAnterior;
          Break;
        end
        else
        begin
          aEncAnterior := aEncAtual;
        end;
        // proximo registro
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmPosto.VerificaDescontinuidadeRegistrada(pIDBico: Integer; pData: TDateTime; pVESPEB: Double): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select p.id from placas_abastec p');
      SQL.Add('where p.id_bico = :pIDBico');
      SQL.Add('and p.data = :pData');
      SQL.Add('and p.vespeb = :pVespeb');
      Params.ParamByName('pIDBico').AsInteger := pIDBico;
      Params.ParamByName('pData').AsDate := pData;
      Params.ParamByName('pVespeb').AsFloat := pVESPEB;
      Open;
      Result := not Q.IsEmpty;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

end.
