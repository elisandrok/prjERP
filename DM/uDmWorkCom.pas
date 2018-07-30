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
unit uDmWorkCom;

interface

uses
  SysUtils, Classes, DB, FMTBcd, DBClient, Provider, Windows, Messages,
  Variants, Graphics, Controls, Forms, ExtCtrls, ComCtrls, ImgList, Dialogs,
  Menus, uFuncoesPAFECF, uDmAcBr, ACBrDevice, pcnConversao, IniFiles,
  ACBrPAFClass, StdCtrls, ActnList, jpeg, OleCtrls, SHDocVw, CharPrinter,
  ACBrSintegra, pcnConversaoNFe, ACBrUtil, pcnRede, ACBrSATClass,
  ACBrPosPrinter, ACBrBlocoX, ACBrBlocoX_Comum, pnfsConversao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmWorkCom = class(TDataModule)
    QryPedidos: TFDQuery;
    QryPedidoItens: TFDQuery;
    QryAgenda: TFDQuery;
    QryConsulta: TFDQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DspPedidos: TDataSetProvider;
    DspPedidoItens: TDataSetProvider;
    DspAgenda: TDataSetProvider;
    CdsPedidos: TClientDataSet;
    CdsPedidoItens: TClientDataSet;
    CdsAgenda: TClientDataSet;
    QryPedidoClass: TFDQuery;
    DspPedidoClass: TDataSetProvider;
    CdsPedidoClass: TClientDataSet;
    QryFormaPag: TFDQuery;
    DspFormaPag: TDataSetProvider;
    CdsFormaPag: TClientDataSet;
    QryContas: TFDQuery;
    DspContas: TDataSetProvider;
    CdsContas: TClientDataSet;
    QryCheque: TFDQuery;
    DspCheques: TDataSetProvider;
    CdsCheques: TClientDataSet;
    QryConfig: TFDQuery;
    DspConfig: TDataSetProvider;
    CdsConfig: TClientDataSet;
    QryContasAux: TFDQuery;
    DspContasAux: TDataSetProvider;
    CdsContasAux: TClientDataSet;
    QryCompras: TFDQuery;
    QryComprasItens: TFDQuery;
    DspCompras: TDataSetProvider;
    DspComprasItens: TDataSetProvider;
    CdsCompras: TClientDataSet;
    CdsComprasItens: TClientDataSet;
    QryPedidoCompItem: TFDQuery;
    DspPedidoCompItem: TDataSetProvider;
    CdsPedidoCompItem: TClientDataSet;
    QryTabelaComissao: TFDQuery;
    DspTabelaComissao: TDataSetProvider;
    CdsTabelaComissao: TClientDataSet;
    Qrycaixa: TFDQuery;
    DspCaixa: TDataSetProvider;
    CdsCaixa: TClientDataSet;
    QryCaixaMov: TFDQuery;
    DspCaixaMov: TDataSetProvider;
    CdsCaixaMov: TClientDataSet;
    Qry60M: TFDQuery;
    Qry60A: TFDQuery;
    Dsp60M: TDataSetProvider;
    Dsp60A: TDataSetProvider;
    Cds60M: TClientDataSet;
    Cds60A: TClientDataSet;
    QryControleDoc: TFDQuery;
    QryControleDocID: TIntegerField;
    QryControleDocCOO: TIntegerField;
    QryControleDocGNF: TIntegerField;
    QryControleDocGRG: TIntegerField;
    QryControleDocCDC: TIntegerField;
    QryControleDocSIGLA: TStringField;
    QryControleDocDATA: TSQLTimeStampField;
    QryControleDocHORA: TSQLTimeStampField;
    QryControleDocCAIXA: TStringField;
    DspControleDoc: TDataSetProvider;
    CdsControleDoc: TClientDataSet;
    CdsControleDocID: TIntegerField;
    CdsControleDocCOO: TIntegerField;
    CdsControleDocGNF: TIntegerField;
    CdsControleDocGRG: TIntegerField;
    CdsControleDocCDC: TIntegerField;
    CdsControleDocSIGLA: TStringField;
    CdsControleDocDATA: TSQLTimeStampField;
    CdsControleDocHORA: TSQLTimeStampField;
    CdsControleDocCAIXA: TStringField;
    QryContador: TFDQuery;
    DspContador: TDataSetProvider;
    CdsContador: TClientDataSet;
    QryContadorID: TIntegerField;
    QryContadorCONTABILIDADE: TStringField;
    QryContadorENDERECO: TStringField;
    QryContadorEND_NUM: TStringField;
    QryContadorEND_COMPL: TStringField;
    QryContadorBAIRRO: TStringField;
    QryContadorCIDADE: TStringField;
    QryContadorUF: TStringField;
    QryContadorCEP: TStringField;
    QryContadorCOD_MUNICIPIO: TStringField;
    QryContadorCNPJ: TStringField;
    QryContadorREGISTRO: TStringField;
    QryContadorCONTADOR: TStringField;
    QryContadorFONE: TStringField;
    QryContadorFAX: TStringField;
    QryContadorCPF_CONTADOR: TStringField;
    QryContadorCRC_CONTADOR: TStringField;
    QryContadorEMAIL: TStringField;
    QryContadorSITE: TStringField;
    CdsContadorID: TIntegerField;
    CdsContadorCONTABILIDADE: TStringField;
    CdsContadorENDERECO: TStringField;
    CdsContadorEND_NUM: TStringField;
    CdsContadorEND_COMPL: TStringField;
    CdsContadorBAIRRO: TStringField;
    CdsContadorCIDADE: TStringField;
    CdsContadorUF: TStringField;
    CdsContadorCEP: TStringField;
    CdsContadorCOD_MUNICIPIO: TStringField;
    CdsContadorCNPJ: TStringField;
    CdsContadorREGISTRO: TStringField;
    CdsContadorCONTADOR: TStringField;
    CdsContadorFONE: TStringField;
    CdsContadorFAX: TStringField;
    CdsContadorCPF_CONTADOR: TStringField;
    CdsContadorCRC_CONTADOR: TStringField;
    CdsContadorEMAIL: TStringField;
    CdsContadorSITE: TStringField;
    QryOS: TFDQuery;
    QryOSHoras: TFDQuery;
    DspOSHoras: TDataSetProvider;
    CdsOSHoras: TClientDataSet;
    QryControleDocIDEMPRESA: TIntegerField;
    CdsControleDocIDEMPRESA: TIntegerField;
    QryConfigID_EMPRESA: TIntegerField;
    QryConfigTIPO_EMPRESA: TIntegerField;
    QryConfigTIPO_BUSCA_CLIENTE: TIntegerField;
    QryConfigCONF_LANC_CAIXA: TStringField;
    QryConfigTIPODOC_PADRAO: TIntegerField;
    QryConfigEXIBIR: TIntegerField;
    QryConfigCADASTRAR_CHEQUES: TStringField;
    QryConfigPATHLOGOMARCA: TStringField;
    QryConfigTELAVENDAPADRAO: TIntegerField;
    QryConfigCLIENTE_PADRAO: TIntegerField;
    QryConfigVENDEDOR_PADRAO: TIntegerField;
    QryConfigCLASSIFICA_PADRAO: TIntegerField;
    QryConfigFORMAPAG_PADRAO: TIntegerField;
    QryConfigINDICE_TIJOLO: TFloatField;
    QryConfigINDICE_ISOPOR: TFloatField;
    QryConfigGRUPO_PADRAO: TIntegerField;
    QryConfigTIPO_COMISSAO: TIntegerField;
    QryConfigINDICE_OUTROS: TFloatField;
    QryConfigMARGEM_LUCRO: TFloatField;
    QryConfigTIPO_CALC_PERC: TIntegerField;
    QryConfigESTOQUE_NEGATICO: TStringField;
    QryConfigPERMITIRVALORNEGATIVO: TStringField;
    QryConfigNUMPED_SEQ: TStringField;
    QryConfigCOMISSAO_INTEGRAL_SEG: TStringField;
    QryConfigCOMISSAO_INTEGRAL_TER: TStringField;
    QryConfigCOMISSAO_INTEGRAL_QUA: TStringField;
    QryConfigCOMISSAO_INTEGRAL_QUI: TStringField;
    QryConfigCOMISSAO_INTEGRAL_SEX: TStringField;
    QryConfigCOMISSAO_INTEGRAL_SAB: TStringField;
    QryConfigCOMISSAO_INTEGRAL_DOM: TStringField;
    QryConfigATUALIZAR_PRECO: TStringField;
    QryConfigCONTROLAR_ESTCOMP: TStringField;
    QryConfigVERSAO_LAYOUT: TStringField;
    QryConfigPERFIL_APRESENTA: TStringField;
    QryConfigINDICADOR_ATV: TIntegerField;
    QryConfigCOD_PAIS: TStringField;
    QryConfigDIAS_AGENDA: TIntegerField;
    QryConfigMODELO_PEDIDO: TIntegerField;
    QryConfigPED_EDITAR_CLI: TStringField;
    CdsConfigID_EMPRESA: TIntegerField;
    CdsConfigTIPO_EMPRESA: TIntegerField;
    CdsConfigTIPO_BUSCA_CLIENTE: TIntegerField;
    CdsConfigCONF_LANC_CAIXA: TStringField;
    CdsConfigTIPODOC_PADRAO: TIntegerField;
    CdsConfigEXIBIR: TIntegerField;
    CdsConfigCADASTRAR_CHEQUES: TStringField;
    CdsConfigPATHLOGOMARCA: TStringField;
    CdsConfigTELAVENDAPADRAO: TIntegerField;
    CdsConfigCLIENTE_PADRAO: TIntegerField;
    CdsConfigVENDEDOR_PADRAO: TIntegerField;
    CdsConfigCLASSIFICA_PADRAO: TIntegerField;
    CdsConfigFORMAPAG_PADRAO: TIntegerField;
    CdsConfigINDICE_TIJOLO: TFloatField;
    CdsConfigINDICE_ISOPOR: TFloatField;
    CdsConfigGRUPO_PADRAO: TIntegerField;
    CdsConfigTIPO_COMISSAO: TIntegerField;
    CdsConfigINDICE_OUTROS: TFloatField;
    CdsConfigMARGEM_LUCRO: TFloatField;
    CdsConfigTIPO_CALC_PERC: TIntegerField;
    CdsConfigESTOQUE_NEGATICO: TStringField;
    CdsConfigPERMITIRVALORNEGATIVO: TStringField;
    CdsConfigNUMPED_SEQ: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_SEG: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_TER: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_QUA: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_QUI: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_SEX: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_SAB: TStringField;
    CdsConfigCOMISSAO_INTEGRAL_DOM: TStringField;
    CdsConfigATUALIZAR_PRECO: TStringField;
    CdsConfigCONTROLAR_ESTCOMP: TStringField;
    CdsConfigVERSAO_LAYOUT: TStringField;
    CdsConfigPERFIL_APRESENTA: TStringField;
    CdsConfigINDICADOR_ATV: TIntegerField;
    CdsConfigCOD_PAIS: TStringField;
    CdsConfigDIAS_AGENDA: TIntegerField;
    CdsConfigMODELO_PEDIDO: TIntegerField;
    CdsConfigPED_EDITAR_CLI: TStringField;
    QryAgendaID: TIntegerField;
    QryAgendaDATA: TSQLTimeStampField;
    QryAgendaHORA: TSQLTimeStampField;
    QryAgendaCOMPROMISSO: TStringField;
    QryAgendaDETALHE: TStringField;
    QryAgendaIDFUNC: TIntegerField;
    QryAgendaEXECUTOR: TStringField;
    QryAgendaOBSERVACAO: TMemoField;
    QryAgendaCONCLUIDO: TStringField;
    CdsAgendaID: TIntegerField;
    CdsAgendaDATA: TSQLTimeStampField;
    CdsAgendaHORA: TSQLTimeStampField;
    CdsAgendaCOMPROMISSO: TStringField;
    CdsAgendaDETALHE: TStringField;
    CdsAgendaIDFUNC: TIntegerField;
    CdsAgendaEXECUTOR: TStringField;
    CdsAgendaOBSERVACAO: TMemoField;
    CdsAgendaCONCLUIDO: TStringField;
    QryFormaPagID: TIntegerField;
    QryFormaPagDESCRICAO: TStringField;
    QryFormaPagTIPO_PAGTO: TIntegerField;
    QryFormaPagTIPO_DOCUMENTO: TIntegerField;
    QryFormaPagGERAR_CONTA: TStringField;
    QryFormaPagMOVIMENO_CAIXA: TStringField;
    QryFormaPagATIVO: TStringField;
    QryFormaPagFORMA_PAGTO: TStringField;
    QryFormaPagQUANT_PAGTOS: TIntegerField;
    CdsFormaPagID: TIntegerField;
    CdsFormaPagDESCRICAO: TStringField;
    CdsFormaPagTIPO_PAGTO: TIntegerField;
    CdsFormaPagTIPO_DOCUMENTO: TIntegerField;
    CdsFormaPagGERAR_CONTA: TStringField;
    CdsFormaPagMOVIMENO_CAIXA: TStringField;
    CdsFormaPagATIVO: TStringField;
    CdsFormaPagFORMA_PAGTO: TStringField;
    CdsFormaPagQUANT_PAGTOS: TIntegerField;
    QryChequeID: TIntegerField;
    QryChequeID_CLIENTE: TIntegerField;
    QryChequeID_PEDIDO: TIntegerField;
    QryChequeCOD_BANCO: TStringField;
    QryChequeNOME_BANCO: TStringField;
    QryChequeNUM_CONTA: TStringField;
    QryChequeNUM_CHEQUE: TStringField;
    QryChequeAGENCIA: TStringField;
    QryChequeEMITENTE: TStringField;
    QryChequeCNPJ_CPF_EMITENTE: TStringField;
    QryChequeVALOR: TFloatField;
    QryChequeDATA_EMISSAO: TSQLTimeStampField;
    QryChequeBOM_PARA: TSQLTimeStampField;
    QryChequeSTATUS: TIntegerField;
    QryChequeDATA_CAD: TSQLTimeStampField;
    QryChequeCLIENTE: TStringField;
    CdsChequesID: TIntegerField;
    CdsChequesID_CLIENTE: TIntegerField;
    CdsChequesID_PEDIDO: TIntegerField;
    CdsChequesCOD_BANCO: TStringField;
    CdsChequesNOME_BANCO: TStringField;
    CdsChequesNUM_CONTA: TStringField;
    CdsChequesNUM_CHEQUE: TStringField;
    CdsChequesAGENCIA: TStringField;
    CdsChequesEMITENTE: TStringField;
    CdsChequesCNPJ_CPF_EMITENTE: TStringField;
    CdsChequesVALOR: TFloatField;
    CdsChequesDATA_EMISSAO: TSQLTimeStampField;
    CdsChequesBOM_PARA: TSQLTimeStampField;
    CdsChequesSTATUS: TIntegerField;
    CdsChequesDATA_CAD: TSQLTimeStampField;
    CdsChequesCLIENTE: TStringField;
    QryComprasID: TIntegerField;
    QryComprasNOTA: TStringField;
    QryComprasIDFORNECEDOR: TIntegerField;
    QryComprasDATA_COMPRA: TSQLTimeStampField;
    QryComprasHORA_COMPRA: TSQLTimeStampField;
    QryComprasDATA_EMISSAO: TSQLTimeStampField;
    QryComprasHORA_EMISSAO: TSQLTimeStampField;
    QryComprasID_CLASSIFICACAO: TIntegerField;
    QryComprasVALOR: TFloatField;
    QryComprasDESCONTO: TFloatField;
    QryComprasACRESCIMO: TFloatField;
    QryComprasOUTRAS_DESPESAS: TFloatField;
    QryComprasVALOR_TOTAL: TFloatField;
    QryComprasCANCELADO: TStringField;
    QryComprasID_FORMAPAG: TIntegerField;
    QryComprasFORNECEDOR: TStringField;
    QryComprasTIPODOC: TIntegerField;
    QryComprasCONFIRMADA: TStringField;
    QryComprasIDEMPRESA: TIntegerField;
    CdsComprasID: TIntegerField;
    CdsComprasNOTA: TStringField;
    CdsComprasIDFORNECEDOR: TIntegerField;
    CdsComprasDATA_COMPRA: TSQLTimeStampField;
    CdsComprasHORA_COMPRA: TSQLTimeStampField;
    CdsComprasDATA_EMISSAO: TSQLTimeStampField;
    CdsComprasHORA_EMISSAO: TSQLTimeStampField;
    CdsComprasID_CLASSIFICACAO: TIntegerField;
    CdsComprasVALOR: TFloatField;
    CdsComprasDESCONTO: TFloatField;
    CdsComprasACRESCIMO: TFloatField;
    CdsComprasOUTRAS_DESPESAS: TFloatField;
    CdsComprasVALOR_TOTAL: TFloatField;
    CdsComprasCANCELADO: TStringField;
    CdsComprasID_FORMAPAG: TIntegerField;
    CdsComprasFORNECEDOR: TStringField;
    CdsComprasTIPODOC: TIntegerField;
    CdsComprasCONFIRMADA: TStringField;
    CdsComprasIDEMPRESA: TIntegerField;
    QryComprasItensID: TIntegerField;
    QryComprasItensIDCOMPRA: TIntegerField;
    QryComprasItensIDPRODUTO: TIntegerField;
    QryComprasItensDESCRICAO: TStringField;
    QryComprasItensQUANTIDADE: TFloatField;
    QryComprasItensVALOR: TFloatField;
    QryComprasItensDESCONTO: TFloatField;
    QryComprasItensACRESCIMO: TFloatField;
    QryComprasItensVALOR_TOTAL: TFloatField;
    CdsComprasItensID: TIntegerField;
    CdsComprasItensIDCOMPRA: TIntegerField;
    CdsComprasItensIDPRODUTO: TIntegerField;
    CdsComprasItensDESCRICAO: TStringField;
    CdsComprasItensQUANTIDADE: TFloatField;
    CdsComprasItensVALOR: TFloatField;
    CdsComprasItensDESCONTO: TFloatField;
    CdsComprasItensACRESCIMO: TFloatField;
    CdsComprasItensVALOR_TOTAL: TFloatField;
    QryPedidoCompItemID: TIntegerField;
    QryPedidoCompItemID_PEDIDO: TIntegerField;
    QryPedidoCompItemID_ITEMPEDIDO: TIntegerField;
    QryPedidoCompItemQUANT_VIGAS: TFloatField;
    QryPedidoCompItemCOMPRIMENTO_VIGA: TFloatField;
    QryPedidoCompItemTOTAL_M2: TFloatField;
    QryPedidoCompItemVALOR_M2: TFloatField;
    CdsPedidoCompItemID: TIntegerField;
    CdsPedidoCompItemID_PEDIDO: TIntegerField;
    CdsPedidoCompItemID_ITEMPEDIDO: TIntegerField;
    CdsPedidoCompItemQUANT_VIGAS: TFloatField;
    CdsPedidoCompItemCOMPRIMENTO_VIGA: TFloatField;
    CdsPedidoCompItemTOTAL_M2: TFloatField;
    CdsPedidoCompItemVALOR_M2: TFloatField;
    QryTabelaComissaoID: TIntegerField;
    QryTabelaComissaoFAIXA_INI: TFloatField;
    QryTabelaComissaoFAIXA_FIM: TFloatField;
    QryTabelaComissaoCOMISSAO: TFloatField;
    QryTabelaComissaoIDPRODUTO: TIntegerField;
    CdsTabelaComissaoID: TIntegerField;
    CdsTabelaComissaoFAIXA_INI: TFloatField;
    CdsTabelaComissaoFAIXA_FIM: TFloatField;
    CdsTabelaComissaoCOMISSAO: TFloatField;
    CdsTabelaComissaoIDPRODUTO: TIntegerField;
    QryPedidoFP: TFDQuery;
    DspPedidoFP: TDataSetProvider;
    CdsPedidoFP: TClientDataSet;
    QryDadosTecnicos: TFDQuery;
    QryDadosTecnicosID: TIntegerField;
    QryDadosTecnicosEMPRESA: TStringField;
    QryDadosTecnicosNR_LAUDO_TECNICO: TStringField;
    QryDadosTecnicosCNPJ: TStringField;
    QryDadosTecnicosINSCEST: TStringField;
    QryDadosTecnicosINSCMUN: TStringField;
    QryDadosTecnicosDENOMINACAO: TStringField;
    QryDadosTecnicosPAFECF: TStringField;
    QryDadosTecnicosVERSAO: TStringField;
    QryDadosTecnicosMD5: TStringField;
    QryDadosTecnicosVERSAO_ERPAFECF: TStringField;
    QryDadosTecnicosCONTATO: TStringField;
    QryDadosTecnicosENDERECO: TStringField;
    QryDadosTecnicosTELEFONE: TStringField;
    QryDadosTecnicosMD5REGISTRO: TStringField;
    QryDadosTecnicosNUMSERFAB: TStringField;
    DspDadosTecnicos: TDataSetProvider;
    CdsDadosTecnicos: TClientDataSet;
    CdsDadosTecnicosID: TIntegerField;
    CdsDadosTecnicosEMPRESA: TStringField;
    CdsDadosTecnicosNR_LAUDO_TECNICO: TStringField;
    CdsDadosTecnicosCNPJ: TStringField;
    CdsDadosTecnicosINSCEST: TStringField;
    CdsDadosTecnicosINSCMUN: TStringField;
    CdsDadosTecnicosDENOMINACAO: TStringField;
    CdsDadosTecnicosPAFECF: TStringField;
    CdsDadosTecnicosVERSAO: TStringField;
    CdsDadosTecnicosMD5: TStringField;
    CdsDadosTecnicosVERSAO_ERPAFECF: TStringField;
    CdsDadosTecnicosCONTATO: TStringField;
    CdsDadosTecnicosENDERECO: TStringField;
    CdsDadosTecnicosTELEFONE: TStringField;
    CdsDadosTecnicosMD5REGISTRO: TStringField;
    CdsDadosTecnicosNUMSERFAB: TStringField;
    QryControleDocMD5REGISTRO: TStringField;
    CdsControleDocMD5REGISTRO: TStringField;
    QryMesasAbertas: TFDQuery;
    QryMesasItens: TFDQuery;
    DspMesasAbertas: TDataSetProvider;
    DspMesasItens: TDataSetProvider;
    CdsMesasAbertas: TClientDataSet;
    CdsMesasItens: TClientDataSet;
    QryMesasAbertasID: TIntegerField;
    QryMesasAbertasID_MESA: TIntegerField;
    QryMesasAbertasDATA: TSQLTimeStampField;
    QryMesasAbertasHORA: TSQLTimeStampField;
    QryMesasAbertasVALOR: TFloatField;
    QryMesasAbertasCER_CONFERENCIA: TIntegerField;
    QryMesasAbertasSTATUS: TIntegerField;
    QryMesasAbertasID_MESA_ORIGEM: TIntegerField;
    CdsMesasAbertasID: TIntegerField;
    CdsMesasAbertasID_MESA: TIntegerField;
    CdsMesasAbertasDATA: TSQLTimeStampField;
    CdsMesasAbertasHORA: TSQLTimeStampField;
    CdsMesasAbertasVALOR: TFloatField;
    CdsMesasAbertasCER_CONFERENCIA: TIntegerField;
    CdsMesasAbertasSTATUS: TIntegerField;
    CdsMesasAbertasID_MESA_ORIGEM: TIntegerField;
    QryMesasItensID: TIntegerField;
    QryMesasItensID_MESA: TIntegerField;
    QryMesasItensID_PRODUTO: TIntegerField;
    QryMesasItensQUANT: TFloatField;
    QryMesasItensPRECO_UNIT: TFloatField;
    QryMesasItensPRECO_TOTAL: TFloatField;
    QryMesasItensCANCELADO: TStringField;
    QryMesasItensID_MESA_ORIGEM: TIntegerField;
    CdsMesasItensID: TIntegerField;
    CdsMesasItensID_MESA: TIntegerField;
    CdsMesasItensID_PRODUTO: TIntegerField;
    CdsMesasItensQUANT: TFloatField;
    CdsMesasItensPRECO_UNIT: TFloatField;
    CdsMesasItensPRECO_TOTAL: TFloatField;
    CdsMesasItensCANCELADO: TStringField;
    CdsMesasItensID_MESA_ORIGEM: TIntegerField;
    QryMesasAbertasNUMERO_MESA: TStringField;
    CdsMesasAbertasNUMERO_MESA: TStringField;
    QryMesasItensDESCRICAO: TStringField;
    CdsMesasItensDESCRICAO: TStringField;
    QryMesasItensNUMERO_MESA_ORIG: TStringField;
    CdsMesasItensNUMERO_MESA_ORIG: TStringField;
    CdsMesasItensTRANSFERIDA: TStringField;
    QryDavPV: TFDQuery;
    DspDavPV: TDataSetProvider;
    CdsDavPV: TClientDataSet;
    CdsMesasItensINFORMA: TStringField;
    QryDadosTecnicosDATA_ESTOQUE: TSQLTimeStampField;
    QryDadosTecnicosHORA_ESTOQUE: TSQLTimeStampField;
    CdsDadosTecnicosDATA_ESTOQUE: TSQLTimeStampField;
    CdsDadosTecnicosHORA_ESTOQUE: TSQLTimeStampField;
    QryCST: TFDQuery;
    QryCSTCODIGO: TStringField;
    QryCSTDESCRICAO: TStringField;
    QryCFOP: TFDQuery;
    DspCST: TDataSetProvider;
    DspCFOP: TDataSetProvider;
    CdsCST: TClientDataSet;
    CdsCSTCODIGO: TStringField;
    CdsCSTDESCRICAO: TStringField;
    CdsCFOP: TClientDataSet;
    QryComprasALIQ_ICMS: TFloatField;
    QryComprasBASE_ICMS: TFloatField;
    QryComprasVALOR_ICMS: TFloatField;
    QryComprasALIQ_ICMS_ST: TFloatField;
    QryComprasBASE_ICMS_ST: TFloatField;
    QryComprasVALOR_ICMS_ST: TFloatField;
    QryComprasVALOR_PIS: TFloatField;
    QryComprasVALOR_COFINS: TFloatField;
    QryComprasVALOR_IPI: TFloatField;
    QryComprasCHAVE_NFE: TStringField;
    QryComprasSTATUS_NFE: TStringField;
    QryComprasPROTOCOLO_NFE: TStringField;
    QryComprasRECIBO_NFE: TStringField;
    QryComprasDEVOLUCAO: TStringField;
    QryComprasVALOR_FRETE: TFloatField;
    QryComprasVALOR_OUTROS: TFloatField;
    CdsComprasALIQ_ICMS: TFloatField;
    CdsComprasBASE_ICMS: TFloatField;
    CdsComprasVALOR_ICMS: TFloatField;
    CdsComprasALIQ_ICMS_ST: TFloatField;
    CdsComprasBASE_ICMS_ST: TFloatField;
    CdsComprasVALOR_ICMS_ST: TFloatField;
    CdsComprasVALOR_PIS: TFloatField;
    CdsComprasVALOR_COFINS: TFloatField;
    CdsComprasVALOR_IPI: TFloatField;
    CdsComprasCHAVE_NFE: TStringField;
    CdsComprasSTATUS_NFE: TStringField;
    CdsComprasPROTOCOLO_NFE: TStringField;
    CdsComprasRECIBO_NFE: TStringField;
    CdsComprasDEVOLUCAO: TStringField;
    CdsComprasVALOR_FRETE: TFloatField;
    CdsComprasVALOR_OUTROS: TFloatField;
    QryComprasItensCST: TStringField;
    QryComprasItensCFOP: TStringField;
    QryComprasItensALIQ_ICMS: TFloatField;
    QryComprasItensBASE_ICMS: TFloatField;
    QryComprasItensVALOR_ICMS: TFloatField;
    QryComprasItensREDUCAO_BASE: TFloatField;
    QryComprasItensALIQ_ICMS_ST: TFloatField;
    QryComprasItensBASE_ICMS_ST: TFloatField;
    QryComprasItensVALOR_ICMS_ST: TFloatField;
    QryComprasItensVALOR_PIS: TFloatField;
    QryComprasItensVALOR_COFINS: TFloatField;
    QryComprasItensVALOR_IPI: TFloatField;
    QryComprasItensUNIDADE: TStringField;
    CdsComprasItensCST: TStringField;
    CdsComprasItensCFOP: TStringField;
    CdsComprasItensALIQ_ICMS: TFloatField;
    CdsComprasItensBASE_ICMS: TFloatField;
    CdsComprasItensVALOR_ICMS: TFloatField;
    CdsComprasItensREDUCAO_BASE: TFloatField;
    CdsComprasItensALIQ_ICMS_ST: TFloatField;
    CdsComprasItensBASE_ICMS_ST: TFloatField;
    CdsComprasItensVALOR_ICMS_ST: TFloatField;
    CdsComprasItensVALOR_PIS: TFloatField;
    CdsComprasItensVALOR_COFINS: TFloatField;
    CdsComprasItensVALOR_IPI: TFloatField;
    CdsComprasItensUNIDADE: TStringField;
    QryPedidoItensID: TIntegerField;
    QryPedidoItensIDPEDIDO: TIntegerField;
    QryPedidoItensIDPRODUTO: TIntegerField;
    QryPedidoItensDESCRICAO: TStringField;
    QryPedidoItensQUANTIDADE: TFloatField;
    QryPedidoItensVALOR: TFloatField;
    QryPedidoItensDESCONTO: TFloatField;
    QryPedidoItensACRESCIMO: TFloatField;
    QryPedidoItensVALOR_TOTAL: TFloatField;
    QryPedidoItensMARGEM: TFloatField;
    QryPedidoItensVALOR_REAL: TFloatField;
    QryPedidoItensTIPOPROD: TIntegerField;
    QryPedidoItensCANCELADO: TStringField;
    QryPedidoItensNUM_ITEM: TIntegerField;
    QryPedidoItensEAN13: TStringField;
    QryPedidoItensCST: TStringField;
    QryPedidoItensCFOP: TStringField;
    QryPedidoItensALIQ_ICMS: TFloatField;
    QryPedidoItensBASE_ICMS: TFloatField;
    QryPedidoItensVALOR_ICMS: TFloatField;
    QryPedidoItensREDUCAO_BASE: TFloatField;
    QryPedidoItensALIQ_ICMS_ST: TFloatField;
    QryPedidoItensBASE_ICMS_ST: TFloatField;
    QryPedidoItensVALOR_ICMS_ST: TFloatField;
    QryPedidoItensVALOR_PIS: TFloatField;
    QryPedidoItensVALOR_COFINS: TFloatField;
    QryPedidoItensVALOR_IPI: TFloatField;
    QryPedidoItensMD5REGISTRO: TStringField;
    QryPedidoItensID_BICO: TIntegerField;
    QryPedidoItensID_TANQUE: TIntegerField;
    QryPedidoItensID_BOMBA: TIntegerField;
    QryPedidoItensEI: TFloatField;
    QryPedidoItensEF: TFloatField;
    QryPedidoItensMVA: TFloatField;
    QryPedidoItensID_VENDEDOR: TIntegerField;
    CdsPedidoItensID: TIntegerField;
    CdsPedidoItensIDPEDIDO: TIntegerField;
    CdsPedidoItensIDPRODUTO: TIntegerField;
    CdsPedidoItensDESCRICAO: TStringField;
    CdsPedidoItensQUANTIDADE: TFloatField;
    CdsPedidoItensVALOR: TFloatField;
    CdsPedidoItensDESCONTO: TFloatField;
    CdsPedidoItensACRESCIMO: TFloatField;
    CdsPedidoItensVALOR_TOTAL: TFloatField;
    CdsPedidoItensMARGEM: TFloatField;
    CdsPedidoItensVALOR_REAL: TFloatField;
    CdsPedidoItensTIPOPROD: TIntegerField;
    CdsPedidoItensCANCELADO: TStringField;
    CdsPedidoItensNUM_ITEM: TIntegerField;
    CdsPedidoItensEAN13: TStringField;
    CdsPedidoItensCST: TStringField;
    CdsPedidoItensCFOP: TStringField;
    CdsPedidoItensALIQ_ICMS: TFloatField;
    CdsPedidoItensBASE_ICMS: TFloatField;
    CdsPedidoItensVALOR_ICMS: TFloatField;
    CdsPedidoItensREDUCAO_BASE: TFloatField;
    CdsPedidoItensALIQ_ICMS_ST: TFloatField;
    CdsPedidoItensBASE_ICMS_ST: TFloatField;
    CdsPedidoItensVALOR_ICMS_ST: TFloatField;
    CdsPedidoItensVALOR_PIS: TFloatField;
    CdsPedidoItensVALOR_COFINS: TFloatField;
    CdsPedidoItensVALOR_IPI: TFloatField;
    CdsPedidoItensMD5REGISTRO: TStringField;
    CdsPedidoItensID_BICO: TIntegerField;
    CdsPedidoItensID_TANQUE: TIntegerField;
    CdsPedidoItensID_BOMBA: TIntegerField;
    CdsPedidoItensEI: TFloatField;
    CdsPedidoItensEF: TFloatField;
    CdsPedidoItensMVA: TFloatField;
    CdsPedidoItensID_VENDEDOR: TIntegerField;
    QryDadosTecnicosCIDADE: TStringField;
    QryDadosTecnicosUF: TStringField;
    QryDadosTecnicosCEP: TStringField;
    CdsDadosTecnicosCIDADE: TStringField;
    CdsDadosTecnicosUF: TStringField;
    CdsDadosTecnicosCEP: TStringField;
    QryPedidoItensCOO: TIntegerField;
    QryPedidoItensCCF: TIntegerField;
    QryPedidoItensGNF: TIntegerField;
    QryPedidoItensNUMSERIEECF: TStringField;
    CdsPedidoItensCOO: TIntegerField;
    CdsPedidoItensCCF: TIntegerField;
    CdsPedidoItensGNF: TIntegerField;
    CdsPedidoItensNUMSERIEECF: TStringField;
    QryComprasItensCANCELADO: TStringField;
    CdsComprasItensCANCELADO: TStringField;
    QryEmpresa: TFDQuery;
    QryEmpresaID: TIntegerField;
    QryEmpresaRAZAO_SOCIAL: TStringField;
    QryEmpresaENDERECO: TStringField;
    QryEmpresaNUMERO: TStringField;
    QryEmpresaCOMPLEMENTO: TStringField;
    QryEmpresaBAIRRO: TStringField;
    QryEmpresaCIDADE: TStringField;
    QryEmpresaUF: TStringField;
    QryEmpresaCEP: TStringField;
    QryEmpresaCNPJ_CPF: TStringField;
    QryEmpresaINSCRICAO_RG: TStringField;
    QryEmpresaTELEFONE: TStringField;
    QryEmpresaTELEFAX: TStringField;
    QryEmpresaCONTATO: TStringField;
    QryEmpresaEMAIL: TStringField;
    QryEmpresaSITE: TStringField;
    QryEmpresaINSC_MUNIC: TStringField;
    QryEmpresaFANTASIA: TStringField;
    QryEmpresaCOD_MUNICIPIO: TStringField;
    QryEmpresaIDCONTADOR: TIntegerField;
    QryEmpresaCRT: TIntegerField;
    DspEmpresa: TDataSetProvider;
    CdsEmpresa: TClientDataSet;
    CdsEmpresaID: TIntegerField;
    CdsEmpresaRAZAO_SOCIAL: TStringField;
    CdsEmpresaENDERECO: TStringField;
    CdsEmpresaNUMERO: TStringField;
    CdsEmpresaCOMPLEMENTO: TStringField;
    CdsEmpresaBAIRRO: TStringField;
    CdsEmpresaCIDADE: TStringField;
    CdsEmpresaUF: TStringField;
    CdsEmpresaCEP: TStringField;
    CdsEmpresaCNPJ_CPF: TStringField;
    CdsEmpresaINSCRICAO_RG: TStringField;
    CdsEmpresaTELEFONE: TStringField;
    CdsEmpresaTELEFAX: TStringField;
    CdsEmpresaCONTATO: TStringField;
    CdsEmpresaEMAIL: TStringField;
    CdsEmpresaSITE: TStringField;
    CdsEmpresaINSC_MUNIC: TStringField;
    CdsEmpresaFANTASIA: TStringField;
    CdsEmpresaCOD_MUNICIPIO: TStringField;
    CdsEmpresaIDCONTADOR: TIntegerField;
    CdsEmpresaCRT: TIntegerField;
    QryConfigEXIBE_IMPOSTO: TStringField;
    QryConfigIMPOSTO_MENSAGEM: TStringField;
    CdsConfigEXIBE_IMPOSTO: TStringField;
    CdsConfigIMPOSTO_MENSAGEM: TStringField;
    QryPDV: TFDQuery;
    QryPDVCAIXA: TStringField;
    QryPDVDESCRICAO: TStringField;
    QryPDVSERIAL_ECF: TStringField;
    QryPDVATIVO: TStringField;
    QryPDVSINCRONIZADO: TStringField;
    DspPDV: TDataSetProvider;
    CdsPDV: TClientDataSet;
    CdsPDVCAIXA: TStringField;
    CdsPDVDESCRICAO: TStringField;
    CdsPDVSERIAL_ECF: TStringField;
    CdsPDVATIVO: TStringField;
    CdsPDVSINCRONIZADO: TStringField;
    QryPDVLETRA_ADD: TStringField;
    QryPDVMODELO_ECF: TStringField;
    QryPDVTIPO_ECF: TStringField;
    QryPDVMARCA_ECF: TStringField;
    QryPDVVERSAO_ECF: TStringField;
    QryPDVDATA_SB: TDateField;
    QryPDVHORA_SB: TTimeField;
    CdsPDVLETRA_ADD: TStringField;
    CdsPDVMODELO_ECF: TStringField;
    CdsPDVTIPO_ECF: TStringField;
    CdsPDVMARCA_ECF: TStringField;
    CdsPDVVERSAO_ECF: TStringField;
    CdsPDVDATA_SB: TDateField;
    CdsPDVHORA_SB: TTimeField;
    QryConfigCOD_RECEITA: TStringField;
    CdsConfigCOD_RECEITA: TStringField;
    QryPDVIDEMPRESA: TIntegerField;
    CdsPDVIDEMPRESA: TIntegerField;
    QryPedidoFPID: TIntegerField;
    QryPedidoFPIDPEDIDO: TIntegerField;
    QryPedidoFPID_FORMAPAG_CUPOM: TIntegerField;
    QryPedidoFPVALOR: TFloatField;
    QryPedidoFPTROCO: TFloatField;
    QryPedidoFPTIPO_DOCUMENTO: TIntegerField;
    QryPedidoFPDESCRICAO: TStringField;
    QryPedidoFPCONFIRMADO: TStringField;
    QryPedidoFPMD5REGISTRO: TStringField;
    QryPedidoFPDESCONTO: TFloatField;
    QryPedidoFPCOO: TIntegerField;
    QryPedidoFPCCF: TIntegerField;
    QryPedidoFPGNF: TIntegerField;
    QryPedidoFPNUMSERIEECF: TStringField;
    QryPedidoFPVINCULAR: TStringField;
    QryPedidoFPTIPO_TEF: TStringField;
    QryPedidoFPNOME_REDE: TStringField;
    QryPedidoFPNSU_DOC: TStringField;
    CdsPedidoFPID: TIntegerField;
    CdsPedidoFPIDPEDIDO: TIntegerField;
    CdsPedidoFPID_FORMAPAG_CUPOM: TIntegerField;
    CdsPedidoFPVALOR: TFloatField;
    CdsPedidoFPTROCO: TFloatField;
    CdsPedidoFPTIPO_DOCUMENTO: TIntegerField;
    CdsPedidoFPDESCRICAO: TStringField;
    CdsPedidoFPCONFIRMADO: TStringField;
    CdsPedidoFPMD5REGISTRO: TStringField;
    CdsPedidoFPDESCONTO: TFloatField;
    CdsPedidoFPCOO: TIntegerField;
    CdsPedidoFPCCF: TIntegerField;
    CdsPedidoFPGNF: TIntegerField;
    CdsPedidoFPNUMSERIEECF: TStringField;
    CdsPedidoFPVINCULAR: TStringField;
    CdsPedidoFPTIPO_TEF: TStringField;
    CdsPedidoFPNOME_REDE: TStringField;
    CdsPedidoFPNSU_DOC: TStringField;
    QryPedidoItensID_ABASTECIMENTO: TIntegerField;
    CdsPedidoItensID_ABASTECIMENTO: TIntegerField;
    QryPedidoFPPARCELAS_TEF: TIntegerField;
    CdsPedidoFPPARCELAS_TEF: TIntegerField;
    QryPedidoItensALIQ_PIS: TFloatField;
    QryPedidoItensALIQ_COFINS: TFloatField;
    QryPedidoItensBASE_PIS: TFloatField;
    QryPedidoItensBASE_COFINS: TFloatField;
    QryPedidoItensALIQ_IPI: TFloatField;
    QryPedidoItensBASE_IPI: TFloatField;
    CdsPedidoItensALIQ_PIS: TFloatField;
    CdsPedidoItensALIQ_COFINS: TFloatField;
    CdsPedidoItensBASE_PIS: TFloatField;
    CdsPedidoItensBASE_COFINS: TFloatField;
    CdsPedidoItensALIQ_IPI: TFloatField;
    CdsPedidoItensBASE_IPI: TFloatField;
    QryReg61: TFDQuery;
    DspReg61: TDataSetProvider;
    CdsReg61: TClientDataSet;
    QryPedidoItensCST_IPI: TStringField;
    QryPedidoItensCST_PIS: TStringField;
    QryPedidoItensCST_COFINS: TStringField;
    QryPedidoItensALIQ_ISS: TFloatField;
    QryPedidoItensBASE_ISS: TFloatField;
    QryPedidoItensVALOR_ISS: TFloatField;
    CdsPedidoItensCST_IPI: TStringField;
    CdsPedidoItensCST_PIS: TStringField;
    CdsPedidoItensCST_COFINS: TStringField;
    CdsPedidoItensALIQ_ISS: TFloatField;
    CdsPedidoItensBASE_ISS: TFloatField;
    CdsPedidoItensVALOR_ISS: TFloatField;
    QryEmpresaCOD_SUFRAMA: TStringField;
    CdsEmpresaCOD_SUFRAMA: TStringField;
    QryComprasIDPLANOCONTA: TIntegerField;
    QryComprasIDCENTROCUSTO: TIntegerField;
    QryComprasTIPO_FRETE: TIntegerField;
    QryComprasVALOR_SEGURO: TFloatField;
    CdsComprasIDPLANOCONTA: TIntegerField;
    CdsComprasIDCENTROCUSTO: TIntegerField;
    CdsComprasTIPO_FRETE: TIntegerField;
    CdsComprasVALOR_SEGURO: TFloatField;
    QryComprasItensALIQ_IPI: TFloatField;
    QryComprasItensALIQ_PIS: TFloatField;
    QryComprasItensALIQ_COFINS: TFloatField;
    QryComprasItensCST_IPI: TStringField;
    QryComprasItensCST_PIS: TStringField;
    QryComprasItensCST_COFINS: TStringField;
    QryComprasItensBASE_IPI: TFloatField;
    QryComprasItensBASE_PIS: TFloatField;
    QryComprasItensBASE_COFINS: TFloatField;
    CdsComprasItensALIQ_IPI: TFloatField;
    CdsComprasItensALIQ_PIS: TFloatField;
    CdsComprasItensALIQ_COFINS: TFloatField;
    CdsComprasItensCST_IPI: TStringField;
    CdsComprasItensCST_PIS: TStringField;
    CdsComprasItensCST_COFINS: TStringField;
    CdsComprasItensBASE_IPI: TFloatField;
    CdsComprasItensBASE_PIS: TFloatField;
    CdsComprasItensBASE_COFINS: TFloatField;
    QryCentroCusto: TFDQuery;
    QryPlanoConta: TFDQuery;
    DspCentroCusto: TDataSetProvider;
    DspPlanoConta: TDataSetProvider;
    CdsCentroCusto: TClientDataSet;
    CdsPlanoConta: TClientDataSet;
    QryCentroCustoID: TIntegerField;
    QryCentroCustoDESCRICAO: TStringField;
    QryCentroCustoRESPONSAVEL: TStringField;
    QryCentroCustoTELEFONE: TStringField;
    QryCentroCustoTELEFAX: TStringField;
    QryCentroCustoOBS: TMemoField;
    QryCentroCustoATIVO: TStringField;
    CdsCentroCustoID: TIntegerField;
    CdsCentroCustoDESCRICAO: TStringField;
    CdsCentroCustoRESPONSAVEL: TStringField;
    CdsCentroCustoTELEFONE: TStringField;
    CdsCentroCustoTELEFAX: TStringField;
    CdsCentroCustoOBS: TMemoField;
    CdsCentroCustoATIVO: TStringField;
    QryPlanoContaID: TIntegerField;
    QryPlanoContaCODIGO: TStringField;
    QryPlanoContaDESCRICAO: TStringField;
    QryPlanoContaTIPO_CONTA: TStringField;
    QryPlanoContaOBS: TMemoField;
    QryPlanoContaIDCONTAMASTER: TIntegerField;
    QryPlanoContaATIVO: TStringField;
    CdsPlanoContaID: TIntegerField;
    CdsPlanoContaCODIGO: TStringField;
    CdsPlanoContaDESCRICAO: TStringField;
    CdsPlanoContaTIPO_CONTA: TStringField;
    CdsPlanoContaOBS: TMemoField;
    CdsPlanoContaIDCONTAMASTER: TIntegerField;
    CdsPlanoContaATIVO: TStringField;
    QryPNMaster: TFDQuery;
    QryPNMasterID: TIntegerField;
    QryPNMasterCODIGO: TStringField;
    QryPNMasterDESCRICAO: TStringField;
    QryPNMasterTIPO_CONTA: TStringField;
    QryPNMasterOBS: TMemoField;
    QryPNMasterIDCONTAMASTER: TIntegerField;
    QryPNMasterATIVO: TStringField;
    DspPNMaster: TDataSetProvider;
    CdsPNMaster: TClientDataSet;
    CdsPNMasterID: TIntegerField;
    CdsPNMasterCODIGO: TStringField;
    CdsPNMasterDESCRICAO: TStringField;
    CdsPNMasterTIPO_CONTA: TStringField;
    CdsPNMasterOBS: TMemoField;
    CdsPNMasterIDCONTAMASTER: TIntegerField;
    CdsPNMasterATIVO: TStringField;
    QryComprasItensMVA: TFloatField;
    CdsComprasItensMVA: TFloatField;
    QryConfigNFE_FORMA_EMISS: TIntegerField;
    QryConfigNFE_PATH_LOGOMARCA: TStringField;
    QryConfigNFE_SALVAR_ARQ: TStringField;
    QryConfigNFE_PATH_CERTF: TStringField;
    QryConfigNFE_SERIE_CERTF: TStringField;
    QryConfigNFE_SENHA_CERTF: TStringField;
    QryConfigNFE_WS_UF: TStringField;
    QryConfigNFE_WS_AMBIENTE: TIntegerField;
    QryConfigNFE_WS_HOST: TStringField;
    QryConfigNFE_WS_PORTA: TStringField;
    QryConfigNFE_WS_USUARIO: TStringField;
    QryConfigNFE_WS_SENHA: TStringField;
    QryConfigNFE_EMAIL_HOST: TStringField;
    QryConfigNFE_EMAIL_PORTA: TStringField;
    QryConfigNFE_EMAIL_USUARIO: TStringField;
    QryConfigNFE_EMAIL_SENHA: TStringField;
    CdsConfigNFE_FORMA_EMISS: TIntegerField;
    CdsConfigNFE_PATH_LOGOMARCA: TStringField;
    CdsConfigNFE_SALVAR_ARQ: TStringField;
    CdsConfigNFE_PATH_CERTF: TStringField;
    CdsConfigNFE_SERIE_CERTF: TStringField;
    CdsConfigNFE_SENHA_CERTF: TStringField;
    CdsConfigNFE_WS_UF: TStringField;
    CdsConfigNFE_WS_AMBIENTE: TIntegerField;
    CdsConfigNFE_WS_HOST: TStringField;
    CdsConfigNFE_WS_PORTA: TStringField;
    CdsConfigNFE_WS_USUARIO: TStringField;
    CdsConfigNFE_WS_SENHA: TStringField;
    CdsConfigNFE_EMAIL_HOST: TStringField;
    CdsConfigNFE_EMAIL_PORTA: TStringField;
    CdsConfigNFE_EMAIL_USUARIO: TStringField;
    CdsConfigNFE_EMAIL_SENHA: TStringField;
    QryConfigNFE_PATH_ARQUIVO: TStringField;
    CdsConfigNFE_PATH_ARQUIVO: TStringField;
    QryCFOPCFCOD: TStringField;
    QryCFOPCFNOME: TStringField;
    CdsCFOPCFCOD: TStringField;
    CdsCFOPCFNOME: TStringField;
    QryPais: TFDQuery;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    QryPaisCOD_PAIS: TStringField;
    QryPaisPAIS: TStringField;
    QryPaisDDI: TStringField;
    CdsPaisCOD_PAIS: TStringField;
    CdsPaisPAIS: TStringField;
    CdsPaisDDI: TStringField;
    QryComprasNATOP: TStringField;
    CdsComprasNATOP: TStringField;
    QryConfigNFE_VERSAODF: TIntegerField;
    CdsConfigNFE_VERSAODF: TIntegerField;
    QryEmpresaCNAE: TStringField;
    CdsEmpresaCNAE: TStringField;
    QryCNAE: TFDQuery;
    DspCNAE: TDataSetProvider;
    CdsCNAE: TClientDataSet;
    QryCNAESECAO: TStringField;
    QryCNAEDIVISAO: TStringField;
    QryCNAEGRUPO: TStringField;
    QryCNAECLASSE: TStringField;
    QryCNAESUBCLASSE: TStringField;
    QryCNAEDENOMINACAO: TStringField;
    CdsCNAESECAO: TStringField;
    CdsCNAEDIVISAO: TStringField;
    CdsCNAEGRUPO: TStringField;
    CdsCNAECLASSE: TStringField;
    CdsCNAESUBCLASSE: TStringField;
    CdsCNAEDENOMINACAO: TStringField;
    QryConfigNFE_TOKEN: TStringField;
    CdsConfigNFE_TOKEN: TStringField;
    QryPedidoItensUNIDADE: TStringField;
    QryPedidoItensVALOR_REENBOLSO: TFloatField;
    QryPedidoItensVALOR_SUBSIDIO: TFloatField;
    CdsPedidoItensUNIDADE: TStringField;
    CdsPedidoItensVALOR_REENBOLSO: TFloatField;
    CdsPedidoItensVALOR_SUBSIDIO: TFloatField;
    QryConfigSCPATH_DB: TStringField;
    QryConfigSCUSUARIO: TStringField;
    QryConfigSCPASSWORD: TStringField;
    QryConfigSCIP_SRV: TStringField;
    QryConfigSCPATH_REL: TStringField;
    QryConfigSCPORTA: TStringField;
    QryConfigSCVERSAO_FB: TStringField;
    QryConfigSCPATH_SCRIBES: TStringField;
    CdsConfigSCPATH_DB: TStringField;
    CdsConfigSCUSUARIO: TStringField;
    CdsConfigSCPASSWORD: TStringField;
    CdsConfigSCIP_SRV: TStringField;
    CdsConfigSCPATH_REL: TStringField;
    CdsConfigSCPORTA: TStringField;
    CdsConfigSCVERSAO_FB: TStringField;
    CdsConfigSCPATH_SCRIBES: TStringField;
    QryEmpresaNIRE: TStringField;
    QryEmpresaNOME_RESP: TStringField;
    QryEmpresaCOD_ASSIN: TIntegerField;
    QryEmpresaCPF_RESP: TStringField;
    QryEmpresaCEP_RESP: TStringField;
    QryEmpresaEND_RESP: TStringField;
    QryEmpresaNUM_RESP: TStringField;
    QryEmpresaCOMPL_RESP: TStringField;
    QryEmpresaBAIRRO_RESP: TStringField;
    QryEmpresaFONE_RESP: TStringField;
    QryEmpresaFAX_RESP: TStringField;
    QryEmpresaEMAIL_RESP: TStringField;
    CdsEmpresaNIRE: TStringField;
    CdsEmpresaNOME_RESP: TStringField;
    CdsEmpresaCOD_ASSIN: TIntegerField;
    CdsEmpresaCPF_RESP: TStringField;
    CdsEmpresaCEP_RESP: TStringField;
    CdsEmpresaEND_RESP: TStringField;
    CdsEmpresaNUM_RESP: TStringField;
    CdsEmpresaCOMPL_RESP: TStringField;
    CdsEmpresaBAIRRO_RESP: TStringField;
    CdsEmpresaFONE_RESP: TStringField;
    CdsEmpresaFAX_RESP: TStringField;
    CdsEmpresaEMAIL_RESP: TStringField;
    QryConfigNFE_WS_VISUALIZAR: TStringField;
    QryConfigNFE_DANFE_PREVIEW: TStringField;
    CdsConfigNFE_WS_VISUALIZAR: TStringField;
    CdsConfigNFE_DANFE_PREVIEW: TStringField;
    QryConfigGERENCIAL_NFCE: TStringField;
    CdsConfigGERENCIAL_NFCE: TStringField;
    QryConfigECF: TFDQuery;
    QryConfigECFNUMSERIE: TStringField;
    QryConfigECFPORTA: TStringField;
    QryConfigECFMODELO: TIntegerField;
    QryConfigECFBAUDRATE: TIntegerField;
    QryConfigECFDATABITS: TIntegerField;
    QryConfigECFPARITY: TIntegerField;
    QryConfigECFSTOPBITS: TIntegerField;
    QryConfigECFHANDSHAKING: TIntegerField;
    QryConfigECFHARDFLOW: TIntegerField;
    QryConfigECFSOFTFLOW: TIntegerField;
    DspConfigECF: TDataSetProvider;
    CdsConfigECF: TClientDataSet;
    CdsConfigECFNUMSERIE: TStringField;
    CdsConfigECFPORTA: TStringField;
    CdsConfigECFMODELO: TIntegerField;
    CdsConfigECFBAUDRATE: TIntegerField;
    CdsConfigECFDATABITS: TIntegerField;
    CdsConfigECFPARITY: TIntegerField;
    CdsConfigECFSTOPBITS: TIntegerField;
    CdsConfigECFHANDSHAKING: TIntegerField;
    CdsConfigECFHARDFLOW: TIntegerField;
    CdsConfigECFSOFTFLOW: TIntegerField;
    QryEmpresaPERFIL_PAFECF: TStringField;
    CdsEmpresaPERFIL_PAFECF: TStringField;
    CdsPDVaux: TClientDataSet;
    CdsPDVauxCAIXA: TStringField;
    CdsPDVauxDESCRICAO: TStringField;
    CdsPDVauxSERIAL_ECF: TStringField;
    CdsPDVauxATIVO: TStringField;
    CdsPDVauxSINCRONIZADO: TStringField;
    CdsPDVauxLETRA_ADD: TStringField;
    CdsPDVauxMODELO_ECF: TStringField;
    CdsPDVauxTIPO_ECF: TStringField;
    CdsPDVauxMARCA_ECF: TStringField;
    CdsPDVauxVERSAO_ECF: TStringField;
    CdsPDVauxDATA_SB: TDateField;
    CdsPDVauxHORA_SB: TTimeField;
    CdsPDVauxIDEMPRESA: TIntegerField;
    QryMesasAbertasCOO: TIntegerField;
    CdsMesasAbertasCOO: TIntegerField;
    QryPedidoItensCOO_1: TIntegerField;
    QryPedidoItensCCF_1: TIntegerField;
    CdsPedidoItensCOO_1: TIntegerField;
    CdsPedidoItensCCF_1: TIntegerField;
    QryConfigBLQ_ATV: TIntegerField;
    CdsConfigBLQ_ATV: TIntegerField;
    QryConfigNFE_IDTOKEN: TStringField;
    QryConfigNFE_WS_UF_AUX: TStringField;
    QryConfigNFE_USAR_AUX_NFCE: TStringField;
    CdsConfigNFE_IDTOKEN: TStringField;
    CdsConfigNFE_WS_UF_AUX: TStringField;
    CdsConfigNFE_USAR_AUX_NFCE: TStringField;
    QryMesas: TFDQuery;
    QryMesasID: TIntegerField;
    QryMesasNUMERO_MESA: TStringField;
    QryMesasDESCRICAO: TStringField;
    DspMesas: TDataSetProvider;
    CdsMesas: TClientDataSet;
    CdsMesasID: TIntegerField;
    CdsMesasNUMERO_MESA: TStringField;
    CdsMesasDESCRICAO: TStringField;
    QryPedidoItensID_BICO_PERDA: TIntegerField;
    CdsPedidoItensID_BICO_PERDA: TIntegerField;
    QryConfigCLASSIFICA_NFCE: TIntegerField;
    QryConfigABRE_POSTO_AUTO: TStringField;
    CdsConfigCLASSIFICA_NFCE: TIntegerField;
    CdsConfigABRE_POSTO_AUTO: TStringField;
    QryDadosTecnicosEMAIL: TStringField;
    CdsDadosTecnicosEMAIL: TStringField;
    QryRegistroA2: TFDQuery;
    DspRegistroA2: TDataSetProvider;
    CdsRegistroA2: TClientDataSet;
    QryRegistroA2ID: TIntegerField;
    QryRegistroA2DATA_MOVIMENTO: TDateField;
    QryRegistroA2DESCRICAO: TStringField;
    QryRegistroA2COD_TIPO: TIntegerField;
    QryRegistroA2VALOR: TFMTBCDField;
    QryRegistroA2MD5REGISTRO: TStringField;
    CdsRegistroA2ID: TIntegerField;
    CdsRegistroA2DATA_MOVIMENTO: TDateField;
    CdsRegistroA2DESCRICAO: TStringField;
    CdsRegistroA2COD_TIPO: TIntegerField;
    CdsRegistroA2VALOR: TFMTBCDField;
    CdsRegistroA2MD5REGISTRO: TStringField;
    QryEmpresaCRT_ISSQN: TIntegerField;
    QryEmpresaRATEIO_ISSQN: TStringField;
    CdsEmpresaCRT_ISSQN: TIntegerField;
    CdsEmpresaRATEIO_ISSQN: TStringField;
    QryDadosTecnicosSWH_ASSINATURA: TStringField;
    CdsDadosTecnicosSWH_ASSINATURA: TStringField;
    QryConfigPATH_ARQ_LOG_SAT: TStringField;
    QryConfigNOME_DLL_SAT: TStringField;
    QryConfigCOD_ATV_SAT: TStringField;
    QryConfigCOD_UF_SAT: TStringField;
    QryConfigAMBIENTE_SAT: TIntegerField;
    QryConfigSALVAR_CFES: TStringField;
    QryConfigSALVAR_CEF_CANC: TStringField;
    QryConfigSALVAR_ENVIO_SAT: TStringField;
    QryConfigSAT_UTF8: TStringField;
    QryConfigSAT_FORMAT_XML: TStringField;
    QryConfigSAT_PAG_CODIGO: TIntegerField;
    QryConfigSAT_VERSAO: TStringField;
    QryConfigSAT_SEPARAR_CNPJ: TStringField;
    QryConfigSAT_SEPARAR_MES: TStringField;
    QryConfigSAT_TIPO_REDE: TIntegerField;
    QryConfigSAT_PROTOCOLO_REDE: TIntegerField;
    QryConfigSAT_WIFI_SSID: TStringField;
    QryConfigSAT_WIFI_SEG: TIntegerField;
    QryConfigSAT_WIFI_SENHA: TStringField;
    QryConfigSAT_PPPOE_USER: TStringField;
    QryConfigSAT_PPPOE_LOGIN: TStringField;
    QryConfigSAT_REDE_PROXY: TIntegerField;
    QryConfigSAT_REDE_IP: TStringField;
    QryConfigSAT_REDE_PORTA: TIntegerField;
    QryConfigSAT_REDE_USER: TStringField;
    QryConfigSAT_REDE_LOGIN: TStringField;
    QryConfigSAT_IMP_LARGURA: TIntegerField;
    QryConfigSAT_IMP_TOPO: TIntegerField;
    QryConfigSAT_IMP_FUNDO: TIntegerField;
    QryConfigSAT_IMP_ESQUERDA: TIntegerField;
    QryConfigSAT_IMP_DIREITA: TIntegerField;
    QryConfigSAT_IMP_PREVIEW: TStringField;
    QryConfigSAT_IMP_NOME: TStringField;
    CdsConfigPATH_ARQ_LOG_SAT: TStringField;
    CdsConfigNOME_DLL_SAT: TStringField;
    CdsConfigCOD_ATV_SAT: TStringField;
    CdsConfigCOD_UF_SAT: TStringField;
    CdsConfigAMBIENTE_SAT: TIntegerField;
    CdsConfigSALVAR_CFES: TStringField;
    CdsConfigSALVAR_CEF_CANC: TStringField;
    CdsConfigSALVAR_ENVIO_SAT: TStringField;
    CdsConfigSAT_UTF8: TStringField;
    CdsConfigSAT_FORMAT_XML: TStringField;
    CdsConfigSAT_PAG_CODIGO: TIntegerField;
    CdsConfigSAT_VERSAO: TStringField;
    CdsConfigSAT_SEPARAR_CNPJ: TStringField;
    CdsConfigSAT_SEPARAR_MES: TStringField;
    CdsConfigSAT_TIPO_REDE: TIntegerField;
    CdsConfigSAT_PROTOCOLO_REDE: TIntegerField;
    CdsConfigSAT_WIFI_SSID: TStringField;
    CdsConfigSAT_WIFI_SEG: TIntegerField;
    CdsConfigSAT_WIFI_SENHA: TStringField;
    CdsConfigSAT_PPPOE_USER: TStringField;
    CdsConfigSAT_PPPOE_LOGIN: TStringField;
    CdsConfigSAT_REDE_PROXY: TIntegerField;
    CdsConfigSAT_REDE_IP: TStringField;
    CdsConfigSAT_REDE_PORTA: TIntegerField;
    CdsConfigSAT_REDE_USER: TStringField;
    CdsConfigSAT_REDE_LOGIN: TStringField;
    CdsConfigSAT_IMP_LARGURA: TIntegerField;
    CdsConfigSAT_IMP_TOPO: TIntegerField;
    CdsConfigSAT_IMP_FUNDO: TIntegerField;
    CdsConfigSAT_IMP_ESQUERDA: TIntegerField;
    CdsConfigSAT_IMP_DIREITA: TIntegerField;
    CdsConfigSAT_IMP_PREVIEW: TStringField;
    CdsConfigSAT_IMP_NOME: TStringField;
    QryConfigIPFIX_IP: TStringField;
    QryConfigIPFIX_MASK: TStringField;
    QryConfigIPFIX_GATEWAY: TStringField;
    QryConfigIPFIX_DNS1: TStringField;
    QryConfigIPFIX_DNS2: TStringField;
    CdsConfigIPFIX_IP: TStringField;
    CdsConfigIPFIX_MASK: TStringField;
    CdsConfigIPFIX_GATEWAY: TStringField;
    CdsConfigIPFIX_DNS1: TStringField;
    CdsConfigIPFIX_DNS2: TStringField;
    QryConfigSAT_MODELO: TIntegerField;
    CdsConfigSAT_MODELO: TIntegerField;
    QryConfigSAT_IMPRESSORA: TIntegerField;
    QryConfigSAT_POS_MODELO: TIntegerField;
    QryConfigSAT_POS_PAGCODIGO: TIntegerField;
    QryConfigSAT_POS_PORTA: TStringField;
    QryConfigSAT_POS_COLUNAS: TIntegerField;
    QryConfigSAT_POS_LINHAS: TIntegerField;
    QryConfigSAT_POS_ESPACO: TIntegerField;
    QryConfigSAT_QRCODE: TStringField;
    QryConfigSAT_IMPUMALINHA: TStringField;
    CdsConfigSAT_IMPRESSORA: TIntegerField;
    CdsConfigSAT_POS_MODELO: TIntegerField;
    CdsConfigSAT_POS_PAGCODIGO: TIntegerField;
    CdsConfigSAT_POS_PORTA: TStringField;
    CdsConfigSAT_POS_COLUNAS: TIntegerField;
    CdsConfigSAT_POS_LINHAS: TIntegerField;
    CdsConfigSAT_POS_ESPACO: TIntegerField;
    CdsConfigSAT_QRCODE: TStringField;
    CdsConfigSAT_IMPUMALINHA: TStringField;
    QryConfigVERIFICA_GTIN: TStringField;
    QryConfigGERAR_GTIN: TStringField;
    QryConfigIMPRESSORA: TStringField;
    QryConfigPREVIEW_NFE: TStringField;
    QryConfigEXIBIR_MSG_WS: TStringField;
    QryConfigDESC_MAXIMO: TFloatField;
    CdsConfigVERIFICA_GTIN: TStringField;
    CdsConfigGERAR_GTIN: TStringField;
    CdsConfigIMPRESSORA: TStringField;
    CdsConfigPREVIEW_NFE: TStringField;
    CdsConfigEXIBIR_MSG_WS: TStringField;
    CdsConfigDESC_MAXIMO: TFloatField;
    QryRecargas: TFDQuery;
    QryRecargasID: TIntegerField;
    QryRecargasDATA: TDateField;
    QryRecargasHORA: TTimeField;
    QryRecargasDDD: TStringField;
    QryRecargasCELULAR: TStringField;
    QryRecargasVALOR: TFloatField;
    QryRecargasNSU: TStringField;
    QryRecargasNOME_REDE: TStringField;
    QryRecargasCAIXA: TStringField;
    QryRecargasTIPO_DOCUMENTO: TIntegerField;
    DspRecargas: TDataSetProvider;
    CdsRecargas: TClientDataSet;
    CdsRecargasID: TIntegerField;
    CdsRecargasDATA: TDateField;
    CdsRecargasHORA: TTimeField;
    CdsRecargasDDD: TStringField;
    CdsRecargasCELULAR: TStringField;
    CdsRecargasVALOR: TFloatField;
    CdsRecargasNSU: TStringField;
    CdsRecargasNOME_REDE: TStringField;
    CdsRecargasCAIXA: TStringField;
    CdsRecargasTIPO_DOCUMENTO: TIntegerField;
    QryConfigSAT_EXT_RESUMIDO: TStringField;
    CdsConfigSAT_EXT_RESUMIDO: TStringField;
    QryConfigGRADE_PRODUTOS: TStringField;
    QryConfigCLONAR_PRODUTO: TStringField;
    CdsConfigGRADE_PRODUTOS: TStringField;
    CdsConfigCLONAR_PRODUTO: TStringField;
    QryPedidoItensID_COR: TIntegerField;
    QryPedidoItensID_TAMANHO: TIntegerField;
    CdsPedidoItensID_COR: TIntegerField;
    CdsPedidoItensID_TAMANHO: TIntegerField;
    QryConfigID_CLASS_COMPRA: TIntegerField;
    QryConfigID_FP_COMPRA: TIntegerField;
    CdsConfigID_CLASS_COMPRA: TIntegerField;
    CdsConfigID_FP_COMPRA: TIntegerField;
    QryComprasTRANSP_CNPJ_CPF: TStringField;
    QryComprasTRANSP_INSC_RG: TStringField;
    QryComprasTRANSP_NOME: TStringField;
    QryComprasTRANSP_ENDERECO: TStringField;
    QryComprasTRANSP_NUM_END: TStringField;
    QryComprasTRANSP_BAIRRO_END: TStringField;
    QryComprasTRANSP_COMPLEMENTO: TStringField;
    QryComprasTRANSP_CODCIDADE: TStringField;
    QryComprasTRANSP_CIDADE_END: TStringField;
    QryComprasTRANSP_UF_END: TStringField;
    QryComprasTRANSP_CEP_END: TStringField;
    QryComprasTRANSP_TELEFONE: TStringField;
    CdsComprasTRANSP_CNPJ_CPF: TStringField;
    CdsComprasTRANSP_INSC_RG: TStringField;
    CdsComprasTRANSP_NOME: TStringField;
    CdsComprasTRANSP_ENDERECO: TStringField;
    CdsComprasTRANSP_NUM_END: TStringField;
    CdsComprasTRANSP_BAIRRO_END: TStringField;
    CdsComprasTRANSP_COMPLEMENTO: TStringField;
    CdsComprasTRANSP_CODCIDADE: TStringField;
    CdsComprasTRANSP_CIDADE_END: TStringField;
    CdsComprasTRANSP_UF_END: TStringField;
    CdsComprasTRANSP_CEP_END: TStringField;
    CdsComprasTRANSP_TELEFONE: TStringField;
    QryConfigALIQ_ISS: TFloatField;
    CdsConfigALIQ_ISS: TFloatField;
    QryConfigNFSE_SENHA: TStringField;
    QryConfigNFSE_FRASE: TStringField;
    CdsConfigNFSE_SENHA: TStringField;
    CdsConfigNFSE_FRASE: TStringField;
    QryPedidoItensCSOSN: TStringField;
    CdsPedidoItensCSOSN: TStringField;
    QryCSOSN: TFDQuery;
    QryCSOSNCODIGO: TStringField;
    QryCSOSNDESCRICAO: TStringField;
    DspCSOSN: TDataSetProvider;
    CdsCSOSN: TClientDataSet;
    CdsCSOSNCODIGO: TStringField;
    CdsCSOSNDESCRICAO: TStringField;
    QryDadosTecnicosDATA_LAUDO: TDateField;
    CdsDadosTecnicosDATA_LAUDO: TDateField;
    QryCFOPCFNOTA: TBlobField;
    CdsCFOPCFNOTA: TBlobField;
    QryPedidoClassID: TIntegerField;
    QryPedidoClassDESCRICAO: TStringField;
    QryPedidoClassTIPO: TIntegerField;
    QryPedidoClassTIPO_MOVIMENTO: TIntegerField;
    QryPedidoClassBAIXAR_ESTOQUE: TStringField;
    QryPedidoClassGERAR_MOVIMENTO: TStringField;
    QryPedidoClassMODELO: TStringField;
    QryPedidoClassSERIE: TStringField;
    QryPedidoClassDEVOLUCAO: TStringField;
    QryPedidoClassNATOP: TStringField;
    QryPedidoClassAPROPRIAR_ICMS_AP: TStringField;
    QryPedidoClassCFOP: TStringField;
    QryPedidoClassEXIBE_LISTA: TStringField;
    CdsPedidoClassID: TIntegerField;
    CdsPedidoClassDESCRICAO: TStringField;
    CdsPedidoClassTIPO: TIntegerField;
    CdsPedidoClassTIPO_MOVIMENTO: TIntegerField;
    CdsPedidoClassBAIXAR_ESTOQUE: TStringField;
    CdsPedidoClassGERAR_MOVIMENTO: TStringField;
    CdsPedidoClassMODELO: TStringField;
    CdsPedidoClassSERIE: TStringField;
    CdsPedidoClassDEVOLUCAO: TStringField;
    CdsPedidoClassNATOP: TStringField;
    CdsPedidoClassAPROPRIAR_ICMS_AP: TStringField;
    CdsPedidoClassCFOP: TStringField;
    CdsPedidoClassEXIBE_LISTA: TStringField;
    QryContasID: TIntegerField;
    QryContasIDCONTATO: TIntegerField;
    QryContasDATA_LANC: TDateField;
    QryContasORIGEM: TIntegerField;
    QryContasIDPEDIDO: TIntegerField;
    QryContasTIPO: TIntegerField;
    QryContasNUMCONTA: TStringField;
    QryContasSERIE: TIntegerField;
    QryContasDATA_VENC: TDateField;
    QryContasDATA_QUIT: TTimeField;
    QryContasVALOR_CONTA: TFloatField;
    QryContasVALOR_DESCONTO: TFloatField;
    QryContasVALOR_ACRESCIMO: TFloatField;
    QryContasVALOR_QUITATO: TFloatField;
    QryContasSTATUS: TIntegerField;
    QryContasCONTATO: TStringField;
    QryContasDOC_CONTATO: TStringField;
    QryContasJUROS: TFloatField;
    QryContasMULTA: TFloatField;
    QryContasIDOS: TIntegerField;
    QryContasIDEMPRESA: TIntegerField;
    QryContasIDCTAVINCULADA: TIntegerField;
    CdsContasID: TIntegerField;
    CdsContasIDCONTATO: TIntegerField;
    CdsContasDATA_LANC: TDateField;
    CdsContasORIGEM: TIntegerField;
    CdsContasIDPEDIDO: TIntegerField;
    CdsContasTIPO: TIntegerField;
    CdsContasNUMCONTA: TStringField;
    CdsContasSERIE: TIntegerField;
    CdsContasDATA_VENC: TDateField;
    CdsContasDATA_QUIT: TTimeField;
    CdsContasVALOR_CONTA: TFloatField;
    CdsContasVALOR_DESCONTO: TFloatField;
    CdsContasVALOR_ACRESCIMO: TFloatField;
    CdsContasVALOR_QUITATO: TFloatField;
    CdsContasSTATUS: TIntegerField;
    CdsContasCONTATO: TStringField;
    CdsContasDOC_CONTATO: TStringField;
    CdsContasJUROS: TFloatField;
    CdsContasMULTA: TFloatField;
    CdsContasIDOS: TIntegerField;
    CdsContasIDEMPRESA: TIntegerField;
    CdsContasIDCTAVINCULADA: TIntegerField;
    QryContasAuxID: TIntegerField;
    QryContasAuxIDCONTATO: TIntegerField;
    QryContasAuxDATA_LANC: TDateField;
    QryContasAuxORIGEM: TIntegerField;
    QryContasAuxIDPEDIDO: TIntegerField;
    QryContasAuxTIPO: TIntegerField;
    QryContasAuxNUMCONTA: TStringField;
    QryContasAuxSERIE: TIntegerField;
    QryContasAuxDATA_VENC: TDateField;
    QryContasAuxDATA_QUIT: TTimeField;
    QryContasAuxVALOR_CONTA: TFloatField;
    QryContasAuxVALOR_DESCONTO: TFloatField;
    QryContasAuxVALOR_ACRESCIMO: TFloatField;
    QryContasAuxVALOR_QUITATO: TFloatField;
    QryContasAuxSTATUS: TIntegerField;
    QryContasAuxCONTATO: TStringField;
    QryContasAuxDOC_CONTATO: TStringField;
    QryContasAuxJUROS: TFloatField;
    QryContasAuxMULTA: TFloatField;
    QryContasAuxIDOS: TIntegerField;
    QryContasAuxIDEMPRESA: TIntegerField;
    QryContasAuxIDCTAVINCULADA: TIntegerField;
    CdsContasAuxID: TIntegerField;
    CdsContasAuxIDCONTATO: TIntegerField;
    CdsContasAuxDATA_LANC: TDateField;
    CdsContasAuxORIGEM: TIntegerField;
    CdsContasAuxIDPEDIDO: TIntegerField;
    CdsContasAuxTIPO: TIntegerField;
    CdsContasAuxNUMCONTA: TStringField;
    CdsContasAuxSERIE: TIntegerField;
    CdsContasAuxDATA_VENC: TDateField;
    CdsContasAuxDATA_QUIT: TTimeField;
    CdsContasAuxVALOR_CONTA: TFloatField;
    CdsContasAuxVALOR_DESCONTO: TFloatField;
    CdsContasAuxVALOR_ACRESCIMO: TFloatField;
    CdsContasAuxVALOR_QUITATO: TFloatField;
    CdsContasAuxSTATUS: TIntegerField;
    CdsContasAuxCONTATO: TStringField;
    CdsContasAuxDOC_CONTATO: TStringField;
    CdsContasAuxJUROS: TFloatField;
    CdsContasAuxMULTA: TFloatField;
    CdsContasAuxIDOS: TIntegerField;
    CdsContasAuxIDEMPRESA: TIntegerField;
    CdsContasAuxIDCTAVINCULADA: TIntegerField;
    QryPedidosID: TIntegerField;
    QryPedidosPEDIDO_NUM: TStringField;
    QryPedidosIDCLIENTE: TIntegerField;
    QryPedidosID_VENDEDOR: TIntegerField;
    QryPedidosDATA_PEDIDO: TDateField;
    QryPedidosHORA_PEDIDO: TTimeField;
    QryPedidosDATA_ENTREGA: TDateField;
    QryPedidosHORA_ENTREGA: TTimeField;
    QryPedidosID_CLASSIFICACAO: TIntegerField;
    QryPedidosCONFIRMADA: TStringField;
    QryPedidosENTREGUE: TStringField;
    QryPedidosVALOR: TFloatField;
    QryPedidosDESCONTO: TFloatField;
    QryPedidosACRESCIMO: TFloatField;
    QryPedidosOUTRAS_DESPESAS: TFloatField;
    QryPedidosVALOR_TOTAL: TFloatField;
    QryPedidosCANCELADO: TStringField;
    QryPedidosID_FORMAPAG: TIntegerField;
    QryPedidosEND_ENTREGA: TStringField;
    QryPedidosNUM_END_ENTREGA: TStringField;
    QryPedidosCOMPL_END_ENTREGA: TStringField;
    QryPedidosBAIRRO_END_ENTREGA: TStringField;
    QryPedidosCID_END_ENTREGA: TStringField;
    QryPedidosUF_END_ENTREGA: TStringField;
    QryPedidosCEP_END_ENTREGA: TStringField;
    QryPedidosCLIENTE: TStringField;
    QryPedidosTIPODOC: TIntegerField;
    QryPedidosTIPO_PEDIDO: TIntegerField;
    QryPedidosVALOR_REAL: TFloatField;
    QryPedidosMARGEM_VENDA: TFloatField;
    QryPedidosVALOR_COMISSAO: TFloatField;
    QryPedidosTOTAL_GERAL: TFloatField;
    QryPedidosCOO: TIntegerField;
    QryPedidosCCF: TIntegerField;
    QryPedidosGNF: TIntegerField;
    QryPedidosDAV: TStringField;
    QryPedidosCNPJCPF: TStringField;
    QryPedidosINSCEST: TStringField;
    QryPedidosVALOR_TROCO: TFloatField;
    QryPedidosCAIXA: TStringField;
    QryPedidosIDEMPRESA: TIntegerField;
    QryPedidosDAV_IMPRESSO: TIntegerField;
    QryPedidosNATOP: TStringField;
    QryPedidosALIQ_ICMS: TFloatField;
    QryPedidosBASE_ICMS: TFloatField;
    QryPedidosVALOR_ICMS: TFloatField;
    QryPedidosALIQ_ICMS_ST: TFloatField;
    QryPedidosBASE_ICMS_ST: TFloatField;
    QryPedidosVALOR_ICMS_ST: TFloatField;
    QryPedidosVALOR_PIS: TFloatField;
    QryPedidosVALOR_COFINS: TFloatField;
    QryPedidosVALOR_IPI: TFloatField;
    QryPedidosMD5REGISTRO: TStringField;
    QryPedidosNUMPV: TStringField;
    QryPedidosCER: TIntegerField;
    QryPedidosID_MESA: TIntegerField;
    QryPedidosABASTECIMENTO: TStringField;
    QryPedidosSTATUS_ABASTEC: TIntegerField;
    QryPedidosNUMSERIEECF: TStringField;
    QryPedidosPLACA_VEIC: TStringField;
    QryPedidosODOMETRO: TStringField;
    QryPedidosCHAVE_NFE: TStringField;
    QryPedidosSTATUS_NFE: TStringField;
    QryPedidosPROTOCOLO_NFE: TStringField;
    QryPedidosRECIBO_NFE: TStringField;
    QryPedidosDEVOLUCAO: TStringField;
    QryPedidosNUMERO_DOC: TStringField;
    QryPedidosSINCRONIZADO: TStringField;
    QryPedidosIDUSUARIOCANC: TIntegerField;
    QryPedidosVALOR_CARGA_TRIB: TFloatField;
    QryPedidosNUMDAV: TStringField;
    QryPedidosTIPO_FRETE: TIntegerField;
    QryPedidosVALOR_FRETE: TFloatField;
    QryPedidosVALOR_SEGURO: TFloatField;
    QryPedidosVALOR_OUTROS: TFloatField;
    QryPedidosBASE_ISS: TFloatField;
    QryPedidosVALOR_ISS: TFloatField;
    QryPedidosBASE_PIS: TFloatField;
    QryPedidosBASE_COFINS: TFloatField;
    QryPedidosBASE_IPI: TFloatField;
    QryPedidosIDPLANOCONTAS: TIntegerField;
    QryPedidosIDCENTROCUSTO: TIntegerField;
    QryPedidosNFE_TIPOEMISS: TIntegerField;
    QryPedidosNAUTORIZA_VIDALINK: TStringField;
    QryPedidosNUM_LOTE: TStringField;
    QryPedidosARQUIVO_XML: TStringField;
    QryPedidosVAL_CARGA_FED: TFloatField;
    QryPedidosVAL_CARGA_EST: TFloatField;
    QryPedidosVAL_CARGA_MUN: TFloatField;
    QryPedidosNOTAMANUAL: TStringField;
    QryPedidosCOO_CONF_MESA: TIntegerField;
    QryPedidosMODELO: TStringField;
    QryPedidosDATA_AUTORIZA: TDateField;
    QryPedidosHORA_AUTORIZA: TTimeField;
    QryPedidosOBSNFE_1: TStringField;
    QryPedidosOBSNFE_2: TStringField;
    QryPedidosOBSNFE_3: TStringField;
    QryPedidosOBSNFE_4: TStringField;
    QryPedidosCODIGOSEFAZ: TIntegerField;
    QryPedidosNUMEROSESSAO: TIntegerField;
    CdsPedidosID: TIntegerField;
    CdsPedidosPEDIDO_NUM: TStringField;
    CdsPedidosIDCLIENTE: TIntegerField;
    CdsPedidosID_VENDEDOR: TIntegerField;
    CdsPedidosDATA_PEDIDO: TDateField;
    CdsPedidosHORA_PEDIDO: TTimeField;
    CdsPedidosDATA_ENTREGA: TDateField;
    CdsPedidosHORA_ENTREGA: TTimeField;
    CdsPedidosID_CLASSIFICACAO: TIntegerField;
    CdsPedidosCONFIRMADA: TStringField;
    CdsPedidosENTREGUE: TStringField;
    CdsPedidosVALOR: TFloatField;
    CdsPedidosDESCONTO: TFloatField;
    CdsPedidosACRESCIMO: TFloatField;
    CdsPedidosOUTRAS_DESPESAS: TFloatField;
    CdsPedidosVALOR_TOTAL: TFloatField;
    CdsPedidosCANCELADO: TStringField;
    CdsPedidosID_FORMAPAG: TIntegerField;
    CdsPedidosEND_ENTREGA: TStringField;
    CdsPedidosNUM_END_ENTREGA: TStringField;
    CdsPedidosCOMPL_END_ENTREGA: TStringField;
    CdsPedidosBAIRRO_END_ENTREGA: TStringField;
    CdsPedidosCID_END_ENTREGA: TStringField;
    CdsPedidosUF_END_ENTREGA: TStringField;
    CdsPedidosCEP_END_ENTREGA: TStringField;
    CdsPedidosCLIENTE: TStringField;
    CdsPedidosTIPODOC: TIntegerField;
    CdsPedidosTIPO_PEDIDO: TIntegerField;
    CdsPedidosVALOR_REAL: TFloatField;
    CdsPedidosMARGEM_VENDA: TFloatField;
    CdsPedidosVALOR_COMISSAO: TFloatField;
    CdsPedidosTOTAL_GERAL: TFloatField;
    CdsPedidosCOO: TIntegerField;
    CdsPedidosCCF: TIntegerField;
    CdsPedidosGNF: TIntegerField;
    CdsPedidosDAV: TStringField;
    CdsPedidosCNPJCPF: TStringField;
    CdsPedidosINSCEST: TStringField;
    CdsPedidosVALOR_TROCO: TFloatField;
    CdsPedidosCAIXA: TStringField;
    CdsPedidosIDEMPRESA: TIntegerField;
    CdsPedidosDAV_IMPRESSO: TIntegerField;
    CdsPedidosNATOP: TStringField;
    CdsPedidosALIQ_ICMS: TFloatField;
    CdsPedidosBASE_ICMS: TFloatField;
    CdsPedidosVALOR_ICMS: TFloatField;
    CdsPedidosALIQ_ICMS_ST: TFloatField;
    CdsPedidosBASE_ICMS_ST: TFloatField;
    CdsPedidosVALOR_ICMS_ST: TFloatField;
    CdsPedidosVALOR_PIS: TFloatField;
    CdsPedidosVALOR_COFINS: TFloatField;
    CdsPedidosVALOR_IPI: TFloatField;
    CdsPedidosMD5REGISTRO: TStringField;
    CdsPedidosNUMPV: TStringField;
    CdsPedidosCER: TIntegerField;
    CdsPedidosID_MESA: TIntegerField;
    CdsPedidosABASTECIMENTO: TStringField;
    CdsPedidosSTATUS_ABASTEC: TIntegerField;
    CdsPedidosNUMSERIEECF: TStringField;
    CdsPedidosPLACA_VEIC: TStringField;
    CdsPedidosODOMETRO: TStringField;
    CdsPedidosCHAVE_NFE: TStringField;
    CdsPedidosSTATUS_NFE: TStringField;
    CdsPedidosPROTOCOLO_NFE: TStringField;
    CdsPedidosRECIBO_NFE: TStringField;
    CdsPedidosDEVOLUCAO: TStringField;
    CdsPedidosNUMERO_DOC: TStringField;
    CdsPedidosSINCRONIZADO: TStringField;
    CdsPedidosIDUSUARIOCANC: TIntegerField;
    CdsPedidosVALOR_CARGA_TRIB: TFloatField;
    CdsPedidosNUMDAV: TStringField;
    CdsPedidosTIPO_FRETE: TIntegerField;
    CdsPedidosVALOR_FRETE: TFloatField;
    CdsPedidosVALOR_SEGURO: TFloatField;
    CdsPedidosVALOR_OUTROS: TFloatField;
    CdsPedidosBASE_ISS: TFloatField;
    CdsPedidosVALOR_ISS: TFloatField;
    CdsPedidosBASE_PIS: TFloatField;
    CdsPedidosBASE_COFINS: TFloatField;
    CdsPedidosBASE_IPI: TFloatField;
    CdsPedidosIDPLANOCONTAS: TIntegerField;
    CdsPedidosIDCENTROCUSTO: TIntegerField;
    CdsPedidosNFE_TIPOEMISS: TIntegerField;
    CdsPedidosNAUTORIZA_VIDALINK: TStringField;
    CdsPedidosNUM_LOTE: TStringField;
    CdsPedidosARQUIVO_XML: TStringField;
    CdsPedidosVAL_CARGA_FED: TFloatField;
    CdsPedidosVAL_CARGA_EST: TFloatField;
    CdsPedidosVAL_CARGA_MUN: TFloatField;
    CdsPedidosNOTAMANUAL: TStringField;
    CdsPedidosCOO_CONF_MESA: TIntegerField;
    CdsPedidosMODELO: TStringField;
    CdsPedidosDATA_AUTORIZA: TDateField;
    CdsPedidosHORA_AUTORIZA: TTimeField;
    CdsPedidosOBSNFE_1: TStringField;
    CdsPedidosOBSNFE_2: TStringField;
    CdsPedidosOBSNFE_3: TStringField;
    CdsPedidosOBSNFE_4: TStringField;
    CdsPedidosCODIGOSEFAZ: TIntegerField;
    CdsPedidosNUMEROSESSAO: TIntegerField;
    QryDavPVid: TIntegerField;
    QryDavPVdata_pedido: TDateField;
    QryDavPVidcliente: TIntegerField;
    QryDavPVcliente: TStringField;
    QryDavPVvalor_total: TFloatField;
    QryDavPVnumdav: TStringField;
    QryDavPVnumpv: TStringField;
    CdsDavPVid: TIntegerField;
    CdsDavPVdata_pedido: TDateField;
    CdsDavPVidcliente: TIntegerField;
    CdsDavPVcliente: TStringField;
    CdsDavPVvalor_total: TFloatField;
    CdsDavPVnumdav: TStringField;
    CdsDavPVnumpv: TStringField;
    QrycaixaID: TIntegerField;
    QrycaixaDATA_ABERTURA: TDateField;
    QrycaixaHORA_ABERTURA: TTimeField;
    QrycaixaVALOR_ABERTURA: TFloatField;
    QrycaixaIDFUNC: TIntegerField;
    QrycaixaDATA_FECHAMENTO: TDateField;
    QrycaixaHORA_FECHAMENTO: TTimeField;
    QrycaixaVALOR_FECHAMENTO: TFloatField;
    QrycaixaFECHADO: TStringField;
    QrycaixaIDEMPRESA: TIntegerField;
    QrycaixaCAIXA: TStringField;
    QrycaixaNUMSERIEFAB: TStringField;
    QrycaixaIDOPERADOR: TIntegerField;
    QrycaixaVALOR_DINHEIRO: TFloatField;
    QrycaixaVALOR_CARTAO: TFloatField;
    QrycaixaVALOR_CHEQUE: TFloatField;
    QrycaixaVALOR_OUTROS: TFloatField;
    CdsCaixaID: TIntegerField;
    CdsCaixaDATA_ABERTURA: TDateField;
    CdsCaixaHORA_ABERTURA: TTimeField;
    CdsCaixaVALOR_ABERTURA: TFloatField;
    CdsCaixaIDFUNC: TIntegerField;
    CdsCaixaDATA_FECHAMENTO: TDateField;
    CdsCaixaHORA_FECHAMENTO: TTimeField;
    CdsCaixaVALOR_FECHAMENTO: TFloatField;
    CdsCaixaFECHADO: TStringField;
    CdsCaixaIDEMPRESA: TIntegerField;
    CdsCaixaCAIXA: TStringField;
    CdsCaixaNUMSERIEFAB: TStringField;
    CdsCaixaIDOPERADOR: TIntegerField;
    CdsCaixaVALOR_DINHEIRO: TFloatField;
    CdsCaixaVALOR_CARTAO: TFloatField;
    CdsCaixaVALOR_CHEQUE: TFloatField;
    CdsCaixaVALOR_OUTROS: TFloatField;
    QryCaixaMovID: TIntegerField;
    QryCaixaMovID_CAIXA: TIntegerField;
    QryCaixaMovDATA_MOV: TDateField;
    QryCaixaMovHISTORICO: TStringField;
    QryCaixaMovORIGEM: TStringField;
    QryCaixaMovDC: TStringField;
    QryCaixaMovVALOR: TFloatField;
    QryCaixaMovIDFUNC: TIntegerField;
    QryCaixaMovIDPEDIDO: TIntegerField;
    CdsCaixaMovID: TIntegerField;
    CdsCaixaMovID_CAIXA: TIntegerField;
    CdsCaixaMovDATA_MOV: TDateField;
    CdsCaixaMovHISTORICO: TStringField;
    CdsCaixaMovORIGEM: TStringField;
    CdsCaixaMovDC: TStringField;
    CdsCaixaMovVALOR: TFloatField;
    CdsCaixaMovIDFUNC: TIntegerField;
    CdsCaixaMovIDPEDIDO: TIntegerField;
    QryReg61ID: TIntegerField;
    QryReg61DATA_EMISSAO: TDateField;
    QryReg61NUM_ORDEM: TStringField;
    QryReg61SERIE: TStringField;
    QryReg61IDPRODUTO: TIntegerField;
    QryReg61DESCRICAO: TStringField;
    QryReg61MARCA: TStringField;
    QryReg61TIPO: TStringField;
    QryReg61MODELO: TStringField;
    QryReg61ESPECIE: TStringField;
    QryReg61QUANTIDADE: TFloatField;
    QryReg61VALOR: TFloatField;
    QryReg61TOTAL: TFloatField;
    QryReg61CAIXA: TStringField;
    QryReg61IDEMPRESA: TIntegerField;
    QryReg61ID_CLIENTE: TIntegerField;
    QryReg61CST: TStringField;
    QryReg61CFOP: TStringField;
    QryReg61BASE_ICMS: TFloatField;
    QryReg61ALIQ_ICMS: TFloatField;
    QryReg61VALOR_ICMS: TFloatField;
    QryReg61VALOR_PIS: TFloatField;
    QryReg61VALOR_COFINS: TFloatField;
    QryReg61ID_BICO_PERDA: TIntegerField;
    CdsReg61ID: TIntegerField;
    CdsReg61DATA_EMISSAO: TDateField;
    CdsReg61NUM_ORDEM: TStringField;
    CdsReg61SERIE: TStringField;
    CdsReg61IDPRODUTO: TIntegerField;
    CdsReg61DESCRICAO: TStringField;
    CdsReg61MARCA: TStringField;
    CdsReg61TIPO: TStringField;
    CdsReg61MODELO: TStringField;
    CdsReg61ESPECIE: TStringField;
    CdsReg61QUANTIDADE: TFloatField;
    CdsReg61VALOR: TFloatField;
    CdsReg61TOTAL: TFloatField;
    CdsReg61CAIXA: TStringField;
    CdsReg61IDEMPRESA: TIntegerField;
    CdsReg61ID_CLIENTE: TIntegerField;
    CdsReg61CST: TStringField;
    CdsReg61CFOP: TStringField;
    CdsReg61BASE_ICMS: TFloatField;
    CdsReg61ALIQ_ICMS: TFloatField;
    CdsReg61VALOR_ICMS: TFloatField;
    CdsReg61VALOR_PIS: TFloatField;
    CdsReg61VALOR_COFINS: TFloatField;
    CdsReg61ID_BICO_PERDA: TIntegerField;
    Qry60MID: TIntegerField;
    Qry60MDATA_EMISSAO: TDateField;
    Qry60MHORA_EMISSAO: TTimeField;
    Qry60MDATA_MOVIMENTO: TDateField;
    Qry60MSERIAECF: TStringField;
    Qry60MCONTADOR_REINICIO: TIntegerField;
    Qry60MCONTADOR_REDUCAO: TIntegerField;
    Qry60MCOO_INICIAL: TIntegerField;
    Qry60MCOO_FINAL: TIntegerField;
    Qry60MVENDA_BRUTA: TFloatField;
    Qry60MGRANDE_TOTAL: TFloatField;
    Qry60MCAIXA: TStringField;
    Qry60MIDEMPRESA: TIntegerField;
    Qry60MMD5REGISTRO: TStringField;
    Qry60MSINCRONIZADO: TStringField;
    Qry60MAUTOMATICA: TStringField;
    Cds60MID: TIntegerField;
    Cds60MDATA_EMISSAO: TDateField;
    Cds60MHORA_EMISSAO: TTimeField;
    Cds60MDATA_MOVIMENTO: TDateField;
    Cds60MSERIAECF: TStringField;
    Cds60MCONTADOR_REINICIO: TIntegerField;
    Cds60MCONTADOR_REDUCAO: TIntegerField;
    Cds60MCOO_INICIAL: TIntegerField;
    Cds60MCOO_FINAL: TIntegerField;
    Cds60MVENDA_BRUTA: TFloatField;
    Cds60MGRANDE_TOTAL: TFloatField;
    Cds60MCAIXA: TStringField;
    Cds60MIDEMPRESA: TIntegerField;
    Cds60MMD5REGISTRO: TStringField;
    Cds60MSINCRONIZADO: TStringField;
    Cds60MAUTOMATICA: TStringField;
    Qry60AID: TIntegerField;
    Qry60AID_REG60M: TIntegerField;
    Qry60AALIQUOTA_TRIB: TStringField;
    Qry60ATOTALIZADOR: TFloatField;
    Qry60ACAIXA: TStringField;
    Qry60AMD5REGISTRO: TStringField;
    Qry60ADATA_EMISSAO: TDateField;
    Qry60AHORA_EMISSAO: TTimeField;
    Qry60ADATA_MOVIMENTO: TDateField;
    Qry60ASERIAECF: TStringField;
    Qry60ACONTADOR_REINICIO: TIntegerField;
    Qry60ACONTADOR_REDUCAO: TIntegerField;
    Cds60AID: TIntegerField;
    Cds60AID_REG60M: TIntegerField;
    Cds60AALIQUOTA_TRIB: TStringField;
    Cds60ATOTALIZADOR: TFloatField;
    Cds60ACAIXA: TStringField;
    Cds60AMD5REGISTRO: TStringField;
    Cds60ADATA_EMISSAO: TDateField;
    Cds60AHORA_EMISSAO: TTimeField;
    Cds60ADATA_MOVIMENTO: TDateField;
    Cds60ASERIAECF: TStringField;
    Cds60ACONTADOR_REINICIO: TIntegerField;
    Cds60ACONTADOR_REDUCAO: TIntegerField;
    CdsOSHorasID: TIntegerField;
    CdsOSHorasID_OS: TIntegerField;
    CdsOSHorasID_FUNCIONARIO: TIntegerField;
    CdsOSHorasDATA_OS: TSQLTimeStampField;
    CdsOSHorasDATA_TRAB: TSQLTimeStampField;
    CdsOSHorasHORA_INICIO: TSQLTimeStampField;
    CdsOSHorasHORA_FIM: TSQLTimeStampField;
    CdsOSHorasTEMPO_GASTO: TSQLTimeStampField;
    CdsOSHorasREALIZADO: TStringField;
    QryOSHorasID: TIntegerField;
    QryOSHorasID_OS: TIntegerField;
    QryOSHorasID_FUNCIONARIO: TIntegerField;
    QryOSHorasDATA_OS: TSQLTimeStampField;
    QryOSHorasDATA_TRAB: TSQLTimeStampField;
    QryOSHorasHORA_INICIO: TSQLTimeStampField;
    QryOSHorasHORA_FIM: TSQLTimeStampField;
    QryOSHorasTEMPO_GASTO: TSQLTimeStampField;
    QryOSHorasREALIZADO: TStringField;
    DSPOS: TDataSetProvider;
    CDSOS: TClientDataSet;
    CDSOSID: TIntegerField;
    CDSOSN_CONTROLE: TStringField;
    CDSOSID_CONTATO: TIntegerField;
    CDSOSCONTATO: TStringField;
    CDSOSDATA_OS: TSQLTimeStampField;
    CDSOSHORA_OS: TSQLTimeStampField;
    CDSOSRECLAMADO: TStringField;
    CDSOSCONSTATADO: TStringField;
    CDSOSREALIZADO: TStringField;
    CDSOSDATA_INICIO: TSQLTimeStampField;
    CDSOSHORA_INICIO: TSQLTimeStampField;
    CDSOSDATA_FIM: TSQLTimeStampField;
    CDSOSHORA_FIM: TSQLTimeStampField;
    CDSOSTEMPO_GASTO: TSQLTimeStampField;
    CDSOSVALOR_COBRADO: TFloatField;
    CDSOSDESCONTO: TFloatField;
    CDSOSACRESCIMO: TFloatField;
    CDSOSOUTROS: TFloatField;
    CDSOSVALOR_PAGO: TFloatField;
    CDSOSFORMAPAGTO: TIntegerField;
    CDSOSDOCUMENTO: TIntegerField;
    CDSOSENDERECO: TStringField;
    CDSOSNUMERO: TStringField;
    CDSOSCOMPLEMENTO: TStringField;
    CDSOSBAIRRO: TStringField;
    CDSOSCIDADE: TStringField;
    CDSOSUF: TStringField;
    CDSOSCEP: TStringField;
    CDSOSTELEFONE: TStringField;
    CDSOSCELULAR: TStringField;
    CDSOSCNPJCPF: TStringField;
    CDSOSINSCRICAORG: TStringField;
    CDSOSSTATUS: TIntegerField;
    CDSOSIDEMPRESA: TIntegerField;
    CDSOSCHAVE_NFSE: TStringField;
    CDSOSNR_RPS: TStringField;
    CDSOSNR_LOTE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DspAgendaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspTipoEndGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsAgendaNewRecord(DataSet: TDataSet);
    procedure DspPedidoClassGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsPedidoClassNewRecord(DataSet: TDataSet);
    procedure DspFormaPagGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspContasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsProdutoCompostoBeforePost(DataSet: TDataSet);
    procedure CdsContasNewRecord(DataSet: TDataSet);
    procedure CdsContasBeforePost(DataSet: TDataSet);
    procedure CdsFormaPagNewRecord(DataSet: TDataSet);
    procedure DspChequesGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsChequesNewRecord(DataSet: TDataSet);
    procedure CdsPedidosNewRecord(DataSet: TDataSet);
    procedure CdsPedidoItensNewRecord(DataSet: TDataSet);
    procedure DspEmpresaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspConfigGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsEmpresaNewRecord(DataSet: TDataSet);
    procedure CdsConfigNewRecord(DataSet: TDataSet);
    procedure DspContasAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspComprasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspComprasItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsComprasNewRecord(DataSet: TDataSet);
    procedure CdsComprasItensNewRecord(DataSet: TDataSet);
    procedure DspPedidoCompItemGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsPedidoCompItemNewRecord(DataSet: TDataSet);
    procedure DspCliForAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspTabelaComissaoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsTabelaComissaoNewRecord(DataSet: TDataSet);
    procedure CdsPedidosBeforePost(DataSet: TDataSet);
    procedure DspCaixaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsCaixaNewRecord(DataSet: TDataSet);
    procedure DspCaixaMovGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsCaixaMovNewRecord(DataSet: TDataSet);
    procedure CdsPedidoItensBeforePost(DataSet: TDataSet);
    procedure CdsContasAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure CdsComprasItensBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Dsp60MGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure Dsp60AGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspControleDocGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure Cds60MNewRecord(DataSet: TDataSet);
    procedure Cds60ANewRecord(DataSet: TDataSet);
    procedure DspContadorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsContadorNewRecord(DataSet: TDataSet);
    procedure DspOSGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspOSHorasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsOSHorasNewRecord(DataSet: TDataSet);
    procedure CdsOSHorasBeforePost(DataSet: TDataSet);
    procedure CdsOSBeforePost(DataSet: TDataSet);
    procedure CdsEmpresaAfterScroll(DataSet: TDataSet);
    procedure CdsControleDocNewRecord(DataSet: TDataSet);
    procedure DspPedidoItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspPedidosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspPedidoFPGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsPedidoFPNewRecord(DataSet: TDataSet);
    procedure CdsPedidoFPBeforePost(DataSet: TDataSet);
    procedure DspDadosTecnicosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsDadosTecnicosNewRecord(DataSet: TDataSet);
    procedure CdsDadosTecnicosBeforePost(DataSet: TDataSet);
    procedure CdsControleDocBeforePost(DataSet: TDataSet);
    procedure Cds60MBeforePost(DataSet: TDataSet);
    procedure Cds60ABeforePost(DataSet: TDataSet);
    procedure DspMesasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspMesasAbertasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspMesasItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsMesasAbertasAfterScroll(DataSet: TDataSet);
    procedure CdsMesasNewRecord(DataSet: TDataSet);
    procedure CdsMesasAbertasNewRecord(DataSet: TDataSet);
    procedure CdsMesasItensNewRecord(DataSet: TDataSet);
    procedure CdsMesasItensCalcFields(DataSet: TDataSet);
    procedure DspCSTGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspCFOPGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsPDVNewRecord(DataSet: TDataSet);
    procedure DspPDVGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspReg61GetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsReg61NewRecord(DataSet: TDataSet);
    procedure DspCentroCustoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsCentroCustoNewRecord(DataSet: TDataSet);
    procedure DspPlanoContaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsPlanoContaNewRecord(DataSet: TDataSet);
    procedure DspPaisGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspCNAEGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspConfigECFGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspRegistroA2GetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsRegistroA2NewRecord(DataSet: TDataSet);
    procedure CdsRegistroA2BeforePost(DataSet: TDataSet);
    procedure CdsRecargasNewRecord(DataSet: TDataSet);
    procedure DspRecargasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspCSOSNGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CDSOSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    // SALDO, VTACF, VTANF, AFER, VESPEB: Double;
    xAtMD5: Boolean;
    xCdsRelCaixa: TClientDataSet;
    Procedure FormataCampos;
    procedure InsereTotalReg(pRegistro: String; pTotal: Integer);
    function Le_Linha_Arquivo(fTexto, fCaracter: string; fPosicao: Integer): string;
    procedure PreparaDataSetRelCaixa;
    procedure VerificaContaAdicionalLancada(pIDConta: Integer);
    function RetornaNumDAV: Integer;
    function RetornaNumPV: Integer;
  public
    { Public declarations }
    PAFECF: TFuncoesPAF;
    sNumItem: Integer;
    sTipoConta: Integer;
    sProcessoQui: Integer;
    sRemoveQui: Integer;
    sArquivo: TextFile;
    sTotalReg: Integer;
    sLBloco, sLArquivo, sLRegistro: Integer;
    sTotalICMSSaida, sTotalICMSEntrada: Double;
    sControleReg: String;
    sNFSeSenha, sNFSeFrase: String;
    sDescMaximo, sValorQuitacao, sAliqISS: Double;
    sIDClassCompra, sIDFPCompra: Integer;
    // configura��es do AcBrNFe
    sFormas, sAmbiente, sVersaoDF: Integer;
    sSalvaArq: Boolean;
    sLogoMarca, sPathArq, sCertificado, sSenha, sSerial, sUFWS, sUFWSAux, sHost, sPorta, sUsuario, sSenhaWS, sUsarWSAux: String;
    sVisualizaDanfe, sWSVisualizar, sGerencal_NFCe, sPostoAutomatico: String;
    sPreviewNFe, sExibeMsgWS, sGradeProdutos, sClonarProdutos: String;
    sSMPTHost, sSMTPPort, sSMTPUsu, sSMTPPass, sToken, sIDToken: String;
    spath_db, sUsuScribes, sPassScribes, sip_srv, spath_rel, sPortaScribes, sversao_fb, spath_scribes, sCNPJContador: String;
    // configura��es do AcbrNFSe
    sNFSeCertSenha, sNFSeNumSerie, sNFSePathLogs, sNFSeSchemas, sNFSeArqINI, sNFSeCodCidade, sNFSeSenhaWeb, sNFSeUserWeb, sNFSeEmitCNPJ, sNFSeEmitIM,
      sNFSeEmitRazao, sNFSeProxyHost, sNFSeProxyPorta, sNFSeProxyUser, sNFSeProxySenha, sNFSeLogoMarca, sNFSePrestLogo, sNFSePrefeitura, sNFSeSmtpHost,
      sNFSeSmtpPort, sNFSeSmtpUser, sNFSeSmtpPass, sNFSeEmailRemetente: String;
    sNFSeTipoAmb: Integer;
    sNFSeSalvar, sNFSeSalvarSoap, sNFSeVisualizar, sNFSeEmailTLS, sNFSeEmailSSL: Boolean;
    sNFSeCaminho, sNFSeEmitFantasia, sNFSeEmitFone, sNFSeEmitCEP, sNFSeEmitLogradouro, sNFSeEmitNumero, sNFSeEmitComp, sNFSeEmitBairro, sNFSeEmitCidade,
      sNFSeEmitUF, sNFSeEmailAssunto: String;
    // parametros do SAT
    sPATH_ARQ_LOG_SAT, sNOME_DLL_SAT, sCOD_ATV_SAT, sCOD_UF_SAT, sSALVAR_CFES, sSALVAR_CEF_CANC, sSALVAR_ENVIO_SAT, sSAT_UTF8, sSAT_FORMAT_XML, sSAT_VERSAO,
      sSAT_SEPARAR_CNPJ, sSAT_SEPARAR_MES, sSAT_WIFI_SSID, sSAT_WIFI_SENHA, sSAT_PPPoE_USER, sSAT_PPPoE_LOGIN, sSAT_REDE_IP, sSAT_REDE_USER, sSAT_REDE_LOGIN,
      sSAT_IMP_PREVIEW, sSAT_IMP_NOME: String;
    sIPFIX_IP, sIPFIX_MASK, sIPFIX_GATEWAY, sIPFIX_DNS1, sIPFIX_DNS2: String;
    sAMBIENTE_SAT, sSAT_PAG_CODIGO, sSAT_TIPO_REDE, sSAT_PROTOCOLO_REDE, sSAT_WIFI_SEG, sSAT_REDE_PROXY, sSAT_REDE_PORTA, sSAT_IMP_LARGURA, sSAT_MODELO,
      sSAT_IMP_TOPO, sSAT_IMP_FUNDO, sSAT_IMP_ESQUERDA, sSAT_IMP_DIREITA: Integer;
    sSAT_IMPRESSORA, sSAT_POS_MODELO, sSAT_POS_PAGCODIGO, sSAT_POS_COLUNAS, sSAT_POS_LINHAS, sSAT_POS_ESPACO: Integer;
    sSAT_POS_PORTA, sSAT_QRCODE, sSAT_IMPUMALINHA, sSAT_EXT_RESUMIDO: String;
    xSolucaoPendentes: Boolean;
    function Dados_Agenda(fIDFunc: Integer; fDatai, fDataf: TDateTime; fConcluido: String): Boolean;
    procedure retorna_Descricao(var codigo, Descricao: String; var Dt_Inicio: TDateTime; fUF: string);
    function Dados_PedidoClassificacao(fTipo: Integer = -1; fID: Integer = 0; Lista: Boolean = false): Boolean;
    function Dados_FormaPagto: Boolean;
    function Dados_Contador: Boolean; overload;
    function Dados_Contador(pID: Integer): Boolean; overload;
    function Dados_Pedido(fID: Integer; pCOO: Integer = 0): Boolean; overload;
    function Dados_Pedido(pDatai, pDataf: TDateTime; pCaixa: String = ''; pTipo: Integer = 0; ApenasConfirmados: Boolean = true): Boolean; overload;
    function Dados_PedidoFP(fID: Integer; pOrdemConf: Boolean = false): Boolean; overload;
    function Dados_CFOP: Boolean;
    function Dados_CST: Boolean;
    function Dados_CSOSN: Boolean;
    function Dados_CNAE(CNAE: String): Boolean;
    function Dados_OS(pID: Integer): Boolean; overload;
    function Dados_OS(pDatai, pDataf: TDateTime; pStatus: Integer): Boolean; overload;
    function Dados_OSHoras(pID: Integer): Boolean; overload;
    function Dados_PedidoItens(fID: Integer): Boolean; overload;
    function Dados_PedidoItens(pDatai, pDataf: TDateTime; pCaixa: String = ''; pTipo: Integer = 0; ApenasConfirmados: Boolean = true): Boolean; overload;
    function Dados_Contas(fID: Integer): Boolean;
    function Dados_Cheque(fID: Integer): Boolean;
    function Dados_DadosTecnicos: Boolean;
    // function Dados_DadosTecnicos(Geral:Boolean=False):Boolean;
    function Dados_Mesa: Boolean;
    function Dados_MesasAbertas(pDataBase: TDateTime = 0): Boolean;
    function Dados_MesasItens(pID: Integer): Boolean;
    function Dados_CentroCusto: Boolean; Overload;
    function Dados_CentroCusto(pID: Integer): Boolean; Overload;
    function Dados_PlanoConta: Boolean; Overload;
    function Dados_PlanoConta(pID: Integer): Boolean; Overload;
    function Dados_PNMaster: Boolean;
    function VerificaCampos: Boolean;
    function VerificaCamposCompra: Boolean;
    function Dados_Empresa: Boolean; overload;
    function Dados_Empresa(fID: Integer): Boolean; overload;
    function Dados_Config(fID: Integer): Boolean;
    function Movimenta_Estoque(fTipoMov: Integer; fItens: TDataSet): Boolean;
    function Gerar_Contas(fTipo, fIDPedido, fIDOS, fIDContato, fQuantPagtos: Integer; fFormaPag, fContato, fDocContato: String; fDataBase: TDateTime;
      fValor: Double): Boolean;
    function Dados_ContasPedido(fIDPedido, fTipo: Integer): Boolean;
    function Dados_Compras(fID: Integer): Boolean;
    function Dados_ComprasItens(fID: Integer): Boolean;
    function Dados_PedidoCompItem(fIDPed, fIDItemPed: Integer): Boolean;
    function Dados_TabelaComissao(fIDProduto: Integer): Boolean;
    function Dados_Caixa(fData: TDateTime; Aberto: Boolean = false): Boolean;
    function Dados_CaixaMov(fID: Integer): Boolean;
    function Dados_PDV: Boolean; overload;
    function Dados_PDV(pCaixa: String): Boolean; overload;
    function Dados_PDVaux: Boolean;
    function Dados_Recargas(pData: TDateTime): Boolean;
    function InformaNumped: Boolean;
    function Grava_MovCaixa(fHistorico, fOrigem, fDC: String; fValor: Currency): Boolean;
    function RegistraItemECF(sQuant: String): Boolean;
    function RetornaTotalCupom(pIDCupom: Integer): Double;
    function RetornaTotalCupomSemDesconto(pIDCupom: Integer): Double;
    function RetornaAMenorDiferencaDoPercDesconto(pIDCupom: Integer): Double;
    procedure CarregaDadosEmpresa;
    function VerificaDadosProduto: Boolean;
    function Dados_60M(pID: Integer): Boolean; overload;
    function Dados_60M(pNumSerie: String; pCRZ: Integer): Boolean; overload;
    function Dados_60M(pDatai, pDataf: TDateTime; pCaixa: String = ''; pCRZ: Integer = 0): Boolean; overload;
    function Dados_60A(pID60m: Integer): Boolean;
    function Dados_DocECF(pID: Integer): Boolean; overload;
    function Dados_DocECF(pDatai, pDataf: TDateTime; pCaixa: String = ''): Boolean; overload;
    function Dados_ConfigECF: Boolean;
    function Dados_61(pDatai, pDataf: TDateTime): Boolean;
    function Dados_RegistroA2(pID: Integer): Boolean; Overload;
    function Dados_RegistroA2(pDatai, pDataf: TDateTime): Boolean; Overload;
    function Dados_DavPrevendaAbertos(pTipo: Integer): Boolean;
    procedure ApagaRegistroItem(IDItem: Integer);
    procedure ProcessaRegistro10(pDatai, pDataf: TDateTime; pEstrutura, pNatureza, pFinalidade: String);
    procedure ProcessaRegistro11;
    procedure ProcessaRegistro50(pDatai, pDataf: TDateTime);
    procedure ProcessaRegistro54(pDatai, pDataf: TDateTime);
    procedure ProcessaRegistro60m(pDatai, pDataf: TDateTime; p60d, p60i, p60r: Boolean);
    procedure ProcessaRegistro61(pDatai, pDataf: TDateTime);
    procedure ProcessaRegistro61r(pDatai, pDataf: TDateTime);
    procedure ProcessaRegistro70;
    procedure ProcessaRegistro75(pDatai, pDataf: TDateTime);
    procedure ProcessaRegistro90;
    // rotinas do processo atual
    procedure GerarRegistro10(pDatai, pDataf: TDateTime; pConvenio, pNatureza, pFinalidade: String);
    procedure GerarRegistro11;
    procedure GerarRegistro50(pDatai, pDataf: TDateTime);
    procedure GerarRegistro51(pDatai, pDataf: TDateTime);
    procedure GerarRegistro53(pDatai, pDataf: TDateTime);
    procedure GerarRegistro54(pDatai, pDataf: TDateTime);
    procedure GerarRegistro60M(pDatai, pDataf: TDateTime; p60d: Boolean; p60i: Boolean; p60r: Boolean);
    procedure GerarRegistro60A(Cd_Reg60m: Integer);
    procedure GerarRegistro60D(DtaEmis: TDateTime);
    procedure GerarRegistro60I(DtaEmis: TDateTime);
    procedure GerarRegistro60R(pDatai, pDataf: TDateTime; NumSerie: String);
    procedure GerarRegistro61(pDatai, pDataf: TDateTime);
    procedure GerarRegistro61R(pDatai, pDataf: TDateTime);
    procedure GerarRegistro70(pDatai, pDataf: TDateTime);
    procedure GerarRegistro71(pDatai, pDataf: TDateTime);
    procedure GerarRegistro74(pDtInvent: TDateTime);
    //
    function RetornaTotalAliquota(pPosicao: Integer): Double;
    function RegistrosECF(fNomeArquivo: String; fDatai, fDataf: TDateTime; ApenasProdMovto: Boolean = false): Boolean;
    procedure CriaRegistroU1;
    procedure CriaRegistroA2(pDatai, pDataf: TDateTime);
    procedure CriaRegistroP2(pDatai, pDataf: TDateTime; ApenasProdMovto: Boolean);
    procedure CriaRegistroE2(pDatai, pDataf: TDateTime; ApenasProdMovto: Boolean);
    procedure CriaRegistroE3;
    procedure CriaRegistroDAV(pDatai, pDataf: TDateTime);
    procedure CriaRegistroDAVNFCe(pDatai, pDataf: TDateTime);
    procedure CriaRegistroB2(pDatai, pDataf: TDateTime);
    procedure CriaRegistroC2(pDatai, pDataf: TDateTime);
    procedure CriaRegistroS2(pDatai, pDataf: TDateTime);
    procedure CriaRegistroR01(pDatai, pDataf: TDateTime);
    procedure CriaRegistroR02R03(pDatai, pDataf: TDateTime);
    procedure CriaRegistroR04R05(pDatai, pDataf: TDateTime);
    procedure CriaRegistroR06(pDatai, pDataf: TDateTime);
    procedure CriaRegistroR07(pDatai, pDataf: TDateTime);
    {
      procedure GeraBloco0(pArquivo:String;pDatai,pDataf:TDateTime);
      procedure GeraBlocoC(pArquivo: String; pDatai,pDataf: TDateTime);
      procedure GeraBlocoD(pArquivo: String; pDatai,pDataf: TDateTime);
      procedure GeraBlocoE(pArquivo: String;pDatai,pDataf: TDateTime);
      procedure GeraBlocoG(pArquivo: String; pDatai,pDataf: TDateTime);
      procedure GeraBlocoH(pArquivo: String;pDatai,pDataf: TDateTime);
      procedure GeraBloco1(pArquivo: String; pDatai,pDataf: TDateTime);
      procedure GeraBloco9(pArquivo: String; pDatai, pDataf: TDateTime);
      procedure GravaLinhaArquivo(fConteudo: String);
      procedure GravaLinhaRegistro(fBloco: String; fQuant: Integer);
    }

    function VendasIdentificadas(fNomeArquivo, CNPJCPF: String; Mes, Ano: Integer): Boolean;
    procedure CriaRegistroZ1;
    procedure CriaRegistroZ2;
    procedure CriaRegistroZ3;
    procedure CriaRegistroZ4(var TotalReg: Integer; pDatai, pDataf: TDateTime; pCNPJCPF: String);
    procedure CriaRegistroZ9(TotalReg: Integer);
    procedure PreencheDadosCliente(pTipo: Integer);
    procedure PreencheClientPadraoRegistro;

    function VerificaMD5Registro(pTipo, pID: Integer; pID1: Integer = 0): Boolean;
    function RetornaTotalFormaPafCupom(pID: Integer): Double;
    procedure EmitirConferenciaMesa(pID: Integer);
    procedure EmitirConferenciaMesaNFCe(pID: Integer);
    function RegistraFechamentoMesa(pIDMesa: Integer): Integer;
    function RegistraCupomAbastPendente: Integer;
    function LocalizaCancelaPrevendaPendente(pData: TDateTime): Boolean;
    function EmiteNFePendenteAutomatica(pIDPedido: Integer): Boolean;
    function IncluirCupomExecute(var Mensagem: String; pDAV: Boolean; pPV: Boolean = false): Boolean;
    function GeraRelatorioEstoqueComposto(fNomeArquivo: String): Boolean;
    procedure Imprime_ParametrosPAFECF;
    function Encerrantes(pDatai, pDataf: TDateTime; pArquivo: String): Boolean;
    function AbastecimentosPendentes: Boolean;
    procedure EmiteControleEncerranteReducaoZ;
    // procedure EmiteControleEncerranteReducaoZ(DataMovimento: TDateTime);
    procedure AjustarMD5Pedido(IDPedido: Integer);
    procedure AtualizaConfigAcBr;
    function CalcularTributoPedido(pIDPedido: Integer; pCST, pCFOP: String): Boolean;
    procedure GravaChaveNFEPedido(pChaveNFe, pProtocol, pRecibo, NumLote, NomeArqXML, Status_NFe: String; TipoEmiss, pIDPedido: Integer;
      Data_Autoriza, Hora_Autoriza: TDateTime);
    function RetornaEnceranteFinal(pIDProd: Integer): Double;
    procedure GravaFechamentoCaixaDiario(DataFechamento: TDateTime = 0; Dinheiro: Double = 0; Cartao: Double = 0; Cheque: Double = 0; Outros: Double = 0);
    function GravaDadosUltimaReducaoZ(Automatica: Boolean): Boolean;
    function RetornaCOOInicialRegistro: String;
    function RetornaDadosImpressora(pCaixa: String): Boolean;
    function VerificaCaixaAberto(var NomeOperador: String; var DataCaixa: TDateTime): Boolean;
    function LocalizaIDMesa(pNumMesa: String): Integer;
    function InsereItemCupom(pQuant, pAcres, pDesc: Double; pPercentual: Boolean = false): Boolean;
    procedure GravaPDVNaoSincronizado;
    function VerificaReducaoZGravada(CRZ, NumSerie: String): Boolean;
    function GravaContaAdicionalPagtoParcial(pIDConta: Integer; pValor: Double): Boolean;
    function GravaDadosReducaoArqSPED(pArquivo: String): Boolean;
    procedure RetornaCSTCFOPItemCompra(var CST: String; var CFOP: String; var Aliquota: Double; var REDUCAOBASE: Double; UF: String; IDProd: Integer);
    function GerarNFe(pID: Integer; Apropria: Boolean; NFCe: Boolean = false; ContingenciaOff: Boolean = false): Boolean;
    function GerarSAT(pID: Integer): Boolean;
    function RetornaValoresTributarios(var abase_icms, avalor_icms, abase_icms_st, avalor_icms_st, abase_pis, avalor_pis, abase_cofins, avalor_cofins,
      abase_ipi, avalor_ipi, abase_iss, avalor_iss: Double; pID: Integer): Boolean;
    function Grava_CancelamentoNFCe(ChaveNFe, Status: String): Boolean;
    function VerificaAutorizacao(NAutorizacao: String): Boolean;
    function RegistraCupomAutorizaaco: Integer;
    function RetornaReembolsoVidaLink(pID: Integer): Double;
    function LocalizaEmiteAbastecPendente(pNumBomba: Integer = 0): Boolean;
    procedure GerarNFeContingencia;
    procedure GravaArquivoXML(Chave_nfe, Arquivoxml: AnsiString);
    function LocalizaXMLBanco(var MemoResp: TMemo; ChaveNFe: String): Boolean;
    function RetornaSequenciaCartaCorrecao: Integer;
    function VerificaChaveNFeLancada(ChaveNFe: String): Boolean;
    procedure EmitereGerecialNFCe(pIDPedido: Integer; Path_BMP: String);
    procedure ImprimirComprovanteNFrente(pIDPedido: Integer);
    function VerificaNFCePendente: Boolean;
    function RetornaModeloECF(NumSerie: String): String;
    function RetornaSerialECF(COO: Integer; Data: TDateTime): String;
    procedure GravaConfigECFBanco;
    procedure AtualizaEstoquedoDia;
    function CapturaQuantVendidaData(pIDProd: Integer; pDataMov: TDateTime): Double;
    function VerificaNotaManualEmitida(Numero: String): Boolean;
    function LocalizaEmiteMesaAberta(pData: TDateTime): Boolean;
    function VerificaUltimoCaixaAberto: Boolean;
    function RetornaDataUltimaRedZ: TDateTime;
    function RetornaVolNotasDescontinuidade(pIDPerda: Integer): Double;
    procedure VerificaGeraAbsProdCombustivel(IDPedido: Integer; NumeroDoc: String);
    function RetornaBicoProduto(pIDProd: Integer): String;
    procedure VerificaAlteraStatusAbastecimento(pIDPedido: Integer; Cancelamento: Boolean = false);
    procedure GravaReducaoZNaoAutomatica;
    procedure GravaRegistroA2(DataMov: TDateTime; Descricao: String; Cod_Tipo: Integer; Valor: Double; Somar: Boolean = true);
    function VerificaNFeContingencia: Boolean;
    function TestaNotaJaEnviada(pIDPedido: Integer; pChaveNFe: String): Boolean;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure ComunicaCertificado;
    procedure ConfiguraRedeSAT;
    procedure PrepararImpressao;
    procedure AjustaACBrSAT;
    procedure Grava_DadosSAT(pIDPedido: Integer; pChaveSat: String; pCodigoSefaz, pNumeroSessao: Integer);
    function RetornaUltimaVenda: Integer;
    function CarregaDadosClientDataSet(ArquivoTXT: String): Boolean;
    function VerificaExistenciaDAV(pNumDAV: String): Boolean;
    procedure GravaArquivoRetornoSAT(pCodRetorno, pMensagem: String);
    function RetornaNumNfe(pModelo: String; pAmbiente: Integer): Integer;
    procedure RelatorioFechamentoCaixa(pData: TDateTime);
    procedure PreencherCabecalho(const AACBrBlocoX: TACBrBlocoX);
    procedure GerarXMLReducao(pDatai, pDataf: TDateTime; pNomeArq: String);
    procedure GerarXMLEstoque(pDatai, pDataf: TDateTime; pNomeArq: String);
    procedure GravaDadosRecarga(pDDD, pCelular: String);
    function VerificaProdutoGrade(IDProduto, IDCor, IDTamanho: Integer): Boolean;
    function ClonarProdutoCodTamanho(IDProduto, IDCor, IDTamanho: Integer): Integer;
    function VerificaExisteNFeChave(ChaveNFe: String): Boolean;
    procedure ConfiguraComponenteNFSe;
    procedure LerConfiguracaoNFSe;
  end;

procedure BlockInput(ABlockInput: Boolean); stdcall; external 'USER32.DLL';

var
  DmWorkCom: TDmWorkCom;

implementation

uses
  uDmConexao, uLibrary, ACBrECF, ACBrIBPTax, pcnNFe, uDMClientes, ACBrECFClass,
  uDmAuxiliar, uDmPosto, DateUtils, ACBrNFeWebServices, pcnCFe, ACBrSAT,
  uDmProdutos;

{$R *.dfm}

procedure TDmWorkCom.DataModuleCreate(Sender: TObject);
begin
  PreparaCdsInfoPosto;
  PreparaCdsCtrlPosto;
  PAFECF := TFuncoesPAF.CrieInstancia;
  // le configura��es do PAF
  PAFECF.LeArquivoINI;
  // formata campos de data hora e valor
  FormataCampos;
  // defini situa��o de atualiza��o de MD5
  xAtMD5 := false;
  // defini situa��o de pendentes
  xSolucaoPendentes := false;
  // atribui clientdataset
  PAFECF.sCdsControleDoc := CdsControleDoc;
  Dados_DocECF(0);
  PAFECF.sCdsDadosTecnico := CdsDadosTecnicos;
  Dados_DadosTecnicos;
  // captura o nome do app
  sNomeApp := ExtractFileName(Application.ExeName);
  sNomeApp := Copy(sNomeApp, 1, length(sNomeApp) - 4);

end;

procedure TDmWorkCom.FormataCampos;
begin
  // Agenda
  CdsAgendaDATA.DisplayFormat := 'dd/mm/yyyy';
  CdsAgenda.FieldByName('DATA').EditMask := '!99/99/0000;1; ';
  CdsAgendaHORA.DisplayFormat := 'hh:mm';
  CdsAgenda.FieldByName('HORA').EditMask := '!90:00;1;';

  // Dados Tecnicos
  CdsDadosTecnicosDATA_ESTOQUE.DisplayFormat := 'dd/mm/yyyy';
  CdsDadosTecnicos.FieldByName('DATA_ESTOQUE').EditMask := '!99/99/0000;1; ';
  CdsDadosTecnicosDATA_LAUDO.DisplayFormat := 'dd/mm/yyyy';
  CdsDadosTecnicos.FieldByName('DATA_LAUDO').EditMask := '!99/99/0000;1; ';
  // Registro 61
  CdsReg61DATA_EMISSAO.DisplayFormat := 'dd/mm/yyyy';
  CdsReg61.FieldByName('DATA_EMISSAO').EditMask := '!99/99/0000;1; ';
  CdsReg61QUANTIDADE.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61QUANTIDADE.EditFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR.EditFormat := PAFECF.gMascaraDec;
  CdsReg61TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61TOTAL.EditFormat := PAFECF.gMascaraDec;
  CdsReg61ALIQ_ICMS.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61ALIQ_ICMS.EditFormat := PAFECF.gMascaraDec;
  CdsReg61BASE_ICMS.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61BASE_ICMS.EditFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR_ICMS.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR_ICMS.EditFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR_PIS.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR_PIS.EditFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR_COFINS.DisplayFormat := PAFECF.gMascaraDec;
  CdsReg61VALOR_COFINS.EditFormat := PAFECF.gMascaraDec;
  // Pedidos
  CdsPedidosDATA_PEDIDO.DisplayFormat := 'dd/mm/yyyy';
  CdsPedidos.FieldByName('DATA_PEDIDO').EditMask := '!99/99/0000;1; ';
  CdsPedidosDATA_ENTREGA.DisplayFormat := 'dd/mm/yyyy';
  CdsPedidos.FieldByName('DATA_ENTREGA').EditMask := '!99/99/0000;1; ';
  CdsPedidosHORA_PEDIDO.DisplayFormat := 'hh:mm';
  CdsPedidosHORA_PEDIDO.EditMask := '';
  CdsPedidosHORA_ENTREGA.DisplayFormat := 'hh:mm';
  CdsPedidosHORA_ENTREGA.EditMask := '';
  CdsPedidosVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosDESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosDESCONTO.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosACRESCIMO.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosOUTRAS_DESPESAS.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosOUTRAS_DESPESAS.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_TOTAL.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_TROCO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_TROCO.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_REAL.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_REAL.EditFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_COMISSAO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidosVALOR_COMISSAO.EditFormat := PAFECF.gMascaraDec;
  // Itens de pedido
  CdsPedidoItensVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidoItensDESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidoItensACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidoItensVALOR_TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  // Composicao do Itens de pedido
  CdsPedidoCompItemTOTAL_M2.DisplayFormat := '###,##0.00';
  CdsPedidoCompItemTOTAL_M2.DisplayFormat := '###,##0.00';
  CdsPedidoCompItemVALOR_M2.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidoCompItemVALOR_M2.DisplayFormat := PAFECF.gMascaraDec;
  // Compras
  CdsComprasDATA_COMPRA.DisplayFormat := 'dd/mm/yyyy';
  CdsCompras.FieldByName('DATA_COMPRA').EditMask := '!99/99/0000;1; ';
  CdsComprasDATA_EMISSAO.DisplayFormat := 'dd/mm/yyyy';
  CdsCompras.FieldByName('DATA_EMISSAO').EditMask := '!99/99/0000;1; ';
  CdsComprasHORA_COMPRA.DisplayFormat := 'hh:mm';
  CdsComprasHORA_COMPRA.EditMask := '!90:00;1;';
  CdsComprasHORA_EMISSAO.DisplayFormat := 'hh:mm';
  CdsComprasHORA_EMISSAO.EditMask := '!90:00;1;';
  CdsComprasVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasVALOR.EditFormat := PAFECF.gMascaraDec;
  CdsComprasDESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasDESCONTO.EditFormat := PAFECF.gMascaraDec;
  CdsComprasACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasACRESCIMO.EditFormat := PAFECF.gMascaraDec;
  CdsComprasOUTRAS_DESPESAS.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasOUTRAS_DESPESAS.EditFormat := PAFECF.gMascaraDec;
  CdsComprasVALOR_TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasVALOR_TOTAL.EditFormat := PAFECF.gMascaraDec;
  // pedidos_FormaPag
  CdsPedidoFPVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidoFPVALOR.EditFormat := PAFECF.gMascaraDec;
  CdsPedidoFPTROCO.DisplayFormat := PAFECF.gMascaraDec;
  CdsPedidoFPTROCO.EditFormat := PAFECF.gMascaraDec;
  // Itens de compra
  CdsComprasItensVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasItensDESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasItensACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CdsComprasItensVALOR_TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  // Tabela de comissao
  CdsTabelaComissaoFAIXA_INI.DisplayFormat := PAFECF.gMascaraDec;
  CdsTabelaComissaoFAIXA_FIM.DisplayFormat := PAFECF.gMascaraDec;
  CdsTabelaComissaoCOMISSAO.DisplayFormat := '##,##0.00';
  // Contas a Pagar e Receber
  CdsContas.FieldByName('DATA_LANC').EditMask := '!99/99/0000;1; ';
  CdsContasDATA_LANC.DisplayFormat := 'dd/mm/yyyy';
  CdsContas.FieldByName('DATA_VENC').EditMask := '!99/99/0000;1; ';
  CdsContasDATA_VENC.DisplayFormat := 'dd/mm/yyyy';
  CdsContas.FieldByName('DATA_QUIT').EditMask := '!99/99/0000;1; ';
  CdsContasDATA_QUIT.DisplayFormat := 'dd/mm/yyyy';
  CdsContasVALOR_DESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasVALOR_ACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasVALOR_CONTA.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasVALOR_QUITATO.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasJUROS.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasMULTA.DisplayFormat := PAFECF.gMascaraDec;
  // Contas a Pagar e Receber auxiliar
  CdsContasAux.FieldByName('DATA_LANC').EditMask := '!99/99/0000;1; ';
  CdsContasAuxDATA_LANC.DisplayFormat := 'dd/mm/yyyy';
  CdsContasAux.FieldByName('DATA_VENC').EditMask := '!99/99/0000;1; ';
  CdsContasAuxDATA_VENC.DisplayFormat := 'dd/mm/yyyy';
  CdsContasAux.FieldByName('DATA_QUIT').EditMask := '!99/99/0000;1; ';
  CdsContasAuxDATA_QUIT.DisplayFormat := 'dd/mm/yyyy';
  CdsContasAuxVALOR_DESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasAuxVALOR_ACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasAuxVALOR_CONTA.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasAuxVALOR_QUITATO.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasAuxJUROS.DisplayFormat := PAFECF.gMascaraDec;
  CdsContasAuxMULTA.DisplayFormat := PAFECF.gMascaraDec;
  // cheques
  CdsChequesVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsCheques.FieldByName('DATA_EMISSAO').EditMask := '!99/99/0000;1; ';
  CdsChequesDATA_EMISSAO.DisplayFormat := 'dd/mm/yyyy';
  CdsCheques.FieldByName('DATA_CAD').EditMask := '!99/99/0000;1; ';
  CdsChequesDATA_CAD.DisplayFormat := 'dd/mm/yyyy';
  CdsCheques.FieldByName('BOM_PARA').EditMask := '!99/99/0000;1; ';
  CdsChequesBOM_PARA.DisplayFormat := 'dd/mm/yyyy';
  // Configura��s
  CdsConfigINDICE_TIJOLO.DisplayFormat := '##,##0.00';
  CdsConfigINDICE_ISOPOR.DisplayFormat := '##,##0.00';
  CdsConfigINDICE_OUTROS.DisplayFormat := '##,##0.00';
  CdsConfigMARGEM_LUCRO.DisplayFormat := PAFECF.gMascaraDec;
  // caixa
  CdsCaixaVALOR_ABERTURA.DisplayFormat := PAFECF.gMascaraDec;
  CdsCaixaVALOR_FECHAMENTO.DisplayFormat := PAFECF.gMascaraDec;
  // caixaMov
  CdsCaixaMovVALOR.DisplayFormat := PAFECF.gMascaraDec;
  // 60M
  Cds60MDATA_EMISSAO.DisplayFormat := 'dd/mm/yyyy';
  Cds60M.FieldByName('DATA_EMISSAO').EditMask := '!99/99/0000;1; ';
  Cds60MHORA_EMISSAO.DisplayFormat := 'hh:mm';
  Cds60M.FieldByName('HORA_EMISSAO').EditMask := '!90:00;1;';
  Cds60MDATA_MOVIMENTO.DisplayFormat := 'dd/mm/yyyy';
  Cds60M.FieldByName('DATA_MOVIMENTO').EditMask := '!99/99/0000;1; ';
  Cds60MVENDA_BRUTA.DisplayFormat := PAFECF.gMascaraDec;
  Cds60MGRANDE_TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  // 60A
  Cds60ATOTALIZADOR.DisplayFormat := PAFECF.gMascaraDec;
  // OS
  CDSOSDATA_OS.DisplayFormat := 'dd/mm/yyyy';
  CDSOS.FieldByName('DATA_OS').EditMask := '!99/99/0000;1; ';
  CDSOSDATA_INICIO.DisplayFormat := 'dd/mm/yyyy';
  CDSOS.FieldByName('DATA_INICIO').EditMask := '!99/99/0000;1; ';
  CDSOSDATA_FIM.DisplayFormat := 'dd/mm/yyyy';
  CDSOS.FieldByName('DATA_FIM').EditMask := '!99/99/0000;1; ';
  CDSOSHORA_OS.DisplayFormat := 'hh:mm';
  CDSOS.FieldByName('HORA_OS').EditMask := '!90:00;1;';
  CDSOSHORA_INICIO.DisplayFormat := 'hh:mm';
  CDSOS.FieldByName('HORA_INICIO').EditMask := '!90:00;1;';
  CDSOSHORA_FIM.DisplayFormat := 'hh:mm';
  CDSOS.FieldByName('HORA_FIM').EditMask := '!90:00;1;';
  CDSOSTEMPO_GASTO.DisplayFormat := 'hh:mm';
  CDSOS.FieldByName('TEMPO_GASTO').EditMask := '!90:00;1;';
  CDSOSVALOR_COBRADO.DisplayFormat := PAFECF.gMascaraDec;
  CDSOSDESCONTO.DisplayFormat := PAFECF.gMascaraDec;
  CDSOSACRESCIMO.DisplayFormat := PAFECF.gMascaraDec;
  CDSOSOUTROS.DisplayFormat := PAFECF.gMascaraDec;
  CDSOSVALOR_PAGO.DisplayFormat := PAFECF.gMascaraDec;
  //
  CdsOSHorasDATA_OS.DisplayFormat := 'dd/mm/yyyy';
  CdsOSHoras.FieldByName('DATA_OS').EditMask := '!99/99/0000;1; ';
  CdsOSHorasDATA_TRAB.DisplayFormat := 'dd/mm/yyyy';
  CdsOSHoras.FieldByName('DATA_TRAB').EditMask := '!99/99/0000;1; ';
  CdsOSHorasHORA_INICIO.DisplayFormat := 'hh:mm';
  CdsOSHoras.FieldByName('HORA_INICIO').EditMask := '!90:00;1;';
  CdsOSHorasHORA_FIM.DisplayFormat := 'hh:mm';
  CdsOSHoras.FieldByName('HORA_FIM').EditMask := '!90:00;1;';
  CdsOSHorasTEMPO_GASTO.DisplayFormat := 'hh:mm';
  CdsOSHoras.FieldByName('TEMPO_GASTO').EditMask := '!90:00;1;';
  // restaurante
  CdsMesasAbertasDATA.DisplayFormat := 'dd/mm/yyyy';
  CdsMesasAbertas.FieldByName('DATA').EditMask := '!99/99/0000;1; ';
  CdsMesasAbertasHORA.DisplayFormat := 'hh:mm';
  CdsMesasAbertasHORA.EditMask := '!90:00;1;';
  CdsMesasAbertasVALOR.DisplayFormat := PAFECF.gMascaraDec;
  CdsMesasAbertasVALOR.EditFormat := PAFECF.gMascaraDec;
  // itens
  CdsMesasItensQUANT.DisplayFormat := '###,###,###0.000';
  CdsMesasItensQUANT.EditFormat := '###,###,###0.000';
  CdsMesasItensPRECO_UNIT.DisplayFormat := PAFECF.gMascaraDec;
  CdsMesasItensPRECO_UNIT.EditFormat := PAFECF.gMascaraDec;
  CdsMesasItensPRECO_TOTAL.DisplayFormat := PAFECF.gMascaraDec;
  CdsMesasItensPRECO_TOTAL.EditFormat := PAFECF.gMascaraDec;
  // PDV
  CdsPDVDATA_SB.DisplayFormat := 'dd/mm/yyyy';
  CdsPDV.FieldByName('DATA_SB').EditMask := '!99/99/0000;1; ';
  CdsPDVHORA_SB.DisplayFormat := 'hh:mm';
  CdsPDVHORA_SB.EditMask := '!90:00;1;';

end;

procedure TDmWorkCom.DspAgendaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'AGENDA';

end;

procedure TDmWorkCom.DspTipoEndGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'TIPOENDERECO';

end;

function TDmWorkCom.Dados_Agenda(fIDFunc: Integer; fDatai, fDataf: TDateTime; fConcluido: String): Boolean;
var
  aux: String;
begin
  aux := UpperCase(Copy(fConcluido, 1, 1));
  CdsAgenda.Close;
  QryAgenda.SQL.Clear;
  QryAgenda.SQL.Add('select * from agenda');
  QryAgenda.SQL.Add('where agenda.data between :pDatai and :pDataf');
  if fIDFunc > 0 then
    QryAgenda.SQL.Add('and agenda.IDFunc = :pIDFunc');
  QryAgenda.SQL.Add('and agenda.concluido = ' + QuotedStr(aux));
  // passa parametros
  CdsAgenda.FetchParams;
  CdsAgenda.Params.ParamByName('pDatai').AsDate := fDatai;
  CdsAgenda.Params.ParamByName('pDataf').AsDate := fDataf;
  if fIDFunc > 0 then
    CdsAgenda.Params.ParamByName('pIDFunc').AsInteger := fIDFunc;
  CdsAgenda.Open;
  //
  Result := false;
  if CdsAgenda.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.retorna_Descricao(var codigo, Descricao: String; var Dt_Inicio: TDateTime; fUF: string);
begin
  if fUF = 'AM' then
  begin
    Descricao := 'AMAZONAS';
    codigo := '13';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'AC' then
  begin
    Descricao := 'ACRE';
    codigo := '12';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'RR' then
  begin
    Descricao := 'RORAIMA';
    codigo := '14';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'RD' then
  begin
    Descricao := 'RONDONIA';
    codigo := '11';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'RN' then
  begin
    Descricao := 'RIO GRANDE DO NORTE';
    codigo := '24';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'RS' then
  begin
    Descricao := 'RIO GRANDE DO SUL';
    codigo := '43';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'GO' then
  begin
    Descricao := 'GOIAS';
    codigo := '52';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'MG' then
  begin
    Descricao := 'MINAS GERAIS';
    codigo := '31';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'RJ' then
  begin
    Descricao := 'RIO DE JANEIRO';
    codigo := '33';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'SP' then
  begin
    Descricao := 'SAO PAULO';
    codigo := '35';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'ES' then
  begin
    Descricao := 'ESPIRITO SANTO';
    codigo := '32';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'BA' then
  begin
    Descricao := 'BAHIA';
    codigo := '29';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'CE' then
  begin
    Descricao := 'CEARA';
    codigo := '23';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'MT' then
  begin
    Descricao := 'MATO GROSSO';
    codigo := '51';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'AP' then
  begin
    Descricao := 'AMAPA';
    codigo := '16';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'MS' then
  begin
    Descricao := 'MATO GROSSO DO SUL';
    codigo := '50';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'TO' then
  begin
    Descricao := 'TOCANTIS';
    codigo := '17';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'SE' then
  begin
    Descricao := 'SERGIPE';
    codigo := '28';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'PE' then
  begin
    Descricao := 'PERNAMBUCO';
    codigo := '26';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'MA' then
  begin
    Descricao := 'MARANHAO';
    codigo := '21';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'PI' then
  begin
    Descricao := 'PIAUI';
    codigo := '22';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'PR' then
  begin
    Descricao := 'PARANA';
    codigo := '41';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'PA' then
  begin
    Descricao := 'PARA';
    codigo := '15';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'DF' then
  begin
    Descricao := 'DISTRITO FEDERAL';
    codigo := '53';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'AL' then
  begin
    Descricao := 'ALAGOAS';
    codigo := '27';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'PB' then
  begin
    Descricao := 'PARAIBA';
    codigo := '25';
    Dt_Inicio := StrToDate('01/01/2008');
  end
  else if fUF = 'SC' then
  begin
    Descricao := 'SANTA CATARINA';
    codigo := '42';
    Dt_Inicio := StrToDate('01/01/2008');
  end;

end;

procedure TDmWorkCom.CdsAgendaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('AGENDA');
  DataSet.FieldByName('IDFUNC').AsInteger := 0;
  DataSet.FieldByName('DATA').AsDateTime := SVData;
  DataSet.FieldByName('HORA').AsDateTime := SVHora;
  DataSet.FieldByName('CONCLUIDO').AsString := 'N';

end;

procedure TDmWorkCom.DspPedidoClassGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CLASSIFICACAO';

end;

procedure TDmWorkCom.CdsPedidoClassNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CLASSIFICACAO');
  DataSet.FieldByName('TIPO_MOVIMENTO').AsInteger := 0;

end;

function TDmWorkCom.Dados_PedidoClassificacao(fTipo: Integer = -1; fID: Integer = 0; Lista: Boolean = false): Boolean;
begin
  CdsPedidoClass.Close;
  CdsPedidoClass.Params.Clear;
  QryPedidoClass.Close;
  QryPedidoClass.SQL.Clear;
  QryPedidoClass.SQL.Add('select * from classificacao');
  if fID = 0 then
  begin
    if fTipo > -1 then
      QryPedidoClass.SQL.Add('where classificacao.tipo_movimento = :pTipo');
    if Lista then
      QryPedidoClass.SQL.Add('and classificacao.exibe_lista = ' + QuotedStr('S'))
  end
  else
    QryPedidoClass.SQL.Add('where classificacao.id = :pID');
  QryPedidoClass.SQL.Add('order by classificacao.descricao');
  //
  CdsPedidoClass.FetchParams;
  if fID = 0 then
  begin
    if fTipo > -1 then
      CdsPedidoClass.Params.ParamByName('pTipo').AsInteger := fTipo
  end
  else
    CdsPedidoClass.Params.ParamByName('pID').AsInteger := fID;
  CdsPedidoClass.Open;
  Result := false;
  if CdsPedidoClass.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.DspFormaPagGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'FORMA_PAGTO';

end;

function TDmWorkCom.Dados_FormaPagto: Boolean;
begin
  CdsFormaPag.Close;
  CdsFormaPag.Open;
  Result := false;
  if CdsFormaPag.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Contador: Boolean;
begin
  CdsContador.Close;
  CdsContador.Params.Clear;
  QryContador.Close;
  QryContador.SQL.Clear;
  QryContador.SQL.Add('select * from contador');
  // parametros
  CdsContador.FetchParams;
  CdsContador.Open;
  Result := false;
  if CdsContador.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Contador(pID: Integer): Boolean;
begin
  CdsContador.Close;
  CdsContador.Params.Clear;
  QryContador.Close;
  QryContador.SQL.Clear;
  QryContador.SQL.Add('select * from contador');
  QryContador.SQL.Add('where contador.id = :pID');
  // parametros
  CdsContador.FetchParams;
  CdsContador.Params.ParamByName('pID').AsInteger := pID;
  CdsContador.Open;
  Result := false;
  if CdsContador.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Pedido(fID: Integer; pCOO: Integer = 0): Boolean;
begin
  CdsPedidos.Close;
  QryPedidos.Close;
  QryPedidos.SQL.Clear;
  QryPedidos.SQL.Add('select * from pedido');
  if pCOO = 0 then
    QryPedidos.SQL.Add('where pedido.id = :pID')
  else if pCOO = 1 then
    QryPedidos.SQL.Add('where pedido.coo = :pID');
  // parametros
  CdsPedidos.FetchParams;
  CdsPedidos.Params.ParamByName('pID').AsInteger := fID;
  CdsPedidos.Open;
  //
  Result := false;
  if CdsPedidos.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Pedido(pDatai, pDataf: TDateTime; pCaixa: String = ''; pTipo: Integer = 0; ApenasConfirmados: Boolean = true): Boolean;
var
  Datai, Dataf: String;
begin
  Datai := FormatDateTime('MM/DD/YYYY', pDatai);
  Dataf := FormatDateTime('MM/DD/YYYY', pDataf);
  CdsPedidos.Close;
  CdsPedidos.Params.Clear;
  QryPedidos.Close;
  QryPedidos.SQL.Clear;
  QryPedidos.SQL.Add('select * from pedido');
  QryPedidos.SQL.Add('where pedido.data_entrega >= ' + QuotedStr(Datai));
  QryPedidos.SQL.Add('and pedido.data_entrega <= ' + QuotedStr(Dataf));
  // QryPedidos.SQL.Add('where pedido.data_pedido >= '+QuotedStr(Datai));
  // QryPedidos.SQL.Add('and pedido.data_pedido <= '+QuotedStr(Dataf));
  if pTipo = 0 then
  begin
    if ApenasConfirmados then
      QryPedidos.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
    QryPedidos.SQL.Add('and pedido.coo > 0');
    QryPedidos.SQL.Add('and pedido.modelo <> ' + QuotedStr('65'));
  end;
  if pCaixa <> '' then
    QryPedidos.SQL.Add('and pedido.caixa = ' + QuotedStr(pCaixa));
  QryPedidos.SQL.Add('order by pedido.pedido_num');
  // parametros
  CdsPedidos.FetchParams;
  // CdsPedidos.Params.ParamByName('pDatai').AsDateTime := pDatai;
  // CdsPedidos.Params.ParamByName('pDataf').AsDateTime := pDataf;
  CdsPedidos.Open;
  //
  Result := false;
  if CdsPedidos.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_OS(pDatai, pDataf: TDateTime; pStatus: Integer): Boolean;
// var
// aDatai, aDataf: String;
begin
  // aDatai := FormatDateTime('MM/DD/YYYY', pDatai);
  // aDataf := FormatDateTime('MM/DD/YYYY', pDataf);
  CDSOS.Close;

  QryOS.Params.Clear;
  QryPedidos.Close;
  QryOS.SQL.Clear;
  QryOS.SQL.Add('select * from ord_servico os');
  QryOS.SQL.Add('where os.data_os between :data_ini and :data_fim ');
  // + QuotedStr(aDatai));
  // QryOS.SQL.Add('and os.data_os <= ' + QuotedStr(aDataf));
  if pStatus < 6 then
    QryOS.SQL.Add('and os.status = :status'); // + IntToStr(pStatus));

  // parametros
  CDSOS.FetchParams;

  CDSOS.ParamByName('data_ini').AsDateTime := pDatai;
  CDSOS.ParamByName('data_fim').AsDateTime := pDataf;
  if pStatus < 6 then
    CDSOS.ParamByName('status').AsInteger := pStatus;

  CDSOS.Open;
  //
  Result := false;
  if QryOS.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_OS(pID: Integer): Boolean;
begin
  CDSOS.Close;

  QryOS.Params.Clear;
  QryOS.Close;
  QryOS.SQL.Clear;
  QryOS.SQL.Add('select * from ord_servico');
  QryOS.SQL.Add('where ord_servico.id = :pID');

  // parametros
  CDSOS.FetchParams;
  CDSOS.Params.ParamByName('piD').AsInteger := pID;

  CDSOS.Open;
  //
  Result := false;
  if QryOS.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_PedidoItens(fID: Integer): Boolean;
begin
  CdsPedidoItens.Close;
  CdsPedidoItens.Params.Clear;
  QryPedidoItens.Close;
  QryPedidoItens.SQL.Clear;
  QryPedidoItens.SQL.Add('select pedido_itens.*,pedido.coo,pedido.ccf');
  QryPedidoItens.SQL.Add('from pedido_itens');
  QryPedidoItens.SQL.Add('inner join pedido on pedido.id = pedido_itens.idpedido');
  QryPedidoItens.SQL.Add('where pedido_itens.idpedido = :pID');
  //
  CdsPedidoItens.FetchParams;
  CdsPedidoItens.Params.ParamByName('pID').AsInteger := fID;
  CdsPedidoItens.Open;
  //
  Result := false;
  if CdsPedidoItens.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_PedidoItens(pDatai, pDataf: TDateTime; pCaixa: String = ''; pTipo: Integer = 0; ApenasConfirmados: Boolean = true): Boolean;
var
  Datai, Dataf: String;
begin
  Datai := FormatDateTime('MM/DD/YYYY', pDatai);
  Dataf := FormatDateTime('MM/DD/YYYY', pDataf);
  //
  CdsPedidoItens.Close;
  CdsPedidoItens.Params.Clear;
  QryPedidoItens.Close;
  QryPedidoItens.SQL.Clear;
  QryPedidoItens.SQL.Add('select pedido_itens.*,pedido.coo,pedido.ccf');
  QryPedidoItens.SQL.Add('from pedido, pedido_itens');
  QryPedidoItens.SQL.Add('where pedido.id = pedido_itens.idpedido');
  QryPedidoItens.SQL.Add('and pedido.data_entrega >= ' + QuotedStr(Datai));
  QryPedidoItens.SQL.Add('and pedido.data_entrega <= ' + QuotedStr(Dataf));
  if pTipo = 0 then
  begin
    if ApenasConfirmados then
      QryPedidoItens.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
    QryPedidoItens.SQL.Add('and pedido.coo > 0');
    QryPedidoItens.SQL.Add('and pedido.modelo <> ' + QuotedStr('65'));
  end;
  if pCaixa <> '' then
    QryPedidoItens.SQL.Add('and pedido.caixa = ' + QuotedStr(pCaixa));
  QryPedidoItens.SQL.Add('order by pedido.pedido_num');
  //
  CdsPedidoItens.FetchParams;
  CdsPedidoItens.Open;
  //
  Result := false;
  if CdsPedidoItens.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_OSHoras(pID: Integer): Boolean;
begin
  CdsOSHoras.Close;
  CdsOSHoras.Params.ParamByName('piD').AsInteger := pID;
  CdsOSHoras.Open;
  //
  Result := false;
  if CdsOSHoras.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.DspContasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTAS';

end;

function TDmWorkCom.Dados_Contas(fID: Integer): Boolean;
begin
  CdsContas.Close;
  CdsContas.Params.ParamByName('pID').AsInteger := fID;
  CdsContas.Open;
  // resultado
  Result := false;
  if CdsContas.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.CdsProdutoCompostoBeforePost(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('ID_PRODUTO').IsNull) or (DataSet.FieldByName('ID_PRODUTO').AsInteger < 1) then
  begin
    MessageDlg('� necess�rio informar o produto. verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // Dados_Produto(DataSet.FieldByName('ID_PRODUTO').AsInteger);
  DataSet.FieldByName('DESCRICAO').AsString := Retorna_DescricaoProduto(DataSet.FieldByName('ID_PRODUTO').AsInteger);

end;

procedure TDmWorkCom.CdsContasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CONTAS');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA_LANC').AsDateTime := SVData;
  DataSet.FieldByName('STATUS').AsInteger := 0;
  DataSet.FieldByName('TIPO').AsInteger := sTipoConta;
  DataSet.FieldByName('VALOR_CONTA').AsFloat := 0;
  DataSet.FieldByName('VALOR_DESCONTO').AsFloat := 0;
  DataSet.FieldByName('VALOR_ACRESCIMO').AsFloat := 0;
  DataSet.FieldByName('JUROS').AsFloat := 0;
  DataSet.FieldByName('MULTA').AsFloat := 0;
  DataSet.FieldByName('VALOR_QUITATO').AsFloat := 0;

end;

procedure TDmWorkCom.CdsContasBeforePost(DataSet: TDataSet);
begin
  if DmWorkCom.sProcessoQui = 1 then
  begin
    CdsContas.FieldByName('DATA_QUIT').AsDateTime := SVData;
    CdsContas.FieldByName('STATUS').AsInteger := 1;
    CdsContas.FieldByName('VALOR_QUITATO').AsFloat := DmWorkCom.sValorQuitacao;
    // DmWorkCom.sValorQuitacao := 0;
  end;

end;

procedure TDmWorkCom.CdsFormaPagNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('FORMA_PAGTO');
  DataSet.FieldByName('ATIVO').AsString := 'T';

end;

procedure TDmWorkCom.DspChequesGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CHEQUES';

end;

procedure TDmWorkCom.CdsChequesNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CHEQUES');
  DataSet.FieldByName('DATA_CAD').AsDateTime := SVData;
  DataSet.FieldByName('VALOR').AsFloat := 0;
  DataSet.FieldByName('STATUS').AsInteger := 0;
  if CdsPedidos.Active then
    DataSet.FieldByName('ID_PEDIDO').AsInteger := CdsPedidosID.AsInteger;

end;

function TDmWorkCom.Dados_Cheque(fID: Integer): Boolean;
begin
  CdsCheques.Close;
  CdsCheques.Params.ParamByName('pID').AsInteger := fID;
  CdsCheques.Open;
  //
  Result := false;
  if CdsCheques.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.CdsPedidosNewRecord(DataSet: TDataSet);
var
  aNumPed: Integer;
begin
  if VerificaMesFechado(SVData) then
  begin
    MessageDlg('N�o � permitido movimenta��o de pedidos para o mes fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  aNumPed := GenID('PEDIDO');
  DataSet.FieldByName('ID').AsInteger := aNumPed;
  if sPedidoSeq = 'S' then
  begin
    DataSet.FieldByName('PEDIDO_NUM').AsString := ZeroEsquerda(IntToStr(aNumPed), 10);
  end
  else
  begin
    InformaNumped;
  end;
  DataSet.FieldByName('DATA_PEDIDO').AsDateTime := SVData;
  DataSet.FieldByName('HORA_PEDIDO').AsDateTime := SVHora;
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('VALOR').AsCurrency := 0;
  DataSet.FieldByName('VALOR_REAL').AsCurrency := 0;
  DataSet.FieldByName('DESCONTO').AsCurrency := 0;
  DataSet.FieldByName('ACRESCIMO').AsCurrency := 0;
  DataSet.FieldByName('OUTRAS_DESPESAS').AsCurrency := 0;
  DataSet.FieldByName('VALOR_TOTAL').AsCurrency := 0;
  DataSet.FieldByName('MARGEM_VENDA').AsCurrency := 0;
  DataSet.FieldByName('TIPODOC').AsInteger := CdsConfigTIPODOC_PADRAO.AsInteger;
  DataSet.FieldByName('IDCLIENTE').AsInteger := CdsConfigCLIENTE_PADRAO.AsInteger;
  DataSet.FieldByName('ID_VENDEDOR').AsInteger := CdsConfigVENDEDOR_PADRAO.AsInteger;
  if sPAFNFCe = 0 then
    DataSet.FieldByName('ID_CLASSIFICACAO').AsInteger := CdsConfigCLASSIFICA_PADRAO.AsInteger
  else
    DataSet.FieldByName('ID_CLASSIFICACAO').AsInteger := CdsConfigCLASSIFICA_NFCE.AsInteger;
  DataSet.FieldByName('ID_FORMAPAG').AsInteger := CdsConfigFORMAPAG_PADRAO.AsInteger;
  DataSet.FieldByName('CONFIRMADA').AsString := 'N';
  DataSet.FieldByName('ENTREGUE').AsString := 'N';
  DataSet.FieldByName('CANCELADO').AsString := 'N';
  DataSet.FieldByName('DAV').AsString := 'N';
  DataSet.FieldByName('DAV_IMPRESSO').AsInteger := 0;
  DataSet.FieldByName('ID_MESA').AsInteger := 0;
  DataSet.FieldByName('CER').AsInteger := 0;
  DataSet.FieldByName('ABASTECIMENTO').AsString := 'N';
  DataSet.FieldByName('STATUS_ABASTEC').AsInteger := 0;
  DataSet.FieldByName('COO').AsInteger := 0;
  DataSet.FieldByName('CCF').AsInteger := 0;
  DataSet.FieldByName('GNF').AsInteger := 0;
  DataSet.FieldByName('DEVOLUCAO').AsString := 'N';
  DataSet.FieldByName('VALOR_CARGA_TRIB').AsFloat := 0;
  DataSet.FieldByName('NOTAMANUAL').AsString := 'N';
  DataSet.FieldByName('CHAVE_NFE').AsString := '';
  DataSet.FieldByName('STATUS_NFE').AsString := '';

  sNumItem := 0;

end;

function TDmWorkCom.VerificaCampos: Boolean;
begin
  if (CdsPedidosIDCLIENTE.IsNull) or (CdsPedidosIDCLIENTE.AsInteger = 0) or (CdsPedidosID_VENDEDOR.IsNull) or (CdsPedidosID_VENDEDOR.AsInteger = 0) or
    (CdsPedidosID_CLASSIFICACAO.IsNull) or (CdsPedidosID_CLASSIFICACAO.AsInteger = 0) or (CdsPedidosTIPODOC.IsNull) or (CdsPedidosTIPODOC.AsInteger < 0) or
    (CdsPedidosPEDIDO_NUM.IsNull) or (CdsPedidosPEDIDO_NUM.AsString = '') or (CdsPedidosID_FORMAPAG.IsNull) or (CdsPedidosID_FORMAPAG.AsInteger = 0) then
  begin
    MessageDlg('Os campos indicados com * s�o de preenchimento obrigat�rios.', mtWarning, [mbOK], 0);
    Abort;
  end;

end;

procedure TDmWorkCom.CdsPedidoItensNewRecord(DataSet: TDataSet);
begin
  Inc(sNumItem);
  DataSet.FieldByName('ID').AsInteger := GenID('PEDIDO_ITENS');
  DataSet.FieldByName('IDPEDIDO').AsInteger := CdsPedidosID.AsInteger;
  DataSet.FieldByName('VALOR').AsFloat := 0;
  DataSet.FieldByName('VALOR_REAL').AsFloat := 0;
  DataSet.FieldByName('DESCONTO').AsFloat := 0;
  DataSet.FieldByName('ACRESCIMO').AsFloat := 0;
  DataSet.FieldByName('VALOR_TOTAL').AsFloat := 0;
  DataSet.FieldByName('VALOR_REENBOLSO').AsFloat := 0;
  DataSet.FieldByName('VALOR_SUBSIDIO').AsFloat := 0;
  DataSet.FieldByName('CANCELADO').AsString := 'N';
  DataSet.FieldByName('NUM_ITEM').AsInteger := sNumItem;

end;

procedure TDmWorkCom.DspEmpresaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'EMPRESA';

end;

procedure TDmWorkCom.DspConfigGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONFIG';

end;

procedure TDmWorkCom.CdsEmpresaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('EMPRESA');
  DataSet.FieldByName('COD_ASSIN').AsInteger := 0;
  DataSet.FieldByName('CRT').AsInteger := 0;
  DataSet.FieldByName('PERFIL_PAFECF').AsString := 'N';
  sIDEmpresa := DataSet.FieldByName('ID').AsInteger;

end;

procedure TDmWorkCom.CdsConfigNewRecord(DataSet: TDataSet);
begin
  if CdsEmpresaID.AsInteger > 0 then
    DataSet.FieldByName('ID_EMPRESA').AsInteger := CdsEmpresaID.AsInteger
  else
    DataSet.FieldByName('ID_EMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('CADASTRAR_CHEQUES').AsString := 'N';
  DataSet.FieldByName('TELAVENDAPADRAO').AsInteger := 0;
  DataSet.FieldByName('TIPO_BUSCA_CLIENTE').AsInteger := 0;
  DataSet.FieldByName('EXIBIR').AsInteger := 0;
  DataSet.FieldByName('TIPO_EMPRESA').AsInteger := 0;
  DataSet.FieldByName('TIPO_CALC_PERC').AsInteger := 1;
  DataSet.FieldByName('TIPODOC_PADRAO').AsInteger := 0;
  DataSet.FieldByName('TIPO_COMISSAO').AsInteger := 0;
  DataSet.FieldByName('CONTROLAR_ESTCOMP').AsString := 'N';
  DataSet.FieldByName('PED_EDITAR_CLI').AsString := 'S';
  DataSet.FieldByName('ATUALIZAR_PRECO').AsString := 'S';
  DataSet.FieldByName('COMISSAO_INTEGRAL_SEG').AsString := 'F';
  DataSet.FieldByName('COMISSAO_INTEGRAL_TER').AsString := 'F';
  DataSet.FieldByName('COMISSAO_INTEGRAL_QUA').AsString := 'F';
  DataSet.FieldByName('COMISSAO_INTEGRAL_QUI').AsString := 'F';
  DataSet.FieldByName('COMISSAO_INTEGRAL_SEX').AsString := 'F';
  DataSet.FieldByName('COMISSAO_INTEGRAL_SAB').AsString := 'F';
  DataSet.FieldByName('COMISSAO_INTEGRAL_DOM').AsString := 'F';
  DataSet.FieldByName('NFE_VERSAODF').AsInteger := 0;
  DataSet.FieldByName('BLQ_ATV').AsInteger := 0;

end;

function TDmWorkCom.Dados_Empresa: Boolean;
begin
  CdsEmpresa.Close;
  CdsEmpresa.Params.Clear;
  QryEmpresa.Close;
  QryEmpresa.SQL.Clear;
  QryEmpresa.SQL.Add('select * from empresa');
  // Parametros
  CdsEmpresa.FetchParams;
  CdsEmpresa.Open;
  // resultado
  Result := false;
  if CdsEmpresa.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Empresa(fID: Integer): Boolean;
begin
  CdsEmpresa.Close;
  CdsEmpresa.Params.Clear;
  QryEmpresa.Close;
  QryEmpresa.SQL.Clear;
  QryEmpresa.SQL.Add('select * from empresa');
  QryEmpresa.SQL.Add('where empresa.id = :pID');

  // Parametros
  CdsEmpresa.FetchParams;
  CdsEmpresa.Params.ParamByName('pID').AsInteger := fID;
  CdsEmpresa.Open;
  // resultado
  Result := false;
  if CdsEmpresa.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Config(fID: Integer): Boolean;
begin
  CdsConfig.Close;
  CdsConfig.Params.ParamByName('pID').AsInteger := fID;
  CdsConfig.Open;
  //
  Result := false;
  if CdsConfig.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Movimenta_Estoque(fTipoMov: Integer; fItens: TDataSet): Boolean;
var
  aEstAtual, aNovoEstoque: Double;
  aTipoProd: Integer;
  aControla: Boolean;
begin
  // fTipoMov = 0 - Baixar
  // 1 - Adcionar
  // fTipoProd = 0 - Normal
  // 1 - Composto
  DmProdutos.Dados_MovimentoEst(0);
  Result := true;
  try
    fItens.First;
    while not fItens.Eof do
    begin
      // verifica se item movimenta estoque
      DmProdutos.Dados_Produto(fItens.FieldByName('IDPRODUTO').AsInteger);
      if (DmProdutos.CdsProdutos.FieldByName('CONTROLAR_ESTOQUE').AsString = 'S') and (fItens.FieldByName('CANCELADO').AsString = 'N') then
      begin
        if DmProdutos.CdsProdutos.FieldByName('COMBUSTIVEL').AsString <> 'S' then
        begin
          // retorna tipo de produto
          aTipoProd := Retorna_TipoProduto(fItens.FieldByName('IDPRODUTO').AsInteger);
          // verifica se controla estoque de produto que possui composi��o
          aControla := true;
          if (sContEstComp = 'N') and (aTipoProd = 1) then
            aControla := false;
          // efetua baixa no estoque comum
          if aControla then
          begin
            aEstAtual := Retorna_EstoqueAtual(fItens.FieldByName('IDPRODUTO').AsInteger);
            if fTipoMov = 0 then // baixar
              aNovoEstoque := aEstAtual - fItens.FieldByName('QUANTIDADE').AsFloat
            else if fTipoMov = 1 then // adcionar
              aNovoEstoque := aEstAtual + fItens.FieldByName('QUANTIDADE').AsFloat;
            // grava tabela de produtos
            DmProdutos.Dados_Produto(fItens.FieldByName('IDPRODUTO').AsInteger);
            if not(DmProdutos.CdsProdutos.State in [dsInsert, dsEdit]) then
              DmProdutos.CdsProdutos.Edit;
            DmProdutos.CdsProdutos.FieldByName('ESTOQUE').AsFloat := aNovoEstoque;
            DmProdutos.CdsProdutos.FieldByName('DATA_ESTOQUE').AsDateTime := SVData;
            DmProdutos.CdsProdutos.FieldByName('HORA_ESTOQUE').AsDateTime := SVHora;
            Grava_Dados(DmProdutos.CdsProdutos);
            // grava no produto
            Grava_MovEstoque(fItens.FieldByName('IDPRODUTO').AsInteger, aNovoEstoque);
            // grava tabela de movimento de estoque
            DmProdutos.Grava_TabMovEst(fTipoMov, fItens.FieldByName('IDPRODUTO').AsInteger, fItens.FieldByName('QUANTIDADE').AsFloat);
          end;
          // se for produto composto da baixa na composi��o
          if aTipoProd = 1 then
          begin
            // processa baixa acrescimo produto composto
            DmProdutos.Dados_ProdComposto(fItens.FieldByName('IDPRODUTO').AsInteger);
            while not DmProdutos.CdsProdutoComposto.Eof do
            begin
              // captura estoque atual do produto composto;
              aEstAtual := Retorna_EstoqueAtual(DmProdutos.CdsProdutoCompostoID_PRODUTO.AsInteger);
              if fTipoMov = 0 then // baixar
                aNovoEstoque := aEstAtual - (fItens.FieldByName('QUANTIDADE').AsFloat * DmProdutos.CdsProdutoCompostoQUANTIDADE.AsFloat)
              else if fTipoMov = 1 then // adcionar
                aNovoEstoque := aEstAtual + (fItens.FieldByName('QUANTIDADE').AsFloat * DmProdutos.CdsProdutoCompostoQUANTIDADE.AsFloat);
              // localiza registro do produto composto na tabela
              DmProdutos.Dados_Produto(DmProdutos.CdsProdutoCompostoID_PRODUTO.AsInteger);
              // grava tabela de produtos
              if not(DmProdutos.CdsProdutos.State in [dsInsert, dsEdit]) then
                DmProdutos.CdsProdutos.Edit;
              DmProdutos.CdsProdutos.FieldByName('ESTOQUE').AsFloat := aNovoEstoque;
              DmProdutos.CdsProdutos.FieldByName('DATA_ESTOQUE').AsDateTime := SVData;
              DmProdutos.CdsProdutos.FieldByName('HORA_ESTOQUE').AsDateTime := SVHora;
              Grava_Dados(DmProdutos.CdsProdutos);
              // grava tabela de estoque
              Grava_MovEstoque(DmProdutos.CdsProdutoCompostoID_PRODUTO.AsInteger, aNovoEstoque);
              // grava tabela de movimento de estoque
              DmProdutos.Grava_TabMovEst(fTipoMov, fItens.FieldByName('IDPRODUTO').AsInteger, fItens.FieldByName('QUANTIDADE').AsFloat *
                DmProdutos.CdsProdutoCompostoQUANTIDADE.AsFloat);
              // proximo produto
              DmProdutos.CdsProdutoComposto.Next;
            end;
          end;
        end;
      end;
      // proximo
      fItens.Next;
    end;
  except
    Result := false;
  end;
  DmProdutos.CdsMovimentoEst.Close;
end;

function TDmWorkCom.Gerar_Contas(fTipo, fIDPedido, fIDOS, fIDContato, fQuantPagtos: Integer; fFormaPag, fContato, fDocContato: String; fDataBase: TDateTime;
  fValor: Double): Boolean;
var
  i, aDias: Integer;
  aDataVenc: TDateTime;
begin
  //
  Result := true;
  try
    CdsContas.Open;
    for i := 1 to fQuantPagtos do
    begin
      aDias := Retorna_QuantDias(i, fFormaPag);
      aDataVenc := fDataBase + aDias;
      CdsContas.Append;
      CdsContasIDPEDIDO.AsInteger := fIDPedido;
      CdsContasIDOS.AsInteger := fIDOS;
      CdsContasIDCONTATO.AsInteger := fIDContato;
      CdsContasTIPO.AsInteger := fTipo;
      CdsContasNUMCONTA.AsString := ZeroEsquerda(IntToStr(fIDPedido), 10);
      CdsContasSERIE.AsInteger := i;
      CdsContasDATA_VENC.AsDateTime := aDataVenc;
      CdsContasVALOR_CONTA.AsFloat := fValor;
      CdsContasCONTATO.AsString := fContato;
      CdsContasDOC_CONTATO.AsString := fDocContato;
      CdsContas.Post;
    end;
    Grava_Dados(CdsContas);
    CdsContas.Close;
  except
    Result := false;
  end;

end;

procedure TDmWorkCom.DspContasAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTAS';

end;

function TDmWorkCom.Dados_ContasPedido(fIDPedido, fTipo: Integer): Boolean;
begin
  CdsContasAux.Close;
  CdsContasAux.Params.ParamByName('pID').AsInteger := fIDPedido;
  CdsContasAux.Params.ParamByName('pTipo').AsInteger := fTipo;
  CdsContasAux.Open;
  // resultado
  Result := false;
  if CdsContasAux.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.DspComprasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'COMPRAS';

end;

procedure TDmWorkCom.DspComprasItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'COMPRAS_ITENS';

end;

procedure TDmWorkCom.CdsComprasNewRecord(DataSet: TDataSet);
begin
  if VerificaMesFechado(SVData) then
  begin
    MessageDlg('N�o � permitido movimenta��o de pedidos para o mes fechado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  DataSet.FieldByName('ID').AsInteger := GenID('COMPRAS');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA_COMPRA').AsDateTime := SVData;
  DataSet.FieldByName('HORA_COMPRA').AsDateTime := SVHora;
  DataSet.FieldByName('VALOR').AsCurrency := 0;
  DataSet.FieldByName('DESCONTO').AsCurrency := 0;
  DataSet.FieldByName('ACRESCIMO').AsCurrency := 0;
  DataSet.FieldByName('OUTRAS_DESPESAS').AsCurrency := 0;
  DataSet.FieldByName('VALOR_TOTAL').AsCurrency := 0;
  DataSet.FieldByName('CONFIRMADA').AsString := 'N';
  DataSet.FieldByName('CANCELADO').AsString := 'N';
  DataSet.FieldByName('ID_CLASSIFICACAO').AsInteger := sIDClassCompra;
  DataSet.FieldByName('ID_FORMAPAG').AsInteger := sIDFPCompra;

end;

procedure TDmWorkCom.CdsComprasItensNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('COMPRAS_ITENS');
  DataSet.FieldByName('IDCOMPRA').AsInteger := CdsComprasID.AsInteger;
  DataSet.FieldByName('VALOR').AsFloat := 0;
  DataSet.FieldByName('DESCONTO').AsFloat := 0;
  DataSet.FieldByName('ACRESCIMO').AsFloat := 0;
  DataSet.FieldByName('VALOR_TOTAL').AsFloat := 0;
  DataSet.FieldByName('ALIQ_ICMS').AsFloat := 0;
  DataSet.FieldByName('BASE_ICMS').AsFloat := 0;
  DataSet.FieldByName('VALOR_ICMS').AsFloat := 0;
  DataSet.FieldByName('REDUCAO_BASE').AsFloat := 0;
  DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat := 0;
  DataSet.FieldByName('BASE_ICMS_ST').AsFloat := 0;
  DataSet.FieldByName('VALOR_ICMS_ST').AsFloat := 0;
  DataSet.FieldByName('VALOR_PIS').AsFloat := 0;
  DataSet.FieldByName('VALOR_COFINS').AsFloat := 0;
  DataSet.FieldByName('VALOR_IPI').AsFloat := 0;
  DataSet.FieldByName('ALIQ_IPI').AsFloat := 0;
  DataSet.FieldByName('BASE_IPI').AsFloat := 0;
  DataSet.FieldByName('BASE_PIS').AsFloat := 0;
  DataSet.FieldByName('BASE_COFINS').AsFloat := 0;
  DataSet.FieldByName('ALIQ_PIS').AsFloat := 0;
  DataSet.FieldByName('ALIQ_COFINS').AsFloat := 0;
  DataSet.FieldByName('MVA').AsFloat := 0;
  DataSet.FieldByName('CANCELADO').AsString := 'N';

end;

function TDmWorkCom.Dados_Compras(fID: Integer): Boolean;
begin
  CdsCompras.Close;
  CdsCompras.Params.ParamByName('pID').AsInteger := fID;
  CdsCompras.Open;
  // resultado
  Result := false;
  if CdsCompras.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_ComprasItens(fID: Integer): Boolean;
begin
  CdsComprasItens.Close;
  CdsComprasItens.Params.ParamByName('pID').AsInteger := fID;
  CdsComprasItens.Open;
  // resultado
  Result := false;
  if CdsComprasItens.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.VerificaCamposCompra: Boolean;
begin
  if (CdsComprasIDFORNECEDOR.IsNull) or (CdsComprasIDFORNECEDOR.AsInteger = 0) or (CdsComprasID_CLASSIFICACAO.IsNull) or
    (CdsComprasID_CLASSIFICACAO.AsInteger = 0) or (CdsComprasTIPODOC.IsNull) or (CdsComprasTIPODOC.AsInteger < 0) or (CdsComprasID_FORMAPAG.IsNull) or
    (CdsComprasID_FORMAPAG.AsInteger = 0) then
  begin
    MessageDlg('Os campos indicados com * s�o de preenchimento obrigat�rios.', mtWarning, [mbOK], 0);
    Abort;
  end;

end;

procedure TDmWorkCom.DspPedidoCompItemGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PEDIDO_COMPOSICAO_ITEM';

end;

procedure TDmWorkCom.CdsPedidoCompItemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PEDIDO_COMPOSICAO_ITEM');
  DataSet.FieldByName('ID_PEDIDO').AsInteger := CdsPedidosID.AsInteger;
  DataSet.FieldByName('ID_ITEMPEDIDO').AsInteger := CdsPedidoItensID.AsInteger;
  DataSet.FieldByName('TOTAL_M2').AsFloat := 0;
  DataSet.FieldByName('VALOR_M2').AsCurrency := 0;

end;

function TDmWorkCom.Dados_PedidoCompItem(fIDPed, fIDItemPed: Integer): Boolean;
begin
  CdsPedidoCompItem.Close;
  CdsPedidoCompItem.Params.ParamByName('pIDPed').AsInteger := fIDPed;
  CdsPedidoCompItem.Params.ParamByName('pIDItem').AsInteger := fIDItemPed;
  CdsPedidoCompItem.Open;
  //
  Result := false;
  if CdsPedidoCompItem.RecordCount > 0 then
    Result := true;
end;

procedure TDmWorkCom.DspCliForAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTATO';

end;

procedure TDmWorkCom.DspTabelaComissaoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'TABELA_COMISSAO';

end;

procedure TDmWorkCom.CdsTabelaComissaoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('TABELA_COMISSAO');
  DataSet.FieldByName('IDPRODUTO').AsInteger := DmProdutos.CdsProdutosID.AsInteger;

end;

function TDmWorkCom.ClonarProdutoCodTamanho(IDProduto, IDCor, IDTamanho: Integer): Integer;
var
  Q: TFDQuery;
begin
  Result := 0;
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select * from proc_clonar_produto (');
    Q.SQL.Add('    :pID,:pIDCor,:pIDTamanho)');
    Q.Params.ParamByName('pID').AsInteger := IDProduto;
    Q.Params.ParamByName('pIDCor').AsInteger := IDCor;
    Q.Params.ParamByName('pIDTamanho').AsInteger := IDTamanho;
    Q.Open;
    Result := Q.FieldByName('O_ID').AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.Dados_TabelaComissao(fIDProduto: Integer): Boolean;
begin
  CdsTabelaComissao.Close;
  CdsTabelaComissao.Params.ParamByName('pIDProd').AsInteger := fIDProduto;
  CdsTabelaComissao.Open;
  //
  Result := false;
  if CdsTabelaComissao.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.CdsPedidosBeforePost(DataSet: TDataSet);
var
  MD5: String;
  abase_icms, avalor_icms, abase_icms_st, avalor_icms_st, abase_pis, avalor_pis, abase_cofins, avalor_cofins, abase_ipi, avalor_ipi, abase_iss,
    avalor_iss: Double;
begin
  if not xAtMD5 then
  begin
    if (DataSet.FieldByName('desconto').AsFloat < 0) or (DataSet.FieldByName('acrescimo').AsFloat < 0) or (DataSet.FieldByName('valor').AsFloat < 0) then
    begin
      MessageDlg('N�o � permitido valores negativos!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if not CdsPedidoClass.Active then
    begin
      Dados_PedidoClassificacao(1);
    end;
    if CdsPedidoClass.Locate('ID', CdsPedidosID_CLASSIFICACAO.AsInteger, []) then
    begin
      DataSet.FieldByName('NATOP').AsString := CdsPedidoClassNATOP.AsString;
      DataSet.FieldByName('MODELO').AsString := CdsPedidoClassMODELO.AsString;
      DataSet.FieldByName('TIPO_PEDIDO').AsInteger := CdsPedidoClassTIPO.AsInteger;
    end
    else
    begin
      DataSet.FieldByName('NATOP').AsString := 'VENDA DE MERCADORIAS';
    end;
    if CdsPedidoClassDEVOLUCAO.AsString <> '' then
      DataSet.FieldByName('DEVOLUCAO').AsString := CdsPedidoClassDEVOLUCAO.AsString;
    //
    if CdsPedidoClass.FieldByName('TIPO').AsInteger = 3 then
    begin
      if DataSet.FieldByName('IDCLIENTE').AsInteger = CdsConfigCLIENTE_PADRAO.AsInteger then
      begin
        MessageDlg('N�o � permitido DAV com cliente padr�o!!!', mtWarning, [mbOK], 0);
        Abort;
      end;
    end;
    if (DataSet.FieldByName('desconto').AsFloat < 0) or (DataSet.FieldByName('acrescimo').AsFloat < 0) then
    begin
      MessageDlg('N�o � permitido valores negativos!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if (DataSet.FieldByName('IDCLIENTE').IsNull) or (DataSet.FieldByName('IDCLIENTE').AsInteger < 0) then
    begin
      MessageDlg('� necess�rio informar o cliente!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    // grava informa��es tribut�rias
    // if DmWorkCom.CdsEmpresaCRT.AsInteger > 0 then
    begin
      if RetornaValoresTributarios(abase_icms, avalor_icms, abase_icms_st, avalor_icms_st, abase_pis, avalor_pis, abase_cofins, avalor_cofins, abase_ipi,
        avalor_ipi, abase_iss, avalor_iss, DataSet.FieldByName('ID').AsInteger) then
      begin
        DataSet.FieldByName('BASE_ICMS').AsFloat := abase_icms;
        DataSet.FieldByName('VALOR_ICMS').AsFloat := avalor_icms;
        DataSet.FieldByName('BASE_ICMS_ST').AsFloat := abase_icms_st;
        DataSet.FieldByName('VALOR_ICMS_ST').AsFloat := avalor_icms_st;
        DataSet.FieldByName('BASE_PIS').AsFloat := abase_pis;
        DataSet.FieldByName('VALOR_PIS').AsFloat := avalor_pis;
        DataSet.FieldByName('BASE_COFINS').AsFloat := abase_cofins;
        DataSet.FieldByName('VALOR_COFINS').AsFloat := avalor_cofins;
        DataSet.FieldByName('BASE_IPI').AsFloat := abase_ipi;
        DataSet.FieldByName('VALOR_IPI').AsFloat := avalor_ipi;
        DataSet.FieldByName('BASE_ISS').AsFloat := abase_iss;
        DataSet.FieldByName('VALOR_ISS').AsFloat := avalor_iss;
      end;
    end;
    // limpa numero de pre-venda caso n�o estaja selacionado
    if (CdsPedidoClass.FieldByName('TIPO').AsInteger <> 2) and (DataSet.FieldByName('NUMPV').AsString <> '') and
      (DataSet.FieldByName('CONFIRMADA').AsString = 'N') and (DataSet.FieldByName('COO').AsInteger = 0) then
    begin
      DataSet.FieldByName('NUMPV').AsString := '';
    end;
    // gera numero de pre-venda
    if (CdsPedidoClass.FieldByName('TIPO').AsInteger = 2) and (DataSet.FieldByName('NUMPV').AsString = '') and
      (DataSet.FieldByName('CONFIRMADA').AsString = 'N') and (DataSet.FieldByName('COO').AsInteger = 0) then
    begin
      DataSet.FieldByName('NUMPV').AsString := ZeroEsquerda(IntToStr(RetornaNumPV), 10);
    end;
    // remove informa��o de DAV
    if (CdsPedidoClass.FieldByName('TIPO').AsInteger <> 3) and (CdsPedidoClass.FieldByName('TIPO').AsInteger <> 4) and
      (DataSet.FieldByName('DAV').AsString = 'S') and (DataSet.FieldByName('CONFIRMADA').AsString = 'N') and (DataSet.FieldByName('COO').AsInteger = 0) then
    begin
      DataSet.FieldByName('DAV').AsString := 'N';
      DataSet.FieldByName('NUMDAV').AsString := '';
    end;
    // adiciona informa��o de DAV
    if (CdsPedidoClass.FieldByName('TIPO').AsInteger = 3) or (CdsPedidoClass.FieldByName('TIPO').AsInteger = 4) then
    begin
      if (DataSet.FieldByName('DAV').AsString = 'N') and (DataSet.FieldByName('CONFIRMADA').AsString = 'N') and (DataSet.FieldByName('COO').AsInteger = 0) then
      begin
        DataSet.FieldByName('DAV').AsString := 'S';
        DataSet.FieldByName('NUMDAV').AsString := ZeroEsquerda(IntToStr(RetornaNumDAV), 10);
      end;
    end;
    // Grava informa��o de sincroniza��o
    DataSet.FieldByName('SINCRONIZADO').AsString := 'N';
  end;
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmWorkCom.DspCaixaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CAIXA';

end;

procedure TDmWorkCom.CdsCaixaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CAIXA');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA_ABERTURA').AsDateTime := SVData;
  DataSet.FieldByName('HORA_ABERTURA').AsDateTime := SVData;
  DataSet.FieldByName('VALOR_ABERTURA').AsCurrency := 0;
  DataSet.FieldByName('VALOR_FECHAMENTO').AsCurrency := 0;
  DataSet.FieldByName('HORA_ABERTURA').AsDateTime := SVData;
  DataSet.FieldByName('FECHADO').AsString := 'N';

end;

procedure TDmWorkCom.DspCaixaMovGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CAIXA_MOV';

end;

procedure TDmWorkCom.CdsCaixaMovNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CAIXA_MOV');
  DataSet.FieldByName('ID_CAIXA').AsInteger := CdsCaixaID.AsInteger;
  DataSet.FieldByName('DATA_MOV').AsDateTime := SVData;
  DataSet.FieldByName('VALOR').AsCurrency := 0;
  DataSet.FieldByName('IDFUNC').AsInteger := CdsCaixaIDFUNC.AsInteger;

end;

function TDmWorkCom.Dados_Caixa(fData: TDateTime; Aberto: Boolean): Boolean;
begin
  CdsCaixa.Close;
  CdsCaixa.Params.Clear;
  Qrycaixa.Close;
  Qrycaixa.SQL.Clear;
  Qrycaixa.SQL.Add('select * from caixa');
  Qrycaixa.SQL.Add('where caixa.data_abertura = :pData');
  if Aberto then
    Qrycaixa.SQL.Add('and caixa.fechado = ' + QuotedStr('N'));
  //
  CdsCaixa.FetchParams;
  CdsCaixa.Params.ParamByName('pData').AsDate := fData;
  CdsCaixa.Open;
  //
  Result := false;
  if CdsCaixa.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_CaixaMov(fID: Integer): Boolean;
begin
  CdsCaixaMov.Close;
  CdsCaixaMov.Params.ParamByName('pID').AsInteger := fID;
  CdsCaixaMov.Open;
  //
  Result := false;
  if CdsCaixaMov.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.InformaNumped: Boolean;
var
  aNumPed: String;
  aControle: Integer;
begin
  Result := true;
  aNumPed := '';
  aControle := 0;
  while aControle = 0 do
  begin
    if InputQuery('N�mero do Pedido', 'Informe o Numero do Pedido', aNumPed) then
    begin
      try
        aNumPed := ZeroEsquerda(aNumPed, 6);
        if VerificaNumPedido(aNumPed) then
        begin
          MessageDlg('Pedido j� cadastrado no aplicativo. verifique!!!', mtWarning, [mbOK], 0);
          aControle := 0;
          Result := false;;
        end
        else
        begin
          if not(CdsPedidos.State in [dsInsert, dsEdit]) then
            CdsPedidos.Edit;
          CdsPedidos.FieldByName('PEDIDO_NUM').AsString := aNumPed;
          Grava_Dados(CdsPedidos);
          aControle := 1;
        end;
      except
        MessageDlg('Erro ao informar o n�mero do pedido', mtError, [mbOK], 0);
        Result := false;
        aControle := 1;
      end;
    end
    else
    begin
      if (CdsPedidos.FieldByName('PEDIDO_NUM').IsNull) or (CdsPedidos.FieldByName('PEDIDO_NUM').AsString = '') then
        MessageDlg('Ser� necess�rio informar o n�mero do pedido para inserir dados!!!', mtWarning, [mbOK], 0);
      Result := false;
      aControle := 1;
    end;
  end;

end;

procedure TDmWorkCom.CdsPedidoItensBeforePost(DataSet: TDataSet);
var
  aIndiceProduto: Double;
  MD5: String;
  aBaseCalculo, valorDescontoAcrescimo: Double;
begin
  if not xAtMD5 then
  begin
    if (DataSet.FieldByName('desconto').AsFloat < 0) or (DataSet.FieldByName('acrescimo').AsFloat < 0) or (DataSet.FieldByName('valor').AsFloat <= 0) or
      (DataSet.FieldByName('quantidade').AsFloat <= 0) then
    begin
      MessageDlg('N�o � permitido valores negativos!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if (sEstoqueNegativo = 'N') and (not xSolucaoPendentes) then
    begin
      if not VerificaEstoqueProduto(DataSet.FieldByName('IDPRODUTO').AsInteger, DataSet.FieldByName('QUANTIDADE').AsFloat) then
      begin
        MessageDlg('O produto n�o pode fica com estoque negativo. Verifique!!!', mtWarning, [mbOK], 0);
        Abort;
      end;
    end;
    //
    if (DataSet.FieldByName('idproduto').AsInteger = 0) or (DataSet.FieldByName('idproduto').IsNull) then
    begin
      MessageDlg('� necess�rio selecionar o produto!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    if (DataSet.FieldByName('quantidade').AsFloat = 0) or (DataSet.FieldByName('valor').AsFloat = 0) then
    begin
      MessageDlg('� necess�rio informar a quantidade e o preco do produto!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    // verifica se tipo de documento precisa de tribu��o
    if CdsPedidosTIPO_PEDIDO.AsInteger = 0 then
    begin
      if Trim(CdsPedidosMODELO.AsString) = '55' then
      begin
        if not DmProdutos.Dados_Produto_Aliquota(DataSet.FieldByName('idproduto').AsInteger, CdsPedidosUF_END_ENTREGA.AsString) then
        begin
          MessageDlg('� necess�rio cadastrar a aliquota do produto para o estado do cliente!!!', mtWarning, [mbOK], 0);
          //Abort;
        end;
      end;
    end;
    // localiza produto no cadastro
    DmProdutos.Dados_Produto(DataSet.FieldByName('idproduto').AsInteger);
    // Verifica Preco Menor que pre�o de compra
    if sPrecoNegativo = 'N' then
    begin
      if DataSet.FieldByName('VALOR').AsCurrency < DmProdutos.CdsProdutos.FieldByName('PRECO_COMPRA').AsCurrency then
      begin
        MessageDlg('O Preco de Venda n�o pode ser menor que pre�o de compra!!!', mtWarning, [mbOK], 0);
        Abort;
      end;
    end;
    // calcula margem do produto
    if DataSet.FieldByName('VALOR').AsCurrency <> DataSet.FieldByName('VALOR_REAL').AsCurrency then
    begin
      aIndiceProduto := DmProdutos.CdsProdutos.FieldByName('MARGEM_LUCRO').AsFloat;
      aIndiceProduto := (DataSet.FieldByName('VALOR').AsCurrency - DmProdutos.CdsProdutos.FieldByName('PRECO_COMPRA').AsCurrency) / DataSet.FieldByName('VALOR')
        .AsCurrency * 100;
      aIndiceProduto := TruncaValor(aIndiceProduto, 2);
      DataSet.FieldByName('MARGEM').AsCurrency := TruncaValor(aIndiceProduto, 2);
    end
    else
    begin
      DataSet.FieldByName('MARGEM').AsCurrency := TruncaValor(DmProdutos.CdsProdutos.FieldByName('MARGEM_LUCRO').AsCurrency, 2);
    end;
    DataSet.FieldByName('VALOR_TOTAL').AsFloat :=
      (((DataSet.FieldByName('QUANTIDADE').AsFloat * DataSet.FieldByName('VALOR').AsCurrency) - DataSet.FieldByName('DESCONTO').AsFloat) +
      DataSet.FieldByName('ACRESCIMO').AsFloat);

    // grava informa��es tribut�rias
    if (CdsPedidosTIPO_PEDIDO.AsInteger = 0) and (Trim(CdsPedidosMODELO.AsString) = '55') then
    begin
      if Trim(DataSet.FieldByName('CST').AsString) = '' then
        DataSet.FieldByName('CST').AsString := DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString;
      if Trim(DataSet.FieldByName('CSOSN').AsString) = '' then
        DataSet.FieldByName('CSOSN').AsString := DmProdutos.CdsProduto_Aliquota.FieldByName('CSOSN').AsString;
      if Trim(DataSet.FieldByName('CFOP').AsString) = '' then
        DataSet.FieldByName('CFOP').AsString := DmProdutos.CdsProduto_Aliquota.FieldByName('CFOP').AsString;
      DataSet.FieldByName('REDUCAO_BASE').AsFloat := DmProdutos.CdsProduto_Aliquota.FieldByName('REDUCAO_BASE').AsFloat;
      DataSet.FieldByName('MVA').AsFloat := DmProdutos.CdsProdutos.FieldByName('MVA').AsFloat;

      // captura a base de calculo
      aBaseCalculo := (((DataSet.FieldByName('QUANTIDADE').AsFloat * DataSet.FieldByName('VALOR').AsCurrency) - DataSet.FieldByName('DESCONTO').AsFloat) +
        DataSet.FieldByName('ACRESCIMO').AsFloat);
      // se tiver redu��o na base, aplica
      if DmProdutos.CdsProduto_Aliquota.FieldByName('REDUCAO_BASE').AsFloat > 0 then
      begin
        aBaseCalculo := TruncaValor((aBaseCalculo * ((100 - DmProdutos.CdsProduto_Aliquota.FieldByName('REDUCAO_BASE').AsFloat) / 100)), 2);
      end;
      // grava PIS, COFINS e IPI
      DataSet.FieldByName('CST_PIS').AsString := DmProdutos.CdsProdutos.FieldByName('CST_PIS').AsString;
      DataSet.FieldByName('BASE_PIS').AsFloat := aBaseCalculo;
      DataSet.FieldByName('ALIQ_PIS').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_PIS').AsFloat;
      DataSet.FieldByName('VALOR_PIS').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_PIS').AsFloat) / 100), 2);
      DataSet.FieldByName('CST_COFINS').AsString := DmProdutos.CdsProdutos.FieldByName('CST_COFINS').AsString;
      DataSet.FieldByName('BASE_COFINS').AsFloat := aBaseCalculo;
      DataSet.FieldByName('ALIQ_COFINS').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_COFINS').AsFloat;
      DataSet.FieldByName('VALOR_COFINS').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_COFINS').AsFloat) / 100), 2);
      DataSet.FieldByName('BASE_IPI').AsFloat := aBaseCalculo;
      DataSet.FieldByName('ALIQ_IPI').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_IPI').AsFloat;
      DataSet.FieldByName('VALOR_IPI').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_IPI').AsFloat) / 100), 2);
      // zera os valores iniciais
      DataSet.FieldByName('BASE_ICMS').AsFloat := 0;
      DataSet.FieldByName('ALIQ_ICMS').AsFloat := 0;
      DataSet.FieldByName('VALOR_ICMS').AsFloat := 0;
      DataSet.FieldByName('BASE_ICMS_ST').AsFloat := 0;
      DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat := 0;
      DataSet.FieldByName('VALOR_ICMS_ST').AsFloat := 0;
      // se for tributado
      if (Copy(DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString, 2, 2) = '00') or
        (Copy(DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString, 2, 2) = '10') or
        (Copy(DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString, 2, 2) = '20') then
      begin
        DataSet.FieldByName('BASE_ICMS').AsFloat := aBaseCalculo;
        DataSet.FieldByName('ALIQ_ICMS').AsFloat := DmProdutos.CdsProduto_Aliquota.FieldByName('ALIQUOTA').AsFloat;
        DataSet.FieldByName('VALOR_ICMS').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_ICMS').AsFloat) / 100), 2);
      end;
      // se for ST calcula a base para ST
      if (Copy(DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString, 2, 2) = '10') or
        (Copy(DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString, 2, 2) = '60') or
        (Copy(DmProdutos.CdsProduto_Aliquota.FieldByName('CST').AsString, 2, 2) = '70') then
      begin
        aBaseCalculo := ((aBaseCalculo * DmProdutos.CdsProdutos.FieldByName('MVA').AsFloat) / 100) + aBaseCalculo;
        DataSet.FieldByName('BASE_ICMS_ST').AsFloat := aBaseCalculo;
        DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat := DmProdutos.CdsProduto_Aliquota.FieldByName('ALIQUOTA').AsFloat;
        DataSet.FieldByName('VALOR_ICMS_ST').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat) / 100), 2);
      end;
    end
    else // usa a tributa��o interna para ECF, SAT e NFCe
    begin
      if Trim(DataSet.FieldByName('CST').AsString) = '' then
        DataSet.FieldByName('CST').AsString := DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString;
      if Trim(DataSet.FieldByName('CSOSN').AsString) = '' then
        DataSet.FieldByName('CSOSN').AsString := DmProdutos.CdsProdutos.FieldByName('CSOSN_INTERNO').AsString;
      if Trim(DataSet.FieldByName('CFOP').AsString) = '' then
        DataSet.FieldByName('CFOP').AsString := DmProdutos.CdsProdutos.FieldByName('CFOP_INTERNO').AsString;
      DataSet.FieldByName('REDUCAO_BASE').AsFloat := DmProdutos.CdsProdutos.FieldByName('REDUCAO_BASE').AsFloat;
      DataSet.FieldByName('MVA').AsFloat := DmProdutos.CdsProdutos.FieldByName('MVA').AsFloat;

      // captura a base de calculo
      aBaseCalculo := (((DataSet.FieldByName('QUANTIDADE').AsFloat * DataSet.FieldByName('VALOR').AsCurrency) - DataSet.FieldByName('DESCONTO').AsFloat) +
        DataSet.FieldByName('ACRESCIMO').AsFloat);
      // se tiver redu��o na base, aplica
      if DmProdutos.CdsProdutos.FieldByName('REDUCAO_BASE').AsFloat > 0 then
      begin
        aBaseCalculo := TruncaValor((aBaseCalculo * ((100 - DmProdutos.CdsProdutos.FieldByName('REDUCAO_BASE').AsFloat) / 100)), 2);
      end;
      // grava PIS, COFINS e IPI
      DataSet.FieldByName('CST_PIS').AsString := DmProdutos.CdsProdutos.FieldByName('CST_PIS').AsString;
      DataSet.FieldByName('BASE_PIS').AsFloat := aBaseCalculo;
      DataSet.FieldByName('ALIQ_PIS').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_PIS').AsFloat;
      DataSet.FieldByName('VALOR_PIS').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_PIS').AsFloat) / 100), 2);
      DataSet.FieldByName('CST_COFINS').AsString := DmProdutos.CdsProdutos.FieldByName('CST_COFINS').AsString;
      DataSet.FieldByName('BASE_COFINS').AsFloat := aBaseCalculo;
      DataSet.FieldByName('ALIQ_COFINS').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_COFINS').AsFloat;
      DataSet.FieldByName('VALOR_COFINS').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_COFINS').AsFloat) / 100), 2);
      DataSet.FieldByName('BASE_IPI').AsFloat := aBaseCalculo;
      DataSet.FieldByName('ALIQ_IPI').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_IPI').AsFloat;
      DataSet.FieldByName('VALOR_IPI').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_IPI').AsFloat) / 100), 2);
      // zera os valores iniciais
      DataSet.FieldByName('BASE_ICMS').AsFloat := 0;
      DataSet.FieldByName('ALIQ_ICMS').AsFloat := 0;
      DataSet.FieldByName('VALOR_ICMS').AsFloat := 0;
      DataSet.FieldByName('BASE_ICMS_ST').AsFloat := 0;
      DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat := 0;
      DataSet.FieldByName('VALOR_ICMS_ST').AsFloat := 0;
      // se for tributado
      if (Copy(DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString, 2, 2) = '00') or
        (Copy(DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString, 2, 2) = '10') or
        (Copy(DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString, 2, 2) = '20') then
      begin
        DataSet.FieldByName('BASE_ICMS').AsFloat := aBaseCalculo;
        DataSet.FieldByName('ALIQ_ICMS').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat;
        DataSet.FieldByName('VALOR_ICMS').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_ICMS').AsFloat) / 100), 2);
      end;
      // se for ST calcula a base para ST
      if (Copy(DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString, 2, 2) = '10') or
        (Copy(DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString, 2, 2) = '60') or
        (Copy(DmProdutos.CdsProdutos.FieldByName('CST_INTERNO').AsString, 2, 2) = '70') then
      begin
        aBaseCalculo := ((aBaseCalculo * DmProdutos.CdsProdutos.FieldByName('MVA').AsFloat) / 100) + aBaseCalculo;
        DataSet.FieldByName('BASE_ICMS_ST').AsFloat := aBaseCalculo;
        DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat := DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat;
        DataSet.FieldByName('VALOR_ICMS_ST').AsFloat := TruncaValor(((aBaseCalculo * DataSet.FieldByName('ALIQ_ICMS_ST').AsFloat) / 100), 2);
      end;
    end;
    // grava preco de venda atualizado
    if sAtualizaPrecos = 'S' then
    begin
      if Abs(DataSet.FieldByName('VALOR').AsCurrency - DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsCurrency) > 0.01 then
      begin
        Grava_PrecoProduto(DataSet.FieldByName('idproduto').AsInteger, 1, DataSet.FieldByName('VALOR').AsCurrency);
      end;
    end;
    // grava os dados do cupom no item
    DataSet.FieldByName('COO').AsInteger := CdsPedidos.FieldByName('COO').AsInteger;
    DataSet.FieldByName('CCF').AsInteger := CdsPedidos.FieldByName('CCF').AsInteger;
    DataSet.FieldByName('GNF').AsInteger := CdsPedidos.FieldByName('GNF').AsInteger;
    DataSet.FieldByName('NUMSERIEECF').AsString := CdsPedidos.FieldByName('NUMSERIEECF').AsString;
  end;
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

function TDmWorkCom.Grava_MovCaixa(fHistorico, fOrigem, fDC: String; fValor: Currency): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Result := true;
    try
      with Query do
      begin
        Connection := ConexaoDados;
        Close;
        SQL.Clear;
        SQL.Add('insert into caixa_mov (');
        SQL.Add('  id,');
        SQL.Add('  id_caixa,');
        SQL.Add('  data_mov,');
        SQL.Add('  historico,');
        SQL.Add('  origem,');
        SQL.Add('  dc,');
        SQL.Add('  valor,');
        SQL.Add('  idfunc,');
        SQL.Add('  idpedido)');
        SQL.Add('values (');
        SQL.Add('  gen_id(caixa_mov_id,1),');
        SQL.Add('  :id_caixa,');
        SQL.Add('  :data_mov,');
        SQL.Add('  :historico,');
        SQL.Add('  :origem,');
        SQL.Add('  :dc,');
        SQL.Add('  :valor,');
        SQL.Add('  :idfunc,');
        SQL.Add('  :idpedido);');
        // passa os parametros
        Params.ParamByName('id_caixa').AsInteger := CdsCaixaID.AsInteger;
        Params.ParamByName('data_mov').AsDate := SVData;
        Params.ParamByName('historico').AsString := fHistorico;
        Params.ParamByName('origem').AsString := fOrigem;
        Params.ParamByName('dc').AsString := fDC;
        Params.ParamByName('valor').AsFloat := fValor;
        Params.ParamByName('idfunc').AsInteger := CdsCaixaIDFUNC.AsInteger;
        Params.ParamByName('idpedido').AsInteger := 0;
        ExecSQL;
      end;
    except
      Result := false;
    end;
  finally
    FreeAndNil(Query);
  end;

end;

procedure TDmWorkCom.CdsContasAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
var
  aHistorico, aDC, aOrigem, aNomeOperador: String;
  aDataCaixa, aDataAtual: TDateTime;
  aValorTotal: Double;
begin
  inherited;
  // grava quita��o no caixa
  if (sProcessoQui = 1) then
  begin
    aValorTotal := ((DmWorkCom.CdsContas.FieldByName('VALOR_CONTA').AsFloat + DmWorkCom.CdsContas.FieldByName('VALOR_ACRESCIMO').AsFloat) -
      (DmWorkCom.CdsContas.FieldByName('VALOR_DESCONTO').AsFloat + DmWorkCom.CdsContas.FieldByName('JUROS').AsFloat + DmWorkCom.CdsContas.FieldByName('MULTA')
      .AsFloat));
    //
    if DmWorkCom.CdsContas.FieldByName('VALOR_QUITATO').AsCurrency < aValorTotal then
    begin
      // grava conta referente ao pagamento parcial
      DmWorkCom.GravaContaAdicionalPagtoParcial(DmWorkCom.CdsContas.FieldByName('ID').AsInteger, aValorTotal - DmWorkCom.CdsContas.FieldByName('VALOR_QUITATO')
        .AsCurrency);
    end;
    //
    if sTipoConta = 1 then
    begin
      aHistorico := 'PAGTO CONTA No' + CdsContas.FieldByName('NUMCONTA').AsString + '/' + IntToStr(CdsContas.FieldByName('SERIE').AsInteger) + 'VENC: ' +
        DateToStr(CdsContas.FieldByName('DATA_VENC').AsDateTime);
      aOrigem := 'CONTAS A PAGAR';
      aDC := 'D';
    end
    else if sTipoConta = 0 then
    begin
      aHistorico := 'RECBTO CONTA No ' + CdsContas.FieldByName('NUMCONTA').AsString + '/' + IntToStr(CdsContas.FieldByName('SERIE').AsInteger) + ', VENC: ' +
        DateToStr(CdsContas.FieldByName('DATA_VENC').AsDateTime);
      aOrigem := 'CONTAS A RECEBER';
      aDC := 'C';
    end;
    // verifica se tem caixa aberto
    if DmWorkCom.VerificaCaixaAberto(aNomeOperador, aDataCaixa) then
    begin
      aDataAtual := StrToDate(FormatDateTime('dd/mm/yyyy', Now));
      if aDataCaixa = aDataAtual then
      begin
        Grava_MovCaixa(aHistorico, aOrigem, aDC, CdsContas.FieldByName('VALOR_QUITATO').AsCurrency);
      end;
    end;
  end;
  // se estiver removendo a quita��o, verifica se tem conta adicional
  if sRemoveQui = 1 then
  begin
    VerificaContaAdicionalLancada(DmWorkCom.CdsContas.FieldByName('ID').AsInteger);
    //
    if sTipoConta = 1 then
    begin
      aHistorico := 'ESTORNO DE CONTA No' + CdsContas.FieldByName('NUMCONTA').AsString + '/' + IntToStr(CdsContas.FieldByName('SERIE').AsInteger) + 'VENC: ' +
        DateToStr(CdsContas.FieldByName('DATA_VENC').AsDateTime);
      aOrigem := 'CONTAS A PAGAR';
      aDC := 'C';
    end
    else if sTipoConta = 0 then
    begin
      aHistorico := 'ESTORNO DE CONTA No ' + CdsContas.FieldByName('NUMCONTA').AsString + '/' + IntToStr(CdsContas.FieldByName('SERIE').AsInteger) + ', VENC: '
        + DateToStr(CdsContas.FieldByName('DATA_VENC').AsDateTime);
      aOrigem := 'CONTAS A RECEBER';
      aDC := 'D';
    end;
    // verifica se tem caixa aberto
    if DmWorkCom.VerificaCaixaAberto(aNomeOperador, aDataCaixa) then
    begin
      aDataAtual := StrToDate(FormatDateTime('dd/mm/yyyy', Now));
      if aDataCaixa = aDataAtual then
      begin
        Grava_MovCaixa(aHistorico, aOrigem, aDC, CdsContas.FieldByName('VALOR_QUITATO').AsCurrency);
      end;
    end;
  end;

end;

procedure TDmWorkCom.CdsComprasItensBeforePost(DataSet: TDataSet);
begin
  // grava preco de venda atualizado
  if sAtualizaPrecos = 'S' then
  begin
    if Abs(DataSet.FieldByName('VALOR').AsCurrency - DmProdutos.CdsProdutos.FieldByName('PRECO_COMPRA').AsCurrency) > 0.01 then
    begin
      Grava_PrecoProduto(DataSet.FieldByName('idproduto').AsInteger, 0, DataSet.FieldByName('VALOR').AsCurrency);
    end;
  end;
  // grava dados na tabela produto_fornecedor
  GravaDadosCompraFornecedor(DataSet.FieldByName('VALOR').AsCurrency, CdsCompras.FieldByName('DATA_EMISSAO').AsDateTime,
    DataSet.FieldByName('idproduto').AsInteger, CdsCompras.FieldByName('IDFORNECEDOR').AsInteger);

end;

procedure TDmWorkCom.DataModuleDestroy(Sender: TObject);
begin
  PAFECF.DestruaInstancia;
  sCdsInfoCupomPosto.Free;

end;

function TDmWorkCom.InsereItemCupom(pQuant, pAcres, pDesc: Double; pPercentual: Boolean = false): Boolean;
var
  aDesc, aAcres: Double;
begin
  aDesc := pDesc;
  aAcres := pAcres;
  Result := true;
  try
    if pPercentual then
    begin
      aDesc := ((DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat * pDesc) / 100);
      aAcres := ((DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat * pAcres) / 100);
    end;
    //
    if ((pQuant * DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat) <= pDesc) then
    begin
      ShowMessage('O desconto deve ser menor que o pre�o total!');
      Result := false;
      Exit;
    end;
    if (pAcres > (pQuant * DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat)) then
    begin
      ShowMessage('O acrescimo n�o pode exceder � 100% do total!');
      Result := false;
      Exit;
    end;
    //
    with CdsPedidoItens do
    begin
      Append;
      FieldByName('IDPRODUTO').AsInteger := DmProdutos.CdsProdutos.FieldByName('ID').AsInteger;
      FieldByName('QUANTIDADE').AsFloat := pQuant;
      FieldByName('VALOR').AsFloat := TruncaValor(DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat, PAFECF.gDecimais);
      FieldByName('DESCONTO').AsFloat := TruncaValor(aDesc, DmWorkCom.PAFECF.gDecimais);
      FieldByName('ACRESCIMO').AsFloat := TruncaValor(aAcres, DmWorkCom.PAFECF.gDecimais);
      FieldByName('EAN13').AsString := DmProdutos.CdsProdutos.FieldByName('EAN13').AsString;
      FieldByName('DESCRICAO').AsString := DmProdutos.CdsProdutos.FieldByName('DESCRICAO').AsString;
      if sAbastecimento.ID > 0 then
      begin
        FieldByName('ID_ABASTECIMENTO').AsInteger := sAbastecimento.ID;
        FieldByName('VALOR').AsFloat := sAbastecimento.Preco_Unit;
        FieldByName('VALOR_TOTAL').AsFloat := sAbastecimento.Valor_Total;
        FieldByName('ID_BICO').AsInteger := sAbastecimento.ID_Tanque;
        FieldByName('ID_BOMBA').AsInteger := sAbastecimento.ID_Bomba;
        FieldByName('ID_TANQUE').AsInteger := sAbastecimento.ID_Tanque;
        FieldByName('EI').AsFloat := sAbastecimento.Encerrante - sAbastecimento.Litros;
        FieldByName('EF').AsFloat := sAbastecimento.Encerrante;
        // altera o status do abastecimento
        DmPosto.AlteraStatusAbastecimento(sAbastecimento.ID, 4, CdsPedidosCOO.AsInteger, '', CdsPedidosDATA_ENTREGA.AsDateTime,
          CdsPedidosHORA_ENTREGA.AsDateTime);
      end;
    end;
    Grava_Dados(CdsPedidoItens);
    // se for abastecimento grava o Pedido como tal
    if sAbastecimento.ID > 0 then
    begin
      CdsPedidos.Edit;
      CdsPedidos.FieldByName('ABASTECIMENTO').AsString := 'S';
      Grava_Dados(CdsPedidos);
    end;
    // limpa os dados do abastecimento para receber novo
    sAbastecimento.ID := 0;
    sAbastecimento.Num_Bico := '';
    sAbastecimento.Data := 0;
    sAbastecimento.Hora := 0;
    sAbastecimento.Encerrante := 0;
    sAbastecimento.Litros := 0;
    sAbastecimento.Preco_Unit := 0;
    sAbastecimento.Valor_Total := 0;
    sAbastecimento.ID_Bico := 0;
    sAbastecimento.ID_Bomba := 0;
    sAbastecimento.ID_Tanque := 0;
  except
    Result := false;
  end;
end;

function TDmWorkCom.RegistraItemECF(sQuant: String): Boolean;
var
  aAliquota, aDescricao, aTipoQuant, tipoDescAcre: String;
  aQuantidade, aValor, aDesconto: Double;
begin
  Result := true;
  try
    // Define tributa��o
    // 0 - Isento
    // 1 - Sub. Tribut�ria
    // 2 - Tributado
    // 3 - N�o Tributado
    // 4 - Servi�o
    aAliquota := '';
    if (DmProdutos.CdsProdutos.FieldByName('tributacao').AsInteger = 2) or (DmProdutos.CdsProdutos.FieldByName('tributacao').AsInteger = 4) then
    begin
      aAliquota := FormatFloat('0.00', DmProdutos.CdsProdutos.FieldByName('aliquota_icms').AsFloat);
      aAliquota := ZeroEsquerda(aAliquota, 5);
    end
    else if DmProdutos.CdsProdutos.FieldByName('tributacao').AsInteger = 1 then
    begin
      if DmWorkCom.PAFECF.gModeloECF <> 1 then
        aAliquota := 'FF'
      else if DmWorkCom.PAFECF.gModeloECF = 1 then
        aAliquota := 'F';
    end
    else if DmProdutos.CdsProdutos.FieldByName('tributacao').AsInteger = 0 then
    begin
      if DmWorkCom.PAFECF.gModeloECF <> 1 then
        aAliquota := 'II'
      else if DmWorkCom.PAFECF.gModeloECF = 1 then
        aAliquota := 'I';
    end
    else if DmProdutos.CdsProdutos.FieldByName('tributacao').AsInteger = 3 then
    begin
      if DmWorkCom.PAFECF.gModeloECF <> 1 then
        aAliquota := 'NN'
      else if DmWorkCom.PAFECF.gModeloECF = 1 then
        aAliquota := 'N';
    end;
    if aAliquota = '' then
    begin
      MessageDlg('Aliquota do produto n�o esta definida!!!', mtWarning, [mbOK], 0);
      Result := false;
      Abort;
    end;
    // Define Tipo de Produto e quantidade
    aQuantidade := StrToFloat(sQuant);
    if DmProdutos.CdsProdutos.FieldByName('FRACIONADO').AsString = 'S' then
    begin
      aTipoQuant := 'F';
    end
    else
    begin
      aTipoQuant := 'I';
    end;
    // define descricao
    aDescricao := Trim(Copy(DmProdutos.CdsProdutos.FieldByName('descricao').AsString, 1, 29));
    // define valor
    aValor := TruncaValor(CdsPedidoItens.FieldByName('valor').AsFloat, PAFECF.gDecimais);
    // verifica desconto
    tipoDescAcre := 'D';
    if (CdsPedidoItens.FieldByName('desconto').AsFloat > 0) then
    begin
      tipoDescAcre := 'D';
      aDesconto := TruncaValor((CdsPedidoItens.FieldByName('desconto').AsFloat), 2);
    end;
    if (CdsPedidoItens.FieldByName('acrescimo').AsFloat > 0) then
    begin
      tipoDescAcre := 'A';
      aDesconto := TruncaValor((CdsPedidoItens.FieldByName('acrescimo').AsFloat), 2);
    end;
    //
    if not DmWorkCom.PAFECF.ImprimeItemECF(DmProdutos.CdsProdutos.FieldByName('Unidade').AsString, DmProdutos.CdsProdutos.FieldByName('ean13').AsString,
      aDescricao, aAliquota, aTipoQuant, tipoDescAcre, aQuantidade, aValor, aDesconto) then
    begin
      Result := false;
      Abort;
    end;
  except
    Result := false;
  end;

end;

function TDmWorkCom.RetornaTotalCupom(pIDCupom: Integer): Double;
var
  Query: TFDQuery;
begin
  Result := 0;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := ConexaoDados;
    Query.SQL.Clear;
    Query.SQL.Add('select pedido_itens.valor_total as valor from pedido_itens');
    Query.SQL.Add('where pedido_itens.idpedido = :pID');
    Query.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
    Query.Params.ParamByName('pID').AsInteger := pIDCupom;
    Query.Open;
    while not Query.Eof do
    begin
      Result := Result + TruncaValor(Query.FieldByName('valor').AsFloat, PAFECF.gDecimais);
      Query.Next;
    end;
    Query.Close;
  finally
    Query.Free;
  end;

end;

function TDmWorkCom.RetornaTotalCupomSemDesconto(pIDCupom: Integer): Double;
var
  Query: TFDQuery;
begin
  Result := 0;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := ConexaoDados;
    Query.SQL.Clear;
    Query.SQL.Add('select sum(pedido_itens.valor*pedido_itens.quantidade) as valor from pedido_itens');
    Query.SQL.Add('where pedido_itens.idpedido = :pID');
    Query.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
    Query.Params.ParamByName('pID').AsInteger := pIDCupom;
    Query.Open;
    while not Query.Eof do
    begin
      Result := Result + TruncaValor(Query.FieldByName('valor').AsFloat, PAFECF.gDecimais);
      Query.Next;
    end;
    Query.Close;
  finally
    Query.Free;
  end;

end;

// esta fun��o retorna a menor diferen�a do percentual de desconto.
function TDmWorkCom.RetornaAMenorDiferencaDoPercDesconto(pIDCupom: Integer): Double;
var
  Query: TFDQuery;
begin
  Result := 0;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := ConexaoDados;
    Query.SQL.Clear;
    Query.SQL.Add
      ('SELECT MIN(PRODUTOS.PERC_DESC - ((PEDIDO_ITENS.DESCONTO / (PEDIDO_ITENS.VALOR * PEDIDO_ITENS.QUANTIDADE)) * 100)) AS VALOR FROM PEDIDO_ITENS INNER JOIN PRODUTOS ON (PEDIDO_ITENS.IDPRODUTO = PRODUTOS.ID)');
    Query.SQL.Add('where pedido_itens.idpedido = :pID');
    Query.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
    Query.Params.ParamByName('pID').AsInteger := pIDCupom;
    Query.Open;
    while not Query.Eof do
    begin
      Result := Result + TruncaValor(Query.FieldByName('valor').AsFloat, PAFECF.gDecimais);
      Query.Next;
    end;
    Query.Close;
  finally
    Query.Free;
  end;

end;

procedure TDmWorkCom.CarregaDadosEmpresa;
begin
  sTipoEmp := CdsConfigTIPO_EMPRESA.AsInteger;
  sIndiceTijolo := CdsConfigINDICE_TIJOLO.AsFloat;
  sIndiceIsopor := CdsConfigINDICE_ISOPOR.AsFloat;
  sIndiceOutros := CdsConfigINDICE_OUTROS.AsFloat;
  sGrupoPadrao := CdsConfigGRUPO_PADRAO.AsInteger;
  sTipoComissao := CdsConfigTIPO_COMISSAO.AsInteger;
  sMargemPadrao := CdsConfigMARGEM_LUCRO.AsFloat;
  sTipoCalcPerc := CdsConfigTIPO_CALC_PERC.AsInteger;
  sEditaCliPed := CdsConfigPED_EDITAR_CLI.AsString;
  sNomeEmpresa := CdsEmpresaRAZAO_SOCIAL.AsString;
  sEstoqueNegativo := CdsConfigESTOQUE_NEGATICO.AsString;
  sLancCaixa := CdsConfigCONF_LANC_CAIXA.AsString;
  sPrecoNegativo := CdsConfigPERMITIRVALORNEGATIVO.AsString;
  sPedidoSeq := CdsConfigNUMPED_SEQ.AsString;
  sAtualizaPrecos := CdsConfigATUALIZAR_PRECO.AsString;
  sContEstComp := CdsConfigCONTROLAR_ESTCOMP.AsString;
  sDiasAgenda := CdsConfigDIAS_AGENDA.AsInteger;
  sModeloPedido := CdsConfigMODELO_PEDIDO.AsInteger;
  sCodReceita := CdsConfigCOD_RECEITA.AsString;
  sGerencal_NFCe := CdsConfigGERENCIAL_NFCE.AsString;
  sPostoAutomatico := CdsConfigABRE_POSTO_AUTO.AsString;
  sVerificaGTIN := CdsConfigVERIFICA_GTIN.AsString;
  sGerarGTIN := CdsConfigGERAR_GTIN.AsString;
  sDescMaximo := CdsConfigDESC_MAXIMO.AsFloat;
  sIDClassCompra := CdsConfigID_CLASS_COMPRA.AsInteger;
  sIDFPCompra := CdsConfigID_FP_COMPRA.AsInteger;
  sAliqISS := CdsConfigALIQ_ISS.AsFloat;
  sNFSeSenha := CdsConfigNFSE_SENHA.AsString;
  sNFSeFrase := CdsConfigNFSE_FRASE.AsString;
  // Configura��es da NFe/NFCe
  sFormas := CdsConfigNFE_FORMA_EMISS.AsInteger;
  sVersaoDF := CdsConfigNFE_VERSAODF.AsInteger;
  sLogoMarca := CdsConfigNFE_PATH_LOGOMARCA.AsString;
  sSalvaArq := false;
  if CdsConfigNFE_SALVAR_ARQ.AsString = 'T' then
    sSalvaArq := true;
  sPathArq := CdsConfigNFE_PATH_ARQUIVO.AsString;
  sCertificado := CdsConfigNFE_PATH_CERTF.AsString;
  sSenha := CdsConfigNFE_SENHA_CERTF.AsString;
  sSerial := CdsConfigNFE_SERIE_CERTF.AsString;
  sUFWS := CdsConfigNFE_WS_UF.AsString;
  sUFWSAux := CdsConfigNFE_WS_UF_AUX.AsString;
  sAmbiente := CdsConfigNFE_WS_AMBIENTE.AsInteger;
  sHost := CdsConfigNFE_WS_HOST.AsString;
  sPorta := CdsConfigNFE_WS_PORTA.AsString;
  sUsuario := CdsConfigNFE_WS_USUARIO.AsString;
  sSenhaWS := CdsConfigNFE_WS_SENHA.AsString;
  sWSVisualizar := CdsConfigNFE_WS_SENHA.AsString;
  sSMPTHost := CdsConfigNFE_EMAIL_HOST.AsString;
  sSMTPPort := CdsConfigNFE_EMAIL_PORTA.AsString;
  sSMTPUsu := CdsConfigNFE_EMAIL_USUARIO.AsString;
  sSMTPPass := CdsConfigNFE_EMAIL_SENHA.AsString;
  sToken := CdsConfigNFE_TOKEN.AsString;
  sIDToken := CdsConfigNFE_IDTOKEN.AsString;
  sUsarWSAux := CdsConfigNFE_USAR_AUX_NFCE.AsString;
  sVisualizaDanfe := CdsConfigNFE_DANFE_PREVIEW.AsString;
  sPreviewNFe := CdsConfigPREVIEW_NFE.AsString;
  sExibeMsgWS := CdsConfigEXIBIR_MSG_WS.AsString;
  sGradeProdutos := CdsConfigGRADE_PRODUTOS.AsString;
  sClonarProdutos := CdsConfigCLONAR_PRODUTO.AsString;
  // Configura��es SAT
  sPATH_ARQ_LOG_SAT := CdsConfigPATH_ARQ_LOG_SAT.AsString;
  sNOME_DLL_SAT := CdsConfigNOME_DLL_SAT.AsString;
  sCOD_ATV_SAT := CdsConfigCOD_ATV_SAT.AsString;
  sCOD_UF_SAT := CdsConfigCOD_UF_SAT.AsString;
  sAMBIENTE_SAT := CdsConfigAMBIENTE_SAT.AsInteger;
  sSALVAR_CFES := CdsConfigSALVAR_CFES.AsString;
  sSALVAR_CEF_CANC := CdsConfigSALVAR_CEF_CANC.AsString;
  sSALVAR_ENVIO_SAT := CdsConfigSALVAR_ENVIO_SAT.AsString;
  sSAT_UTF8 := CdsConfigSAT_UTF8.AsString;
  sSAT_FORMAT_XML := CdsConfigSAT_FORMAT_XML.AsString;
  sSAT_PAG_CODIGO := CdsConfigSAT_PAG_CODIGO.AsInteger;
  sSAT_VERSAO := CdsConfigSAT_VERSAO.AsString;
  sSAT_SEPARAR_CNPJ := CdsConfigSAT_SEPARAR_CNPJ.AsString;
  sSAT_SEPARAR_MES := CdsConfigSAT_SEPARAR_MES.AsString;
  sSAT_TIPO_REDE := CdsConfigSAT_TIPO_REDE.AsInteger;
  sSAT_PROTOCOLO_REDE := CdsConfigSAT_PROTOCOLO_REDE.AsInteger;
  sSAT_WIFI_SSID := CdsConfigSAT_WIFI_SSID.AsString;
  sSAT_WIFI_SEG := CdsConfigSAT_WIFI_SEG.AsInteger;
  sSAT_WIFI_SENHA := CdsConfigSAT_WIFI_SENHA.AsString;
  sSAT_PPPoE_USER := CdsConfigSAT_PPPOE_USER.AsString;
  sSAT_PPPoE_LOGIN := CdsConfigSAT_PPPOE_LOGIN.AsString;
  sSAT_REDE_PROXY := CdsConfigSAT_REDE_PROXY.AsInteger;
  sSAT_REDE_IP := CdsConfigSAT_REDE_IP.AsString;
  sSAT_REDE_PORTA := CdsConfigSAT_REDE_PORTA.AsInteger;
  sSAT_REDE_USER := CdsConfigSAT_REDE_USER.AsString;
  sSAT_REDE_LOGIN := CdsConfigSAT_REDE_LOGIN.AsString;
  sSAT_IMP_LARGURA := CdsConfigSAT_IMP_LARGURA.AsInteger;
  sSAT_IMP_TOPO := CdsConfigSAT_IMP_TOPO.AsInteger;
  sSAT_IMP_FUNDO := CdsConfigSAT_IMP_FUNDO.AsInteger;
  sSAT_IMP_ESQUERDA := CdsConfigSAT_IMP_ESQUERDA.AsInteger;
  sSAT_IMP_DIREITA := CdsConfigSAT_IMP_DIREITA.AsInteger;
  sSAT_IMP_PREVIEW := CdsConfigSAT_IMP_PREVIEW.AsString;
  sSAT_IMP_NOME := CdsConfigSAT_IMP_NOME.AsString;
  sIPFIX_IP := CdsConfigIPFIX_IP.AsString;
  sIPFIX_MASK := CdsConfigIPFIX_MASK.AsString;
  sIPFIX_GATEWAY := CdsConfigIPFIX_GATEWAY.AsString;
  sIPFIX_DNS1 := CdsConfigIPFIX_DNS1.AsString;
  sIPFIX_DNS2 := CdsConfigIPFIX_DNS2.AsString;
  sSAT_MODELO := CdsConfigSAT_MODELO.AsInteger;
  sSAT_IMPRESSORA := CdsConfigSAT_IMPRESSORA.AsInteger;
  sSAT_POS_MODELO := CdsConfigSAT_POS_MODELO.AsInteger;
  sSAT_POS_PAGCODIGO := CdsConfigSAT_POS_PAGCODIGO.AsInteger;
  sSAT_POS_PORTA := CdsConfigSAT_POS_PORTA.AsString;
  sSAT_POS_COLUNAS := CdsConfigSAT_POS_COLUNAS.AsInteger;
  sSAT_POS_LINHAS := CdsConfigSAT_POS_LINHAS.AsInteger;
  sSAT_POS_ESPACO := CdsConfigSAT_POS_ESPACO.AsInteger;
  sSAT_QRCODE := CdsConfigSAT_QRCODE.AsString;
  sSAT_IMPUMALINHA := CdsConfigSAT_IMPUMALINHA.AsString;
  sSAT_EXT_RESUMIDO := CdsConfigSAT_EXT_RESUMIDO.AsString;
  // gerador de relatorio
  spath_db := CdsConfigSCPATH_DB.AsString;
  sUsuScribes := CdsConfigSCUSUARIO.AsString;
  sPassScribes := CdsConfigSCPASSWORD.AsString;
  sip_srv := CdsConfigSCIP_SRV.AsString;
  spath_rel := CdsConfigSCPATH_REL.AsString;
  sPortaScribes := CdsConfigSCPORTA.AsString;
  sversao_fb := CdsConfigSCVERSAO_FB.AsString;
  spath_scribes := CdsConfigSCPATH_SCRIBES.AsString;
  // segunda
  sComIntSeg := true;
  if CdsConfigCOMISSAO_INTEGRAL_SEG.AsString = 'F' then
    sComIntSeg := false;
  // terca
  sComIntTer := true;
  if CdsConfigCOMISSAO_INTEGRAL_TER.AsString = 'F' then
    sComIntTer := false;
  // quarta
  sComIntQua := true;
  if CdsConfigCOMISSAO_INTEGRAL_QUA.AsString = 'F' then
    sComIntQua := false;
  // quinta
  sComIntQui := true;
  if CdsConfigCOMISSAO_INTEGRAL_QUI.AsString = 'F' then
    sComIntQui := false;
  // sexta
  sComIntSex := true;
  if CdsConfigCOMISSAO_INTEGRAL_SEX.AsString = 'F' then
    sComIntSex := false;
  // sabado
  sComIntSab := true;
  if CdsConfigCOMISSAO_INTEGRAL_SAB.AsString = 'F' then
    sComIntSab := false;
  // domingo
  sComIntDom := true;
  if CdsConfigCOMISSAO_INTEGRAL_DOM.AsString = 'F' then
    sComIntDom := false;

  // transmiti os paremetros do SAT para o componente
  Dados_DadosTecnicos;
  DmAcBr.sCodAtivacao := sCOD_ATV_SAT;
  DmAcBr.sSwHAssinatura := CdsDadosTecnicosSWH_ASSINATURA.AsString;
  //
  if Dados_Contador then
    sCNPJContador := CdsContadorCNPJ.AsString;

end;

function TDmWorkCom.VerificaDadosProduto: Boolean;
begin
  Result := true;
  if (DmProdutos.CdsProdutos.RecordCount > 0) then
  begin
    if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').IsNull) then
    begin
      MessageDlg('Produto sem classifica��o. Verifique!!!', mtWarning, [mbOK], 0);
      Result := false;
    end;
    if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 2) or (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 4) then
    begin
      if DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat <= 0 then
      begin
        MessageDlg('� necess�rio cadastrar a aliquota do produto!!!', mtWarning, [mbOK], 0);
        Result := false;
      end;
    end;
    // verifica valor de venda
    if DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat <= 0 then
    begin
      MessageDlg('Produto sem pre�o de venda. Verifique!!!', mtWarning, [mbOK], 0);
      Result := false;
    end
  end;
end;

procedure TDmWorkCom.Dsp60MGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'REGISTRO60M';

end;

procedure TDmWorkCom.Dsp60AGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'REGISTRO60A';

end;

procedure TDmWorkCom.DspControleDocGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTROLEDOCECF';

end;

function TDmWorkCom.Dados_60A(pID60m: Integer): Boolean;
begin
  Cds60A.Close;
  Cds60A.Params.ParamByName('pID60m').AsInteger := pID60m;
  Cds60A.Open;
  Result := false;
  if Cds60A.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_60M(pID: Integer): Boolean;
begin
  Cds60M.Close;
  Cds60M.Params.Clear;
  Qry60M.Close;
  Qry60M.SQL.Clear;
  Qry60M.SQL.Add('select * from registro60m');
  Qry60M.SQL.Add('where registro60m.id = :pID');
  // parametros
  Cds60M.FetchParams;
  Cds60M.Params.ParamByName('pID').AsInteger := pID;
  Cds60M.Open;
  Result := false;
  if Cds60M.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_60M(pDatai, pDataf: TDateTime; pCaixa: String = ''; pCRZ: Integer = 0): Boolean;
var
  AuxDatai, AuxDataF: string;
begin
  AuxDatai := FormatDateTime('MM/DD/YYYY', pDatai);
  AuxDataF := FormatDateTime('MM/DD/YYYY', pDataf);
  Cds60M.Close;
  Cds60M.Params.Clear;
  Qry60M.Close;
  Qry60M.SQL.Clear;
  Qry60M.SQL.Add('select * from registro60m');
  if pCRZ = 0 then
  begin
    Qry60M.SQL.Add('where registro60m.data_movimento >= ' + QuotedStr(AuxDatai));
    Qry60M.SQL.Add('and registro60m.data_movimento <= ' + QuotedStr(AuxDataF));
    if pCaixa <> '' then
      Qry60M.SQL.Add('and registro60m.caixa = :pCaixa');
  end
  else
  begin
    Qry60M.SQL.Add('where registro60m.contador_reducao = ' + IntToStr(pCRZ));
    Qry60M.SQL.Add('and registro60m.seriaecf = ' + QuotedStr(DmAcBr.ACBrECF1.NumSerie));
  end;
  // parametros
  Cds60M.FetchParams;
  if (pCRZ = 0) and (pCaixa <> '') then
    Cds60M.Params.ParamByName('pCaixa').AsString := pCaixa;
  Cds60M.Open;
  Result := false;
  if Cds60M.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_DocECF(pID: Integer): Boolean;
begin
  CdsControleDoc.Close;
  CdsControleDoc.Params.Clear;
  QryControleDoc.Close;
  QryControleDoc.SQL.Clear;
  QryControleDoc.SQL.Add('select * from controledocecf');
  QryControleDoc.SQL.Add('where controledocecf.id = :pID');
  //
  CdsControleDoc.FetchParams;
  CdsControleDoc.Params.ParamByName('pID').AsInteger := pID;
  CdsControleDoc.Open;
  Result := false;
  if CdsControleDoc.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_DocECF(pDatai, pDataf: TDateTime; pCaixa: String = ''): Boolean;
var
  Datai, Dataf: String;
begin
  Datai := FormatDateTime('MM/DD/YYYY', pDatai);
  Dataf := FormatDateTime('MM/DD/YYYY', pDataf);
  // Datai := FormatDateTime('MM/DD/YYYY',pDatai)+':00:00:01';
  // Dataf := FormatDateTime('MM/DD/YYYY',pDataf)+':23:59:59';
  CdsControleDoc.Close;
  CdsControleDoc.Params.Clear;
  QryControleDoc.Close;
  QryControleDoc.SQL.Clear;
  QryControleDoc.SQL.Add('select * from controledocecf');
  QryControleDoc.SQL.Add('where controledocecf.data >= ' + QuotedStr(Datai));
  QryControleDoc.SQL.Add('and controledocecf.data <= ' + QuotedStr(Dataf));
  if pCaixa <> '' then
    QryControleDoc.SQL.Add('and controledocecf.caixa = ' + QuotedStr(pCaixa));
  //
  CdsControleDoc.FetchParams;
  // CdsControleDoc.Params.ParamByName('pDatai').AsDateTime := pDatai;
  // CdsControleDoc.Params.ParamByName('pDataf').AsDateTime := pDataf;
  // CdsControleDoc.Params.ParamByName('pCaixa').AsString   := pCaixa;
  CdsControleDoc.Open;
  Result := false;
  if CdsControleDoc.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_61(pDatai, pDataf: TDateTime): Boolean;
var
  aDatai, aDataf: String;
begin
  aDatai := FormatDateTime('MM/DD/YYYY', pDatai);
  aDataf := FormatDateTime('MM/DD/YYYY', pDataf);
  CdsReg61.Close;
  CdsReg61.Params.Clear;
  QryReg61.Close;
  QryReg61.SQL.Clear;
  QryReg61.SQL.Add('select * from registro61');
  QryReg61.SQL.Add('where registro61.data_emissao >= ' + QuotedStr(aDatai));
  QryReg61.SQL.Add('and registro61.data_emissao <= ' + QuotedStr(aDataf));
  QryReg61.SQL.Add('and registro61.caixa = ' + QuotedStr(PAFECF.gCaixa));
  //
  CdsReg61.FetchParams;
  CdsReg61.Open;
  Result := false;
  if CdsReg61.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.ProcessaRegistro10(pDatai, pDataf: TDateTime; pEstrutura, pNatureza, pFinalidade: String);
var
  Linha: String;
begin
  Linha := '10';
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('CNPJ_CPF').AsString), 14);
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString, 1, 14);
  Linha := Linha + AlinhaTXT(Trim(Copy(CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString, 1, 35)), 1, 35);
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('CIDADE').AsString, 1, 30);
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('UF').AsString, 1, 2);
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('TELEFAX').AsString), 10);
  Linha := Linha + FormatDateTime('YYYYMMDD', pDatai);
  Linha := Linha + FormatDateTime('YYYYMMDD', pDataf);
  Linha := Linha + pEstrutura;
  Linha := Linha + pNatureza;
  Linha := Linha + pFinalidade;
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.ProcessaRegistro11;
var
  Linha: String;
begin
  Linha := '11';
  Linha := Linha + AlinhaTXT(Copy(CdsEmpresa.FieldByName('ENDERECO').AsString, 1, 34), 1, 34);
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('NUMERO').AsString), 5);
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('COMPLEMENTO').AsString, 1, 22);
  Linha := Linha + AlinhaTXT(Copy(CdsEmpresa.FieldByName('BAIRRO').AsString, 1, 15), 1, 15);
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('CEP').AsString), 8);
  Linha := Linha + AlinhaTXT(Copy(CdsEmpresa.FieldByName('CONTATO').AsString, 1, 28), 1, 28);
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('TELEFONE').AsString), 12);
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.ProcessaRegistro60m(pDatai, pDataf: TDateTime; p60d, p60i, p60r: Boolean);
var
  Linha, aux, AnoMes: String;
  atotal: Integer;
  aValor: Double;
  Q: TFDQuery;
  Dia, Mes, Ano: Word;
begin
  atotal := 0;
  Q := TFDQuery.Create(nil);
  Q.Connection := ConexaoDados;
  //
  DmWorkCom.Dados_60M(pDatai, pDataf);
  while not DmWorkCom.Cds60M.Eof do
  begin
    if (DmWorkCom.Cds60M.FieldByName('COO_FINAL').AsInteger > 0) and (DmWorkCom.Cds60M.FieldByName('VENDA_BRUTA').AsFloat > 0) then
    begin
      Linha := '60M';
      Linha := Linha + FormatDateTime('YYYYMMDD', DmWorkCom.Cds60M.FieldByName('DATA_EMISSAO').AsDateTime);
      Linha := Linha + AlinhaTXT(DmWorkCom.Cds60M.FieldByName('SERIAECF').AsString, 1, 20);
      Linha := Linha + AlinhaTXT(DmWorkCom.Cds60M.FieldByName('CAIXA').AsString, 1, 3);
      Linha := Linha + '2D';
      Linha := Linha + ZeroEsquerda(IntToStr(DmWorkCom.Cds60M.FieldByName('COO_INICIAL').AsInteger), 6);
      Linha := Linha + ZeroEsquerda(IntToStr(DmWorkCom.Cds60M.FieldByName('COO_FINAL').AsInteger), 6);
      Linha := Linha + ZeroEsquerda(IntToStr(DmWorkCom.Cds60M.FieldByName('CONTADOR_REDUCAO').AsInteger), 6);
      Linha := Linha + ZeroEsquerda(IntToStr(DmWorkCom.Cds60M.FieldByName('CONTADOR_REINICIO').AsInteger), 3);
      aux := FormatFloat('0.00', DmWorkCom.Cds60M.FieldByName('VENDA_BRUTA').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 16);
      aux := FormatFloat('0.00', DmWorkCom.Cds60M.FieldByName('GRANDE_TOTAL').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 16);
      Linha := Linha + AlinhaTXT('', 1, 37);
      writeLn(sArquivo, Linha);
      Inc(atotal);
      // processa registro 60a
      DmWorkCom.Dados_60A(Cds60M.FieldByName('ID').AsInteger);
      while not DmWorkCom.Cds60A.Eof do
      begin
        if DmWorkCom.Cds60A.FieldByName('TOTALIZADOR').AsFloat > 0 then
        begin
          Linha := '60A';
          Linha := Linha + FormatDateTime('YYYYMMDD', DmWorkCom.Cds60M.FieldByName('DATA_EMISSAO').AsDateTime);
          Linha := Linha + AlinhaTXT(DmWorkCom.Cds60M.FieldByName('SERIAECF').AsString, 1, 20);
          Linha := Linha + AlinhaTXT(DmWorkCom.Cds60A.FieldByName('ALIQUOTA_TRIB').AsString, 1, 4);
          aux := FormatFloat('0.00', DmWorkCom.Cds60A.FieldByName('TOTALIZADOR').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 12);
          Linha := Linha + AlinhaTXT('', 1, 79);
          writeLn(sArquivo, Linha);
          Inc(atotal);
        end;
        DmWorkCom.Cds60A.Next;
      end;
      // registro 60D
      if p60d then
      begin
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('select produtos.ean13,produtos.aliquota_icms,pedido.data_pedido,');
        Q.SQL.Add('produtos.tributacao,');
        Q.SQL.Add('sum(pedido_itens.quantidade) as quantidade,');
        Q.SQL.Add('sum((pedido_itens.quantidade*pedido_itens.valor) - pedido_itens.desconto) as valor');
        Q.SQL.Add('from produtos');
        Q.SQL.Add('left outer join pedido_itens on produtos.id = pedido_itens.idproduto');
        Q.SQL.Add('left outer join pedido on pedido.id = pedido_itens.idpedido');
        Q.SQL.Add('where pedido.data_pedido = :pData');
        Q.SQL.Add('and pedido.cancelado = ' + QuotedStr('N'));
        Q.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
        Q.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
        Q.SQL.Add('and pedido.caixa = ' + QuotedStr(DmWorkCom.PAFECF.gCaixa));
        Q.SQL.Add('group by produtos.ean13,produtos.aliquota_icms,pedido.data_pedido,produtos.tributacao');
        Q.Params.ParamByName('pData').AsDate := Cds60M.FieldByName('DATA_MOVIMENTO').AsDateTime;
        Q.Open;
        while not Q.Eof do
        begin
          Linha := '60D';
          Linha := Linha + FormatDateTime('YYYYMMDD', Q.FieldByName('data_pedido').AsDateTime);
          Linha := Linha + AlinhaTXT(DmWorkCom.Cds60M.FieldByName('SERIAECF').AsString, 1, 20);
          Linha := Linha + AlinhaTXT(Q.FieldByName('EAN13').AsString, 1, 14);
          aux := FormatFloat('0.000', Q.FieldByName('quantidade').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 13);
          aux := FormatFloat('0.00', Q.FieldByName('valor').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 16);
          aux := FormatFloat('0.00', Q.FieldByName('valor').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 16);
          // tributa��o
          case Q.FieldByName('tributacao').AsInteger of
            0:
              aux := 'I';
            1:
              aux := 'F';
            2:
              begin
                aux := FormatFloat('0.00', Q.FieldByName('aliquota_icms').AsFloat);
                aux := FiltraNumero(aux);
              end;
            3:
              aux := 'N';
            4:
              begin
                aux := FormatFloat('0.00', Q.FieldByName('aliquota_icms').AsFloat);
                aux := FiltraNumero(aux);
              end;
          end;
          if (Q.FieldByName('tributacao').AsInteger = 2) or (Q.FieldByName('tributacao').AsInteger = 4) then
            Linha := Linha + ZeroEsquerda(aux, 4)
          else
            Linha := Linha + AlinhaTXT(aux, 1, 4);
          //
          aux := FormatFloat('0.00', (Q.FieldByName('valor').AsFloat * Q.FieldByName('aliquota_icms').AsFloat) / 100);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 13);
          Linha := Linha + AlinhaTXT('', 1, 19);
          writeLn(sArquivo, Linha);
          Inc(atotal);
          Q.Next;
        end;
        Q.Close;
      end;
      // registro 60I
      if p60i then
      begin
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('select pedido.data_pedido,pedido.coo,pedido_itens.num_item,produtos.ean13,');
        Q.SQL.Add('pedido_itens.quantidade,pedido_itens.valor,produtos.aliquota_icms,');
        Q.SQL.Add('pedido_itens.desconto,produtos.tributacao from produtos');
        Q.SQL.Add('left outer join pedido_itens on produtos.id = pedido_itens.idproduto');
        Q.SQL.Add('left outer join pedido on pedido.id = pedido_itens.idpedido');
        Q.SQL.Add('where pedido.data_pedido = :pData');
        Q.SQL.Add('and pedido.cancelado = ' + QuotedStr('N'));
        Q.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
        Q.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
        Q.SQL.Add('and pedido.caixa = ' + QuotedStr(DmWorkCom.PAFECF.gCaixa));
        Q.SQL.Add('order by pedido.coo');
        Q.Params.ParamByName('pData').AsDate := Cds60M.FieldByName('DATA_MOVIMENTO').AsDateTime;
        Q.Open;
        while not Q.Eof do
        begin
          Linha := '60I';
          Linha := Linha + FormatDateTime('YYYYMMDD', Q.FieldByName('data_pedido').AsDateTime);
          Linha := Linha + AlinhaTXT(Trim(DmWorkCom.PAFECF.gSerial), 1, 20);
          Linha := Linha + '2D';
          Linha := Linha + ZeroEsquerda(IntToStr(Q.FieldByName('COO').AsInteger), 6);
          Linha := Linha + ZeroEsquerda(IntToStr(Q.FieldByName('NUM_ITEM').AsInteger), 3);
          Linha := Linha + AlinhaTXT(Q.FieldByName('EAN13').AsString, 1, 14);
          aux := FormatFloat('0.000', Q.FieldByName('quantidade').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 13);
          aValor := (Q.FieldByName('valor').AsFloat * Q.FieldByName('quantidade').AsFloat) - Q.FieldByName('desconto').AsFloat;
          aValor := aValor / Q.FieldByName('quantidade').AsFloat;
          aux := FormatFloat('0.00', aValor);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 13);
          Linha := Linha + ZeroEsquerda(aux, 12);
          // tributa��o
          case Q.FieldByName('tributacao').AsInteger of
            0:
              aux := 'I';
            1:
              aux := 'F';
            2:
              begin
                aux := FormatFloat('0.00', Q.FieldByName('aliquota_icms').AsFloat);
                aux := FiltraNumero(aux);
              end;
            3:
              aux := 'N';
            4:
              begin
                aux := FormatFloat('0.00', Q.FieldByName('aliquota_icms').AsFloat);
                aux := FiltraNumero(aux);
              end;
          end;
          if (Q.FieldByName('tributacao').AsInteger = 2) or (Q.FieldByName('tributacao').AsInteger = 4) then
            Linha := Linha + ZeroEsquerda(aux, 4)
          else
            Linha := Linha + AlinhaTXT(aux, 1, 4);
          //
          aux := FormatFloat('0.00', (Q.FieldByName('valor').AsFloat * Q.FieldByName('aliquota_icms').AsFloat) / 100);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 12);
          Linha := Linha + AlinhaTXT('', 1, 16);
          writeLn(sArquivo, Linha);
          Inc(atotal);
          Q.Next;
        end;
        Q.Close;
      end;
      // registro 60R
      if p60r then
      begin
        DecodeDate(pDatai, Ano, Mes, Dia);
        AnoMes := ZeroEsquerda(IntToStr(Mes), 2) + IntToStr(Ano);
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('select produtos.ean13,produtos.aliquota_icms,');
        Q.SQL.Add('produtos.tributacao,');
        Q.SQL.Add('sum(pedido_itens.quantidade) as quantidade,');
        Q.SQL.Add('sum((pedido_itens.quantidade*pedido_itens.valor) - pedido_itens.desconto) as valor');
        Q.SQL.Add('from produtos');
        Q.SQL.Add('left outer join pedido_itens on produtos.id = pedido_itens.idproduto');
        Q.SQL.Add('left outer join pedido on pedido.id = pedido_itens.idpedido');
        Q.SQL.Add('where pedido.data_pedido = :pData');
        Q.SQL.Add('and pedido.cancelado = ' + QuotedStr('N'));
        Q.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
        Q.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
        Q.SQL.Add('and pedido.caixa = ' + QuotedStr(DmWorkCom.PAFECF.gCaixa));
        Q.SQL.Add('group by produtos.ean13,produtos.aliquota_icms,produtos.tributacao');
        Q.Params.ParamByName('pData').AsDate := Cds60M.FieldByName('DATA_MOVIMENTO').AsDateTime;
        Q.Open;
        while not Q.Eof do
        begin
          Linha := '60R';
          Linha := Linha + AnoMes;
          Linha := Linha + AlinhaTXT(Q.FieldByName('EAN13').AsString, 1, 14);
          aux := FormatFloat('0.000', Q.FieldByName('quantidade').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 13);
          aux := FormatFloat('0.00', Q.FieldByName('valor').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 16);
          aux := FormatFloat('0.00', Q.FieldByName('valor').AsFloat);
          aux := FiltraNumero(aux);
          Linha := Linha + ZeroEsquerda(aux, 16);
          // tributa��o
          case Q.FieldByName('tributacao').AsInteger of
            0:
              aux := 'I';
            1:
              aux := 'F';
            2:
              begin
                aux := FormatFloat('0.00', Q.FieldByName('aliquota_icms').AsFloat);
                aux := FiltraNumero(aux);
              end;
            3:
              aux := 'N';
            4:
              begin
                aux := FormatFloat('0.00', Q.FieldByName('aliquota_icms').AsFloat);
                aux := FiltraNumero(aux);
              end;
          end;
          if (Q.FieldByName('tributacao').AsInteger = 2) or (Q.FieldByName('tributacao').AsInteger = 4) then
            Linha := Linha + ZeroEsquerda(aux, 4)
          else
            Linha := Linha + AlinhaTXT(aux, 1, 4);
          //
          Linha := Linha + AlinhaTXT('', 1, 54);
          writeLn(sArquivo, Linha);
          Inc(atotal);
          Q.Next;
        end;
        Q.Close;
      end;
    end;
    // proximo registro
    DmWorkCom.Cds60M.Next;
  end;
  if atotal > 0 then
    InsereTotalReg('60', atotal);
  // libera variavel da memoria
  Q.Free;

end;

procedure TDmWorkCom.ProcessaRegistro61;
var
  Linha, aux, aPriNum, aUltNum: String;
  atotal: Integer;
  Q: TFDQuery;
begin
  atotal := 0;
  Q := TFDQuery.Create(nil);
  Q.Connection := ConexaoDados;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select r.data_emissao,r.modelo, r.serie, r.total,r.aliq_icms,p.tributacao,');
  Q.SQL.Add('r.num_ordem from registro61 as r');
  Q.SQL.Add('left outer join produtos as p on r.idproduto =  p.id');
  Q.SQL.Add('where r.data_emissao between :pDatai and :pDataf');
  Q.SQL.Add('and r.caixa = ' + QuotedStr(DmWorkCom.PAFECF.gCaixa));
  Q.SQL.Add('group by r.data_emissao,r.modelo, r.serie,');
  Q.SQL.Add('r.total,r.aliq_icms,p.tributacao,r.num_ordem');
  Q.SQL.Add('order by r.num_ordem');
  Q.Params.ParamByName('pDatai').AsDate := pDatai;
  Q.Params.ParamByName('pDataf').AsDate := pDataf;
  Q.Open;
  while not Q.Eof do
  begin
    RetornaNumOrdem(aPriNum, aUltNum, Q.FieldByName('DATA_EMISSAO').AsDateTime);
    Linha := '61';
    Linha := Linha + AlinhaTXT('', 1, 14);
    Linha := Linha + AlinhaTXT('', 1, 14);
    Linha := Linha + FormatDateTime('YYYYMMDD', Q.FieldByName('DATA_EMISSAO').AsDateTime);
    Linha := Linha + AlinhaTXT('02', 1, 2);
    Linha := Linha + AlinhaTXT('D', 1, 3);
    Linha := Linha + AlinhaTXT(' ', 1, 2);
    Linha := Linha + ZeroEsquerda(aPriNum, 6);
    Linha := Linha + ZeroEsquerda(aUltNum, 6);
    if (Q.FieldByName('tributacao').AsInteger = 0) or (Q.FieldByName('tributacao').AsInteger = 3) then
    begin
      aux := FormatFloat('0.00', Q.FieldByName('total').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 12);
      aux := FormatFloat('0.00', Q.FieldByName('total').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
    end
    else if (Q.FieldByName('tributacao').AsInteger = 1) then
    begin
      aux := FormatFloat('0.00', Q.FieldByName('total').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 12);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', Q.FieldByName('total').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
    end
    else if (Q.FieldByName('tributacao').AsInteger = 2) or (Q.FieldByName('tributacao').AsInteger = 4) then
    begin
      aux := FormatFloat('0.00', Q.FieldByName('total').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', Q.FieldByName('total').AsFloat);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', ((Q.FieldByName('total').AsFloat * Q.FieldByName('aliq_icms').AsFloat) / 100));
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 12);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
      aux := FormatFloat('0.00', 0);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 13);
    end;
    aux := FormatFloat('0.00', Q.FieldByName('aliq_icms').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 4);
    Linha := Linha + AlinhaTXT('', 1, 1);
    writeLn(sArquivo, Linha);
    Inc(atotal);
    Q.Next;
  end;
  if atotal > 0 then
    InsereTotalReg('61', atotal);
  Q.Close;
  Q.Free;

end;

procedure TDmWorkCom.ProcessaRegistro61r;
var
  Linha, aux, AnoMes: String;
  atotal: Integer;
  Q: TFDQuery;
  Dia, Mes, Ano: Word;
begin
  DecodeDate(pDatai, Ano, Mes, Dia);
  AnoMes := ZeroEsquerda(IntToStr(Mes), 2) + IntToStr(Ano);
  atotal := 0;
  Q := TFDQuery.Create(nil);
  Q.Connection := ConexaoDados;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select produtos.ean13,registro61.descricao,registro61.quantidade,');
  Q.SQL.Add('registro61.valor, registro61.aliq_icms from registro61');
  Q.SQL.Add('left outer join produtos on produtos.id = registro61.idproduto');
  Q.SQL.Add('where registro61.data_emissao between :pDatai and :pDataf');
  Q.SQL.Add('and registro61.caixa = ' + QuotedStr(DmWorkCom.PAFECF.gCaixa));
  Q.SQL.Add('order by registro61.num_ordem');
  Q.Params.ParamByName('pDatai').AsDate := pDatai;
  Q.Params.ParamByName('pDataf').AsDate := pDataf;
  Q.Open;
  while not Q.Eof do
  begin
    Linha := '61R';
    Linha := Linha + AnoMes;
    Linha := Linha + AlinhaTXT(Q.FieldByName('EAN13').AsString, 1, 14);
    aux := FormatFloat('0.000', Q.FieldByName('quantidade').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 13);
    aux := FormatFloat('0.00', Q.FieldByName('valor').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 16);
    aux := FormatFloat('0.00', Q.FieldByName('valor').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 16);
    aux := FormatFloat('0.00', Q.FieldByName('aliq_icms').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 4);
    Linha := Linha + AlinhaTXT('', 1, 54);
    writeLn(sArquivo, Linha);
    Inc(atotal);
    Q.Next;
  end;
  if atotal > 0 then
    InsereTotalReg('61', atotal);
  Q.Close;
  Q.Free;

end;

procedure TDmWorkCom.ProcessaRegistro70;
begin
  writeLn(sArquivo, 'Registro 70');

end;

procedure TDmWorkCom.ProcessaRegistro75;
var
  Linha, aux: String;
  atotal: Integer;
  Q: TFDQuery;
  aValor: Double;
begin
  atotal := 0;
  Q := TFDQuery.Create(nil);
  Q.Connection := ConexaoDados;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select produtos.ean13,produtos.descricao,pedido_itens.valor,');
  Q.SQL.Add('pedido_itens.aliq_icms,pedido_itens.aliq_ipi,produtos.unidade,');
  Q.SQL.Add('produtos.codigo_NCM,pedido_itens.reducao_base,');
  Q.SQL.Add('sum(pedido_itens.base_icms_st) as base_icms_st from pedido');
  Q.SQL.Add('left outer join pedido_itens on pedido.id = pedido_itens.idpedido');
  Q.SQL.Add('left outer join produtos on produtos.id = pedido_itens.idproduto');
  Q.SQL.Add('where pedido.data_pedido between :pDatai and :pDataf');
  Q.SQL.Add('and pedido.cancelado = ' + QuotedStr('N'));
  Q.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
  Q.SQL.Add('and pedido_itens.cancelado = ' + QuotedStr('N'));
  Q.SQL.Add('group by produtos.ean13,produtos.descricao,pedido_itens.valor,');
  Q.SQL.Add('pedido_itens.aliq_icms,pedido_itens.aliq_ipi,produtos.unidade,');
  Q.SQL.Add('produtos.codigo_NCM,pedido_itens.reducao_base');
  Q.SQL.Add('order by produtos.ean13');
  Q.Params.ParamByName('pDatai').AsDate := pDatai;
  Q.Params.ParamByName('pDataf').AsDate := pDataf;
  Q.Open;
  while not Q.Eof do
  begin
    Linha := '75';
    Linha := Linha + FormatDateTime('YYYYMMDD', pDatai);
    Linha := Linha + FormatDateTime('YYYYMMDD', pDataf);
    Linha := Linha + AlinhaTXT(Q.FieldByName('EAN13').AsString, 1, 14);
    Linha := Linha + AlinhaTXT(Q.FieldByName('CODIGO_NCM').AsString, 1, 8);
    Linha := Linha + AlinhaTXT(Q.FieldByName('DESCRICAO').AsString, 1, 53);
    Linha := Linha + AlinhaTXT(Q.FieldByName('UNIDADE').AsString, 1, 6);
    aux := FormatFloat('0.00', Q.FieldByName('ALIQ_IPI').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 5);
    aux := FormatFloat('0.00', Q.FieldByName('ALIQ_ICMS').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 4);
    aux := FormatFloat('0.00', Q.FieldByName('REDUCAO_BASE').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 5);
    aux := FormatFloat('0.00', Q.FieldByName('BASE_ICMS_ST').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 13);
    writeLn(sArquivo, Linha);
    Inc(atotal);
    Q.Next;
  end;
  if atotal > 0 then
    InsereTotalReg('75', atotal);
  Q.Close;
  Q.Free;

end;

procedure TDmWorkCom.ProcessaRegistro90;
var
  Linha: String;
  atotal, aTotalGeral: Integer;
begin
  // Conta o Total de Registros 90
  atotal := 0;
  aTotalGeral := 3;
  DmAuxiliar.CdsRegAuxVP.First;
  while not DmAuxiliar.CdsRegAuxVP.Eof do
  begin
    Inc(atotal);
    aTotalGeral := aTotalGeral + DmAuxiliar.CdsRegAuxVPTotal.AsInteger;
    DmAuxiliar.CdsRegAuxVP.Next;
  end;
  // Grava Registros no arquivo
  DmAuxiliar.CdsRegAuxVP.First;
  while not DmAuxiliar.CdsRegAuxVP.Eof do
  begin
    Linha := '90';
    Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('CNPJ_CPF').AsString), 14);
    Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString, 1, 14);
    Linha := Linha + DmAuxiliar.CdsRegAuxVPRegistro.AsString;
    Linha := Linha + ZeroEsquerda(IntToStr(DmAuxiliar.CdsRegAuxVPTotal.AsInteger), 8);
    if DmAuxiliar.CdsRegAuxVP.RecNo = atotal then
    begin
      Linha := Linha + '99';
      Linha := Linha + ZeroEsquerda(IntToStr(aTotalGeral), 8);
      Linha := Linha + AlinhaTXT('', 1, 75);
    end
    else
    begin
      Linha := Linha + AlinhaTXT('', 1, 85);
      Inc(aTotalGeral);
    end;
    Linha := Linha + IntToStr(atotal);
    writeLn(sArquivo, Linha);
    Inc(sTotalReg);
    DmAuxiliar.CdsRegAuxVP.Next;
  end;

end;

procedure TDmWorkCom.InsereTotalReg(pRegistro: String; pTotal: Integer);
begin
  if not DmAuxiliar.CdsRegAuxVP.Locate('Registro', pRegistro, []) then
    DmAuxiliar.CdsRegAuxVP.Append
  else
    DmAuxiliar.CdsRegAuxVP.Edit;
  DmAuxiliar.CdsRegAuxVPRegistro.AsString := pRegistro;
  DmAuxiliar.CdsRegAuxVPTotal.AsInteger := DmAuxiliar.CdsRegAuxVPTotal.AsInteger + pTotal;
  DmAuxiliar.CdsRegAuxVP.Post;
  // Incrementa o total geral de registros
  sTotalReg := sTotalReg + pTotal;

end;

procedure TDmWorkCom.Cds60MNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('REGISTRO60M');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA_EMISSAO').AsDateTime := SVData;
  DataSet.FieldByName('HORA_EMISSAO').AsDateTime := SVHora;
  DataSet.FieldByName('DATA_MOVIMENTO').AsDateTime := SVData;
  DataSet.FieldByName('CAIXA').AsString := PAFECF.gCaixa;
  DataSet.FieldByName('SERIAECF').AsString := PAFECF.gSerial;
  DataSet.FieldByName('VENDA_BRUTA').AsFloat := 0;
  DataSet.FieldByName('GRANDE_TOTAL').AsFloat := 0;
  DataSet.FieldByName('AUTOMATICA').AsString := 'N';

end;

procedure TDmWorkCom.Cds60ANewRecord(DataSet: TDataSet);
begin
  if Cds60M.RecordCount > 0 then
  begin
    DataSet.FieldByName('ID').AsInteger := GenID('REGISTRO60A');
    DataSet.FieldByName('ID_REG60M').AsInteger := Cds60M.FieldByName('ID').AsInteger;
    DataSet.FieldByName('CAIXA').AsString := PAFECF.gCaixa;
    DataSet.FieldByName('TOTALIZADOR').AsFloat := 0;
  end;

end;

procedure TDmWorkCom.DspContadorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTADOR';

end;

procedure TDmWorkCom.CdsContadorNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CONTADOR');

end;

procedure TDmWorkCom.DspOSGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'ORD_SERVICO';

end;

procedure TDmWorkCom.DspOSHorasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'OS_HORAS';

end;

procedure TDmWorkCom.CdsOSHorasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('OS_HORAS');
  DataSet.FieldByName('ID_OS').AsInteger := QryOS.FieldByName('ID').AsInteger;
  DataSet.FieldByName('DATA_OS').AsDateTime := SVData;
  DataSet.FieldByName('DATA_TRAB').AsDateTime := SVData;

end;

procedure TDmWorkCom.CDSOSNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('ORD_SERVICO');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA_OS').AsDateTime := SVData;
  DataSet.FieldByName('HORA_OS').AsDateTime := SVHora;
  DataSet.FieldByName('VALOR_COBRADO').AsFloat := 0;
  DataSet.FieldByName('DESCONTO').AsFloat := 0;
  DataSet.FieldByName('ACRESCIMO').AsFloat := 0;
  DataSet.FieldByName('OUTROS').AsFloat := 0;
  DataSet.FieldByName('VALOR_PAGO').AsFloat := 0;
  DataSet.FieldByName('STATUS').AsInteger := 0;
  DataSet.FieldByName('CHAVE_NFSE').AsInteger := 0;
  DataSet.FieldByName('NR_RPS').AsInteger := 0;
  DataSet.FieldByName('NR_LOTE').AsInteger := 0;
end;

procedure TDmWorkCom.CdsOSHorasBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('TEMPO_GASTO').AsDateTime := DataSet.FieldByName('HORA_INICIO').AsDateTime - DataSet.FieldByName('HORA_FIM').AsDateTime;

end;

procedure TDmWorkCom.CdsOSBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('STATUS').AsInteger = 5 then
    DataSet.FieldByName('TEMPO_GASTO').AsDateTime := RetornaHorasTrabalhada(DataSet.FieldByName('ID').AsInteger);
  if CdsOSHoras.RecordCount > 0 then
    DataSet.FieldByName('REALIZADO').AsString := RetornaServicoRealizado(DataSet.FieldByName('ID').AsInteger);

end;

function TDmWorkCom.RetornaTotalAliquota(pPosicao: Integer): Double;
var
  i, aPos, aCont: Integer;
  aux: String;
begin
  aCont := 0;
  aPos := 0;
  for i := 1 to length(PAFECF.gTotalizadores) do
  begin
    aux := aux + Copy(PAFECF.gTotalizadores, i, 1);
    Inc(aCont);
    if aCont = 14 then
    begin
      Inc(aPos);
      if aPos = pPosicao then
      begin
        Break;
      end
      else
      begin
        aCont := 0;
        aux := '';
      end;
    end;
  end;
  Result := StrToFloat(aux) / 100;

end;

function TDmWorkCom.RegistrosECF(fNomeArquivo: String; fDatai, fDataf: TDateTime; ApenasProdMovto: Boolean = false): Boolean;
begin
  Result := true;
  AssignFile(sArquivo, fNomeArquivo);
  Rewrite(sArquivo);
  // inicia a cria��o dos registros
  CriaRegistroU1;
  CriaRegistroA2(fDatai, fDataf);
  CriaRegistroP2(fDatai, fDataf, ApenasProdMovto);
  CriaRegistroE2(fDatai, fDataf, ApenasProdMovto);
  CriaRegistroE3;
  CriaRegistroDAV(fDatai, fDataf);
  CriaRegistroDAVNFCe(fDatai, fDataf);
  if DmWorkCom.PAFECF.gPosto then
  begin
    CriaRegistroB2(fDatai, fDataf);
    CriaRegistroC2(fDatai, fDataf);
  end;
  if DmWorkCom.PAFECF.gRestaurante then
  begin
    CriaRegistroS2(fDatai, fDataf);
  end;
  CriaRegistroR01(fDatai, fDataf);
  CriaRegistroR02R03(fDatai, fDataf);
  CriaRegistroR04R05(fDatai, fDataf);
  CriaRegistroR06(fDatai, fDataf);
  CriaRegistroR07(fDatai, fDataf);
  // fecha o arquivo
  CloseFile(sArquivo);
end;

procedure TDmWorkCom.RelatorioFechamentoCaixa(pData: TDateTime);
var
  Q: TFDQuery;
  aData, AuxSTR: String;
  i, posicao: Integer;
begin
  try
    PreparaDataSetRelCaixa;
    // grava os totalizadores
    DmAcBr.ACBrECF1.LerTotaisFormaPagamento;
    for i := 0 to DmAcBr.ACBrECF1.FormasPagamento.Count - 1 do
    begin
      xCdsRelCaixa.Append;
      // xCdsRelCaixa.FieldByName('INDICE').AsString       := DmAcBr.ACBrECF1.FormasPagamento[I].Indice;
      xCdsRelCaixa.FieldByName('DESCRICAO').AsString := UpperCase(DmAcBr.ACBrECF1.FormasPagamento[i].Descricao);
      xCdsRelCaixa.FieldByName('VL_INFORMADO').AsFloat := 0;
      xCdsRelCaixa.FieldByName('VL_IMPRESSORA').AsFloat := DmAcBr.ACBrECF1.FormasPagamento[i].Total;
      xCdsRelCaixa.FieldByName('VL_DIVERGENTE').AsFloat := 0;
      xCdsRelCaixa.Post;
    end;

    // grava os totalizadores nao fiscais
    DmAcBr.ACBrECF1.LerTotaisComprovanteNaoFiscal;
    for i := 0 to DmAcBr.ACBrECF1.ComprovantesNaoFiscais.Count - 1 do
    begin
      if (UpperCase(DmAcBr.ACBrECF1.ComprovantesNaoFiscais[i].Descricao) = 'SANGRIA') or
        (UpperCase(DmAcBr.ACBrECF1.ComprovantesNaoFiscais[i].Descricao) = 'SUPRIMENTO') then
      begin
        xCdsRelCaixa.Append;
        // xCdsRelCaixa.FieldByName('INDICE').AsString       := DmAcBr.ACBrECF1.ComprovantesNaoFiscais[I].Indice;
        xCdsRelCaixa.FieldByName('DESCRICAO').AsString := UpperCase(DmAcBr.ACBrECF1.ComprovantesNaoFiscais[i].Descricao);
        xCdsRelCaixa.FieldByName('VL_INFORMADO').AsFloat := 0;
        xCdsRelCaixa.FieldByName('VL_IMPRESSORA').AsFloat := DmAcBr.ACBrECF1.ComprovantesNaoFiscais[i].Total;
        xCdsRelCaixa.FieldByName('VL_DIVERGENTE').AsFloat := 0;
        xCdsRelCaixa.Post;
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      Abort;
    end;
  end;
  //
  aData := FormatDateTime('mm/dd/yyyy', pData);
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select x.historico as descricao,sum(x.valor)');
    Q.SQL.Add('from caixa c');
    Q.SQL.Add('inner join caixa_mov x on x.id_caixa = c.id');
    Q.SQL.Add('where c.data_abertura = ' + QuotedStr(aData));
    Q.SQL.Add('and x.idpedido = 0');
    Q.SQL.Add('group by x.historico');
    Q.SQL.Add('union');
    Q.SQL.Add('select p.descricao,sum(p.valor - p.troco)');
    Q.SQL.Add('from caixa c');
    Q.SQL.Add('inner join caixa_mov x on x.id_caixa = c.id');
    Q.SQL.Add('inner join pedido_formapag p on x.idpedido = p.idpedido');
    Q.SQL.Add('where c.data_abertura = ' + QuotedStr(aData));
    Q.SQL.Add('group by p.descricao');
    Q.Open;
    while not Q.Eof do
    begin
      AuxSTR := UpperCase(Q.FieldByName('descricao').AsString);
      posicao := Pos(' ', AuxSTR);
      if posicao > 0 then
        AuxSTR := Copy(AuxSTR, 1, posicao - 1);
      // captura os valores da ECF
      if xCdsRelCaixa.Locate('DESCRICAO', AuxSTR, []) then
      begin
        xCdsRelCaixa.Edit;
        xCdsRelCaixa.FieldByName('VL_INFORMADO').AsFloat := Q.FieldByName('SUM').AsFloat;
        xCdsRelCaixa.FieldByName('VL_DIVERGENTE').AsFloat := TruncaValor(xCdsRelCaixa.FieldByName('VL_INFORMADO').AsFloat, 2) -
          TruncaValor(xCdsRelCaixa.FieldByName('VL_IMPRESSORA').AsFloat, 2);
        xCdsRelCaixa.Post;
      end;
      Q.Next;
    end;
    // emitei o gerencial
  finally
    FreeAndNil(Q);
  end;
  // emite o relatorio gerencial
  if PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceGerencial) then
  begin
    PAFECF.ImprimeRelatorioGerencial('--------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('      RELATORIO DE FECHAMENTO DE CAIXA      ');
    PAFECF.ImprimeRelatorioGerencial('--------------------------------------------');
    xCdsRelCaixa.First;
    while not xCdsRelCaixa.Eof do
    begin
      AuxSTR := 'Descri��o: ' + xCdsRelCaixa.FieldByName('DESCRICAO').AsString;
      PAFECF.ImprimeRelatorioGerencial(AuxSTR);
      AuxSTR := 'Informado: ' + FormatFloat('0.00', xCdsRelCaixa.FieldByName('VL_INFORMADO').AsFloat) + ' - ' + 'Impressora: ' +
        FormatFloat('0.00', xCdsRelCaixa.FieldByName('VL_IMPRESSORA').AsFloat) + ' - ' + 'Divergente: ' +
        FormatFloat('0.00', xCdsRelCaixa.FieldByName('VL_DIVERGENTE').AsFloat);
      PAFECF.ImprimeRelatorioGerencial(AuxSTR);
      xCdsRelCaixa.Next;
    end;
    PAFECF.ImprimeRelatorioGerencial('--------------------------------------------');
    PAFECF.FechaRelatorioGerencial;
  end;

end;

procedure TDmWorkCom.CriaRegistroR01(pDatai, pDataf: TDateTime);
var
  Linha, ModeloECF: String;
begin
  DmWorkCom.Dados_DadosTecnicos;
  // abre as impressoras
  Dados_PDVaux;
  while not CdsPDVaux.Eof do
  begin
    ModeloECF := CdsPDVaux.FieldByName('MODELO_ECF').AsString;
    if not VerificaMD5Registro(4, DmWorkCom.CdsDadosTecnicos.FieldByName('ID').AsInteger) then
      ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
    //
    Linha := 'R01';
    Linha := Linha + AlinhaTXT(CdsPDVaux.FieldByName('SERIAL_ECF').AsString, 1, 20); // 20 espacos
    if Trim(CdsPDVaux.FieldByName('LETRA_ADD').AsString) <> '' then
      Linha := Linha + CdsPDVaux.FieldByName('LETRA_ADD').AsString
    else
      Linha := Linha + ' ';
    Linha := Linha + AlinhaTXT(CdsPDVaux.FieldByName('TIPO_ECF').AsString, 1, 7);
    Linha := Linha + AlinhaTXT(CdsPDVaux.FieldByName('MARCA_ECF').AsString, 1, 20);
    Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
    Linha := Linha + AlinhaTXT(CdsPDVaux.FieldByName('VERSAO_ECF').AsString, 1, 10);
    if CdsPDVaux.FieldByName('DATA_SB').AsDateTime > 0 then
      Linha := Linha + FormatDateTime('YYYYMMDD', CdsPDVaux.FieldByName('DATA_SB').AsDateTime)
    else
      Linha := Linha + '        ';
    if CdsPDVaux.FieldByName('HORA_SB').AsDateTime > 0 then
      Linha := Linha + FormatDateTime('HHMMSS', CdsPDVaux.FieldByName('HORA_SB').AsDateTime)
    else
      Linha := Linha + '      ';
    Linha := Linha + AlinhaTXT(CdsPDVaux.FieldByName('CAIXA').AsString, 1, 3);
    Linha := Linha + ZeroEsquerda(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 14);
    Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString, 1, 14);
    Linha := Linha + ZeroEsquerda(DmWorkCom.CdsDadosTecnicosCNPJ.AsString, 14);
    Linha := Linha + ZeroEsquerda(DmWorkCom.CdsDadosTecnicosINSCEST.AsString, 14);
    Linha := Linha + ZeroEsquerda(DmWorkCom.CdsDadosTecnicosINSCMUN.AsString, 14);
    Linha := Linha + AlinhaTXT(Copy(DmWorkCom.CdsDadosTecnicosEMPRESA.AsString, 1, 40), 1, 40);
    Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosDENOMINACAO.AsString, 1, 40);
    Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosVERSAO.AsString, 1, 10);
    Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosMD5.AsString, 1, 32);
    Linha := Linha + FormatDateTime('YYYYMMDD', pDatai);
    Linha := Linha + FormatDateTime('YYYYMMDD', pDataf);
    Linha := Linha + AlinhaTXT(FiltraNumero(DmWorkCom.CdsDadosTecnicosVERSAO_ERPAFECF.AsString), 1, 4);

    {
      RetornaDadosImpressora(CdsPDVauxCAIXA.AsString);
      Linha := 'R01';
      Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pSerial,1,20); // 20 espacos
      if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
      Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
      else
      Linha := Linha + ' ';
      Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pTipoECF,1,7);
      Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pMarcaECF,1,20);
      Linha := Linha + AlinhaTXT(ModeloECF,1,20);
      Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pVersao,1,10);
      Linha := Linha + DmWorkCom.PAFECF.pDataSP;
      Linha := Linha + DmWorkCom.PAFECF.pHoraSP;
      Linha := Linha + AlinhaTXT(PAFECF.gCaixa,1,3);
      Linha := Linha + ZeroEsquerda(CdsEmpresa.FieldByName('CNPJ_CPF').AsString,14);
      Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString,1,14);
      Linha := Linha + ZeroEsquerda(DmWorkCom.CdsDadosTecnicosCNPJ.AsString,14);
      Linha := Linha + ZeroEsquerda(DmWorkCom.CdsDadosTecnicosINSCEST.AsString,14);
      Linha := Linha + ZeroEsquerda(DmWorkCom.CdsDadosTecnicosINSCMUN.AsString,14);
      Linha := Linha + AlinhaTXT(Copy(DmWorkCom.CdsDadosTecnicosEMPRESA.AsString,1,40),1,40);
      Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosPAFECF.AsString,1,40);
      Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosVERSAO.AsString,1,10);
      Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosMD5.AsString,1,32);
      Linha := Linha + FormatDateTime('YYYYMMDD',pDatai);
      Linha := Linha + FormatDateTime('YYYYMMDD',pDataf);
      Linha := Linha + AlinhaTXT(DmWorkCom.CdsDadosTecnicosVERSAO_ERPAFECF.AsString,1,4);
    }
    writeLn(sArquivo, Linha);
    CdsPDVaux.Next;
  end;
end;

procedure TDmWorkCom.CriaRegistroR02R03(pDatai, pDataf: TDateTime);
var
  Contador: Integer;
  Linha, ModeloECF: String;
begin
  // abre as impressoras
  Dados_PDVaux;
  while not CdsPDVaux.Eof do
  begin
    RetornaDadosImpressora(CdsPDVauxCAIXA.AsString);
    //
    DmWorkCom.Dados_60M(pDatai, pDataf, CdsPDVauxCAIXA.AsString);
    while not Cds60M.Eof do
    begin
      // Redu��es
      ModeloECF := RetornaModeloECF(Cds60M.FieldByName('SERIAECF').AsString);
      if not VerificaMD5Registro(5, DmWorkCom.Cds60M.FieldByName('ID').AsInteger) then
        ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
      //
      Linha := 'R02';
      Linha := Linha + AlinhaTXT(Cds60M.FieldByName('SERIAECF').AsString, 1, 20);
      if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
        Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
      else
        Linha := Linha + ' ';
      Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
      Linha := Linha + '01';
      Linha := Linha + ZeroEsquerda(IntToStr(Cds60M.FieldByName('Contador_Reducao').AsInteger), 6);
      Linha := Linha + ZeroEsquerda(IntToStr(Cds60M.FieldByName('COO_Final').AsInteger), 9);
      Linha := Linha + ZeroEsquerda(IntToStr(Cds60M.FieldByName('Contador_Reinicio').AsInteger), 6);
      Linha := Linha + FormatDateTime('YYYYMMDD', Cds60M.FieldByName('Data_Movimento').AsDateTime);
      Linha := Linha + FormatDateTime('YYYYMMDD', Cds60M.FieldByName('Data_emissao').AsDateTime);
      Linha := Linha + FormatDateTime('HHMMSS', Cds60M.FieldByName('Hora_emissao').AsDateTime);
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', Cds60M.FieldByName('VENDA_BRUTA').AsFloat)), 14);
      Linha := Linha + 'N';
      writeLn(sArquivo, Linha);
      Cds60M.Next;
    end;
    CdsPDVaux.Next;
  end;
  // registro R03 - 60A
  CdsPDVaux.First;
  while not CdsPDVaux.Eof do
  begin
    DmWorkCom.Dados_60M(pDatai, pDataf, CdsPDVauxCAIXA.AsString);
    while not Cds60M.Eof do
    begin
      Contador := 0;
      // abre tabela filtrando por redu��o
      DmWorkCom.Dados_60A(Cds60M.FieldByName('ID').AsInteger);
      while not Cds60A.Eof do
      begin
        ModeloECF := RetornaModeloECF(Cds60A.FieldByName('SERIAECF').AsString);
        if not VerificaMD5Registro(6, Cds60M.FieldByName('ID').AsInteger, Cds60A.FieldByName('ID').AsInteger) then
          ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
        Inc(Contador);
        Linha := 'R03';
        Linha := Linha + AlinhaTXT(Cds60A.FieldByName('SERIAECF').AsString, 1, 20);
        if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
          Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
        else
          Linha := Linha + ' ';
        Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
        Linha := Linha + '01';
        Linha := Linha + ZeroEsquerda(IntToStr(Cds60M.FieldByName('Contador_Reducao').AsInteger), 6);
        // Totalizador parcial
        if (Cds60A.FieldByName('ALIQUOTA_TRIB').AsString = 'N') or (Cds60A.FieldByName('ALIQUOTA_TRIB').AsString = 'F') or
          (Cds60A.FieldByName('ALIQUOTA_TRIB').AsString = 'I') then
        begin
          Linha := Linha + Cds60A.FieldByName('ALIQUOTA_TRIB').AsString + ZeroEsquerda(IntToStr(Contador), 2) + '    ';
        end
        else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'DESC') then
          Linha := Linha + 'DT     '
        else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'ACRE') then
          Linha := Linha + 'AT     '
        else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'AT') then
          Linha := Linha + 'AT     '
        else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'CANC') then
          Linha := Linha + 'Can-T  '
        else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'OPNF') then
          Linha := Linha + 'OPNF   '
        else
          Linha := Linha + ZeroEsquerda(IntToStr(Contador), 2) + 'T' + ZeroEsquerda(Copy(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString, 1, 2), 4);
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', Cds60A.FieldByName('TOTALIZADOR').AsFloat)), 13);
        writeLn(sArquivo, Linha);
        Cds60A.Next;
      end;
      Cds60M.Next;
    end;
    CdsPDVaux.Next;
  end;
end;

procedure TDmWorkCom.CriaRegistroR04R05(pDatai, pDataf: TDateTime);
var
  Linha, ModeloECF, aNumOrdem: String;
  CdsTotalizadores: TClientDataSet;
  Contador, aNumItemNF: Integer;
begin
  // abre as impressoras
  Dados_PDVaux;
  while not CdsPDVaux.Eof do
  begin
    RetornaDadosImpressora(CdsPDVauxCAIXA.AsString);
    //
    DmWorkCom.Dados_Pedido(pDatai, pDataf, CdsPDVauxCAIXA.AsString, 0, false);
    // Cupom fiscal - R04
    while not CdsPedidos.Eof do
    begin
      ModeloECF := DmWorkCom.PAFECF.pModeloECF;
      if not VerificaMD5Registro(0, DmWorkCom.CdsPedidos.FieldByName('ID').AsInteger) then
        ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
      Linha := 'R04';
      Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pSerial, 1, 20);
      if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
        Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
      else
        Linha := Linha + ' ';
      Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
      Linha := Linha + '01';
      Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('CCF').AsInteger), 9);
      Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('COO').AsInteger), 9);
      Linha := Linha + FormatDateTime('YYYYMMDD', CdsPedidos.FieldByName('Data_entrega').AsDateTime);
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('valor').AsFloat)), 14);
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('desconto').AsFloat)), 13);
      if CdsPedidos.FieldByName('desconto').AsFloat > 0 then
        Linha := Linha + 'V'
      else
        Linha := Linha + ' ';
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('acrescimo').AsFloat)), 13);
      if CdsPedidos.FieldByName('acrescimo').AsFloat > 0 then
        Linha := Linha + 'V'
      else
        Linha := Linha + ' ';
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('valor_total').AsFloat)), 14);
      // Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00',CdsPedidos.FieldByName('valor_total').AsFloat+
      // CdsPedidos.FieldByName('acrescimo').AsFloat-
      // CdsPedidos.FieldByName('desconto').AsFloat)),14);
      Linha := Linha + CdsPedidos.FieldByName('cancelado').AsString;
      Linha := Linha + ZeroEsquerda('0', 13);
      if CdsPedidos.FieldByName('desconto').AsFloat > 0 then
        Linha := Linha + 'D'
      else if CdsPedidos.FieldByName('acrescimo').AsFloat > 0 then
        Linha := Linha + 'A'
      else
        Linha := Linha + ' ';
      if Trim(CdsPedidos.FieldByName('cnpjcpf').AsString) <> '11111111111' then
      begin
        Linha := Linha + AlinhaTXT(CdsPedidos.FieldByName('cliente').AsString, 1, 40); // 40 ESPACOS
        Linha := Linha + ZeroEsquerda(CdsPedidos.FieldByName('cnpjcpf').AsString, 14); // 14 ESPACOS
      end
      else
      begin
        Linha := Linha + AlinhaTXT('', 1, 40); // 40 ESPACOS
        Linha := Linha + ZeroEsquerda('', 14); // 14 ESPACOS
      end;
      writeLn(sArquivo, Linha);
      CdsPedidos.Next;
    end;
    CdsPDVaux.Next;
  end;
  // Registros R04 de notas manuais
  DmAuxiliar.AbreDadosReg61R4(pDatai, pDataf);
  // Cupom fiscal - R04
  while not DmAuxiliar.CdsGeral.Eof do
  begin
    Linha := 'R04';
    Linha := Linha + AlinhaTXT('', 1, 20);
    Linha := Linha + ' ';
    Linha := Linha + AlinhaTXT('', 1, 20);
    Linha := Linha + '00';
    Linha := Linha + ZeroEsquerda(DmAuxiliar.CdsGeral.FieldByName('NUM_ORDEM').AsString, 9);
    Linha := Linha + ZeroEsquerda(IntToStr(0), 9);
    Linha := Linha + FormatDateTime('YYYYMMDD', DmAuxiliar.CdsGeral.FieldByName('DATA_EMISSAO').AsDateTime);
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('VALOR').AsFloat)), 14);
    Linha := Linha + ZeroEsquerda('', 13);
    Linha := Linha + ' ';
    Linha := Linha + ZeroEsquerda('', 13);
    Linha := Linha + ' ';
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('VALOR').AsFloat)), 14);
    Linha := Linha + 'S';
    Linha := Linha + ZeroEsquerda('0', 13);
    Linha := Linha + ' ';
    Linha := Linha + AlinhaTXT(DmAuxiliar.CdsGeral.FieldByName('nome').AsString, 1, 40); // 40 ESPACOS
    Linha := Linha + AlinhaTXT(DmAuxiliar.CdsGeral.FieldByName('cnpj_cpf').AsString, 1, 14); // 14 ESPACOS
    writeLn(sArquivo, Linha);
    DmAuxiliar.CdsGeral.Next;
  end;
  // Detalhes Cupom fiscal - R05
  CdsTotalizadores := TClientDataSet.Create(nil);
  CdsTotalizadores.FieldDefs.Add('TOTALIZADOR', ftString, 02, false);
  CdsTotalizadores.FieldDefs.Add('ALIQUOTA', ftFloat, 0, false);
  if not CdsTotalizadores.Active then
    CdsTotalizadores.CreateDataSet;
  CdsTotalizadores.EmptyDataSet;
  CdsTotalizadores.AddIndex('IDX01', 'ALIQUOTA', [IxUnique]);
  CdsTotalizadores.IndexName := 'IDX01';
  DmWorkCom.PAFECF.RetornaIndiceAliquota(CdsTotalizadores);
  //
  CdsPDVaux.First;
  while not CdsPDVaux.Eof do
  begin
    RetornaDadosImpressora(CdsPDVauxCAIXA.AsString);
    // localiza itend do cupom
    DmWorkCom.Dados_PedidoItens(pDatai, pDataf, CdsPDVauxCAIXA.AsString, 0, false);
    while not CdsPedidoItens.Eof do
    begin
      ModeloECF := DmWorkCom.PAFECF.pModeloECF;
      if not VerificaMD5Registro(1, DmWorkCom.CdsPedidoItens.FieldByName('IDPEDIDO').AsInteger, DmWorkCom.CdsPedidoItens.FieldByName('ID').AsInteger) then
        ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
      Inc(Contador);
      DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('IDPRODUTO').AsInteger);
      Linha := 'R05';
      Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pSerial, 1, 20);
      if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
        Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
      else
        Linha := Linha + ' ';
      Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
      Linha := Linha + '01';
      Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidoItens.FieldByName('COO_1').AsInteger), 9);
      Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidoItens.FieldByName('CCF_1').AsInteger), 9);
      Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger), 3);
      Linha := Linha + AlinhaTXT(CdsPedidoItens.FieldByName('EAN13').AsString, 1, 14); // 14 espacos
      Linha := Linha + AlinhaTXT(CdsPedidoItens.FieldByName('DESCRICAO').AsString, 1, 100); // 100 espacos
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat)), 7);
      Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos.FieldByName('UNIDADE').AsString, 1, 3); // 3 espa�os
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('VALOR').AsFloat)), 8);
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('DESCONTO').AsFloat)), 8);
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat)), 8);
      Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat)), 14);
      // Totalizador parcial
      if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'N' then
      begin
        if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 0) then
          Linha := Linha + 'I' + ZeroEsquerda(IntToStr(Contador), 2) + '    '
        else if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 1) then
          Linha := Linha + 'F' + ZeroEsquerda(IntToStr(Contador), 2) + '    '
        else if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 3) then
          Linha := Linha + 'N' + ZeroEsquerda(IntToStr(Contador), 2) + '    '
        else if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 2) then
        begin
          if CdsTotalizadores.Locate('ALIQUOTA', DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat, []) then
            Linha := Linha + CdsTotalizadores.FieldByName('TOTALIZADOR').AsString + 'T' +
              ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat)), 4)
          else
            Linha := Linha + '00' + 'T' + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat)), 4)
        end
        else if (DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 4) then
          Linha := Linha + ZeroEsquerda(IntToStr(Contador), 2) + 'S' +
            ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat)), 4);
      end
      else
      begin
        Linha := Linha + 'Can-T  '
      end;
      Linha := Linha + CdsPedidoItens.FieldByName('CANCELADO').AsString;
      if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'S' then
      begin
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 7);
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 13);
        // Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00',CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat)),7);
        // Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00',CdsPedidoItens.FieldByName('VALOR').AsFloat)),13);
      end
      else
      begin
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 7);
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 13);
      end;
      Linha := Linha + ZeroEsquerda('0', 13);
      Linha := Linha + 'T';
      Linha := Linha + 'T';
      Linha := Linha + '3';
      Linha := Linha + '2';
      writeLn(sArquivo, Linha);
      CdsPedidoItens.Next;
    end;
    CdsPDVaux.Next;
  end;
  // Registros R05 de notas manuais
  aNumItemNF := 0;
  aNumOrdem := '';
  DmAuxiliar.AbreDadosReg61R5(pDatai, pDataf);
  while not DmAuxiliar.CdsGeral.Eof do
  begin
    // ModeloECF := pModeloECF;
    // if not VerificaMD5Registro(1, CdsPedidoItens.FieldByName('IDPEDIDO').AsInteger, CdsPedidoItens.FieldByName('ID').AsInteger) then
    // ModeloECF := '?';
    if aNumOrdem <> DmAuxiliar.CdsGeral.FieldByName('NUM_ORDEM').AsString then
    begin
      aNumOrdem := DmAuxiliar.CdsGeral.FieldByName('NUM_ORDEM').AsString;
      aNumItemNF := 0;
    end;
    Inc(aNumItemNF);
    Inc(Contador);
    DmProdutos.Dados_Produto(DmAuxiliar.CdsGeral.FieldByName('IDPRODUTO').AsInteger);
    Linha := 'R05';
    Linha := Linha + AlinhaTXT('', 1, 20);
    Linha := Linha + ' ';
    Linha := Linha + AlinhaTXT('', 1, 20);
    Linha := Linha + '00';
    Linha := Linha + ZeroEsquerda('', 9);
    Linha := Linha + ZeroEsquerda(DmAuxiliar.CdsGeral.FieldByName('NUM_ORDEM').AsString, 9);
    Linha := Linha + ZeroEsquerda(IntToStr(aNumItemNF), 3);
    Linha := Linha + AlinhaTXT(DmAuxiliar.CdsGeral.FieldByName('IDPRODUTO').AsString, 1, 14); // 14 espacos
    Linha := Linha + AlinhaTXT(DmAuxiliar.CdsGeral.FieldByName('DESCRICAO').AsString, 1, 100); // 100 espacos
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('QUANTIDADE').AsFloat)), 7);
    Linha := Linha + AlinhaTXT(Trim(DmAuxiliar.CdsGeral.FieldByName('UNIDADE').AsString), 1, 3); // 3 espa�os
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('VALOR').AsFloat)), 8);
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 8);
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 8);
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('TOTAL').AsFloat)), 14);
    // Totalizador parcial
    if (DmAuxiliar.CdsGeral.FieldByName('CST').AsString = '40') then
      Linha := Linha + 'I' + ZeroEsquerda(IntToStr(Contador), 2) + '    '
    else if (DmAuxiliar.CdsGeral.FieldByName('CST').AsString = '60') then
      Linha := Linha + 'F' + ZeroEsquerda(IntToStr(Contador), 2) + '    '
    else if (DmAuxiliar.CdsGeral.FieldByName('CST').AsString = '41') then
      Linha := Linha + 'N' + ZeroEsquerda(IntToStr(Contador), 2) + '    '
    else
    begin
      if CdsTotalizadores.Locate('ALIQUOTA', DmAuxiliar.CdsGeral.FieldByName('ALIQ_ICMS').AsFloat, []) then
        Linha := Linha + CdsTotalizadores.FieldByName('TOTALIZADOR').AsString + 'T' +
          ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('ALIQ_ICMS').AsFloat)), 4)
      else
        Linha := Linha + '00' + 'T' + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAuxiliar.CdsGeral.FieldByName('ALIQ_ICMS').AsFloat)), 4)
    end;
    Linha := Linha + 'N';
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 7);
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', 0)), 13);
    Linha := Linha + ZeroEsquerda('0', 13);
    Linha := Linha + 'T';
    Linha := Linha + 'T';
    Linha := Linha + '3';
    Linha := Linha + '2';
    writeLn(sArquivo, Linha);
    DmAuxiliar.CdsGeral.Next;
  end;

end;

procedure TDmWorkCom.CriaRegistroR06(pDatai, pDataf: TDateTime);
var
  Linha, ModeloECF, NumSerie: String;
begin
  // abre as impressoras
  Dados_PDVaux;
  while not CdsPDVaux.Eof do
  begin
    RetornaDadosImpressora(CdsPDVauxCAIXA.AsString);
    // efetuar filtro de formas de pagamento
    Dados_DocECF(pDatai, pDataf, CdsPDVauxCAIXA.AsString);
    while not CdsControleDoc.Eof do
    begin
      if CdsControleDoc.FieldByName('SIGLA').AsString <> 'RV' then
      begin
        NumSerie := RetornaSerialECF(CdsControleDoc.FieldByName('COO').AsInteger, CdsControleDoc.FieldByName('DATA').AsDateTime);
        ModeloECF := RetornaModeloECF(NumSerie);
        if not VerificaMD5Registro(7, DmWorkCom.CdsControleDoc.FieldByName('ID').AsInteger) then
          ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
        Linha := 'R06';
        Linha := Linha + AlinhaTXT(NumSerie, 1, 20);
        if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
          Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
        else
          Linha := Linha + ' ';
        Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
        Linha := Linha + '01';
        Linha := Linha + ZeroEsquerda(IntToStr(CdsControleDoc.FieldByName('COO').AsInteger), 9);
        Linha := Linha + ZeroEsquerda(IntToStr(CdsControleDoc.FieldByName('GNF').AsInteger), 6);
        if (CdsControleDoc.FieldByName('SIGLA').AsString <> 'CN') and (CdsControleDoc.FieldByName('SIGLA').AsString <> 'CC') then
          Linha := Linha + ZeroEsquerda(IntToStr(CdsControleDoc.FieldByName('GRG').AsInteger), 6)
        else
          Linha := Linha + ZeroEsquerda('', 6);
        Linha := Linha + ZeroEsquerda(IntToStr(CdsControleDoc.FieldByName('CDC').AsInteger), 4);
        Linha := Linha + CdsControleDoc.FieldByName('SIGLA').AsString;
        Linha := Linha + FormatDateTime('YYYYMMDD', CdsControleDoc.FieldByName('DATA').AsDateTime);
        Linha := Linha + FormatDateTime('HHMMSS', CdsControleDoc.FieldByName('HORA').AsDateTime);
        writeLn(sArquivo, Linha);
      end;
      CdsControleDoc.Next;
    end;
    CdsPDVaux.Next;
  end;

end;

procedure TDmWorkCom.CriaRegistroR07(pDatai, pDataf: TDateTime);
var
  Linha, ModeloECF: String;
begin
  // abre as impressoras
  Dados_PDVaux;
  while not CdsPDVaux.Eof do
  begin
    RetornaDadosImpressora(CdsPDVauxCAIXA.AsString);
    DmWorkCom.Dados_Pedido(pDatai, pDataf, CdsPDVauxCAIXA.AsString, 0, false);
    // Registro - R07
    while not CdsPedidos.Eof do
    begin
      Dados_PedidoFP(CdsPedidos.FieldByName('ID').AsInteger);
      while not CdsPedidoFP.Eof do
      begin
        ModeloECF := DmWorkCom.PAFECF.pModeloECF;
        if not VerificaMD5Registro(8, CdsPedidos.FieldByName('ID').AsInteger, CdsPedidoFP.FieldByName('ID').AsInteger) then
          ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
        //
        Linha := 'R07';
        Linha := Linha + AlinhaTXT(DmWorkCom.PAFECF.pSerial, 1, 20);
        if Trim(DmWorkCom.PAFECF.pLetraMFAds) <> '' then
          Linha := Linha + DmWorkCom.PAFECF.pLetraMFAds
        else
          Linha := Linha + ' ';
        Linha := Linha + AlinhaTXT(ModeloECF, 1, 20);
        Linha := Linha + '01';
        Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('COO').AsInteger), 9);
        Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('CCF').AsInteger), 9);
        Linha := Linha + ZeroEsquerda('', 6);
        // Linha := Linha + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('GNF').AsInteger),6);
        Linha := Linha + AlinhaTXT(CdsPedidoFP.FieldByName('DESCRICAO').AsString, 1, 15); // 15 espacos
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoFP.FieldByName('valor').AsFloat - CdsPedidoFP.FieldByName('troco')
          .AsFloat)), 13);
        Linha := Linha + CdsPedidos.FieldByName('CANCELADO').AsString;
        if CdsPedidos.FieldByName('CANCELADO').AsString = 'N' then
          Linha := Linha + ZeroEsquerda('0', 13)
        else
          Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoFP.FieldByName('valor').AsFloat - CdsPedidoFP.FieldByName('troco')
            .AsFloat)), 13);
        writeLn(sArquivo, Linha);
        CdsPedidoFP.Next;
      end;
      CdsPedidos.Next;
    end;
    CdsPDVaux.Next;
  end;

end;

procedure TDmWorkCom.CdsEmpresaAfterScroll(DataSet: TDataSet);
begin
  Dados_Config(DataSet.FieldByName('ID').AsInteger);

end;

procedure TDmWorkCom.CdsControleDocNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CONTROLEDOCECF');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('COO').AsInteger := DmWorkCom.PAFECF.gCOO;
  DataSet.FieldByName('GNF').AsInteger := DmWorkCom.PAFECF.gGNF;
  DataSet.FieldByName('GRG').AsInteger := DmWorkCom.PAFECF.gGRG;
  DataSet.FieldByName('CDC').AsInteger := DmWorkCom.PAFECF.gCDC;
  DataSet.FieldByName('CAIXA').AsString := DmWorkCom.PAFECF.gCaixa;

end;

procedure TDmWorkCom.LerConfiguracaoNFSe;
var
  IniFile: String;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
  IniFile := ExtractFilePath(Application.ExeName) + 'Config_NFSe.ini';
  if not FilesExists(IniFile) then
  begin
    ShowMessage('N�o foi localizado o arquivo de configura��o de NFSe!');
  end;

  Ini := TIniFile.Create(IniFile);
  try
    sNFSeCaminho := Ini.ReadString('Certificado', 'Caminho', '');
    sNFSeCertSenha := Ini.ReadString('Certificado', 'Senha', '');
    sNFSeNumSerie := Ini.ReadString('Certificado', 'NumSerie', '');
    sNFSeEmitCNPJ := Ini.ReadString('Emitente', 'CNPJ', '');
    sNFSeEmitIM := Ini.ReadString('Emitente', 'IM', '');
    sNFSeEmitRazao := Ini.ReadString('Emitente', 'RazaoSocial', '');
    sNFSeEmitFantasia := Ini.ReadString('Emitente', 'Fantasia', '');
    sNFSeEmitFone := Ini.ReadString('Emitente', 'Fone', '');
    sNFSeEmitCEP := Ini.ReadString('Emitente', 'CEP', '');
    sNFSeEmitLogradouro := Ini.ReadString('Emitente', 'Logradouro', '');
    sNFSeEmitNumero := Ini.ReadString('Emitente', 'Numero', '');
    sNFSeEmitComp := Ini.ReadString('Emitente', 'Complemento', '');
    sNFSeEmitBairro := Ini.ReadString('Emitente', 'Bairro', '');
    sNFSeEmitCidade := Ini.ReadString('Emitente', 'Cidade', '');
    sNFSeEmitUF := Ini.ReadString('Emitente', 'UF', '');
    sNFSeCodCidade := Ini.ReadString('Emitente', 'CodCidade', '');
    sNFSeSchemas := Ini.ReadString('Geral', 'Schemas', '');
    sNFSeLogoMarca := Ini.ReadString('Geral', 'LogoMarca', '');
    sNFSePrestLogo := Ini.ReadString('Geral', 'PrestLogo', '');
    sNFSeSalvar := Ini.ReadBool('Geral', 'Salvar', true);
    sNFSePathLogs := Ini.ReadString('Geral', 'PathSalvar', '');
    sNFSePrefeitura := Ini.ReadString('Geral', 'Prefeitura', '');
    sNFSeArqINI := Ini.ReadString('Geral', 'PathINI', '');
    sNFSeTipoAmb := Ini.ReadInteger('WebService', 'Ambiente', 0);
    sNFSeVisualizar := Ini.ReadBool('WebService', 'Visualizar', false);
    sNFSeSenhaWeb := Ini.ReadString('WebService', 'SenhaWeb', '');
    sNFSeUserWeb := Ini.ReadString('WebService', 'UserWeb', '');
    sNFSeSalvarSoap := Ini.ReadBool('WebService', 'SalvarSoap', false);
    sNFSeProxyHost := Ini.ReadString('Proxy', 'Host', '');
    sNFSeProxyPorta := Ini.ReadString('Proxy', 'Porta', '');
    sNFSeProxyUser := Ini.ReadString('Proxy', 'User', '');
    sNFSeProxySenha := Ini.ReadString('Proxy', 'Pass', '');
    sNFSeSmtpHost := Ini.ReadString('Email', 'Host', '');
    sNFSeSmtpPort := Ini.ReadString('Email', 'Port', '');
    sNFSeSmtpUser := Ini.ReadString('Email', 'User', '');
    sNFSeSmtpPass := Ini.ReadString('Email', 'Pass', '');
    sNFSeEmailAssunto := Ini.ReadString('Email', 'Assunto', '');
    sNFSeEmailSSL := Ini.ReadBool('Email', 'SSL', false);
    sNFSeEmailTLS := Ini.ReadBool('Email', 'TLS', false);
    sNFSeEmailRemetente := Ini.ReadString('Email', 'Remetente', '');
  finally
    Ini.Free;
  end;

end;

function TDmWorkCom.Le_Linha_Arquivo(fTexto, fCaracter: string; fPosicao: Integer): string;
var
  aux: string;
  i, Contador: Integer;
begin
  // zera variaveis auxiliares
  aux := '';
  Result := '';
  Contador := 0;
  // busca informa��es solicitadas no texto
  for i := 1 to length(fTexto) do
  begin
    if Copy(fTexto, i, 1) <> fCaracter then
      aux := aux + Copy(fTexto, i, 1)
    else
    begin
      Contador := Contador + 1;
      if Contador = fPosicao then
      begin
        Break;
      end
      else
      begin
        aux := '';
      end;
    end;
  end;
  Result := aux;

end;

procedure TDmWorkCom.DspPedidoItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PEDIDO_ITENS'
end;

procedure TDmWorkCom.DspPedidosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PEDIDO'

end;

procedure TDmWorkCom.DspPedidoFPGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PEDIDO_FORMAPAG';

end;

function TDmWorkCom.Dados_PedidoFP(fID: Integer; pOrdemConf: Boolean): Boolean;
begin
  CdsPedidoFP.Close;
  CdsPedidoFP.Params.Clear;
  //
  QryPedidoFP.Close;
  QryPedidoFP.SQL.Clear;
  if not pOrdemConf then
  begin
    QryPedidoFP.SQL.Add('select * from pedido_formapag f');
    QryPedidoFP.SQL.Add('where f.idpedido = :pIDPedido');
    if PAFECF.sTipoTEF in [0, 2] then
      QryPedidoFP.SQL.Add('order by f.tipo_documento')
    else
      QryPedidoFP.SQL.Add('order by f.tipo_documento desc');
  end
  else
  begin
    QryPedidoFP.SQL.Add('select * from pedido_formapag f');
    QryPedidoFP.SQL.Add('where f.idpedido = :pIDPedido');
    QryPedidoFP.SQL.Add('and (f.tipo_documento = 1 or f.tipo_documento = 2)');
    QryPedidoFP.SQL.Add('and f.VINCULAR = ' + QuotedStr('S'));
    QryPedidoFP.SQL.Add('order by f.confirmado')
  end;
  //
  CdsPedidoFP.FetchParams;
  CdsPedidoFP.Params.ParamByName('pIDPedido').AsInteger := fID;
  CdsPedidoFP.Open;
  //
  Result := false;
  if CdsPedidoFP.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.CdsPedidoFPNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PEDIDO_FORMAPAG');
  DataSet.FieldByName('IDPEDIDO').AsInteger := CdsPedidos.FieldByName('ID').AsInteger;
  DataSet.FieldByName('VALOR').AsFloat := 0;
  DataSet.FieldByName('TROCO').AsFloat := 0;
  DataSet.FieldByName('DESCONTO').AsFloat := 0;
  DataSet.FieldByName('CONFIRMADO').AsString := 'N';
  DataSet.FieldByName('VINCULAR').AsString := 'N';

end;

function TDmWorkCom.VerificaMD5Registro(pTipo, pID: Integer; pID1: Integer = 0): Boolean;
var
  AuxSQL, auxMD5, MD5Reg: String;
  SQL: TFDQuery;
begin
  SQL := TFDQuery.Create(nil);
  SQL.Connection := ConexaoDados;
  try
    SQL.Close;
    SQL.SQL.Clear;
    case pTipo of
      0:
        begin // Cupons Fiscais
          SQL.SQL.Add('select * from pedido');
          SQL.SQL.Add('where pedido.id = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      1:
        begin // Itens do cupom
          SQL.SQL.Add('select * from pedido_itens');
          SQL.SQL.Add('where pedido_itens.idpedido = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          SQL.Locate('ID', pID1, []);
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      2:
        begin // Estque
          SQL.SQL.Add('select * from produtos');
          SQL.SQL.Add('where produtos.id = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      3:
        begin // produto
          SQL.SQL.Add('select * from produtos');
          SQL.SQL.Add('where produtos.id = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      4:
        begin // desenvolvedora
          Dados_DadosTecnicos;
          MD5Reg := Trim(CdsDadosTecnicos.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := RetornaMD5Registro(CdsDadosTecnicos);
        end;
      5:
        begin // Greduz60M
          SQL.SQL.Add('select * from registro60m');
          SQL.SQL.Add('where registro60m.id = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      6:
        begin // GReduz60A
          SQL.SQL.Add('select * from registro60a');
          SQL.SQL.Add('where registro60a.id_reg60m = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          SQL.Locate('ID', pID1, []);
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      7:
        begin // Doc. Emitidos
          SQL.SQL.Add('select * from controledocecf');
          SQL.SQL.Add('where controledocecf.id = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      8:
        begin // Forma de Pagamento Cupom
          SQL.SQL.Add('select * from pedido_formapag');
          SQL.SQL.Add('where pedido_formapag.idpedido = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          SQL.Locate('ID', pID1, []);
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      9:
        begin // abastecimentos
          SQL.SQL.Add('select * from abastecimentos');
          SQL.SQL.Add('where abastecimentos.id = :pID');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
      10:
        begin // abastecimentos
          SQL.SQL.Add('select * from paf_registro_a2 a');
          SQL.SQL.Add('where a.id = :pid');
          SQL.Params.ParamByName('pID').AsInteger := pID;
          SQL.Open;
          MD5Reg := Trim(SQL.FieldByName('MD5REGISTRO').AsString);
          auxMD5 := Trim(RetornaMD5Registro(SQL));
        end;
    end;
    // resultado
    Result := true;
    if auxMD5 <> MD5Reg then
      Result := false;
    SQL.Close;
  finally
    FreeAndNil(SQL);
  end;

end;

procedure TDmWorkCom.CdsPedidoFPBeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // grava os dados do cupom no item
  DataSet.FieldByName('COO').AsInteger := CdsPedidos.FieldByName('COO').AsInteger;
  DataSet.FieldByName('CCF').AsInteger := CdsPedidos.FieldByName('CCF').AsInteger;
  DataSet.FieldByName('GNF').AsInteger := CdsPedidos.FieldByName('GNF').AsInteger;
  DataSet.FieldByName('NUMSERIEECF').AsString := CdsPedidos.FieldByName('NUMSERIEECF').AsString;
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmWorkCom.DspDadosTecnicosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'DADOS_TECNICOS';

end;

procedure TDmWorkCom.CdsDadosTecnicosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('DADOS_TECNICOS');

end;

procedure TDmWorkCom.CdsDadosTecnicosBeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmWorkCom.CdsControleDocBeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmWorkCom.Cds60MBeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // Grava informa��o de sincroniza��o
  DataSet.FieldByName('SINCRONIZADO').AsString := 'N';
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmWorkCom.Cds60ABeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // grava dados do reg 60M
  DataSet.FieldByName('DATA_EMISSAO').AsDateTime := Cds60M.FieldByName('DATA_EMISSAO').AsDateTime;
  DataSet.FieldByName('HORA_EMISSAO').AsDateTime := Cds60M.FieldByName('HORA_EMISSAO').AsDateTime;
  DataSet.FieldByName('DATA_MOVIMENTO').AsDateTime := Cds60M.FieldByName('DATA_MOVIMENTO').AsDateTime;
  DataSet.FieldByName('SERIAECF').AsString := Cds60M.FieldByName('SERIAECF').AsString;
  DataSet.FieldByName('CONTADOR_REINICIO').AsInteger := Cds60M.FieldByName('CONTADOR_REINICIO').AsInteger;
  DataSet.FieldByName('CONTADOR_REDUCAO').AsInteger := Cds60M.FieldByName('CONTADOR_REDUCAO').AsInteger;
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

function TDmWorkCom.Dados_DadosTecnicos: Boolean;
begin
  CdsDadosTecnicos.Close;
  CdsDadosTecnicos.Params.Clear;
  QryDadosTecnicos.Close;
  QryDadosTecnicos.SQL.Clear;
  QryDadosTecnicos.SQL.Add('select * from dados_tecnicos');
  //
  CdsDadosTecnicos.FetchParams;
  CdsDadosTecnicos.Open;
  //
  Result := false;
  if CdsDadosTecnicos.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.RetornaTotalFormaPafCupom(pID: Integer): Double;
var
  Query: TFDQuery;
begin
  Result := 0;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := ConexaoDados;
    Query.SQL.Clear;
    Query.SQL.Add('select sum(fp.valor) as total');
    Query.SQL.Add('from pedido_formapag fp');
    Query.SQL.Add('where fp.idpedido = :pID');
    Query.Params.ParamByName('pID').AsInteger := pID;
    Query.Open;
    Result := Result + TruncaValor(Query.FieldByName('total').AsFloat, PAFECF.gDecimais);
    Query.Close;
  finally
    Query.Free;
  end;

end;

procedure TDmWorkCom.DspMesasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'MESAS';

end;

procedure TDmWorkCom.DspMesasAbertasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'MESAS_ABERTAS';

end;

procedure TDmWorkCom.DspMesasItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'MESAS_ITENS';

end;

function TDmWorkCom.Dados_Mesa: Boolean;
begin
  CdsMesas.Close;
  CdsMesas.Open;
  //
  Result := false;
  if CdsMesas.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_MesasAbertas(pDataBase: TDateTime = 0): Boolean;
var
  aDataBase: String;
begin
  aDataBase := FormatDateTime('MM/DD/YYYY', pDataBase);
  CdsMesasAbertas.Close;
  CdsMesasAbertas.Params.Clear;
  QryMesasAbertas.Close;
  QryMesasAbertas.Params.Clear;
  QryMesasAbertas.SQL.Clear;
  QryMesasAbertas.SQL.Add('select * from mesas_abertas');
  QryMesasAbertas.SQL.Add('where mesas_abertas.status = 0');
  if pDataBase > 0 then
    QryMesasAbertas.SQL.Add('and mesas_abertas.data <= ' + QuotedStr(aDataBase));
  //
  CdsMesasAbertas.FetchParams;
  CdsMesasAbertas.Open;
  //
  Result := false;
  if CdsMesasAbertas.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_MesasItens(pID: Integer): Boolean;
begin
  CdsMesasItens.Close;
  CdsMesasItens.Params.ParamByName('pID').AsInteger := pID;
  CdsMesasItens.Open;
  //
  Result := false;
  if CdsMesasItens.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.CdsMesasAbertasAfterScroll(DataSet: TDataSet);
begin
  Dados_MesasItens(DataSet.FieldByName('ID').AsInteger);

end;

procedure TDmWorkCom.CdsMesasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('MESAS');

end;

procedure TDmWorkCom.CdsMesasAbertasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('MESAS_ABERTAS');
  DataSet.FieldByName('DATA').AsDateTime := SVData;
  DataSet.FieldByName('HORA').AsDateTime := SVHora;
  DataSet.FieldByName('STATUS').AsInteger := 0;

end;

procedure TDmWorkCom.CdsMesasItensNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('MESAS_ITENS');
  DataSet.FieldByName('ID_MESA').AsInteger := CdsMesasAbertas.FieldByName('ID').AsInteger;
  DataSet.FieldByName('CANCELADO').AsString := 'N';

end;

procedure TDmWorkCom.EmitirConferenciaMesa(pID: Integer);
var
  Mesa, Item: TFDQuery;
  aux: String;
begin
  Mesa := TFDQuery.Create(nil);
  Item := TFDQuery.Create(nil);
  try
    Mesa.Connection := ConexaoDados;
    Item.Connection := ConexaoDados;
    // seleciona a mensa na tabela
    Mesa.Close;
    Mesa.SQL.Clear;
    Mesa.SQL.Add('select * from mesas_abertas');
    Mesa.SQL.Add('where mesas_abertas.id = :pID');
    Mesa.Params.ParamByName('pID').AsInteger := pID;
    Mesa.Open;
    if not Mesa.IsEmpty then
    begin
      if PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceConfMesa) then
      begin
        PAFECF.IncrementaContadorCER;
        PAFECF.ImprimeRelatorioGerencial('      * * * Conferencia de Mesa * * *      ');
        aux := 'Data: ' + FormatDateTime('DD/MM/YYYY', Mesa.FieldByName('DATA').AsDateTime) + ' - ' + 'Hora: ' +
          FormatDateTime('HH:MM:SS', Mesa.FieldByName('HORA').AsDateTime);
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := 'Mesa No.: ' + Trim(Mesa.FieldByName('NUMERO_MESA').AsString);
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := '----------------------------------------';
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := 'Codigo   Descricao';
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := 'Quant.  x  Preco    =     Total';
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := '----------------------------------------';
        PAFECF.ImprimeRelatorioGerencial(aux);
        Item.Close;
        Item.SQL.Clear;
        Item.SQL.Add('select * from mesas_itens');
        Item.SQL.Add('where mesas_itens.id_mesa = :pID');
        Item.Params.ParamByName('pID').AsInteger := pID;
        Item.Open;
        while not Item.Eof do
        begin
          aux := ZeroEsquerda(IntToStr(Item.FieldByName('ID_PRODUTO').AsInteger), 5) + ' - ' + Copy(Item.FieldByName('DESCRICAO').AsString, 1, 32);
          PAFECF.ImprimeRelatorioGerencial(aux);
          aux := FormatFloat('0.000', Item.FieldByName('QUANT').AsFloat) + '   x   ' + FormatFloat('0.000', Item.FieldByName('PRECO_UNIT').AsFloat) + '   =   '
            + FormatFloat('0.000', Item.FieldByName('PRECO_TOTAL').AsFloat);
          PAFECF.ImprimeRelatorioGerencial(aux);
          if Item.FieldByName('CANCELADO').AsString = 'S' then
          begin
            aux := 'Produto ' + ZeroEsquerda(IntToStr(Item.FieldByName('ID_PRODUTO').AsInteger), 5) + ' - Cancelado';
            PAFECF.ImprimeRelatorioGerencial(aux);
          end;
          if Item.FieldByName('NUMERO_MESA_ORIG').AsString <> '' then
          begin
            aux := 'Produto ' + ZeroEsquerda(IntToStr(Item.FieldByName('ID_PRODUTO').AsInteger), 5) + ' - Transf.da mesa: ' +
              Item.FieldByName('NUMERO_MESA_ORIG').AsString;
            PAFECF.ImprimeRelatorioGerencial(aux);
          end;
          Item.Next;
        end;
        aux := '----------------------------------------';
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := 'Total da Mesa: ' + FormatFloat('0.00', Mesa.FieldByName('VALOR').AsFloat);
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := '----------------------------------------';
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := 'AGUARDE A EMISS�O DO CUPOM FISCAL';
        PAFECF.ImprimeRelatorioGerencial(aux);
        aux := '';
        PAFECF.ImprimeRelatorioGerencial(aux);
        PAFECF.FechaRelatorioGerencial(1);
      end;
    end;
  finally
    FreeAndNil(Mesa);
    FreeAndNil(Item);
  end;

end;

function TDmWorkCom.RegistraFechamentoMesa(pIDMesa: Integer): Integer;
var
  Mesa, Item: TFDQuery;
  aux: String;
  ValorTotalItem, ValorCarga: Double;
begin
  Result := 0;
  Mesa := TFDQuery.Create(nil);
  Item := TFDQuery.Create(nil);
  try
    Mesa.Connection := ConexaoDados;
    Item.Connection := ConexaoDados;
    // abre tabela de pedidos
    DmWorkCom.Dados_Pedido(0);
    DmWorkCom.Dados_PedidoItens(0);
    Dados_PedidoFP(0);
    // seleciona a mensa na tabela
    Mesa.Close;
    Mesa.SQL.Clear;
    Mesa.SQL.Add('select * from mesas_abertas');
    Mesa.SQL.Add('where mesas_abertas.id = :pID');
    Mesa.Params.ParamByName('pID').AsInteger := pIDMesa;
    Mesa.Open;
    if not Mesa.IsEmpty then
    begin
      // grava pedido
      CdsPedidos.Append;
      if DmClientes.Dados_Contato(CdsPedidos.FieldByName('IDCLIENTE').AsInteger) then
        PreencheDadosCliente(0);
      CdsPedidos.FieldByName('DATA_PEDIDO').AsDateTime := Mesa.FieldByName('DATA').AsDateTime;
      CdsPedidos.FieldByName('HORA_PEDIDO').AsDateTime := Mesa.FieldByName('HORA').AsDateTime;
      CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime := Mesa.FieldByName('DATA').AsDateTime;
      CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime := Mesa.FieldByName('HORA').AsDateTime;
      CdsPedidos.FieldByName('VALOR').AsFloat := Mesa.FieldByName('VALOR').AsFloat;
      CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat := Mesa.FieldByName('VALOR').AsFloat;
      CdsPedidos.FieldByName('CER').AsInteger := Mesa.FieldByName('CER_CONFERENCIA').AsInteger;
      CdsPedidos.FieldByName('COO_CONF_MESA').AsInteger := Mesa.FieldByName('COO').AsInteger;
      CdsPedidos.FieldByName('ID_MESA').AsInteger := Mesa.FieldByName('ID').AsInteger;
      Grava_Dados(CdsPedidos);
      Result := CdsPedidos.FieldByName('ID').AsInteger;
      // REGISTRA OS ITENS
      Item.Close;
      Item.SQL.Clear;
      Item.SQL.Add('select * from mesas_itens');
      Item.SQL.Add('where mesas_itens.id_mesa = :pID');
      Item.Params.ParamByName('pID').AsInteger := pIDMesa;
      Item.Open;
      while not Item.Eof do
      begin
        DmProdutos.Dados_Produto(Item.FieldByName('ID_PRODUTO').AsInteger);
        // localiza dados do NCM
        DmProdutos.Dados_NCM(DmProdutos.CdsProdutos.FieldByName('CODIGO_NCM').AsString, DmProdutos.CdsProdutos.FieldByName('EXCECAO_NCM').AsInteger);
        // CdsPedidoItens.Append;
        // InsereItemCupom(Item.FieldByName('QUANT').AsFloat,0,0);
        InsereItemCupom(Item.FieldByName('QUANT').AsFloat, 0, 0);
        CdsPedidoItens.Edit;
        CdsPedidoItens.FieldByName('VALOR').AsFloat := Item.FieldByName('PRECO_UNIT').AsFloat;
        CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat := Item.FieldByName('PRECO_TOTAL').AsFloat;
        CdsPedidoItens.FieldByName('CANCELADO').AsString := Item.FieldByName('CANCELADO').AsString;
        Grava_Dados(CdsPedidoItens);
        //
        ValorTotalItem := TruncaValor((((CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat * CdsPedidoItens.FieldByName('VALOR').AsFloat) -
          CdsPedidoItens.FieldByName('DESCONTO').AsFloat) + CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat), DmWorkCom.PAFECF.gDecimais);
        // calcula a carga a ser adicionada
        ValorCarga := ((ValorTotalItem * DmProdutos.CdsNCM.FieldByName('ALIQ_NACIONAL').AsFloat) / 100);
        // grava no pedido
        if not(CdsPedidos.State in [dsInsert, dsEdit]) then
          CdsPedidos.Edit;
        CdsPedidos.FieldByName('valor_carga_trib').AsFloat := CdsPedidos.FieldByName('valor_carga_trib').AsFloat + ValorCarga;
        Grava_Dados(CdsPedidos);
        // proximo
        Item.Next;
      end;
    end;
  finally
    FreeAndNil(Mesa);
    FreeAndNil(Item);
  end;

end;

procedure TDmWorkCom.CdsMesasItensCalcFields(DataSet: TDataSet);
begin
  if DataSet.Active then
  begin
    if DataSet.FieldByName('ID_MESA_ORIGEM').AsInteger > 0 then
    begin
      DataSet.FieldByName('TRANSFERIDA').AsString := 'Mesa Transf. ' + DataSet.FieldByName('NUMERO_MESA_ORIG').AsString;
    end;
  end;
end;

function TDmWorkCom.Dados_DavPrevendaAbertos(pTipo: Integer): Boolean;
begin
  // pTipo = 0 - Ambos
  // 1 - Dav
  // 2 - Pre-venda
  CdsDavPV.Close;
  CdsDavPV.Params.Clear;
  QryDavPV.Close;
  QryDavPV.SQL.Clear;
  QryDavPV.SQL.Add('select p.id,p.data_pedido,p.idcliente,');
  QryDavPV.SQL.Add('p.cliente,p.valor_total,p.numdav,');
  QryDavPV.SQL.Add('p.numpv from pedido p');
  QryDavPV.SQL.Add('where p.abastecimento = ' + QuotedStr('N'));
  QryDavPV.SQL.Add('and p.confirmada = ' + QuotedStr('S'));
  QryDavPV.SQL.Add('and p.cancelado = ' + QuotedStr('N'));
  QryDavPV.SQL.Add('and p.coo = 0');
  if pTipo = 0 then
    QryDavPV.SQL.Add('and (p.numdav <> ' + QuotedStr('') + ' or p.numpv <> ' + QuotedStr('') + ')')
  else if pTipo = 1 then
    QryDavPV.SQL.Add('and p.numdav <> ' + QuotedStr(''))
  else if pTipo = 2 then
    QryDavPV.SQL.Add('and p.numpv <> ' + QuotedStr(''));
  CdsDavPV.FetchParams;
  CdsDavPV.Open;
  //
  Result := false;
  if CdsDavPV.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.LocalizaCancelaPrevendaPendente(pData: TDateTime): Boolean;
var
  aMensagem, aNumItem: String;
  aCodMinasLegal, aCodCupomMania: String;
  PercCarga: Double;
begin
  // defini situa��o de pendentes
  xSolucaoPendentes := true;
  try
    Dados_DavPrevendaAbertos(2);
    while not CdsDavPV.Eof do
    begin
      if CdsDavPV.FieldByName('DATA_PEDIDO').AsDateTime <= pData then
      begin
        Dados_Pedido(CdsDavPV.FieldByName('ID').AsInteger);
        Dados_PedidoItens(CdsDavPV.FieldByName('ID').AsInteger);
        Dados_PedidoFP(CdsDavPV.FieldByName('ID').AsInteger);
        if CdsPedidos.RecordCount > 0 then
        begin
          if (CdsPedidos.FieldByName('COO').AsInteger = 0) and (CdsPedidos.FieldByName('Confirmada').AsString = 'S') and
            (CdsPedidos.FieldByName('Cancelado').AsString = 'N') then
          begin
            // captura os dados do cliente
            DmClientes.Dados_Contato(CdsPedidos.FieldByName('IDCLIENTE').AsInteger);
            with ClienteCupom do
            begin
              ID := DmWorkCom.CdsConfigCLIENTE_PADRAO.AsInteger;
              Cliente := DmClientes.CdsContatos.FieldByName('NOME').AsString;
              Endereco := DmClientes.CdsContatos.FieldByName('END_ENTREGA').AsString;
              Numero := DmClientes.CdsContatos.FieldByName('NUM_END_ENTREGA').AsString;
              Complemento := DmClientes.CdsContatos.FieldByName('COMPL_ENT').AsString;
              Bairro := DmClientes.CdsContatos.FieldByName('BAIRRO_END_ENTREGA').AsString;
              Cidade := DmClientes.CdsContatos.FieldByName('CID_END_ENTREGA').AsString;
              Cep := DmClientes.CdsContatos.FieldByName('CEP_END_ENTREGA').AsString;
              UF := DmClientes.CdsContatos.FieldByName('UF_END_ENT').AsString;
              CPF := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
              Identidade := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
              Placa := '';
              Odometro := '';
            end;
            if not IncluirCupomExecute(aMensagem, true) then
            begin
              ShowMessage(aMensagem);
              Abort;
            end;
            //
            CdsPedidoItens.First;
            while not CdsPedidoItens.Eof do
            begin
              CdsPedidoItens.Edit;
              Grava_Dados(CdsPedidoItens);
              // inclui o item na impressora fiscal
              DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('ean13').AsString);
              if DmWorkCom.RegistraItemECF(FloatToStr(CdsPedidoItens.FieldByName('Quantidade').AsFloat)) then
              begin
                PAFECF.AtualizaINI(false);
                // verifica Item Cancelado
                if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'S' then
                begin
                  aNumItem := IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger);
                  aNumItem := ZeroEsquerda(aNumItem, 3);
                  PAFECF.CancelarItemCupom(aNumItem);
                end;
              end;
              // proximo registro
              CdsPedidoItens.Next;
            end;
            // cancela pre-venda em caso de selecionado op��o
            CdsPedidoFP.Append;
            CdsPedidoFP.FieldByName('TIPO_DOCUMENTO').AsInteger := 0;
            CdsPedidoFP.FieldByName('DESCRICAO').AsString := 'Dinheiro';
            CdsPedidoFP.FieldByName('VALOR').AsFloat := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
            CdsPedidoFP.FieldByName('TROCO').AsFloat := 0;
            CdsPedidoFP.FieldByName('ID_FORMAPAG_CUPOM').AsInteger := CdsPedidos.FieldByName('ID_FORMAPAG').AsInteger;
            Grava_Dados(CdsPedidoFP);
            // realiza o fechamento do cupom fiscal
            PAFECF.IniciaFechamentoCupom('D', '0,00');
            PAFECF.RegistraFormaPagtoCupom(DmWorkCom.PAFECF.gDINHEIRO, TruncaValor(CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat, DmWorkCom.PAFECF.gDecimais));
            // aMensagem := PAFECF.gMD5+#13+#10;
            aMensagem := '';
            aMensagem := aMensagem + 'PV' + CdsPedidosNUMPV.AsString;
            aMensagem := aMensagem + #13 + #10;
            // calcula o percentual de carga
            PercCarga := ((CdsPedidos.FieldByName('VALOR_CARGA_TRIB').AsFloat * 100) / CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat);
            // verifica op��o de Minas Legal
            if DmWorkCom.CdsEmpresaUF.AsString = 'MG' then
            begin
              // 99999999ddmmaaaa8888888
              aCodMinasLegal := Copy(FiltraNumero(DmWorkCom.CdsEmpresaCNPJ_CPF.AsString), 1, 8);
              aCodMinasLegal := aCodMinasLegal + FormatDateTime('DDMMYYYY', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime);
              aCodMinasLegal := aCodMinasLegal + FloatToStr(TruncaValor(CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat, 0));
              aMensagem := aMensagem + 'MINAS LEGAL: ' + aCodMinasLegal + #13 + #10;
            end;
            // verifica op��o de Minas Legal
            { if DmWorkCom.CdsEmpresaUF.AsString = 'RJ' then
              begin
              aCodCupomMania := Copy(FiltraNumero(DmWorkCom.CdsEmpresaINSCRICAO_RG.AsString),1,8);
              aCodCupomMania := aCodCupomMania + FormatDateTime('DDMMYYYY',CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime);
              aCodCupomMania := aCodCupomMania + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('COO').AsInteger),6);
              aCodCupomMania := aCodCupomMania + ZeroEsquerda(IntToStr(StrToInt(DmAcBr.ACBrECF1.NumECF)),3);
              aMensagem := aMensagem + 'CUPOM MANIA, CONCORRA A PREMIOS'+#13+#10;
              aMensagem := aMensagem + 'ENVIE SMS P/6789: '+aCodCupomMania+#13+#10;
              end; }
            if DmWorkCom.CdsEmpresaUF.AsString = 'DF' then
            begin
              aMensagem := aMensagem + 'ESTABELECIMENTO INCLUIDO NO PROGRAMA DE' + #13 + #10;
              aMensagem := aMensagem + 'CONCESSAO DE CREDITOS - LEI N� 4.159/08' + #13 + #10;
              aMensagem := aMensagem + 'NOTA LEGAL: ICMS: ' + FormatFloat('0.00', PercCarga) + #13 + #10;
            end;
            if DmWorkCom.CdsEmpresaUF.AsString = 'PB' then
            begin
              aCodCupomMania := Copy(FiltraNumero(DmWorkCom.CdsEmpresaCNPJ_CPF.AsString), 1, 14) + ' ';
              aCodCupomMania := aCodCupomMania + FormatDateTime('DDMMYYYY', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime) + ' ';
              aCodCupomMania := aCodCupomMania + FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat)) + ' ';
              aCodCupomMania := aCodCupomMania + FiltraNumero(CdsPedidos.FieldByName('CNPJ_CPF').AsString);
              aMensagem := aMensagem + 'PARAIBA LEGAL - RECEITA CIDAD�' + #13 + #10;
              aMensagem := aMensagem + 'TORPEDO PREMIADO: ' + aCodCupomMania + #13 + #10;
            end;
            // exibe carga tributaria
            aMensagem := aMensagem + 'Val Aprox trib. Fed. R$' + FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_FED').AsFloat) +
              ' Est. R$' + FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_EST').AsFloat) + ' Mun. R$' +
              FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_MUN').AsFloat) + ' Fonte IBPT' + #13 + #10;
            PAFECF.TerminaFechamentoCupom(aMensagem);
            // cancelar a pre-venda
            DmWorkCom.PAFECF.CancelaCupomECF;
            PAFECF.AtualizaINI(false);
            // Grava Cupom Cancelado no banco de dados
            if not(CdsPedidos.State in [dsInsert, dsEdit]) then
              CdsPedidos.Edit;
            CdsPedidos.FieldByName('CANCELADO').AsString := 'S';
            Grava_Dados(CdsPedidos);
          end;
        end;
      end;
      CdsDavPV.Next;
    end;
  finally
    // defini situa��o de pendentes
    xSolucaoPendentes := false;
  end;

end;

function TDmWorkCom.IncluirCupomExecute(var Mensagem: String; pDAV: Boolean; pPV: Boolean = false): Boolean;
var
  aMensagem: String;
  aEstadoECF: TACBrECFEstado;
  aOK: Boolean;
begin
  Result := true;
  aOK := false;
  if (pDAV) or (pPV) or (CdsPedidos.RecordCount = 0) or (CdsPedidos.FieldByName('ID_MESA').AsInteger > 0) or
    (CdsPedidos.FieldByName('ABASTECIMENTO').AsString = 'S') then
  begin
    if sPAFNFCe = 0 then // paf-ecf
    begin
      if not PAFECF.VerificacoesPAFECF(aMensagem) then
      begin
        ShowMessage(aMensagem);
        DmWorkCom.PAFECF.sControleECFAtivo := 2;
        Result := false;
        Abort;
      end
      else
      begin
        if Trim(FiltraNumero(ClienteCupom.CPF)) = '' then
          ClienteCupom.CPF := '11111111111';
        //
        aEstadoECF := DmAcBr.ACBrECF1.Estado;
        // se estiver em modo gerencial cancela o mesmo
        if aEstadoECF = estRelatorio then
        begin
          DmWorkCom.PAFECF.FechaRelatorioGerencial;
          Sleep(500);
        end;
        // verifica estado da impressora
        if aEstadoECF = estLivre then
        begin
          // incluir cupom
          if not PAFECF.AbreCupomFiscal then
          begin
            Mensagem := 'Erro ao comunicar com o ECF!';
            Result := false;
            Abort;
          end
          else
          begin
            PAFECF.GravaDadosDocECF('RV');
            aOK := true;
          end
        end
        else
        begin
          MessageDlg('Impressora j� esta em estado de venda. Verifique!', mtWarning, [mbOK], 0);
          Result := false;
          Exit;
        end;
      end;
    end
    else
    begin
      PAFECF.CapturaContadoresECF(1);
      aOK := true;
    end;
    //
    if aOK then
    begin
      // abre tabela de classifica��o
      PAFECF.CapturaContadoresECF(sPAFNFCe);
      DmWorkCom.Dados_PedidoClassificacao(0, CdsConfigCLASSIFICA_PADRAO.AsInteger);
      if CdsPedidos.RecordCount = 0 then
        CdsPedidos.Append
      else
        CdsPedidos.Edit;
      CdsPedidos.FieldByName('COO').AsInteger := DmWorkCom.PAFECF.gCOO;
      CdsPedidos.FieldByName('CCF').AsInteger := DmWorkCom.PAFECF.gCCF;
      CdsPedidos.FieldByName('GNF').AsInteger := DmWorkCom.PAFECF.gGNF;
      CdsPedidos.FieldByName('CAIXA').AsString := DmWorkCom.PAFECF.gCaixa;
      CdsPedidos.FieldByName('NUMSERIEECF').AsString := DmAcBr.ACBrECF1.NumSerie;
      if sPAFNFCe = 0 then
      begin
        // CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime := StrToDate(DateToStr(DmAcBr.ACBrECF1.DataHora));
        // CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime := StrToTime(TimeToStr(DmAcBr.ACBrECF1.DataHora));
        CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime := xDataECF;
        CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime := xHoraECF;
      end
      else
      begin
        CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime := Now;
        CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime := Now;
      end;
      CdsPedidos.FieldByName('DAV').AsString := 'S';
      if not pDAV then
        CdsPedidos.FieldByName('DAV').AsString := 'N';
      // preenche dados do cliente
      if DmClientes.Dados_Contato(ClienteCupom.ID) then
      begin
        CdsPedidos.FieldByName('IDCLIENTE').AsInteger := ClienteCupom.ID;
        CdsPedidos.FieldByName('CLIENTE').AsString := ClienteCupom.Cliente;
        CdsPedidos.FieldByName('END_ENTREGA').AsString := ClienteCupom.Endereco;
        CdsPedidos.FieldByName('NUM_END_ENTREGA').AsString := ClienteCupom.Numero;
        CdsPedidos.FieldByName('COMPL_END_ENTREGA').AsString := ClienteCupom.Complemento;
        CdsPedidos.FieldByName('BAIRRO_END_ENTREGA').AsString := ClienteCupom.Bairro;
        CdsPedidos.FieldByName('CID_END_ENTREGA').AsString := ClienteCupom.Cidade;
        CdsPedidos.FieldByName('UF_END_ENTREGA').AsString := ClienteCupom.UF;
        CdsPedidos.FieldByName('CEP_END_ENTREGA').AsString := ClienteCupom.Cep;
        CdsPedidos.FieldByName('CNPJCPF').AsString := ClienteCupom.CPF;
        CdsPedidos.FieldByName('INSCEST').AsString := ClienteCupom.Identidade;
        CdsPedidos.FieldByName('PLACA_VEIC').AsString := ClienteCupom.Placa;
        CdsPedidos.FieldByName('ODOMETRO').AsString := ClienteCupom.Odometro;
      end;
      // confirma os dados no banco
      Grava_Dados(CdsPedidos);
    end;
  end
  else
  begin
    if sPAFNFCe = 0 then
    begin
      if DmAcBr.ACBrECF1.Estado = estVenda then
      begin
        MessageDlg('Verifique a existencia de cupom fiscal em aberto!', mtWarning, [mbOK], 0);
        Result := false;
      end;
    end;
  end;

end;

function TDmWorkCom.GeraRelatorioEstoqueComposto(fNomeArquivo: String): Boolean;
var
  Arq: TextFile;
  Linha: String;
  Q, i: TFDQuery;
begin
  Result := true;
  try
    Q := TFDQuery.Create(nil);
    i := TFDQuery.Create(nil);
    try
      Q.Connection := ConexaoDados;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('select c.id,p.descricao,p.unidade');
      Q.SQL.Add('from produtos p, produto_composto c');
      Q.SQL.Add('where c.id = p.id');
      Q.SQL.Add('group by c.id,p.descricao,p.unidade');
      Q.Open;
      // compro
      i.Connection := ConexaoDados;
      i.Close;
      i.SQL.Clear;
      i.SQL.Add('select c.id_produto,c.descricao,c.unidade,');
      i.SQL.Add('e.quantidade as estoque,c.quantidade');
      i.SQL.Add('from produto_composto c, estoque e');
      i.SQL.Add('where c.id_produto = e.idproduto');
      i.SQL.Add('and c.id = :pID');
      // elimina arquivo anterior
      if FileExists(fNomeArquivo) then
        SysUtils.DeleteFile(fNomeArquivo);
      // cria novo arquivo
      AssignFile(Arq, fNomeArquivo);
      Rewrite(Arq);
      // processa arquivo
      while not Q.Eof do
      begin
        Linha := '|001|';
        Linha := Linha + Q.FieldByName('ID').AsString + '|';
        Linha := Linha + Q.FieldByName('DESCRICAO').AsString + '|';
        Linha := Linha + Q.FieldByName('UNIDADE').AsString + '|';
        writeLn(Arq, Linha);
        // insere composi��o
        i.Close;
        i.Params.ParamByName('pID').AsString := Q.FieldByName('ID').AsString;
        i.Open;
        while not i.Eof do
        begin
          Linha := '|---|002|';
          Linha := Linha + i.FieldByName('id_produto').AsString + '|';
          Linha := Linha + i.FieldByName('DESCRICAO').AsString + '|';
          Linha := Linha + i.FieldByName('UNIDADE').AsString + '|';
          Linha := Linha + FormatFloat('0.000', i.FieldByName('QUANTIDADE').AsFloat) + '|';
          Linha := Linha + FormatFloat('0.000', i.FieldByName('ESTOQUE').AsFloat) + '|';
          writeLn(Arq, Linha);
          i.Next;
        end;
        // proximo produto
        Q.Next;
      end;
      CloseFile(Arq);
      Q.Close;
      i.Close;
    finally
      FreeAndNil(Q);
      FreeAndNil(i);
    end;
  except
    Result := false;
  end;

end;

procedure TDmWorkCom.Imprime_ParametrosPAFECF;
var
  Parametros: TACBrECFInfoPaf;
begin
  if Assigned(DmAcBr.ACBrECF1.AAC) then
    DmAcBr.ACBrECF1.PafMF_RelParametrosConfiguracao(DmAcBr.ACBrECF1.AAC.IdentPAF.Paf)
  else
  begin
    DmWorkCom.Dados_Empresa(sIDEmpresa);
    DmWorkCom.PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceParametro);
    DmWorkCom.PAFECF.ImprimeRelatorioGerencial('UF: ' + DmWorkCom.CdsEmpresaUF.AsString);
    // GO, MS, ES, PI / W, V, Y, ND
    if (DmWorkCom.CdsEmpresaUF.AsString = 'GO') or (DmWorkCom.CdsEmpresaUF.AsString = 'RJ') then
      DmWorkCom.PAFECF.ImprimeRelatorioGerencial('PERFIL DE REQUISITO CONFIGURADO: W')
    else if DmWorkCom.CdsEmpresaUF.AsString = 'MS' then
      DmWorkCom.PAFECF.ImprimeRelatorioGerencial('PERFIL DE REQUISITO CONFIGURADO: V')
    else if DmWorkCom.CdsEmpresaUF.AsString = 'ES' then
      DmWorkCom.PAFECF.ImprimeRelatorioGerencial('PERFIL DE REQUISITO CONFIGURADO: Y')
    else if (DmWorkCom.CdsEmpresaUF.AsString = 'PI') or (DmWorkCom.CdsEmpresaUF.AsString = 'MG') then
      DmWorkCom.PAFECF.ImprimeRelatorioGerencial('PERFIL DE REQUISITO CONFIGURADO: ND')
    else
      DmWorkCom.PAFECF.ImprimeRelatorioGerencial('PERFIL DE REQUISITO CONFIGURADO: ND');
    DmWorkCom.PAFECF.FechaRelatorioGerencial;

    {
      Parametros := TACBrECFInfoPaf.Create;
      try
      DmWorkCom.Dados_DadosTecnicos;
      //
      Parametros.Nome                         := DmWorkCom.CdsDadosTecnicosDENOMINACAO.AsString;
      Parametros.Versao                       := DmWorkCom.CdsDadosTecnicosVERSAO.AsString;
      Parametros.BancoDados                   := 'Firebird';
      Parametros.Linguagem                    := 'Delphi';
      Parametros.SistemaOperacional           := 'Windows';
      //
      Parametros.TipoFuncionamento            := tpfStandAlone;
      Parametros.TipoDesenvolvimento          := tpdComercializavel;
      Parametros.IntegracaoPAFECF             := tpiRetaguarda;
      //
      Parametros.RealizaPreVenda              := True;
      Parametros.RealizaDAVECF                := false;
      Parametros.RealizaDAVNaoFiscal          := True;
      Parametros.RealizaDAVOS                 := False;
      Parametros.DAVConfAnexoII               := True;
      Parametros.IndiceTecnicoProd            := True;
      Parametros.DAVDiscrFormula              := False;
      Parametros.ImpedeVendaVlrZero           := True;
      Parametros.TransfPreVenda               := False;
      Parametros.TransfDAV                    := False;
      Parametros.UsaImpressoraNaoFiscal       := True;
      if PAFECF.gRestaurante then
      begin
      Parametros.RealizaLancamentoMesa        := True;
      Parametros.BarSimilarECFRestaurante     := False;
      Parametros.BarSimilarECFComum           := True;
      Parametros.BarSimilarBalanca            := False;
      end
      else
      begin
      Parametros.RealizaLancamentoMesa        := False;
      Parametros.BarSimilarECFRestaurante     := False;
      Parametros.BarSimilarECFComum           := False;
      Parametros.BarSimilarBalanca            := False;
      Parametros.UsaImpressoraNaoFiscal       := False;
      end;
      if PAFECF.gPosto then
      begin
      Parametros.AcumulaVolumeDiario          := True;
      Parametros.ArmazenaEncerranteIniFinal   := True;
      Parametros.EmiteContrEncerrAposREDZLEIX := True;
      Parametros.IntegradoComBombas           := True;
      Parametros.CriaAbastDivergEncerrante    := False;
      Parametros.CadastroPlacaBomba           := True;
      end
      else
      begin
      Parametros.AcumulaVolumeDiario          := False;
      Parametros.ArmazenaEncerranteIniFinal   := False;
      Parametros.EmiteContrEncerrAposREDZLEIX := False;
      Parametros.IntegradoComBombas           := False;
      Parametros.CriaAbastDivergEncerrante    := False;
      Parametros.CadastroPlacaBomba           := False;
      end;
      Parametros.TransportePassageiro         := False;
      Parametros.TotalizaValoresLista         := False;
      Parametros.RecompoeGT                   := False;
      Parametros.EmitePED                     := False;
      Parametros.CupomMania                   := true;
      Parametros.MinasLegal                   := true;
      Parametros.ParaibaLegal                 := True;
      Parametros.NotaLegalDF                  := True;
      Parametros.TrocoEmCartao                := False;
      // verifica se tem o indice
      if PAFECF.gIndiceParametro > 0 then
      DmAcBr.ACBrECF1.PafMF_RelParametrosConfiguracao(Parametros,PAFECF.gIndiceParametro)
      else
      DmAcBr.ACBrECF1.PafMF_RelParametrosConfiguracao(Parametros);
      finally
      Parametros.Free;
      end;
    }
  end;

end;

function TDmWorkCom.Encerrantes(pDatai, pDataf: TDateTime; pArquivo: String): Boolean;
var
  AuxTXT, aCombustivel, aStatus, aDatai, aDataf: String;
  aArquivo: TextFile;
  Cont: Integer;
  Q: TFDQuery;
begin
  Result := true;
  try
    aDatai := FormatDateTime('MM/DD/YYYY', pDatai) + ':00:00:01';
    aDataf := FormatDateTime('MM/DD/YYYY', pDataf) + ':23:59:59';
    Q := TFDQuery.Create(nil);
    try
      Q.Connection := ConexaoDados;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('select a.id,a.idproduto,t.tanque_numero,bo.bomba_numero,');
      Q.SQL.Add('bi.bico_concentrador,a.descricao,a.data,a.coo_cupom,');
      Q.SQL.Add('a.hora,a.encerrante,a.litros,a.status_abastec,a.numserieecf,');
      Q.SQL.Add('a.data_emissao,a.hora_emissao,a.notafiscal_num');
      Q.SQL.Add('from abastecimentos a, tanques_abastec t,');
      Q.SQL.Add('bombas_abastec bo, bicos_abastec bi');
      Q.SQL.Add('where a.num_bico = bi.bico_concentrador');
      Q.SQL.Add('and bi.id_tanque = t.id');
      Q.SQL.Add('and bi.id_bomba = bo.id');
      Q.SQL.Add('and a.data >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pDatai)));
      Q.SQL.Add('and a.data <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pDataf)));
      Q.Open;
      if not Q.IsEmpty then
      begin
        Cont := 0;
        AssignFile(aArquivo, pArquivo);
        Rewrite(aArquivo);
        // Identifica��o
        AuxTXT := 'C1';
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(CdsEmpresa.FieldByName('CNPJ_CPF').AsString)), 14);
        AuxTXT := AuxTXT + AlinhaTXT(FiltraNumero(Trim(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString)), 1, 14);
        AuxTXT := AuxTXT + AlinhaTXT('', 1, 14);
        AuxTXT := AuxTXT + AlinhaTXT(FiltraNumero(Trim(CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString)), 1, 50);
        writeLn(aArquivo, AuxTXT);
        while not Q.Eof do
        begin
          aCombustivel := Q.FieldByName('descricao').AsString;
          // if not VerificaMD5Registro(9,Q.FieldByName('ID').AsInteger,0) then
          // aCombustivel := '?';
          // verifica o stadus
          case Q.FieldByName('status_abastec').AsInteger of
            1:
              aStatus := 'PENDENTE';
            2:
              aStatus := 'AFERICAO';
            3:
              aStatus := 'EMITIDO NF';
            4:
              aStatus := 'EMITIDO CF';
          end;
          //
          Inc(Cont);
          AuxTXT := 'C2';
          AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(CdsEmpresa.FieldByName('CNPJ_CPF').AsString)), 14);
          AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('idproduto').AsInteger), 1, 15);
          AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('tanque_numero').AsInteger), 1, 3);
          AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('bomba_numero').AsInteger), 1, 3);
          AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('bico_concentrador').AsInteger), 1, 3);
          AuxTXT := AuxTXT + AlinhaTXT(Copy(aCombustivel, 1, 19), 1, 20);
          AuxTXT := AuxTXT + FormatDateTime('YYYYMMDD', Q.FieldByName('data').AsDateTime);
          AuxTXT := AuxTXT + FormatDateTime('HHMMSS', Q.FieldByName('hora').AsDateTime);
          AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('encerrante').AsFloat - Q.FieldByName('litros').AsFloat)), 15);
          AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('encerrante').AsFloat)), 15);
          AuxTXT := AuxTXT + AlinhaTXT(aStatus, 1, 10);
          AuxTXT := AuxTXT + AlinhaTXT(Q.FieldByName('numserieecf').AsString, 1, 10);
          AuxTXT := AuxTXT + FormatDateTime('YYYYMMDD', Q.FieldByName('data_emissao').AsDateTime);
          AuxTXT := AuxTXT + FormatDateTime('HHMMSS', Q.FieldByName('hora_emissao').AsDateTime);
          AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('coo_cupom').AsInteger), 1, 6);
          if Q.FieldByName('status_abastec').AsInteger = 3 then
            AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('notafiscal_num').AsInteger), 1, 6)
          else
            AuxTXT := AuxTXT + AlinhaTXT(IntToStr(0), 1, 6);
          AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('litros').AsFloat)), 10);
          writeLn(aArquivo, AuxTXT);
          //
          Q.Next;
        end;
        AuxTXT := 'C9';
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(CdsEmpresa.FieldByName('CNPJ_CPF').AsString)), 14);
        AuxTXT := AuxTXT + AlinhaTXT(FiltraNumero(Trim(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString)), 1, 14);
        AuxTXT := AuxTXT + ZeroEsquerda(IntToStr(Cont), 6);
        writeLn(aArquivo, AuxTXT);
        CloseFile(aArquivo);
      end
      else
        Result := false;
      Q.Close;
    finally
      FreeAndNil(Q);
    end;
  except
    Result := false;
  end;

end;

function TDmWorkCom.AbastecimentosPendentes: Boolean;
var
  AuxTXT: String;
  Q: TFDQuery;
begin
  Result := true;
  try
    Q := TFDQuery.Create(nil);
    try
      Q.Connection := ConexaoDados;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('select t.tanque_numero,bo.bomba_numero,');
      Q.SQL.Add('bi.bico_concentrador,p.descricao,a.data,');
      Q.SQL.Add('a.hora,a.encerrante,a.litros,a.status_abastec');
      Q.SQL.Add('from abastecimentos a, tanques_abastec t,');
      Q.SQL.Add('bombas_abastec bo, bicos_abastec bi, produtos p');
      Q.SQL.Add('where a.num_bico = bi.bico_concentrador');
      Q.SQL.Add('and bi.id_tanque = t.id');
      Q.SQL.Add('and bi.id_bomba = bo.id');
      Q.SQL.Add('and t.id_produto = p.id');
      Q.SQL.Add('and a.status_abastec = 1');
      Q.Open;
      if not Q.IsEmpty then
      begin
        PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceAbastec);
        PAFECF.ImprimeRelatorioGerencial('ABASTECIMENTOS PENDENTES');
        while not Q.Eof do
        begin
          AuxTXT := '#AP:';
          AuxTXT := AuxTXT + 'B' + ZeroEsquerda(IntToStr(Q.FieldByName('bico_concentrador').AsInteger), 2) + ' ';
          AuxTXT := AuxTXT + 'EI' + ZeroEsquerda(FormatFloat('0.000', Q.FieldByName('encerrante').AsFloat - Q.FieldByName('litros').AsFloat), 11) + ' ';
          AuxTXT := AuxTXT + 'EF' + ZeroEsquerda(FormatFloat('0.000', Q.FieldByName('encerrante').AsFloat), 11) + ' ';
          AuxTXT := AuxTXT + 'V' + FormatFloat('0.000', Q.FieldByName('litros').AsFloat) + ' ';
          PAFECF.ImprimeRelatorioGerencial(AuxTXT);
          Q.Next;
        end;
        PAFECF.FechaRelatorioGerencial;
      end
      else
        MessageDlg('N�o h� abastecimentos pendentes!!', mtWarning, [mbOK], 0);
      Q.Close;
    finally
      FreeAndNil(Q);
    end;
  except
    Result := false;
  end;

end;

procedure TDmWorkCom.EmiteControleEncerranteReducaoZ;
var
  SQL: TFDQuery;
  AuxTXT: String;
  aDataZ, aHoraQuebra: TDateTime;
  aMovAbastec, aMovEmissao, aMovEmisNF: Boolean;
  aEncInicial, aEncFinal, EncConcentrador: Double;
  aQuantidade, aQuebraIn, aQuebraOut, aVespeb, AuxVespeb, aEnc_Out, aEnc_In: Double;
  aConcentradorConectado: Boolean;
begin
  SQL := TFDQuery.Create(nil);
  try
    SQL.Connection := ConexaoDados;
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select t.tanque_numero,bo.bomba_numero,');
    SQL.SQL.Add('       bi.bico_concentrador,p.descricao,bi.ativo');
    SQL.SQL.Add('from tanques_abastec t, bombas_abastec bo,');
    SQL.SQL.Add('      bicos_abastec bi, produtos p');
    SQL.SQL.Add('where bi.id_tanque = t.id');
    SQL.SQL.Add('and bi.id_bomba = bo.id');
    SQL.SQL.Add('and t.id_produto = p.id');
    SQL.SQL.Add('group by t.tanque_numero,bo.bomba_numero,');
    SQL.SQL.Add('         bi.bico_concentrador,p.descricao,bi.ativo');
    SQL.Open;
    if not SQL.IsEmpty then
    begin
      aEncInicial := 0;
      aEncFinal := 0;
      aQuantidade := 0;
      aQuebraIn := 0;
      aQuebraOut := 0;
      aConcentradorConectado := true;
      aDataZ := RetornaDataUltimaRedZ;
      PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceEncerrante);
      PAFECF.ImprimeRelatorioGerencial('CONTROLE DE ENCERRANTES');
      while not SQL.Eof do
      begin
        DmPosto.Dados_Bicos(SQL.FieldByName('bico_concentrador').AsString);
        // captura informa��es de movimento
        if aConcentradorConectado then
        begin
          EncConcentrador := DmPosto.RetornaEncBicoConcentrador(SQL.FieldByName('bico_concentrador').AsString);
          EncConcentrador := TruncaValor(EncConcentrador, 3);
          if EncConcentrador = 0 then
            aConcentradorConectado := false;
        end;
        aMovAbastec := DmPosto.VerificaMovtoBicoAbast(DmAcBr.ACBrECF1.DataMovimento, SQL.FieldByName('bico_concentrador').AsString);
        aMovEmissao := DmPosto.VerificaMovimentoBico(aDataZ, SQL.FieldByName('bico_concentrador').AsString);
        aMovEmisNF := DmPosto.VerificaMovimentoBicoNF(aDataZ, SQL.FieldByName('bico_concentrador').AsString);
        // aMovEmissao := DmPosto.VerificaMovimentoBico(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
        // aMovEmisNF  := DmPosto.VerificaMovimentoBicoNF(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
        // captura o encerrante inicial
        // aEncInicial := DmPosto.RetornaEncerranteUltZ(DmAcBr.ACBrECF1.DataMovimento-1,SQL.FieldByName('bico_concentrador').AsString);
        aEncInicial := DmPosto.RetornaEncerranteUltZ(aDataZ, SQL.FieldByName('bico_concentrador').AsString);
        aEncInicial := TruncaValor(aEncInicial, 3);
        // captura o vespeb caso exista
        DmPosto.RetornaDadosVespeb(aVespeb, aEnc_Out, aEnc_In, DmPosto.CdsBicos.FieldByName('ID').AsInteger, aDataZ);
        aVespeb := TruncaValor(aVespeb, 3);
        aEnc_Out := TruncaValor(aEnc_Out, 3);
        aEnc_In := TruncaValor(aEnc_In, 3);
        if aVespeb > 0 then
        begin
          if aEncInicial < aEnc_In then
            aEncInicial := aEncInicial + aVespeb;
        end
        else if aVespeb < 0 then
        begin
          if (aEncInicial > aEnc_In) and (aEncInicial > EncConcentrador) then
          begin
            AuxVespeb := aVespeb * -1;
            aEncInicial := aEncInicial - AuxVespeb;
          end;
        end;
        aEncInicial := TruncaValor(aEncInicial, 3);
        // verifica se teve abastecimentos e movimento no dia
        if aMovAbastec then
        begin
          // captura o encerrante final
          aEncFinal := DmPosto.RetornaEncerranteFim(DmAcBr.ACBrECF1.DataMovimento, SQL.FieldByName('bico_concentrador').AsString);
          aEncFinal := TruncaValor(aEncFinal, 3);
        end
        else
          aEncFinal := aEncInicial;
        // verifica o encerrante final
        if (EncConcentrador <> aEncFinal) and (EncConcentrador > 0) and (aEncFinal > 0) then
        begin
          if SQL.FieldByName('ativo').AsString = 'S' then
            aEncFinal := EncConcentrador;
        end;
        // verifica se tem
        // DmPosto.Dados_Bicos(SQL.FieldByName('bico_concentrador').AsString);
        if DmPosto.RetornaDadosDescontinuidade(aQuebraIn, aQuebraOut, aHoraQuebra, DmPosto.CdsBicos.FieldByName('ID').AsInteger, DmAcBr.ACBrECF1.DataMovimento)
        then
        begin
          // Captura a emiss�o antes da descontinuidade
          // TipoMov 0 = Anterior e 1 =  posterior
          if (aMovEmissao) or (aMovEmisNF) then
          begin
            aQuantidade := DmPosto.RetornaQuantVendidaPeriodo(DmAcBr.ACBrECF1.DataMovimento, aHoraQuebra, SQL.FieldByName('bico_concentrador').AsString, 0);
            aQuantidade := TruncaValor(aQuantidade, 3);
          end
          else
            aQuantidade := 0;
          // imprime os dados do combustivel
          AuxTXT := '#CE:';
          AuxTXT := AuxTXT + 'B' + ZeroEsquerda(IntToStr(SQL.FieldByName('bico_concentrador').AsInteger), 2) + '  ';
          AuxTXT := AuxTXT + 'EI' + ZeroEsquerda(FormatFloat('0.000', aEncInicial), 11) + ' ';
          AuxTXT := AuxTXT + 'EF' + ZeroEsquerda(FormatFloat('0.000', aQuebraOut), 11) + ' ';
          AuxTXT := AuxTXT + 'V' + FormatFloat('0.000', aQuantidade);
          PAFECF.ImprimeRelatorioGerencial(AuxTXT);
          // Captura a emiss�o antes da descontinuidade
          if (aMovEmissao) or (aMovEmisNF) then
          begin
            aQuantidade := DmPosto.RetornaQuantVendidaPeriodo(DmAcBr.ACBrECF1.DataMovimento, aHoraQuebra, SQL.FieldByName('bico_concentrador').AsString, 1);
            aQuantidade := TruncaValor(aQuantidade, 3);
          end
          else
            aQuantidade := 0;
          // imprime os dados do combustivel
          AuxTXT := '#CE:';
          AuxTXT := AuxTXT + 'B' + ZeroEsquerda(IntToStr(SQL.FieldByName('bico_concentrador').AsInteger), 2) + '  ';
          AuxTXT := AuxTXT + 'EI' + ZeroEsquerda(FormatFloat('0.000', aQuebraIn), 11) + ' ';
          AuxTXT := AuxTXT + 'EF' + ZeroEsquerda(FormatFloat('0.000', aEncFinal), 11) + ' ';
          AuxTXT := AuxTXT + 'V' + FormatFloat('0.000', aQuantidade);
          PAFECF.ImprimeRelatorioGerencial(AuxTXT);
        end
        else
        begin
          // verifica se tevem emiss�o de abastecimentos
          if (aMovEmissao) or (aMovEmisNF) then
          begin
            // aQuantidade := DmPosto.RetornaQuantVendida(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
            aQuantidade := DmPosto.RetornaQuantVendida(aDataZ, SQL.FieldByName('bico_concentrador').AsString);
            aQuantidade := TruncaValor(aQuantidade, 3);
          end
          else
            aQuantidade := 0;
          // imprime os dados do combustivel
          AuxTXT := '#CE:';
          AuxTXT := AuxTXT + 'B' + ZeroEsquerda(IntToStr(SQL.FieldByName('bico_concentrador').AsInteger), 2) + '  ';
          AuxTXT := AuxTXT + 'EI' + ZeroEsquerda(FormatFloat('0.000', aEncInicial), 11) + ' ';
          AuxTXT := AuxTXT + 'EF' + ZeroEsquerda(FormatFloat('0.000', aEncFinal), 11) + ' ';
          AuxTXT := AuxTXT + 'V' + FormatFloat('0.000', aQuantidade);
          PAFECF.ImprimeRelatorioGerencial(AuxTXT);
        end;
        //
        SQL.Next;
      end;
      PAFECF.FechaRelatorioGerencial;
    end;
    SQL.Close;
  finally
    FreeAndNil(SQL);
  end;
end;

{
  procedure TDmWorkCom.EmiteControleEncerranteReducaoZ;
  var SQL : TFDQuery;
  auxTXT : String;
  aDataZ, aHoraQuebra : TDateTime;
  aMovAbastec, aMovEmissao, aMovEmisNF : Boolean;
  aEncInicial, aEncFinal, EncConcentrador : Double;
  aQuantidade, aQuebraIn, aQuebraOut : Double;
  aConcentradorConectado : Boolean;
  begin
  SQL := TFDQuery.Create(nil);
  try
  SQL.Connection := ConexaoDados;
  SQL.Close;
  SQl.SQL.Clear;
  SQL.SQL.Add('select t.tanque_numero,bo.bomba_numero,');
  SQL.SQL.Add('       bi.bico_concentrador,p.descricao,bi.ativo');
  SQL.SQL.Add('from tanques_abastec t, bombas_abastec bo,');
  SQL.SQL.Add('      bicos_abastec bi, produtos p');
  SQL.SQL.Add('where bi.id_tanque = t.id');
  SQL.SQL.Add('and bi.id_bomba = bo.id');
  SQL.SQL.Add('and t.id_produto = p.id');
  SQL.SQL.Add('group by t.tanque_numero,bo.bomba_numero,');
  SQL.SQL.Add('         bi.bico_concentrador,p.descricao,bi.ativo');
  SQL.Open;
  if not SQL.IsEmpty then
  begin
  aEncInicial := 0;
  aEncFinal   := 0;
  aQuantidade := 0;
  aQuebraIn   := 0;
  aQuebraOut  := 0;
  aConcentradorConectado := true;
  aDataZ := RetornaDataUltimaRedZ;
  PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceEncerrante);
  PAFECF.ImprimeRelatorioGerencial('CONTROLE DE ENCERRANTES');
  while not SQL.Eof do
  begin
  // captura informa��es de movimento
  if aConcentradorConectado then
  begin
  EncConcentrador := DmPosto.RetornaEncBicoConcentrador(SQL.FieldByName('bico_concentrador').AsString);
  EncConcentrador := TruncaValor(EncConcentrador,3);
  if EncConcentrador = 0 then
  aConcentradorConectado := false;
  end;
  aMovAbastec := DmPosto.VerificaMovtoBicoAbast(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
  aMovEmissao := DmPosto.VerificaMovimentoBico(aDataZ,SQL.FieldByName('bico_concentrador').AsString);
  aMovEmisNF  := DmPosto.VerificaMovimentoBicoNF(aDataZ,SQL.FieldByName('bico_concentrador').AsString);
  //        aMovEmissao := DmPosto.VerificaMovimentoBico(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
  //        aMovEmisNF  := DmPosto.VerificaMovimentoBicoNF(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
  // captura o encerrante inicial
  //        aEncInicial := DmPosto.RetornaEncerranteUltZ(DmAcBr.ACBrECF1.DataMovimento-1,SQL.FieldByName('bico_concentrador').AsString);
  aEncInicial := DmPosto.RetornaEncerranteUltZ(aDataZ,SQL.FieldByName('bico_concentrador').AsString);
  aEncInicial := TruncaValor(aEncInicial,3);
  // verifica se teve abastecimentos e movimento no dia
  if aMovAbastec then
  begin
  // captura o encerrante final
  aEncFinal   := DmPosto.RetornaEncerranteFim(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
  aEncFinal   := TruncaValor(aEncFinal,3);
  end
  else aEncFinal := aEncInicial;
  //  verifica o encerrante final
  if (EncConcentrador <> aEncFinal) and
  (EncConcentrador > 0) and
  (aEncFinal > 0)then
  begin
  if SQL.FieldByName('ativo').AsString = 'S' then
  aEncFinal := EncConcentrador;
  end;
  // verifica se tem
  DmPosto.Dados_Bicos(SQL.FieldByName('bico_concentrador').AsString);
  if DmPosto.RetornaDadosDescontinuidade(aQuebraIn,aQuebraOut,aHoraQuebra,
  DmPosto.CdsBicos.FieldByName('ID').AsInteger,
  DmAcBr.ACBrECF1.DataMovimento) then
  begin
  // Captura a emiss�o antes da descontinuidade
  // TipoMov 0 = Anterior e 1 =  posterior
  if (aMovEmissao) or (aMovEmisNF) then
  begin
  aQuantidade := DmPosto.RetornaQuantVendidaPeriodo(DmAcBr.ACBrECF1.DataMovimento,
  aHoraQuebra,
  SQL.FieldByName('bico_concentrador').AsString,
  0);
  aQuantidade := TruncaValor(aQuantidade,3);
  end
  else aQuantidade := 0;
  // imprime os dados do combustivel
  auxTXT := '#CE:';
  auxTXT := auxTXT + 'B'+ZeroEsquerda(IntToStr(SQL.FieldByName('bico_concentrador').AsInteger),2)+'  ';
  auxTXT := auxTXT + 'EI'+ZeroEsquerda(FormatFloat('0.000',aEncInicial),11)+' ';
  auxTXT := auxTXT + 'EF'+ZeroEsquerda(FormatFloat('0.000',aQuebraOut),11)+' ';
  auxTXT := auxTXT + 'V'+FormatFloat('0.000',aQuantidade);
  PAFECF.ImprimeRelatorioGerencial(auxTXT);
  // Captura a emiss�o antes da descontinuidade
  if (aMovEmissao) or (aMovEmisNF) then
  begin
  aQuantidade := DmPosto.RetornaQuantVendidaPeriodo(DmAcBr.ACBrECF1.DataMovimento,
  aHoraQuebra,
  SQL.FieldByName('bico_concentrador').AsString,
  1);
  aQuantidade := TruncaValor(aQuantidade,3);
  end
  else aQuantidade := 0;
  // imprime os dados do combustivel
  auxTXT := '#CE:';
  auxTXT := auxTXT + 'B'+ZeroEsquerda(IntToStr(SQL.FieldByName('bico_concentrador').AsInteger),2)+'  ';
  auxTXT := auxTXT + 'EI'+ZeroEsquerda(FormatFloat('0.000',aQuebraIn),11)+' ';
  auxTXT := auxTXT + 'EF'+ZeroEsquerda(FormatFloat('0.000',aEncFinal),11)+' ';
  auxTXT := auxTXT + 'V'+FormatFloat('0.000',aQuantidade);
  PAFECF.ImprimeRelatorioGerencial(auxTXT);
  end
  else
  begin
  // verifica se tevem emiss�o de abastecimentos
  if (aMovEmissao) or (aMovEmisNF) then
  begin
  //            aQuantidade := DmPosto.RetornaQuantVendida(DmAcBr.ACBrECF1.DataMovimento,SQL.FieldByName('bico_concentrador').AsString);
  aQuantidade := DmPosto.RetornaQuantVendida(aDataZ,SQL.FieldByName('bico_concentrador').AsString);
  aQuantidade := TruncaValor(aQuantidade,3);
  end
  else aQuantidade := 0;
  // imprime os dados do combustivel
  auxTXT := '#CE:';
  auxTXT := auxTXT + 'B'+ZeroEsquerda(IntToStr(SQL.FieldByName('bico_concentrador').AsInteger),2)+'  ';
  auxTXT := auxTXT + 'EI'+ZeroEsquerda(FormatFloat('0.000',aEncInicial),11)+' ';
  auxTXT := auxTXT + 'EF'+ZeroEsquerda(FormatFloat('0.000',aEncFinal),11)+' ';
  auxTXT := auxTXT + 'V'+FormatFloat('0.000',aQuantidade);
  PAFECF.ImprimeRelatorioGerencial(auxTXT);
  end;
  //
  SQL.Next;
  end;
  PAFECF.FechaRelatorioGerencial;
  end;
  SQL.Close;
  finally
  FreeAndNil(SQL);
  end;
  end;
}

procedure TDmWorkCom.AjustarMD5Pedido(IDPedido: Integer);
begin
  // defini situa��o de atualiza��o de MD5
  xAtMD5 := true;
  try
    Dados_Pedido(IDPedido);
    CdsPedidos.Edit;
    Grava_Dados(CdsPedidos);
    Dados_PedidoItens(IDPedido);
    while not CdsPedidoItens.Eof do
    begin
      CdsPedidoItens.Edit;
      Grava_Dados(CdsPedidoItens);
      //
      CdsPedidoItens.Next;
    end;
  finally
    // defini situa��o de atualiza��o de MD5
    xAtMD5 := false;
  end;

end;

procedure TDmWorkCom.AtualizaConfigAcBr;
var
  OK: Boolean;
begin
  // abre tabela com os dados de configura��o
  Dados_Empresa(sIDEmpresa);
  Dados_Config(sIDEmpresa);
  // Repassa Dados para componente AcBrNFe

  DmAcBr.ACBrNFe1.configuracoes.Certificados.ArquivoPFX := sCertificado;
  DmAcBr.ACBrNFe1.configuracoes.Certificados.Senha := sSenha;
  DmAcBr.ACBrNFe1.configuracoes.Certificados.NumeroSerie := sSerial;

  // Geral
  DmAcBr.ACBrNFe1.configuracoes.Geral.FormaEmissao := StrToTpEmis(OK, IntToStr(sFormas));
  DmAcBr.ACBrNFe1.configuracoes.Geral.Salvar := sSalvaArq;
  DmAcBr.ACBrNFe1.configuracoes.Arquivos.PathSalvar := sPathArq;
  if sToken <> '' then
  begin
    DmAcBr.ACBrNFe1.configuracoes.Geral.IdCSC := sToken;
    DmAcBr.ACBrNFe1.configuracoes.Geral.CSC := sIDToken;
  end;
  // modelo
  DmAcBr.ACBrNFe1.configuracoes.Geral.ModeloDF := moNFe;
  if sPAFNFCe = 1 then
    DmAcBr.ACBrNFe1.configuracoes.Geral.ModeloDF := moNFCe;
  // vers�o
  case sVersaoDF of
    0:
      DmAcBr.ACBrNFe1.configuracoes.Geral.VersaoDF := pcnConversaoNFe.ve200;
    1:
      DmAcBr.ACBrNFe1.configuracoes.Geral.VersaoDF := pcnConversaoNFe.ve300;
    2:
      DmAcBr.ACBrNFe1.configuracoes.Geral.VersaoDF := pcnConversaoNFe.ve310;
    3:
      DmAcBr.ACBrNFe1.configuracoes.Geral.VersaoDF := pcnConversaoNFe.ve400;
  end;
  DmAcBr.ACBrNFe1.configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'Schemas\NFe';
  DmAcBr.ACBrNFe1.configuracoes.Geral.ExibirErroSchema := false;
//  DmAcBr.ACBrNFe1.configuracoes.Geral.IncluirQRCodeXMLNFCe := true;
  DmAcBr.ACBrNFe1.configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';
  // WebServices
  if sPAFNFCe = 1 then // NFCe
  begin
    if sUsarWSAux = 'S' then
      DmAcBr.ACBrNFe1.configuracoes.WebServices.UF := sUFWSAux
    else
      DmAcBr.ACBrNFe1.configuracoes.WebServices.UF := sUFWS;
  end
  else
  begin
    DmAcBr.ACBrNFe1.configuracoes.WebServices.UF := sUFWS;
  end;
  DmAcBr.ACBrNFe1.configuracoes.WebServices.Ambiente := StrToTpAmb(OK, IntToStr(sAmbiente + 1));
  if sWSVisualizar = 'S' then
    DmAcBr.ACBrNFe1.configuracoes.WebServices.Visualizar := true
  else
    DmAcBr.ACBrNFe1.configuracoes.WebServices.Visualizar := false;
  DmAcBr.ACBrNFe1.configuracoes.WebServices.ProxyHost := sHost;
  DmAcBr.ACBrNFe1.configuracoes.WebServices.ProxyPort := sPorta;
  DmAcBr.ACBrNFe1.configuracoes.WebServices.ProxyUser := sUsuario;
  DmAcBr.ACBrNFe1.configuracoes.WebServices.ProxyPass := sSenhaWS;
  // DmAcBr.ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas := 5000;
  // DmAcBr.ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet := 5000;
  //
  if sPAFNFCe = 0 then // NFe
  begin
    DmAcBr.ACBrNFeDANFEFR1.ACBrNFe := DmAcBr.ACBrNFe1;
    DmAcBr.ACBrNFeDANFEFR1.PathPDF := sPathArq;
    DmAcBr.ACBrNFeDANFEFR1.FastFile := ExtractFilePath(Application.ExeName) + 'Relatorios\DANFeRetrato.fr3';
    DmAcBr.ACBrNFeDANFEFR1.TipoDANFE := tiRetrato
  end
  else
  begin
    DmAcBr.ACBrNFeDANFCeFortes1.ACBrNFe := DmAcBr.ACBrNFe1;
    DmAcBr.ACBrNFeDANFCeFortes1.PathPDF := sPathArq;
    // DmAcBr.ACBrNFeDANFEFR1.FastFile       := ExtractFilePath(Application.ExeName)+'Relatorios\DANFeNFCe.fr3';
    DmAcBr.ACBrNFeDANFCeFortes1.TipoDANFE := tiNFCe;
    DmAcBr.ACBrNFe1.DANFE.ImprimeEmUmaLinha := true;;
  end;
  DmAcBr.ACBrNFe1.DANFE.Sistema := ExtractFileName(Application.ExeName);
  DmAcBr.ACBrNFe1.DANFE.Usuario := DmWorkCom.PAFECF.gNomeOperador;
  DmAcBr.ACBrNFe1.DANFE.Impressora := 'Laser';
  if sVisualizaDanfe = 'S' then
    DmAcBr.ACBrNFe1.DANFE.MostrarPreview := true
  else
    DmAcBr.ACBrNFe1.DANFE.MostrarPreview := false;
  DmAcBr.ACBrNFe1.DANFE.NumCopias := 1;
  DmAcBr.ACBrNFe1.DANFE.Fax := CdsEmpresa.FieldByName('TELEFAX').AsString;
  DmAcBr.ACBrNFe1.DANFE.Email := CdsEmpresa.FieldByName('EMAIL').AsString;
  DmAcBr.ACBrNFe1.DANFE.Site := CdsEmpresa.FieldByName('SITE').AsString;
  DmAcBr.ACBrNFe1.DANFE.ImprimirDescPorc := true;
  DmAcBr.ACBrNFe1.DANFE.Logo := sLogoMarca;
  DmAcBr.ACBrNFe1.DANFE.PathPDF := sPathArq;

end;

function TDmWorkCom.CalcularTributoPedido(pIDPedido: Integer; pCST, pCFOP: String): Boolean;
var
  QItens, QGrava: TFDQuery;
  aBaseImcs, aValIcms, aReduzBase, aAliqST, aBaseST, aValSt: Double;
  aAliqICMS, aValPis, aValCofins, aValIPI: Double;
begin
  Result := true;
  try
    QItens := TFDQuery.Create(nil);
    QGrava := TFDQuery.Create(nil);
    try
      // prepara SQL de grava��o de dados
      QGrava.Connection := ConexaoDados;
      QGrava.Close;
      QGrava.SQL.Clear;
      QGrava.SQL.Add('update pedido_itens i set');
      QGrava.SQL.Add('i.cst = :pCST,');
      QGrava.SQL.Add('i.cfop = :pCFOP,');
      QGrava.SQL.Add('i.MVA = :pMVA,');
      QGrava.SQL.Add('i.aliq_icms = :pAliqICMS,');
      QGrava.SQL.Add('i.base_icms = :pBaseICMS,');
      QGrava.SQL.Add('i.valor_icms = :pValICMS,');
      QGrava.SQL.Add('i.reducao_base = :pReducao,');
      QGrava.SQL.Add('i.aliq_icms_st = :pAliqST,');
      QGrava.SQL.Add('i.base_icms_st = :pBaseST,');
      QGrava.SQL.Add('i.valor_icms_st = :pValST,');
      QGrava.SQL.Add('i.valor_pis = :ValPis,');
      QGrava.SQL.Add('i.valor_cofins = :pValCofins,');
      QGrava.SQL.Add('i.valor_ipi = :pValIpi');
      QGrava.SQL.Add('where i.id = :pID');
      // prepara SQL para selecionar itens do pedido
      QItens.Connection := ConexaoDados;
      QItens.Close;
      QItens.SQL.Clear;
      QItens.SQL.Add('select p.uf_end_entrega as uf,i.id,i.idproduto,');
      QItens.SQL.Add('i.quantidade,i.valor,i.desconto,i.acrescimo,');
      QItens.SQL.Add('i.valor_total,pr.mva,pr.aliquota_ipi,');
      QItens.SQL.Add('pr.aliquota_pis,pr.aliquota_cofins');
      QItens.SQL.Add('from pedido p, pedido_itens i, produtos pr');
      QItens.SQL.Add('where i.idpedido = p.id');
      QItens.SQL.Add('and pr.id = i.idproduto');
      QItens.SQL.Add('and p.id = :pID');
      QItens.Params.ParamByName('pID').AsInteger := pIDPedido;
      QItens.Open;
      while not QItens.Eof do
      begin
        // zera os valores
        aAliqICMS := 0;
        aBaseImcs := 0;
        aValIcms := 0;
        aReduzBase := 0;
        aAliqST := 0;
        aBaseST := 0;
        aValSt := 0;
        aValPis := 0;
        aValCofins := 0;
        aValIPI := 0;
        // localiza tributa��o
        if DmProdutos.Dados_Produto_Aliquota(QItens.FieldByName('IDProduto').AsInteger, QItens.FieldByName('UF').AsString) then
        begin
          // calcula o imposto
          aAliqICMS := DmProdutos.CdsProduto_AliquotaALIQUOTA.AsFloat;
          if aAliqICMS > 0 then
          begin
            aBaseImcs := QItens.FieldByName('valor_total').AsFloat;
            aValIcms := (aBaseImcs * aAliqICMS) / 100;
            aReduzBase := DmProdutos.CdsProduto_AliquotaREDUCAO_BASE.AsFloat;
          end;
          if (Copy(DmProdutos.CdsProduto_AliquotaCST.AsString, 2, 2) = '60') then
          begin
            aAliqST := DmProdutos.CdsProduto_AliquotaALIQUOTA.AsFloat;
            if aAliqST > 0 then
            begin
              aBaseST := ((QItens.FieldByName('valor_total').AsFloat * QItens.FieldByName('MVA').AsFloat) / 100) + QItens.FieldByName('valor_total').AsFloat;
              aValSt := (aBaseST * aAliqST) / 100;
            end;
            // zera valores ICMS
            aAliqICMS := 0;
            aBaseImcs := 0;
            aValIcms := 0;
          end;
          aValPis := (QItens.FieldByName('valor_total').AsFloat * QItens.FieldByName('aliquota_pis').AsFloat) / 100;
          aValCofins := (QItens.FieldByName('valor_total').AsFloat * QItens.FieldByName('aliquota_cofins').AsFloat) / 100;
          aValIPI := (QItens.FieldByName('valor_total').AsFloat * QItens.FieldByName('aliquota_ipi').AsFloat) / 100;
        end;
        // grava dados
        QGrava.Close;
        QGrava.Params.ParamByName('pCST').AsString := DmProdutos.CdsProduto_AliquotaCST.AsString;
        QGrava.Params.ParamByName('pCFOP').AsString := DmProdutos.CdsProduto_AliquotaCFOP.AsString;
        QGrava.Params.ParamByName('pMVA').AsFloat := QItens.FieldByName('MVA').AsFloat;
        QGrava.Params.ParamByName('pAliqICMS').AsFloat := aAliqICMS;
        QGrava.Params.ParamByName('pBaseICMS').AsFloat := aBaseImcs;
        QGrava.Params.ParamByName('pValICMS').AsFloat := aValIcms;
        QGrava.Params.ParamByName('pReducao').AsFloat := aReduzBase;
        QGrava.Params.ParamByName('pAliqST').AsFloat := aAliqST;
        QGrava.Params.ParamByName('pBaseST').AsFloat := aBaseST;
        QGrava.Params.ParamByName('pValST').AsFloat := aValSt;
        QGrava.Params.ParamByName('ValPis').AsFloat := aValPis;
        QGrava.Params.ParamByName('pValCofins').AsFloat := aValCofins;
        QGrava.Params.ParamByName('pValIpi').AsFloat := aValIPI;
        QGrava.Params.ParamByName('pID').AsInteger := QItens.FieldByName('ID').AsInteger;
        QGrava.ExecSQL;
        // proximo item
        QItens.Next;
      end;
      QItens.Close;
      // grava o total do tributo na tabela principal
      QItens.Close;
      QItens.SQL.Clear;
      QItens.SQL.Add('select sum(i.base_icms) as base_icms,');
      QItens.SQL.Add('sum(i.valor_icms) as valor_icms,');
      QItens.SQL.Add('sum(i.reducao_base) as reducao_base,');
      QItens.SQL.Add('sum(i.base_icms_st) as base_icms_st,');
      QItens.SQL.Add('sum(i.valor_icms_st) as valor_icms_st,');
      QItens.SQL.Add('sum(i.valor_pis) as valor_pis,');
      QItens.SQL.Add('sum(i.valor_cofins) as valor_cofins,');
      QItens.SQL.Add('sum(i.valor_ipi) as valor_ipi');
      QItens.SQL.Add('from pedido_itens i');
      QItens.SQL.Add('where i.idpedido = :pID');
      QItens.Params.ParamByName('pID').AsInteger := pIDPedido;
      QItens.Open;
      if not QItens.IsEmpty then
      begin
        QGrava.Close;
        QGrava.SQL.Clear;
        QGrava.SQL.Add('update pedido p set');
        QGrava.SQL.Add('p.CST = :pCST,');
        QGrava.SQL.Add('p.CFOP = :pCFOP,');
        QGrava.SQL.Add('p.base_icms = :pBase_Icms,');
        QGrava.SQL.Add('p.valor_icms = :pValor_icms,');
        QGrava.SQL.Add('p.base_icms_st = :pBase_icms_st,');
        QGrava.SQL.Add('p.valor_icms_st = :pValor_icms_st,');
        QGrava.SQL.Add('p.valor_pis = :pValor_pis,');
        QGrava.SQL.Add('p.valor_cofins = :pValor_cofins,');
        QGrava.SQL.Add('p.valor_ipi = :pValor_ipi');
        QGrava.SQL.Add('where p.id = :pID');
        QGrava.Params.ParamByName('pCST').AsString := pCST;
        QGrava.Params.ParamByName('pCFOP').AsString := pCFOP;
        QGrava.Params.ParamByName('pBase_Icms').AsFloat := QItens.FieldByName('Base_Icms').AsFloat;
        QGrava.Params.ParamByName('pValor_icms').AsFloat := QItens.FieldByName('Valor_Icms').AsFloat;
        QGrava.Params.ParamByName('pBase_icms_st').AsFloat := QItens.FieldByName('Base_Icms_st').AsFloat;
        QGrava.Params.ParamByName('pValor_icms_st').AsFloat := QItens.FieldByName('Valor_Icms_st').AsFloat;
        QGrava.Params.ParamByName('pValor_pis').AsFloat := QItens.FieldByName('Valor_pis').AsFloat;
        QGrava.Params.ParamByName('pValor_cofins').AsFloat := QItens.FieldByName('Valor_Cofins').AsFloat;
        QGrava.Params.ParamByName('pValor_ipi').AsFloat := QItens.FieldByName('Valor_ipi').AsFloat;
        QGrava.Params.ParamByName('pID').AsInteger := pIDPedido;
        QGrava.ExecSQL;
      end;
      QItens.Close;
      QGrava.Close;
    finally
      FreeAndNil(QItens);
      FreeAndNil(QGrava);
    end;
  except
    Result := false;
  end;

end;

procedure TDmWorkCom.GravaChaveNFEPedido(pChaveNFe, pProtocol, pRecibo, NumLote, NomeArqXML, Status_NFe: String; TipoEmiss, pIDPedido: Integer;
  Data_Autoriza, Hora_Autoriza: TDateTime);
var
  Query: TFDQuery;
  AuxHora: TDateTime;
  Hora, Min, Seg, MSeg: Word;
begin
  // prepara a hora
  DecodeTime(Hora_Autoriza, Hora, Min, Seg, MSeg);
  if sUFWSAux = 'AM' then
  begin
    Hora := Hora + 1;
    if Hora >= 24 then
    begin
      Hora := 0;
      Data_Autoriza := Data_Autoriza + 1;
    end;
  end;
  AuxHora := EncodeTime(Hora, Min, Seg, MSeg);
  // grava os dados
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := ConexaoDados;
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('update pedido p set');
    Query.SQL.Add('p.CHAVE_NFE = :pChave,');
    Query.SQL.Add('p.STATUS_NFE = :pStatus,');
    Query.SQL.Add('p.PROTOCOLO_NFE = :pProtocolo,');
    Query.SQL.Add('p.RECIBO_NFE = :pRecibo,');
    Query.SQL.Add('p.NFE_TIPOEMISS = :pTipoEmiss,');
    Query.SQL.Add('p.num_lote = :pnumlote,');
    Query.SQL.Add('p.arquivo_xml = :pArquivo_xml,');
    Query.SQL.Add('p.data_autoriza = :pDtAutoriza,');
    Query.SQL.Add('p.hora_autoriza = :pHrAutoriza,');
    Query.SQL.Add('p.data_entrega = current_date,');
    Query.SQL.Add('p.hora_entrega = current_time');
    Query.SQL.Add('where p.ID = :pIDPed');
    Query.Params.ParamByName('pChave').AsString := pChaveNFe;
    Query.Params.ParamByName('pStatus').AsString := Status_NFe;
    Query.Params.ParamByName('pProtocolo').AsString := pProtocol;
    Query.Params.ParamByName('pRecibo').AsString := pRecibo;
    Query.Params.ParamByName('pTipoEmiss').AsInteger := TipoEmiss;
    Query.Params.ParamByName('pnumlote').AsString := NumLote;
    Query.Params.ParamByName('pArquivo_xml').AsString := NomeArqXML;
    Query.Params.ParamByName('pDtAutoriza').AsDate := Data_Autoriza;
    Query.Params.ParamByName('pHrAutoriza').AsTime := AuxHora;
    Query.Params.ParamByName('pIDPed').AsInteger := pIDPedido;
    Query.ExecSQL;
  finally
    FreeAndNil(Query);
  end;

end;

procedure TDmWorkCom.DspCSOSNGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'CSOSN';

end;

procedure TDmWorkCom.DspCSTGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CST';

end;

procedure TDmWorkCom.DspCFOPGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CFOP';

end;

function TDmWorkCom.Dados_CFOP: Boolean;
begin
  CdsCFOP.Close;
  CdsCFOP.Open;
  //
  Result := false;
  if CdsCFOP.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_CSOSN: Boolean;
begin
  CdsCSOSN.Close;
  CdsCSOSN.Open;
  //
  Result := false;
  if CdsCSOSN.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_CST: Boolean;
begin
  CdsCST.Close;
  CdsCST.Open;
  //
  Result := false;
  if CdsCST.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.RetornaEnceranteFinal(pIDProd: Integer): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select coalesce(max(pedido_itens.ef),0) as total from pedido_itens');
    Q.SQL.Add('where pedido_itens.idproduto = :pidprod');
    Q.Params.ParamByName('pIDProd').AsInteger := pIDProd;
    Q.Open;
    Result := Q.FieldByName('total').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.GravaDadosUltimaReducaoZ(Automatica: Boolean): Boolean;
Var
  aIni: TMemIniFile;
  aStringList: TStringList;
  Resp, aCRZ, aCRO, aCOOIni, aCOOFim, aAliquota: String;
  aVBruta, aGTotal, aCancelados, aDescontos, aSubTrib, aIsentos, aNTrib, aTotalizador, aNaoFiscal, aAcrescimos, Suprimentos, Sangrias: Double;
  aDate, aDateEmis: TDateTime;
  i: Integer;
begin
  Result := true;
  try
    Resp := DmAcBr.ACBrECF1.DadosUltimaReducaoZ;
    aStringList := TStringList.Create;
    aIni := TMemIniFile.Create('DadosUltimaReducaoZ.ini');
    try
      aStringList.Text := Resp;
      aIni.SetStrings(aStringList);
      // grava arquivos com dados da redu��o
      if FileExists(ExtractFilePath(Application.ExeName) + 'DadosUltimaReducaoZ.ini') then
        SysUtils.DeleteFile(ExtractFilePath(Application.ExeName) + 'DadosUltimaReducaoZ.ini');
      aStringList.SaveToFile(ExtractFilePath(Application.ExeName) + 'DadosUltimaReducaoZ.ini');
      // Lendo o dados
      aDate := aIni.ReadDateTime('ECF', 'DataMovimento', 0);
      aDateEmis := aIni.ReadDateTime('ECF', 'DataHoraEmissao', 0);
      aCOOIni := RetornaCOOInicialRegistro;
      aCOOFim := aIni.ReadString('ECF', 'NumCOO', '');
      aCRZ := aIni.ReadString('ECF', 'NumCRZ', '');
      aCRO := aIni.ReadString('ECF', 'NumCRO', '');
      // captura os totais
      aVBruta := aIni.ReadFloat('Totalizadores', 'VendaBruta', 0);
      aGTotal := aIni.ReadFloat('Totalizadores', 'GrandeTotal', 0);
      aSubTrib := aIni.ReadFloat('OutrasICMS', 'TotalSubstituicaoTributaria', 0);
      aNTrib := aIni.ReadFloat('OutrasICMS', 'TotalNaoTributado', 0);
      aIsentos := aIni.ReadFloat('OutrasICMS', 'TotalIsencao', 0);
      // captura os acreescimos
      aAcrescimos := aIni.ReadFloat('Totalizadores', 'TotalAcrescimos', 0);
      aAcrescimos := aAcrescimos + aIni.ReadFloat('Totalizadores', 'TotalAcrescimosISSQN', 0);
      aAcrescimos := aAcrescimos + aIni.ReadFloat('Totalizadores', 'TotalAcrescimosOPNF', 0);
      // captura os descontos
      aDescontos := aIni.ReadFloat('Totalizadores', 'TotalDescontos', 0);
      aDescontos := aDescontos + aIni.ReadFloat('Totalizadores', 'TotalDescontosISSQN', 0);
      aDescontos := aDescontos + aIni.ReadFloat('Totalizadores', 'TotalDescontosOPNF', 0);
      // caotura os cancelamentos
      aCancelados := aIni.ReadFloat('Totalizadores', 'TotalCancelamentos', 0);
      aCancelados := aCancelados + aIni.ReadFloat('Totalizadores', 'TotalCancelamentosISSQN', 0);
      aCancelados := aCancelados + aIni.ReadFloat('Totalizadores', 'TotalCancelamentosOPNF', 0);
      /// xxx     provisorio
      Suprimentos := aIni.ReadFloat('NaoFiscais', '02_Suprimento', 0);
      Sangrias := aIni.ReadFloat('NaoFiscais', '01_Sangria', 0);

      // verifica movmento no banco dedados
      if not Dados_60M(DmAcBr.ACBrECF1.NumSerie, StrToInt(aCRZ)) then
      begin
        try
          // Atualiza dados dos contadores
          PAFECF.CapturaContadoresECF;
          // Insere registro
          Cds60M.Append;
          Cds60M.FieldByName('COO_INICIAL').AsInteger := StrToInt(aCOOIni);
          Cds60M.FieldByName('CONTADOR_REINICIO').AsInteger := StrToInt(aCRO);
          Cds60M.FieldByName('CONTADOR_REDUCAO').AsInteger := StrToInt(aCRZ);
          // confirma os dados
          Grava_Dados(Cds60M);
        except
          MessageDlg('Erro ao inserir registrto 60. Verifique!!!', mtError, [mbOK], 0);
          Result := false;
        end;
      end;
      Cds60M.Edit;
      Cds60M.FieldByName('DATA_EMISSAO').AsDateTime := aDateEmis;
      Cds60M.FieldByName('HORA_EMISSAO').AsDateTime := aDateEmis;
      Cds60M.FieldByName('DATA_MOVIMENTO').AsDateTime := aDate;
      Cds60M.FieldByName('COO_INICIAL').AsInteger := StrToInt(aCOOIni);
      Cds60M.FieldByName('COO_FINAL').AsInteger := StrToInt(aCOOFim);
      Cds60M.FieldByName('CONTADOR_REINICIO').AsInteger := StrToInt(aCRO);
      Cds60M.FieldByName('CONTADOR_REDUCAO').AsInteger := StrToInt(aCRZ);
      Cds60M.FieldByName('VENDA_BRUTA').AsFloat := aVBruta;
      Cds60M.FieldByName('GRANDE_TOTAL').AsFloat := aGTotal;
      if Automatica then
        Cds60M.FieldByName('AUTOMATICA').AsString := 'S'
      else
        Cds60M.FieldByName('AUTOMATICA').AsString := 'N';
      Grava_Dados(Cds60M);
      // abre tabela de totalizadores
      Dados_60A(Cds60M.FieldByName('ID').AsInteger);
      // grava os totalizadores
      DmAcBr.ACBrECF1.LerTotaisAliquota;
      for i := 0 to DmAcBr.ACBrECF1.Aliquotas.Count - 1 do
      begin
        aAliquota := ZeroEsquerda(IntToStr(i + 1), 2) + 'T' + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmAcBr.ACBrECF1.Aliquotas[i].Aliquota)), 4);
        aTotalizador := aIni.ReadFloat('Aliquotas', aAliquota, 0);
        //
        Cds60A.Append;
        Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := Copy(aAliquota, 4, 4);
        Cds60A.FieldByName('TOTALIZADOR').AsFloat := aTotalizador;
        Grava_Dados(Cds60A);
      end;
      aNaoFiscal := 0;
      // grava os totalizadores n�o fiscais
      DmAcBr.ACBrECF1.LerTotaisComprovanteNaoFiscal;
      for i := 0 to DmAcBr.ACBrECF1.ComprovantesNaoFiscais.Count - 1 do
      begin
        aAliquota := DmAcBr.ACBrECF1.ComprovantesNaoFiscais[i].Descricao;
        aAliquota := 'OPNF';
        aNaoFiscal := aNaoFiscal + DmAcBr.ACBrECF1.ComprovantesNaoFiscais[i].Total;
      end;
      // grava os totalizadores n�o fiscais
      DmAcBr.ACBrECF1.LerTotaisTotalizadoresNaoTributados;
      for i := 0 to DmAcBr.ACBrECF1.TotalizadoresNaoTributados.Count - 1 do
      begin
        aAliquota := DmAcBr.ACBrECF1.TotalizadoresNaoTributados[i].Tipo;
        aAliquota := DmAcBr.ACBrECF1.TotalizadoresNaoTributados[i].Indice;
        aAliquota := DmAcBr.ACBrECF1.TotalizadoresNaoTributados[i].AsString;
        aAliquota := 'OPNF';
        aNaoFiscal := aNaoFiscal + DmAcBr.ACBrECF1.TotalizadoresNaoTributados[i].Total;
      end;
      if aNaoFiscal = 0 then
        aNaoFiscal := Suprimentos + Sangrias;
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := aAliquota;
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aNaoFiscal;
      Grava_Dados(Cds60A);
      // cancelados
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := 'CANC';
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aCancelados;
      Grava_Dados(Cds60A);
      // descontos
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := 'DESC';
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aDescontos;
      Grava_Dados(Cds60A);
      // descontos
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := 'AT';
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aAcrescimos;
      Grava_Dados(Cds60A);
      // Sub.Tributaria
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := 'F';
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aSubTrib;
      Grava_Dados(Cds60A);
      // N�o tributado
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := 'N';
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aNTrib;
      Grava_Dados(Cds60A);
      // Isentos
      Cds60A.Append;
      Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := 'I';
      Cds60A.FieldByName('TOTALIZADOR').AsFloat := aIsentos;
      Grava_Dados(Cds60A);
    finally
      aIni.Free;
      aStringList.Free;
    end;
  except
    Result := false;
  end;
end;

function TDmWorkCom.RetornaCOOInicialRegistro: String;
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
      SQL.Add('select max(m.coo_final) as coo_final from registro60m m');
      Open;
      Result := IntToStr(FieldByName('coo_final').AsInteger + 1);
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.Dados_PDV: Boolean;
begin
  CdsPDV.Close;
  CdsPDV.Params.Clear;
  QryPDV.Close;
  QryPDV.SQL.Clear;
  QryPDV.SQL.Add('select * from dados_pdv');
  //
  CdsPDV.FetchParams;
  CdsPDV.Open;
  //
  Result := false;
  if CdsPDV.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_PDV(pCaixa: String): Boolean;
begin
  CdsPDV.Close;
  CdsPDV.Params.Clear;
  QryPDV.Close;
  QryPDV.SQL.Clear;
  QryPDV.SQL.Add('select * from dados_pdv');
  QryPDV.SQL.Add('where dados_pdv.caixa = :pCaixa');
  //
  CdsPDV.FetchParams;
  CdsPDV.Params.ParamByName('pCaixa').AsString := pCaixa;
  CdsPDV.Open;
  //
  Result := false;
  if CdsPDV.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.CdsPDVNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ATIVO').AsString := 'T';
  DataSet.FieldByName('SINCRONIZADO').AsString := 'S';

end;

function TDmWorkCom.RetornaDadosImpressora(pCaixa: String): Boolean;
begin
  Result := true;
  if Dados_PDV(pCaixa) then
  begin
    PAFECF.pLetraMFAds := CdsPDVLETRA_ADD.AsString;
    PAFECF.pMarcaECF := CdsPDVMARCA_ECF.AsString;
    PAFECF.pModeloECF := CdsPDVMODELO_ECF.AsString;
    PAFECF.pTipoECF := CdsPDVTIPO_ECF.AsString;
    PAFECF.pSerial := CdsPDVSERIAL_ECF.AsString;
    PAFECF.pVersao := CdsPDVVERSAO_ECF.AsString;
    // verifica campo de data
    if CdsPDVDATA_SB.AsDateTime > 0 then
      PAFECF.pDataSP := FormatDateTime('YYYYMMDD', CdsPDVDATA_SB.AsDateTime)
    else
      PAFECF.pDataSP := '        ';
    // verifica campo de hora
    if CdsPDVDATA_SB.AsDateTime > 0 then
      PAFECF.pHoraSP := FormatDateTime('HHMMSS', CdsPDVHORA_SB.AsDateTime)
    else
      PAFECF.pHoraSP := '      ';
  end
  else
    Result := false;

end;

procedure TDmWorkCom.GravaPDVNaoSincronizado;
begin
  if Dados_PDV then
  begin
    CdsPDV.First;
    while not CdsPDV.Eof do
    begin
      CdsPDV.Edit;
      CdsPDV.FieldByName('SINCRONIZADO').AsString := 'N';
      Grava_Dados(CdsPDV);
      CdsPDV.Next;
    end
  end;

end;

function TDmWorkCom.VerificaCaixaAberto(var NomeOperador: String; var DataCaixa: TDateTime): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select c.data_abertura,c.idoperador,u.usuario');
    Q.SQL.Add('from caixa c, usuarios u');
    Q.SQL.Add('where c.idoperador = u.id');
    Q.SQL.Add('and c.data_fechamento is null');
    Q.SQL.Add('and c.caixa = ' + QuotedStr(PAFECF.gCaixa));
    Q.Open;
    DataCaixa := 0;
    NomeOperador := '';
    Result := false;
    if not Q.IsEmpty then
    begin
      DataCaixa := Q.FieldByName('data_abertura').AsDateTime;
      NomeOperador := Q.FieldByName('usuario').AsString;
      Result := true;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.GravaFechamentoCaixaDiario(DataFechamento: TDateTime = 0; Dinheiro: Double = 0; Cartao: Double = 0; Cheque: Double = 0;
  Outros: Double = 0);
var
  aValor: Double;
  aDataFecha: TDateTime;
begin
  aDataFecha := SVData;
  if DataFechamento > 0 then
    aDataFecha := DataFechamento;
  // localiza o caixa aberto
  if Dados_Caixa(aDataFecha, true) then
  begin
    try
      CalculaTotaisCaixaMov(aDataFecha);
      aValor := sTotalReceita - sTotalDespesa;
      if not(CdsCaixa.State in [dsInsert, dsEdit]) then
        CdsCaixa.Edit;
      CdsCaixa.FieldByName('DATA_FECHAMENTO').AsDateTime := SVData;
      CdsCaixa.FieldByName('HORA_FECHAMENTO').AsDateTime := SVHora;
      CdsCaixa.FieldByName('VALOR_FECHAMENTO').AsCurrency := aValor;
      CdsCaixa.FieldByName('VALOR_DINHEIRO').AsCurrency := Dinheiro;
      CdsCaixa.FieldByName('VALOR_CARTAO').AsCurrency := Cartao;
      CdsCaixa.FieldByName('VALOR_CHEQUE').AsCurrency := Cheque;
      CdsCaixa.FieldByName('VALOR_OUTROS').AsCurrency := Outros;
      CdsCaixa.FieldByName('FECHADO').AsString := 'S';
      Grava_Dados(CdsCaixa);
    except
      MessageDlg('Erro ao efetuar fechamento!!!', mtWarning, [mbOK], 0);
    end;
  end;

end;

function TDmWorkCom.LocalizaIDMesa(pNumMesa: String): Integer;
var
  Q: TFDQuery;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select m.id from mesas_abertas m');
      SQL.Add('where m.numero_mesa = ' + QuotedStr(pNumMesa));
      SQL.Add('and m.status = 0');
      Open;
      Result := FieldByName('ID').AsInteger;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.CriaRegistroU1;
var
  Linha: String;
begin
  Linha := 'U1';
  Linha := Linha + ZeroEsquerda(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 14); // 14 espacos
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString, 1, 14); // 14 espa�os
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSC_MUNIC').AsString, 1, 14); // 14 espa�os
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString, 1, 50); // 50 espa�os
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.CriaRegistroA2(pDatai, pDataf: TDateTime);
var
  Linha, MeioPagto: string;
  SQL: TFDQuery;
begin
  try
    SQL := TFDQuery.Create(nil);
    SQL.Connection := ConexaoDados;
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select * from paf_registro_a2 x ');
    SQL.SQL.Add('where x.data_movimento between :pDatai and :pDataf');
    SQL.Params.ParamByName('pDatai').AsDate := pDatai;
    SQL.Params.ParamByName('pDataf').AsDate := pDataf;
    SQL.Open;
    // filtra dados
    if not SQL.IsEmpty then
    begin
      while not SQL.Eof do
      begin
        MeioPagto := SQL.FieldByName('DESCRICAO').AsString;
        if not VerificaMD5Registro(10, SQL.FieldByName('ID').AsInteger) then
          MeioPagto := RetornaCampoInterroga(MeioPagto, 25);
        //
        Linha := 'A2';
        Linha := Linha + FormatDateTime('YYYYMMDD', SQL.FieldByName('DATA_MOVIMENTO').AsDateTime);
        Linha := Linha + AlinhaTXT(MeioPagto, 1, 25);
        Linha := Linha + SQL.FieldByName('COD_TIPO').AsString;
        Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', SQL.FieldByName('VALOR').AsCurrency)), 12);
        writeLn(sArquivo, Linha);
        SQL.Next;
      end;
    end;
    SQL.Close;
  finally
    FreeAndNil(SQL);
  end;

  {
    // prepara clientDataSet para registro75
    aCdsTemp := TClientDataSet.Create(nil);
    try
    aCdsTemp.FieldDefs.Add('Data', ftDate, 0, False);
    aCdsTemp.FieldDefs.Add('Valor', ftFloat, 0, False);
    if not aCdsTemp.Active then
    aCdsTemp.CreateDataSet;
    finally
    aCdsTemp.EmptyDataSet;
    end;
    //
    aOutros   := 0; aCheque := 0; aCartao := 0; aBoleto := 0;
    aDinheiro := 0; aNP     := 0; aCarne  := 0;
    //
    SQL := TFDQuery.Create(nil);
    try
    // formas de pagamento do ECF
    SQL.Connection := ConexaoDados;
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select f.tipo_documento,f.descricao,');
    SQL.SQL.Add('p.data_entrega,sum(f.valor)');
    SQL.SQL.Add('from pedido p, pedido_formapag f');
    SQL.SQL.Add('where p.id = f.idpedido');
    SQL.SQL.Add('and p.data_entrega between :pDatai and :pDataf');
    SQL.SQL.Add('group by f.tipo_documento,f.descricao,');
    SQL.SQL.Add('p.data_entrega');
    SQL.Params.ParamByName('pDatai').AsDate   := pDatai;
    SQL.Params.ParamByName('pDataf').AsDate   := pDataf;
    SQL.Open;
    // filtra dados
    if not SQL.IsEmpty then
    begin
    while not SQL.Eof do
    begin
    aValor := SQL.FieldByName('SUM').AsCurrency;
    Case SQL.FieldByname('TIPO_DOCUMENTO').AsInteger of
    0 : begin
    aDinheiro := aDinheiro + aValor;
    adesc     := 'DINHEIRO';
    end;
    1 : begin
    aCheque   := aCheque   + aValor;
    adesc     := 'CHEQUE';
    end;
    2 : begin
    aCartao   := aCartao   + aValor;
    adesc     := 'Cart�o';
    end;
    3 : begin
    aNP       := aNP       + aValor;
    adesc     := 'PROMISSORIA';
    end;
    4 : begin
    aCarne    := aCarne    + aValor;
    adesc     := 'CARNE';
    end;
    5 : begin
    aBoleto   := aBoleto   + aValor;
    adesc     := 'BOLETO';
    end;
    6 : begin
    aOutros   := aOutros   + aValor;
    adesc     := 'DUPLICATA';
    end;
    end;
    Linha := 'A2';
    Linha := Linha + FormatDateTime('YYYYMMDD',SQL.FieldByName('data_entrega').AsDateTime);
    Linha := Linha + AlinhaTXT(adesc,1,25);
    Linha := Linha + '1';
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00',SQL.FieldByName('SUM').AsCurrency)),12);
    WriteLn(sArquivo,Linha);
    //
    SQL.Next;
    end;
    end;
    SQL.Close;
    // registro 61
    SQL.Connection := ConexaoDados;
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select r.data_emissao,sum(r.total)');
    SQL.SQL.Add('from registro61 r');
    SQL.SQL.Add('where r.data_emissao between :pDatai and :pDataf');
    SQL.SQL.Add('group by r.data_emissao');
    SQL.Params.ParamByName('pDatai').AsDate   := pDatai;
    SQL.Params.ParamByName('pDataf').AsDate   := pDataf;
    SQL.Open;
    // filtra dados
    if not SQL.IsEmpty then
    begin
    while not SQL.Eof do
    begin
    if not aCdsTemp.Locate('Data',SQL.FieldByName('data_emissao').AsDateTime,[]) then
    begin
    aCdsTemp.Append;
    aCdsTemp.FieldByName('Data').AsDateTime := SQL.FieldByName('data_emissao').AsDateTime;
    end
    else
    begin
    aCdsTemp.Edit;
    end;
    aCdsTemp.FieldByName('Valor').AsFloat := aCdsTemp.FieldByName('Valor').AsFloat +
    SQL.FieldByName('SUM').AsCurrency;
    aCdsTemp.Post;
    SQL.Next;
    end;
    end;
    SQL.Close;
    // Nota fiscal eletronica
    SQL.Connection := ConexaoDados;
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select x.data_entrega,sum(x.valor_total)');
    SQL.SQL.Add('from pedido x');
    SQL.SQL.Add('where x.data_entrega between :pDatai and :pDataf');
    SQL.SQL.Add('and (x.numero_doc <> '+QuotedStr('')+' or x.numero_doc is not null)');
    SQL.SQL.Add('and x.confirmada = '+QuotedStr('S'));
    SQL.SQL.Add('and x.status_nfe = '+QuotedStr('100'));
    SQL.SQL.Add('and x.cancelado = '+QuotedStr('N'));
    SQL.SQL.Add('and x.notamanual = '+QuotedStr('N'));
    SQL.SQL.Add('and (x.coo is null or x.coo = 0)');
    SQL.SQL.Add('group by x.data_entrega');
    SQL.Params.ParamByName('pDatai').AsDate   := pDatai;
    SQL.Params.ParamByName('pDataf').AsDate   := pDataf;
    SQL.Open;
    // filtra dados
    if not SQL.IsEmpty then
    begin
    while not SQL.Eof do
    begin
    if not aCdsTemp.Locate('Data',SQL.FieldByName('data_entrega').AsDateTime,[]) then
    begin
    aCdsTemp.Append;
    aCdsTemp.FieldByName('Data').AsDateTime := SQL.FieldByName('data_entrega').AsDateTime;
    end
    else
    begin
    aCdsTemp.Edit;
    end;
    aCdsTemp.FieldByName('Valor').AsFloat := aCdsTemp.FieldByName('Valor').AsFloat +
    SQL.FieldByName('SUM').AsCurrency;
    aCdsTemp.Post;
    //
    SQL.Next;
    end;
    end;
    SQL.Close;
    //
    aCdsTemp.First;
    while not aCdsTemp.Eof do
    begin
    Linha := 'A2';
    Linha := Linha + FormatDateTime('YYYYMMDD',aCdsTemp.FieldByName('Data').AsDateTime);
    Linha := Linha + AlinhaTXT('DINHEIRO',1,25);
    Linha := Linha + '3';
    Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00',aCdsTemp.FieldByName('Valor').AsCurrency)),12);
    WriteLn(sArquivo,Linha);
    aCdsTemp.Next;
    end;
    FreeAndNil(aCdsTemp);
    finally
    FreeAndNil(SQL);
    end;
  }
end;

procedure TDmWorkCom.CriaRegistroP2(pDatai, pDataf: TDateTime; ApenasProdMovto: Boolean);
var
  Linha, aux, ModeloECF, Unidade: String;
  Contador: Integer;
begin
  DmProdutos.Dados_Produto2(pDatai, pDataf, ApenasProdMovto);
  Contador := 0;
  while not DmProdutos.CdsProdutos2.Eof do
  begin
    Unidade := DmProdutos.CdsProdutos2.FieldByName('Unidade').AsString;
    if not DmWorkCom.VerificaMD5Registro(3, DmProdutos.CdsProdutos2.FieldByName('ID').AsInteger) then
      Unidade := RetornaCampoInterroga(Unidade, 6);
    Linha := 'P2';
    Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 1, 14); // 14 espacos
    Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos2.FieldByName('Ean13').AsString, 1, 14); // 14 espacos
    Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos2.FieldByName('Descricao').AsString, 1, 50); // 50 espacos
    Linha := Linha + AlinhaTXT(Unidade, 1, 6); // 6 espacos
    Linha := Linha + 'T'; // T - Truncamento / A - Arredondamento
    Linha := Linha + 'T'; // Tipo de Produto
    // situacao tributaria T - tributado / N - Nao Trib / I - Isento / S - ST
    case DmProdutos.CdsProdutos2.FieldByName('TRIBUTACAO').AsInteger of
      0:
        begin
          Linha := Linha + 'I'; // Isento
          aux := FormatFloat('0.00', 0);
        end;
      1:
        begin
          Linha := Linha + 'F'; // Sub. Tribut�ria
          aux := FormatFloat('0.00', 0);
        end;
      2:
        begin
          Linha := Linha + 'T'; // Tributado
          aux := FormatFloat('0.00', DmProdutos.CdsProdutos2.FieldByName('Aliquota_icms').AsFloat);
        end;
      3:
        begin
          Linha := Linha + 'N'; // N�o Tributado
          aux := FormatFloat('0.00', 0);
        end;
      4:
        begin
          Linha := Linha + 'T'; // Servi�o
          aux := FormatFloat('0.00', DmProdutos.CdsProdutos2.FieldByName('Aliquota_icms').AsFloat);
        end;
    end;
    aux := ZeroEsquerda(FiltraNumero(aux), 4);
    Linha := Linha + AlinhaTXT(aux, 1, 4); // Aliquota
    aux := FormatFloat('0.00', DmProdutos.CdsProdutos2.FieldByName('Preco_venda').AsFloat);
    aux := FiltraNumero(aux);
    Linha := Linha + ZeroEsquerda(aux, 12); // Valor de Venda
    writeLn(sArquivo, Linha);
    DmProdutos.CdsProdutos2.Next;
    Inc(Contador);
  end;
end;

procedure TDmWorkCom.CriaRegistroE2(pDatai, pDataf: TDateTime; ApenasProdMovto: Boolean);
var
  Linha, aux, ModeloECF, Unidade: String;
  Contador: Integer;
  aEstoque: Double;
begin
  // Abre tabela de produtos
  if DmAuxiliar.CdsListaEstoque.RecordCount > 0 then
  begin
    Contador := 0;
    DmAuxiliar.CdsListaEstoque.First;
    while not DmAuxiliar.CdsListaEstoque.Eof do
    begin
      if DmProdutos.Dados_Produto(DmAuxiliar.CdsListaEstoqueIDPRODUTO.AsInteger) then
      begin
        if DmProdutos.Dados_Estoque(DmProdutos.CdsProdutos.FieldByName('ID').AsInteger, sIDEmpresa) then
          aEstoque := DmProdutos.CdsEstoque.FieldByName('ESTOQUE_DIA').AsFloat
        else
          aEstoque := DmProdutos.CdsProdutos.FieldByName('Estoque').AsFloat;
        //
        Unidade := DmProdutos.CdsProdutos.FieldByName('Unidade').AsString;
        if not DmWorkCom.VerificaMD5Registro(3, DmAuxiliar.CdsListaEstoqueIDPRODUTO.AsInteger) then
          Unidade := RetornaCampoInterroga(Unidade, 6);
        Linha := 'E2';
        Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 1, 14); // 14 espacos
        Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos.FieldByName('Ean13').AsString, 1, 14); // 14 espacos
        Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos.FieldByName('Descricao').AsString, 1, 50); // 50 espacos
        Linha := Linha + AlinhaTXT(Unidade, 1, 6); // 6 espacos
        if aEstoque <= 0 then
          Linha := Linha + '-'
        else
          Linha := Linha + '+';
        aux := FormatFloat('0.000', aEstoque);
        aux := FiltraNumero(aux);
        Linha := Linha + ZeroEsquerda(aux, 9); // Estoque do produto
        // Linha := Linha + FormatDateTime('YYYYMMDD',Date());
        Inc(Contador);
        writeLn(sArquivo, Linha);
      end;
      DmAuxiliar.CdsListaEstoque.Next;
    end;
  end
  else
  begin
    DmProdutos.Dados_Produto2(pDatai, pDataf, ApenasProdMovto);
    Contador := 0;
    while not DmProdutos.CdsProdutos2.Eof do
    begin
      if DmProdutos.Dados_Estoque(DmProdutos.CdsProdutos2.FieldByName('ID').AsInteger, sIDEmpresa) then
        aEstoque := DmProdutos.CdsEstoque.FieldByName('ESTOQUE_DIA').AsFloat
      else
        aEstoque := DmProdutos.CdsProdutos.FieldByName('Estoque').AsFloat;
      //
      Unidade := DmProdutos.CdsProdutos2.FieldByName('Unidade').AsString;
      if not DmWorkCom.VerificaMD5Registro(3, DmProdutos.CdsProdutos2.FieldByName('ID').AsInteger) then
        Unidade := RetornaCampoInterroga(Unidade, 6);
      Linha := 'E2';
      Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 1, 14); // 14 espacos
      Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos2.FieldByName('Ean13').AsString, 1, 14); // 14 espacos
      Linha := Linha + AlinhaTXT(DmProdutos.CdsProdutos2.FieldByName('Descricao').AsString, 1, 50); // 50 espacos
      Linha := Linha + AlinhaTXT(Unidade, 1, 6); // 6 espacos
      if aEstoque <= 0 then
        Linha := Linha + '-'
      else
        Linha := Linha + '+';
      aux := FormatFloat('0.000', aEstoque);
      aux := FiltraNumero(aux);
      Linha := Linha + ZeroEsquerda(aux, 9); // Estoque do produto
      // Linha := Linha + FormatDateTime('YYYYMMDD',Date());
      writeLn(sArquivo, Linha);
      DmProdutos.CdsProdutos2.Next;
      Inc(Contador);
    end;
  end;

end;

procedure TDmWorkCom.CriaRegistroE3;
var
  Linha: String;
begin
  if Dados_PDV(PAFECF.gCaixa) then
  begin
    Dados_DadosTecnicos;
    Linha := 'E3';
    Linha := Linha + AlinhaTXT(CdsPDV.FieldByName('SERIAL_ECF').AsString, 1, 20);
    if Trim(CdsPDV.FieldByName('LETRA_ADD').AsString) <> '' then
      Linha := Linha + Copy(CdsPDV.FieldByName('LETRA_ADD').AsString, 1, 1)
    else
      Linha := Linha + ' ';
    Linha := Linha + AlinhaTXT(CdsPDV.FieldByName('TIPO_ECF').AsString, 1, 7);
    Linha := Linha + AlinhaTXT(CdsPDV.FieldByName('MARCA_ECF').AsString, 1, 20);
    Linha := Linha + AlinhaTXT(CdsPDV.FieldByName('MODELO_ECF').AsString, 1, 20);
    Linha := Linha + FormatDateTime('YYYYMMDD', CdsDadosTecnicos.FieldByName('DATA_ESTOQUE').AsDateTime);
    Linha := Linha + FormatDateTime('HHMMSS', CdsDadosTecnicos.FieldByName('HORA_ESTOQUE').AsDateTime);
    writeLn(sArquivo, Linha);
  end;
end;

procedure TDmWorkCom.CriaRegistroDAV(pDatai, pDataf: TDateTime);
var
  QDav: TFDQuery;
  aTotalizador, aux, auxVr, aTpDoc, ModeloECF, aDescricao: string;
  aTotReg, aTotReg3, aCont1, aCont2: Integer;
begin
  QDav := TFDQuery.Create(nil);
  QDav.Connection := ConexaoDados;
  QDav.Close;
  QDav.SQL.Clear;
  QDav.SQL.Add('select pedido.id,pedido.pedido_num,pedido.data_pedido,');
  QDav.SQL.Add('pedido.valor_total,pedido.coo,pedido.numdav,pedido.cliente,');
  QDav.SQL.Add('pedido.cnpjcpf from pedido');
  QDav.SQL.Add('where pedido.data_pedido between :pdatai and :pdataf');
  QDav.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
  QDav.SQL.Add('and pedido.cancelado = ' + QuotedStr('N'));
  QDav.SQL.Add('and pedido.dav = ' + QuotedStr('S'));
  // QDav.SQL.Add('and pedido.coo > 0');
  QDav.SQL.Add('and (pedido.numdav is not null or pedido.numdav <> ' + QuotedStr('') + ')');
  QDav.SQL.Add('order by pedido.numdav');
  QDav.Params.ParamByName('pdatai').AsDate := pDatai;
  QDav.Params.ParamByName('pdataf').AsDate := pDataf;
  QDav.Open;
  if not QDav.IsEmpty then
  begin
    RetornaDadosImpressora(DmWorkCom.PAFECF.gCaixa);
    aTotReg := 0;
    while not QDav.Eof do
    begin
      //
      ModeloECF := DmWorkCom.PAFECF.pModeloECF;
      if not VerificaMD5Registro(0, QDav.FieldByName('ID').AsInteger) then
        ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
      aux := 'D2';
      aux := aux + ZeroEsquerda(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 14); // 14 espacos
      if QDav.FieldByName('COO').AsInteger > 0 then
      begin
        aux := aux + AlinhaTXT(DmWorkCom.PAFECF.gSerial, 1, 20); // 20 espacos
        aux := aux + ' ';
        aux := aux + AlinhaTXT(DmWorkCom.PAFECF.pTipoECF, 1, 7); // 7 espacos
        aux := aux + AlinhaTXT(DmWorkCom.PAFECF.pMarcaECF, 1, 20); // 20 espacos
        aux := aux + AlinhaTXT(ModeloECF, 1, 20); // 20 espacos
        aux := aux + ZeroEsquerda('', 9);
        aux := aux + ZeroEsquerda(QDav.FieldByName('numdav').AsString, 10) + '   ';
        aux := aux + FormatDateTime('YYYYMMDD', QDav.FieldByName('data_pedido').AsDateTime);
        aux := aux + AlinhaTXT('PEDIDO', 1, 30);
        auxVr := FormatFloat('0.00', QDav.FieldByName('valor_total').AsFloat);
        auxVr := FiltraNumero(auxVr);
        aux := aux + ZeroEsquerda(auxVr, 8);
        aux := aux + ZeroEsquerda(IntToStr(QDav.FieldByName('COO').AsInteger), 9);
        aux := aux + ZeroEsquerda(DmWorkCom.PAFECF.gCaixa, 3);
        aux := aux + AlinhaTXT(Copy(QDav.FieldByName('cliente').AsString, 1, 40), 1, 40);
        aux := aux + ZeroEsquerda(QDav.FieldByName('cnpjcpf').AsString, 14);
      end
      else
      begin
        aux := aux + AlinhaTXT('', 1, 20); // 20 espacos
        aux := aux + ' ';
        aux := aux + AlinhaTXT('', 1, 7); // 7 espacos
        aux := aux + AlinhaTXT('', 1, 20); // 20 espacos
        aux := aux + AlinhaTXT('', 1, 20); // 20 espacos
        aux := aux + ZeroEsquerda('', 9);
        aux := aux + ZeroEsquerda(QDav.FieldByName('numdav').AsString, 10) + '   ';
        aux := aux + FormatDateTime('YYYYMMDD', QDav.FieldByName('data_pedido').AsDateTime);
        aux := aux + AlinhaTXT('PEDIDO', 1, 30);
        auxVr := FormatFloat('0.00', QDav.FieldByName('valor_total').AsFloat);
        auxVr := FiltraNumero(auxVr);
        aux := aux + ZeroEsquerda(auxVr, 8);
        aux := aux + ZeroEsquerda('', 9);
        aux := aux + ZeroEsquerda('', 3);
        aux := aux + AlinhaTXT(Copy(QDav.FieldByName('cliente').AsString, 1, 40), 1, 40);
        aux := aux + ZeroEsquerda(QDav.FieldByName('cnpjcpf').AsString, 14);
      end;
      writeLn(sArquivo, aux);
      Inc(aTotReg);
      QDav.Next;
    end;
    // D3 - Itens dos DAV
    QDav.First;
    while not QDav.Eof do
    begin
      aCont1 := 0;
      aCont2 := 0;
      Dados_PedidoItens(QDav.FieldByName('ID').AsInteger);
      while not CdsPedidoItens.Eof do
      begin
        aDescricao := CdsPedidoItens.FieldByName('DESCRICAO').AsString;
        if not VerificaMD5Registro(1, QDav.FieldByName('ID').AsInteger, CdsPedidoItens.FieldByName('ID').AsInteger) then
          aDescricao := RetornaCampoInterroga(aDescricao, 100);
        //
        DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('IDPRODUTO').AsInteger);
        aux := 'D3';
        aux := aux + ZeroEsquerda(QDav.FieldByName('numdav').AsString, 13);
        aux := aux + FormatDateTime('YYYYMMDD', QDav.FieldByName('data_PEDIDO').AsDateTime);
        aux := aux + ZeroEsquerda(IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger), 3);
        aux := aux + AlinhaTXT(ZeroEsquerda(CdsPedidoItens.FieldByName('EAN13').AsString, 6), 1, 14);
        aux := aux + AlinhaTXT(aDescricao, 1, 100);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat)), 7);
        aux := aux + AlinhaTXT(DmProdutos.CdsProdutos.FieldByName('UNIDADE').AsString, 1, 3);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('VALOR').AsFloat)), 8);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('DESCONTO').AsFloat)), 8);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat)), 8);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat)), 14);
        //
        if DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 1 then
        begin
          Inc(aCont1);
          aTotalizador := 'F' + ZeroEsquerda('', 4);
        end
        else if DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 0 then
        begin
          Inc(aCont1);
          aTotalizador := 'I' + ZeroEsquerda('', 4);
        end
        else if DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 3 then
        begin
          Inc(aCont1);
          aTotalizador := 'N' + ZeroEsquerda('', 4);
        end
        else
        begin
          Inc(aCont2);
          aTotalizador := 'T' + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat)), 4);
        end;
        aux := aux + aTotalizador;
        aux := aux + CdsPedidoItens.FieldByName('CANCELADO').AsString;
        aux := aux + '32';
        writeLn(sArquivo, aux);
        //
        Inc(aTotReg3);
        CdsPedidoItens.Next;
      end;
      QDav.Next;
    end;
  end;

end;

procedure TDmWorkCom.CriaRegistroDAVNFCe(pDatai, pDataf: TDateTime);
var
  QDav: TFDQuery;
  aTotalizador, aux, auxVr, aTpDoc, ModeloECF, aDescricao: string;
  aTotReg, aTotReg3, aCont1, aCont2: Integer;
begin
  RetornaDadosImpressora(PAFECF.gCaixa);
  //
  QDav := TFDQuery.Create(nil);
  QDav.Connection := ConexaoDados;
  QDav.Close;
  QDav.SQL.Clear;
  QDav.SQL.Add('select pedido.id,pedido.pedido_num,pedido.data_pedido,');
  QDav.SQL.Add('pedido.valor_total,pedido.coo,pedido.numero_doc,pedido.cliente,');
  QDav.SQL.Add('pedido.cnpjcpf from pedido');
  QDav.SQL.Add('where pedido.data_pedido between :pdatai and :pdataf');
  QDav.SQL.Add('and pedido.confirmada = ' + QuotedStr('S'));
  QDav.SQL.Add('and pedido.cancelado = ' + QuotedStr('N'));
  QDav.SQL.Add('and pedido.modelo = ' + QuotedStr('65'));
  QDav.SQL.Add('and (pedido.numero_doc is not null or pedido.numero_doc <> ' + QuotedStr('') + ')');
  QDav.SQL.Add('order by pedido.numero_doc');
  QDav.Params.ParamByName('pdatai').AsDate := pDatai;
  QDav.Params.ParamByName('pdataf').AsDate := pDataf;
  QDav.Open;
  if not QDav.IsEmpty then
  begin
    aTotReg := 0;
    while not QDav.Eof do
    begin
      //
      ModeloECF := DmWorkCom.PAFECF.pModeloECF;
      if not VerificaMD5Registro(0, QDav.FieldByName('ID').AsInteger) then
        ModeloECF := RetornaCampoInterroga(ModeloECF, 20);
      aux := 'D2';
      aux := aux + ZeroEsquerda(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 14); // 14 espacos
      if QDav.FieldByName('COO').AsInteger > 0 then
      begin
        aux := aux + AlinhaTXT(PAFECF.pSerial, 1, 20); // 20 espacos
        if Trim(PAFECF.pLetraMFAds) <> '' then
          aux := aux + PAFECF.pLetraMFAds
        else
          aux := aux + ' ';
        aux := aux + AlinhaTXT(PAFECF.pTipoECF, 1, 7); // 7 espacos
        aux := aux + AlinhaTXT(PAFECF.pMarcaECF, 1, 20); // 20 espacos
        aux := aux + AlinhaTXT(ModeloECF, 1, 20); // 20 espacos
        aux := aux + ZeroEsquerda(QDav.FieldByName('coo').AsString, 9);
        aux := aux + AlinhaTXT(ZeroEsquerda(QDav.FieldByName('numero_doc').AsString, 6), 1, 13);
        aux := aux + FormatDateTime('YYYYMMDD', QDav.FieldByName('data_pedido').AsDateTime);
        aux := aux + AlinhaTXT('DANFE NFC-e', 1, 30);
        auxVr := FormatFloat('0.00', QDav.FieldByName('valor_total').AsFloat);
        auxVr := FiltraNumero(auxVr);
        aux := aux + ZeroEsquerda(auxVr, 8);
        aux := aux + ZeroEsquerda('0', 9);
        aux := aux + ZeroEsquerda('0', 3);
        // aux := aux + ZeroEsquerda(IntToStr(QDav.FieldByName('COO').AsInteger),9);
        // aux := aux + ZeroEsquerda(DmWorkCom.PAFECF.gCaixa,3);
        aux := aux + AlinhaTXT(Copy(QDav.FieldByName('cliente').AsString, 1, 40), 1, 40);
        aux := aux + ZeroEsquerda(QDav.FieldByName('cnpjcpf').AsString, 14);
      end
      else
      begin
        {
          aux := aux + AlinhaTXT(PAFECF.pSerial,1,20);  // 20 espacos
          if Trim(PAFECF.pLetraMFAds) <> '' then
          aux := aux + PAFECF.pLetraMFAds
          else
          aux := aux + ' ';
          aux := aux + AlinhaTXT(PAFECF.pTipoECF,1,7); // 7 espacos
          aux := aux + AlinhaTXT(PAFECF.pMarcaECF,1,20); // 20 espacos
          aux := aux + AlinhaTXT(PAFECF.pModeloECF,1,20); // 20 espacos
          aux := aux + ZeroEsquerda(QDav.FieldByName('coo').AsString,9);
        }
        aux := aux + AlinhaTXT('', 1, 20); // 20 espacos
        aux := aux + ' ';
        aux := aux + AlinhaTXT('', 1, 7); // 7 espacos
        aux := aux + AlinhaTXT('', 1, 20); // 20 espacos
        aux := aux + AlinhaTXT('', 1, 20); // 20 espacos
        aux := aux + ZeroEsquerda('', 9);
        aux := aux + AlinhaTXT(ZeroEsquerda(QDav.FieldByName('numero_doc').AsString, 6), 1, 13);
        aux := aux + FormatDateTime('YYYYMMDD', QDav.FieldByName('data_pedido').AsDateTime);
        aux := aux + AlinhaTXT('DANFE NFC-e', 1, 30);
        auxVr := FormatFloat('0.00', QDav.FieldByName('valor_total').AsFloat);
        auxVr := FiltraNumero(auxVr);
        aux := aux + ZeroEsquerda(auxVr, 8);
        aux := aux + ZeroEsquerda('0', 9);
        aux := aux + ZeroEsquerda('0', 3);
        aux := aux + AlinhaTXT(Copy(QDav.FieldByName('cliente').AsString, 1, 40), 1, 40);
        aux := aux + ZeroEsquerda(QDav.FieldByName('cnpjcpf').AsString, 14);
      end;
      writeLn(sArquivo, aux);
      Inc(aTotReg);
      QDav.Next;
    end;
    // D3 - Itens dos DAV
    QDav.First;
    while not QDav.Eof do
    begin
      aCont1 := 0;
      aCont2 := 0;
      Dados_PedidoItens(QDav.FieldByName('ID').AsInteger);
      while not CdsPedidoItens.Eof do
      begin
        aDescricao := CdsPedidoItens.FieldByName('DESCRICAO').AsString;
        // if not VerificaMD5Registro(1,QDav.FieldByName('ID').AsInteger,CdsPedidoItens.FieldByName('ID').AsInteger) then
        // aDescricao := '?';
        //
        DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('IDPRODUTO').AsInteger);
        aux := 'D3';
        aux := aux + ZeroEsquerda(QDav.FieldByName('numero_doc').AsString, 13);
        aux := aux + FormatDateTime('YYYYMMDD', QDav.FieldByName('data_PEDIDO').AsDateTime);
        aux := aux + ZeroEsquerda(IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger), 3);
        aux := aux + AlinhaTXT(ZeroEsquerda(CdsPedidoItens.FieldByName('EAN13').AsString, 6), 1, 14);
        aux := aux + AlinhaTXT(aDescricao, 1, 100);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat)), 7);
        aux := aux + AlinhaTXT(DmProdutos.CdsProdutos.FieldByName('UNIDADE').AsString, 1, 3);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('VALOR').AsFloat)), 8);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('DESCONTO').AsFloat)), 8);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat)), 8);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat)), 14);
        //
        if DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 1 then
        begin
          Inc(aCont1);
          aTotalizador := 'F' + ZeroEsquerda('', 4);
        end
        else if DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 0 then
        begin
          Inc(aCont1);
          aTotalizador := 'I' + ZeroEsquerda('', 4);
        end
        else if DmProdutos.CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 3 then
        begin
          Inc(aCont1);
          aTotalizador := 'N' + ZeroEsquerda('', 4);
        end
        else
        begin
          Inc(aCont2);
          aTotalizador := 'T' + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', DmProdutos.CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat)), 4);
        end;
        aux := aux + aTotalizador;
        aux := aux + CdsPedidoItens.FieldByName('CANCELADO').AsString;
        aux := aux + '32';
        writeLn(sArquivo, aux);
        //
        Inc(aTotReg3);
        CdsPedidoItens.Next;
      end;
      QDav.Next;
    end;
  end;

end;

procedure TDmWorkCom.CriaRegistroB2(pDatai, pDataf: TDateTime);
var
  AuxTXT, aCombustivel, aStatus: String;
  Cont: Integer;
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select bo.bomba_numero,bi.bico_concentrador, p.data,');
    Q.SQL.Add('p.hora,p.motivo,p.cnpj,p.cpf,p.num_lacre_out,');
    Q.SQL.Add('p.num_lacre_in,p.encerrante_out,p.encerrante_in');
    Q.SQL.Add('from placas_abastec p, bombas_abastec bo, bicos_abastec bi');
    Q.SQL.Add('where p.id_bico = bi.id');
    Q.SQL.Add('and bi.id_bomba = bo.id');
    Q.SQL.Add('and p.data between :pDatai and :pDataf');
    Q.Params.ParamByName('pDatai').AsDate := pDatai;
    Q.Params.ParamByName('pDataf').AsDate := pDataf;
    Q.Open;
    if not Q.IsEmpty then
    begin
      Cont := 0;
      while not Q.Eof do
      begin
        Inc(Cont);
        AuxTXT := 'B2';
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(CdsEmpresa.FieldByName('CNPJ_CPF').AsString)), 14);
        AuxTXT := AuxTXT + AlinhaTXT(Q.FieldByName('bomba_numero').AsString, 1, 3);
        AuxTXT := AuxTXT + AlinhaTXT(Q.FieldByName('bico_concentrador').AsString, 1, 3);
        AuxTXT := AuxTXT + FormatDateTime('YYYYMMDD', Q.FieldByName('data').AsDateTime);
        AuxTXT := AuxTXT + FormatDateTime('HHMMSS', Q.FieldByName('hora').AsDateTime);
        AuxTXT := AuxTXT + AlinhaTXT(Copy(Q.FieldByName('motivo').AsString, 1, 49), 1, 50);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(Q.FieldByName('CNPJ').AsString)), 14);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(Q.FieldByName('CPF').AsString)), 11);
        AuxTXT := AuxTXT + AlinhaTXT(Q.FieldByName('num_lacre_out').AsString, 1, 15);
        AuxTXT := AuxTXT + AlinhaTXT(Q.FieldByName('num_lacre_in').AsString, 1, 15);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('encerrante_out').AsFloat)), 15);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('encerrante_in').AsFloat)), 15);
        writeLn(sArquivo, AuxTXT);
        //
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.CriaRegistroC2(pDatai, pDataf: TDateTime);
var
  AuxTXT, aCombustivel, aStatus: String;
  Cont: Integer;
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select a.id,a.idproduto,t.tanque_numero,bo.bomba_numero,');
    Q.SQL.Add('bi.bico_concentrador,a.descricao,a.data,a.notafiscal_num,');
    Q.SQL.Add('a.hora,a.encerrante,a.litros,a.status_abastec,a.numserieecf,');
    Q.SQL.Add('a.data_emissao,a.hora_emissao,a.coo_cupom,a.data_abast,a.hora_abastec');
    Q.SQL.Add('from abastecimentos a');
    Q.SQL.Add('left outer join bicos_abastec bi on bi.bico_concentrador = a.num_bico');
    Q.SQL.Add('left outer join tanques_abastec t on bi.id_tanque = t.id');
    Q.SQL.Add('left outer join bombas_abastec bo on bi.id_bomba = bo.id');
    Q.SQL.Add('where a.data_abast >= :pDatai');
    Q.SQL.Add('and a.data_abast <= :pDataf');
    Q.Params.ParamByName('pDatai').AsDate := pDatai;
    Q.Params.ParamByName('pDataf').AsDate := pDataf;
    Q.Open;
    if not Q.IsEmpty then
    begin
      Cont := 0;
      while not Q.Eof do
      begin
        aCombustivel := Q.FieldByName('descricao').AsString;
        if not VerificaMD5Registro(9, Q.FieldByName('ID').AsInteger) then
          aCombustivel := RetornaCampoInterroga(aCombustivel, 20);
        // verifica o stadus
        case Q.FieldByName('status_abastec').AsInteger of
          1:
            aStatus := 'PENDENTE';
          2:
            aStatus := 'AFERICAO';
          3:
            aStatus := 'EMITIDO NF';
          4:
            aStatus := 'EMITIDO CF';
        end;
        //
        Inc(Cont);
        AuxTXT := 'C2';
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(Trim(CdsEmpresa.FieldByName('CNPJ_CPF').AsString)), 14);
        AuxTXT := AuxTXT + AlinhaTXT(IntToStr(Q.FieldByName('idproduto').AsInteger), 1, 15);
        AuxTXT := AuxTXT + AlinhaTXT(ZeroEsquerda(IntToStr(Q.FieldByName('tanque_numero').AsInteger), 2), 1, 3);
        AuxTXT := AuxTXT + AlinhaTXT(ZeroEsquerda(IntToStr(Q.FieldByName('bomba_numero').AsInteger), 2), 1, 3);
        AuxTXT := AuxTXT + AlinhaTXT(ZeroEsquerda(IntToStr(Q.FieldByName('bico_concentrador').AsInteger), 2), 1, 3);
        AuxTXT := AuxTXT + AlinhaTXT(Copy(aCombustivel, 1, 19), 1, 20);
        AuxTXT := AuxTXT + FormatDateTime('YYYYMMDD', Q.FieldByName('data_abast').AsDateTime);
        AuxTXT := AuxTXT + FormatDateTime('HHMMSS', Q.FieldByName('hora_abastec').AsDateTime);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('encerrante').AsFloat - Q.FieldByName('litros').AsFloat)), 15);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('encerrante').AsFloat)), 15);
        AuxTXT := AuxTXT + AlinhaTXT(aStatus, 1, 10);
        if Q.FieldByName('status_abastec').AsInteger = 4 then
        begin
          AuxTXT := AuxTXT + AlinhaTXT(Q.FieldByName('numserieecf').AsString, 1, 20);
          AuxTXT := AuxTXT + FormatDateTime('YYYYMMDD', Q.FieldByName('data_emissao').AsDateTime);
          AuxTXT := AuxTXT + FormatDateTime('HHMMSS', Q.FieldByName('hora_emissao').AsDateTime);
          AuxTXT := AuxTXT + ZeroEsquerda(IntToStr(Q.FieldByName('coo_cupom').AsInteger), 9);
        end
        else
        begin
          AuxTXT := AuxTXT + AlinhaTXT('', 1, 20);
          AuxTXT := AuxTXT + AlinhaTXT('', 1, 8);
          AuxTXT := AuxTXT + AlinhaTXT('', 1, 6);
          AuxTXT := AuxTXT + ZeroEsquerda('', 9);
        end;
        // if Q.FieldByName('status_abastec').AsInteger = 3 then
        if Trim(Q.FieldByName('notafiscal_num').AsString) <> '' then
          AuxTXT := AuxTXT + ZeroEsquerda(IntToStr(Q.FieldByName('notafiscal_num').AsInteger), 6)
        else
          AuxTXT := AuxTXT + ZeroEsquerda(IntToStr(0), 6);
        AuxTXT := AuxTXT + ZeroEsquerda(FiltraNumero(FormatFloat('0.000', Q.FieldByName('litros').AsFloat)), 10);
        writeLn(sArquivo, AuxTXT);
        //
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.CriaRegistroS2(pDatai, pDataf: TDateTime);
var
  Q, i: TFDQuery;
  aux: String;
  Situacao: String;
begin
  Q := TFDQuery.Create(nil);
  i := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    i.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select distinct m.id,m.data,m.hora,m.status,m.valor,');
    Q.SQL.Add('       m.cer_conferencia,m.numero_mesa,m.coo');
    Q.SQL.Add('from mesas_abertas m');
    Q.SQL.Add('where m.data >= :pDatai');
    Q.SQL.Add('and m.data <= :pDataf');
    Q.SQL.Add('and m.status = 0');
    //
    i.Close;
    i.SQL.Clear;
    i.SQL.Add('select p.ean13,p.descricao,i.quant,');
    i.SQL.Add('       p.unidade,i.preco_unit');
    i.SQL.Add('from mesas_itens i, produtos p');
    i.SQL.Add('where p.id = i.id_produto');
    i.SQL.Add('and i.id_mesa = :pID');
    //
    Q.Params.ParamByName('pDatai').AsDate := pDatai;
    Q.Params.ParamByName('pDataf').AsDate := pDataf;
    Q.Open;
    if not Q.IsEmpty then
    begin
      while not Q.Eof do
      begin
        aux := 'S2';
        aux := aux + AlinhaTXT(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 1, 14); // 14 espacos
        aux := aux + FormatDateTime('YYYYMMDD', Q.FieldByName('data').AsDateTime);
        aux := aux + FormatDateTime('HHMMSS', Q.FieldByName('hora').AsDateTime);
        aux := aux + ZeroEsquerda(FiltraNumero(Q.FieldByName('numero_mesa').AsString), 13);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', Q.FieldByName('VALOR').AsFloat)), 13);
        if Q.FieldByName('COO').AsInteger > 0 then
        begin
          aux := aux + ZeroEsquerda(Q.FieldByName('COO').AsString, 9);
          aux := aux + AlinhaTXT(DmAcBr.ACBrECF1.NumSerie, 1, 20);
        end
        else
        begin
          aux := aux + AlinhaTXT('', 1, 9);
          aux := aux + AlinhaTXT('', 1, 20);
        end;
        writeLn(sArquivo, aux);
        Q.Next;
      end;
    end;
    // Registro S3
    Q.First;
    while not Q.Eof do
    begin
      i.Close;
      i.Params.ParamByName('pID').AsInteger := Q.FieldByName('id').AsInteger;
      i.Open;
      while not i.Eof do
      begin
        aux := 'S3';
        aux := aux + AlinhaTXT(CdsEmpresa.FieldByName('CNPJ_CPF').AsString, 1, 14);
        aux := aux + FormatDateTime('YYYYMMDD', Q.FieldByName('data').AsDateTime);
        aux := aux + FormatDateTime('HHMMSS', Q.FieldByName('hora').AsDateTime);
        aux := aux + ZeroEsquerda(FiltraNumero(Q.FieldByName('numero_mesa').AsString), 13);
        aux := aux + AlinhaTXT(i.FieldByName('Ean13').AsString, 1, 14);
        aux := aux + AlinhaTXT(i.FieldByName('Descricao').AsString, 1, 100);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', i.FieldByName('quant').AsFloat)), 7);
        aux := aux + AlinhaTXT(i.FieldByName('unidade').AsString, 1, 3);
        aux := aux + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', i.FieldByName('preco_unit').AsFloat)), 8);
        aux := aux + '3'; // Decimais da quantidade
        aux := aux + '2'; // Decimais do valor
        writeLn(sArquivo, aux);
        i.Next;
      end;
      i.Close;
      Q.Next;
    end;
  finally
    FreeAndNil(Q);
    FreeAndNil(i);
  end;

end;

procedure TDmWorkCom.ApagaRegistroItem(IDItem: Integer);
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
      SQL.Add('delete from pedido_itens i');
      SQL.Add('where i.id = :pID');
      Params.ParamByName('pID').AsInteger := IDItem;
      ExecSQL;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.VerificaReducaoZGravada(CRZ, NumSerie: String): Boolean;
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
      SQL.Add('select r.data_emissao');
      SQL.Add('from registro60m r');
      SQL.Add('where r.contador_reducao = :pCRZ');
      SQL.Add('and r.seriaecf = :pNumSerie');
      Params.ParamByName('pCRZ').AsInteger := StrToInt(CRZ);
      Params.ParamByName('pNumSerie').AsString := NumSerie;
      Open;
      Result := not IsEmpty;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.GravaContaAdicionalPagtoParcial(pIDConta: Integer; pValor: Double): Boolean;
var
  Q: TFDQuery;
begin
  Result := true;
  Q := TFDQuery.Create(nil);
  try
    try
      Q.Connection := ConexaoDados;
      Q.Close;
      Q.SQL.Add('execute procedure proc_grava_conta_parcial(:pIDConta,' + ':pValorParcial)');
      Q.Params.ParamByName('pIDConta').AsInteger := pIDConta;
      Q.Params.ParamByName('pValorParcial').AsFloat := pValor;
      Q.ExecSQL;
    except
      Result := false;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.DspPDVGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'DADOS_PDV';
end;

function TDmWorkCom.RegistraCupomAbastPendente: Integer;
var
  aValorPedido: Double;
  aNumeroDoc: String;
  ValorTotalItem, ValorCargaFed, ValorCargaEst, ValorCargaMun: Double;
begin
  Result := 0;
  Dados_Pedido(0);
  Dados_PedidoItens(0);
  Dados_PedidoFP(0);
  // grava pedido
  CdsPedidos.Append;
  // captura os dados do cliente
  if DmClientes.Dados_Contato(CdsPedidos.FieldByName('IDCLIENTE').AsInteger) then
    PreencheDadosCliente(0);
  CdsPedidos.FieldByName('DATA_PEDIDO').AsDateTime := SVData;
  CdsPedidos.FieldByName('HORA_PEDIDO').AsDateTime := SVHora;
  CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime := SVData;
  CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime := SVHora;
  CdsPedidos.FieldByName('VALOR').AsFloat := 0;
  CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat := 0;
  Grava_Dados(CdsPedidos);
  Result := CdsPedidos.FieldByName('ID').AsInteger;
  // REGISTRA OS ITENS
  aValorPedido := 0;
  if DmPosto.CdsAbastecimentos1.RecordCount > 0 then
  begin
    // localiza dados necess�rios
    DmPosto.Dados_Bicos(DmPosto.CdsAbastecimentos1.FieldByName('NUM_BICO').AsString);
    DmPosto.Dados_Bomba(DmPosto.CdsBicos.FieldByName('ID_BOMBA').AsInteger);
    DmPosto.Dados_Tanque(DmPosto.CdsBicos.FieldByName('ID_TANQUE').AsInteger);
    DmProdutos.Dados_Produto(DmPosto.CdsTanques.FieldByName('ID_PRODUTO').AsInteger);
    with sAbastecimento do
    begin
      ID := DmPosto.CdsAbastecimentos1.FieldByName('ID').AsInteger;
      Num_Bico := DmPosto.CdsAbastecimentos1.FieldByName('NUM_BICO').AsString;
      Data := DmPosto.CdsAbastecimentos1.FieldByName('DATA').AsDateTime;
      Hora := DmPosto.CdsAbastecimentos1.FieldByName('HORA').AsDateTime;
      Encerrante := DmPosto.CdsAbastecimentos1.FieldByName('ENCERRANTE').AsFloat;
      Litros := DmPosto.CdsAbastecimentos1.FieldByName('LITROS').AsFloat;
      Preco_Unit := DmPosto.CdsAbastecimentos1.FieldByName('PRECO_UNIT').AsFloat;
      Valor_Total := DmPosto.CdsAbastecimentos1.FieldByName('VALOR_TOTAL').AsFloat;
      ID_Bico := DmPosto.CdsBicos.FieldByName('ID').AsInteger;
      ID_Bomba := DmPosto.CdsBicos.FieldByName('ID_BOMBA').AsInteger;
      ID_Tanque := DmPosto.CdsBicos.FieldByName('ID_TANQUE').AsInteger;
      NumeroDoc := DmPosto.CdsAbastecimentos1.FieldByName('NOTAFISCAL_NUM').AsString;
    end;
    // localiza dados do NCM
    DmProdutos.Dados_NCM(DmProdutos.CdsProdutos.FieldByName('CODIGO_NCM').AsString, DmProdutos.CdsProdutos.FieldByName('EXCECAO_NCM').AsInteger);
    InsereItemCupom(DmPosto.CdsAbastecimentos1.FieldByName('LITROS').AsFloat, 0, 0);
    ValorTotalItem := TruncaValor((((CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat * CdsPedidoItens.FieldByName('VALOR').AsFloat) -
      CdsPedidoItens.FieldByName('DESCONTO').AsFloat) + CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat), PAFECF.gDecimais);
    // calcula a carga a ser adicionada
    ValorCargaFed := ((ValorTotalItem * DmProdutos.CdsNCM.FieldByName('ALIQ_NACIONAL').AsFloat) / 100);
    ValorCargaEst := ((ValorTotalItem * DmProdutos.CdsNCM.FieldByName('ALIQ_ESTADUAL').AsFloat) / 100);
    ValorCargaMun := ((ValorTotalItem * DmProdutos.CdsNCM.FieldByName('ALIQ_MUNICIPAL').AsFloat) / 100);
    aValorPedido := DmPosto.CdsAbastecimentos1.FieldByName('VALOR_TOTAL').AsFloat;
  end;
  CdsPedidos.Edit;
  CdsPedidos.FieldByName('VALOR').AsFloat := aValorPedido;
  CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat := aValorPedido;
  CdsPedidos.FieldByName('NUMERO_DOC').AsString := DmPosto.CdsAbastecimentos1.FieldByName('NOTAFISCAL_NUM').AsString;
  CdsPedidos.FieldByName('valor_carga_trib').AsFloat := ValorCargaFed;
  CdsPedidos.FieldByName('VAL_CARGA_FED').AsFloat := ValorCargaFed;
  CdsPedidos.FieldByName('VAL_CARGA_EST').AsFloat := ValorCargaEst;
  CdsPedidos.FieldByName('VAL_CARGA_MUN').AsFloat := ValorCargaMun;
  Grava_Dados(CdsPedidos);
  // Registra forma de pagamento
  CdsPedidoFP.Append;
  CdsPedidoFP.FieldByName('TIPO_DOCUMENTO').AsInteger := 0;
  CdsPedidoFP.FieldByName('DESCRICAO').AsString := 'Dinheiro';
  CdsPedidoFP.FieldByName('VALOR').AsFloat := aValorPedido;
  CdsPedidoFP.FieldByName('TROCO').AsFloat := 0;
  CdsPedidoFP.FieldByName('ID_FORMAPAG_CUPOM').AsInteger := CdsPedidos.FieldByName('ID_FORMAPAG').AsInteger;
  Grava_Dados(CdsPedidoFP);

end;

function TDmWorkCom.Dados_60M(pNumSerie: String; pCRZ: Integer): Boolean;
begin
  Cds60M.Close;
  Cds60M.Params.Clear;
  Qry60M.Close;
  Qry60M.SQL.Clear;
  Qry60M.SQL.Add('select * from registro60m r');
  Qry60M.SQL.Add('where r.contador_reducao = :pCRZ');
  Qry60M.SQL.Add('and r.seriaecf = :pNumSerie');
  // parametros
  Cds60M.FetchParams;
  Cds60M.Params.ParamByName('pCRZ').AsInteger := pCRZ;
  Cds60M.Params.ParamByName('pNumSerie').AsString := pNumSerie;
  Cds60M.Open;
  Result := false;
  if Cds60M.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.DspRecargasGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'RECARGAS';
end;

procedure TDmWorkCom.DspReg61GetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'REGISTRO61';
end;

procedure TDmWorkCom.CdsRecargasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('RECARGAS');
end;

procedure TDmWorkCom.CdsReg61NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('REGISTRO61');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA_EMISSAO').AsDateTime := SVData;
  DataSet.FieldByName('SERIE').AsString := 'D';
  DataSet.FieldByName('MODELO').AsString := '02';
  DataSet.FieldByName('CAIXA').AsString := PAFECF.gCaixa;

end;

procedure TDmWorkCom.GravaDadosRecarga(pDDD, pCelular: String);
var
  aTipoDoc: Integer;
begin
  aTipoDoc := 0;
  if Trim(PAFECF.gBinCartao) <> '' then
    aTipoDoc := 2;
  //
  try
    Dados_Recargas(Now);
    CdsRecargas.Append;
    CdsRecargasDATA.AsDateTime := Now;
    CdsRecargasHORA.AsDateTime := Now;
    CdsRecargasDDD.AsString := pDDD;
    CdsRecargasCELULAR.AsString := pCelular;
    CdsRecargasVALOR.AsFloat := PAFECF.gVrOriginalTEF;
    CdsRecargasNSU.AsString := PAFECF.gNSU;
    CdsRecargasNOME_REDE.AsString := PAFECF.gNomeRede;
    CdsRecargasCAIXA.AsString := PAFECF.gCaixa;
    CdsRecargasTIPO_DOCUMENTO.AsInteger := aTipoDoc;
    Grava_Dados(CdsRecargas);
  except
    on E: Exception do
      ShowMessage(E.message);
  end;

end;

function TDmWorkCom.GravaDadosReducaoArqSPED(pArquivo: String): Boolean;
var
  cLinhaArquivo, cCampoArquivo, cNumSerie, auxString: string;
  cArquivo: TextFile;
begin
  Result := true;
  try
    if FileExists(pArquivo) then
    begin
      Dados_60M(0);
      Dados_60A(0);
      AssignFile(cArquivo, pArquivo);
      Reset(cArquivo);
      while not System.Eof(cArquivo) do
      begin
        ReadLn(cArquivo, cLinhaArquivo);
        cCampoArquivo := Copy(cLinhaArquivo, 2, 4);
        // informa��es da ECF
        if cCampoArquivo = 'C400' then
        begin
          // |C400|2D|MACH 1|DR0813BR000000399740|001|
          cNumSerie := Le_Linha_Arquivo(cLinhaArquivo, '|', 5);
        end;
        if Trim(cNumSerie) = Trim(DmAcBr.ACBrECF1.NumSerie) then
        begin
          // informa��es do registro 60M
          if cCampoArquivo = 'C405' then
          begin
            // |C405|01072014|001|000055|000166|4888,74|33,68|
            Cds60M.Append;
            auxString := Le_Linha_Arquivo(cLinhaArquivo, '|', 3);
            Cds60M.FieldByName('DATA_EMISSAO').AsDateTime := StrToDate(Copy(auxString, 1, 2) + '/' + Copy(auxString, 3, 2) + '/' + Copy(auxString, 5, 4));
            Cds60M.FieldByName('DATA_MOVIMENTO').AsDateTime := StrToDate(Copy(auxString, 1, 2) + '/' + Copy(auxString, 3, 2) + '/' + Copy(auxString, 5, 4));
            Cds60M.FieldByName('SERIAECF').AsString := cNumSerie;
            Cds60M.FieldByName('CONTADOR_REINICIO').AsString := DmAcBr.ACBrECF1.NumCRO;
            Cds60M.FieldByName('CONTADOR_REDUCAO').AsString := DmAcBr.ACBrECF1.NumCRZ;
            Cds60M.FieldByName('COO_INICIAL').AsInteger := StrToInt(Le_Linha_Arquivo(cLinhaArquivo, '|', 5));
            Cds60M.FieldByName('COO_FINAL').AsInteger := StrToInt(Le_Linha_Arquivo(cLinhaArquivo, '|', 6));
            auxString := Le_Linha_Arquivo(cLinhaArquivo, '|', 7);
            // auxString := AlteraCaracter(auxString,',','.');
            Cds60M.FieldByName('GRANDE_TOTAL').AsFloat := StrToFloat(auxString);
            auxString := Le_Linha_Arquivo(cLinhaArquivo, '|', 8);
            // auxString := AlteraCaracter(auxString,',','.');
            Cds60M.FieldByName('VENDA_BRUTA').AsFloat := StrToFloat(auxString);
            Grava_Dados(Cds60M);
          end;
          // informa��es do registro 60A
          if cCampoArquivo = 'C420' then
          begin
            // |C420|F1|32,00|||
            Cds60A.Append;
            Cds60A.FieldByName('ALIQUOTA_TRIB').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 3);
            auxString := Le_Linha_Arquivo(cLinhaArquivo, '|', 4);
            // auxString := AlteraCaracter(auxString,',','.');
            Cds60A.FieldByName('TOTALIZADOR').AsFloat := StrToFloat(auxString);
            Grava_Dados(Cds60A);
          end;
        end;
      end;
      CloseFile(cArquivo);
    end;
  except
    Result := false;
  end;

end;

procedure TDmWorkCom.DspCentroCustoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CENTROCUSTO';
end;

procedure TDmWorkCom.CdsCentroCustoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CENTROCUSTO');
  DataSet.FieldByName('ATIVO').AsString := 'T';

end;

procedure TDmWorkCom.DspPlanoContaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PLANOCONTA';
end;

procedure TDmWorkCom.CdsPlanoContaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PLANOCONTA');
  DataSet.FieldByName('ATIVO').AsString := 'T';

end;

function TDmWorkCom.Dados_CentroCusto: Boolean;
begin
  CdsCentroCusto.Close;
  CdsCentroCusto.Params.Clear;
  QryCentroCusto.Close;
  QryCentroCusto.SQL.Clear;
  QryCentroCusto.SQL.Add('select * from centrocusto c');
  //
  CdsCentroCusto.FetchParams;
  CdsCentroCusto.Open;
  //
  Result := false;
  if CdsCentroCusto.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_CentroCusto(pID: Integer): Boolean;
begin
  CdsCentroCusto.Close;
  CdsCentroCusto.Params.Clear;
  QryCentroCusto.Close;
  QryCentroCusto.SQL.Clear;
  QryCentroCusto.SQL.Add('select * from centrocusto c');
  QryCentroCusto.SQL.Add('where c.id = :pID');
  //
  CdsCentroCusto.FetchParams;
  CdsCentroCusto.Params.ParamByName('pID').AsInteger := pID;
  CdsCentroCusto.Open;
  //
  Result := false;
  if CdsCentroCusto.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_PlanoConta: Boolean;
begin
  CdsPlanoConta.Close;
  CdsPlanoConta.Params.Clear;
  QryPlanoConta.Close;
  QryPlanoConta.SQL.Clear;
  QryPlanoConta.SQL.Add('select * from planoconta p');
  //
  CdsPlanoConta.FetchParams;
  CdsPlanoConta.Open;
  //
  Result := false;
  if CdsPlanoConta.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_PlanoConta(pID: Integer): Boolean;
begin
  CdsPlanoConta.Close;
  CdsPlanoConta.Params.Clear;
  QryPlanoConta.Close;
  QryPlanoConta.SQL.Clear;
  QryPlanoConta.SQL.Add('select * from planoconta p');
  QryPlanoConta.SQL.Add('where p.id = :pID');
  //
  CdsPlanoConta.FetchParams;
  CdsPlanoConta.Params.ParamByName('pID').AsInteger := pID;
  CdsPlanoConta.Open;
  //
  Result := false;
  if CdsPlanoConta.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_PNMaster: Boolean;
begin
  CdsPNMaster.Close;
  CdsPNMaster.Open;
  //
  Result := false;
  if CdsPNMaster.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.RetornaCSTCFOPItemCompra(var CST, CFOP: String; var Aliquota: Double; var REDUCAOBASE: Double; UF: String; IDProd: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select a.cst, a.cfop,a.aliquota,a.reducao_base');
    Q.SQL.Add('from produto_aliquota a');
    Q.SQL.Add('where a.uf = ' + QuotedStr(UF));
    Q.SQL.Add('and a.idproduto = ' + IntToStr(IDProd));
    Q.Open;
    CST := Q.FieldByName('cst').AsString;
    CFOP := Q.FieldByName('cfop').AsString;
    Aliquota := Q.FieldByName('aliquota').AsFloat;
    REDUCAOBASE := Q.FieldByName('reducao_base').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.DspPaisGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'COD_PAIS';
end;

function TDmWorkCom.GerarNFe(pID: Integer; Apropria: Boolean; NFCe: Boolean = false; ContingenciaOff: Boolean = false): Boolean;
var
  aNumIten: Integer;
  aCodUF, aCodGTIN, aMensagem, aUFEmitente: String;
  ValorII, ValorTroco: Double;
  aOK: Boolean;
  aModelo: String;
begin
  inherited;
  try
    aUFEmitente := DmWorkCom.CdsEmpresaUF.AsString;
    if Trim(PAFECF.gUFAlternada) <> '' then
      aUFEmitente := PAFECF.gUFAlternada;

    aModelo := '55';
    if NFCe then
      aModelo := '65';

    Result := true;
    if not Dados_Pedido(pID) then
    begin
      Result := false;
      Abort;
    end
    else
    begin
      Dados_PedidoItens(pID);
      Dados_PedidoFP(pID);
      DmClientes.Dados_Contato(CdsPedidosIDCLIENTE.AsInteger);
    end;
    // Gera o numero sequencial
    if CdsPedidos.FieldByName('NUMERO_DOC').AsString = '' then
    begin
      CdsPedidos.Edit;
      CdsPedidos.FieldByName('NUMERO_DOC').AsString := ZeroEsquerda(IntToStr(RetornaNumNfe(aModelo, sAmbiente + 1)), 6);
      Grava_Dados(CdsPedidos);
    end;
    // gera a NFe
    DmAcBr.ACBrNFe1.NotasFiscais.Clear;
    with DmAcBr.ACBrNFe1.NotasFiscais.Add.NFe do
    begin
      // Dados Principais
      Ide.cNF := StrToInt(CdsPedidos.FieldByName('PEDIDO_NUM').AsString);
      Ide.natOp := CdsPedidos.FieldByName('NATOP').AsString;
      if Dados_ContasPedido(CdsPedidos.FieldByName('ID').AsInteger, 0) then
        Ide.indPag := ipPrazo
      else
        Ide.indPag := ipVista;
      Ide.modelo := StrToInt(aModelo);
      Ide.serie := 1;
      Ide.nNF := StrToInt(CdsPedidos.FieldByName('NUMERO_DOC').AsString);
      Ide.dEmi := Now;
      Ide.dSaiEnt := Now;

      if DmAcBr.ACBrNFe1.configuracoes.Geral.VersaoDF <> ve310 then
        Ide.hSaiEnt := Now
      else
        Ide.hSaiEnt := 0;

      Ide.tpNF := tnSaida;
      if not ContingenciaOff then
      begin
        case DmWorkCom.sFormas of
          1:
            Ide.tpEmis := teNormal;
          2:
            Ide.tpEmis := teContingencia;
          3:
            Ide.tpEmis := teSCAN;
          4:
            Ide.tpEmis := teDPEC;
          5:
            Ide.tpEmis := teFSDA;
          6:
            Ide.tpEmis := teSVCAN;
          7:
            Ide.tpEmis := teSVCRS;
          8:
            Ide.tpEmis := teSVCSP;
          9:
            Ide.tpEmis := teOffLine;
        end;
      end
      else
        Ide.tpEmis := teOffLine;
      //
      if sAmbiente = 0 then
        Ide.tpAmb := taProducao
      else
        Ide.tpAmb := taHomologacao;
      Ide.verProc := GetVersaoArq;
      Ide.cUF := UFtoCUF(aUFEmitente);
      // Ide.cUF     := NotaUtil.UFtoCUF(aUFEmitente);
      // Ide.cUF     := NotaUtil.UFtoCUF(DmWorkCom.CdsEmpresaUF.AsString);
      Ide.cMunFG := StrToInt(DmWorkCom.CdsEmpresaCOD_MUNICIPIO.AsString);
      Ide.finNFe := fnNormal;
      if not NFCe then
      begin
        if Trim(CdsPedidosUF_END_ENTREGA.AsString) <> '' then
        begin
          if Trim(CdsEmpresaUF.AsString) = Trim(CdsPedidosUF_END_ENTREGA.AsString) then
            Ide.idDest := doInterna
          else
            Ide.idDest := doInterestadual;
        end
        else
          Ide.idDest := doInterna;
      end
      else
      begin
        Ide.idDest := doInterna;
      end;
      //
      if not NFCe then
      begin
        Ide.tpImp := tiRetrato;
        Ide.indFinal := cfNao;
        Ide.indPres := pcNao;
      end
      else
      begin
        Ide.tpImp := tiNFCe;
        Ide.indFinal := cfConsumidorFinal;
        Ide.indPres := pcPresencial;
      end;
      // Emitente
      case DmWorkCom.CdsEmpresaCRT.AsInteger of
        0:
          Emit.CRT := crtSimplesNacional;
        1:
          Emit.CRT := crtSimplesExcessoReceita;
        2:
          Emit.CRT := crtRegimeNormal;
      end;
      Emit.CNPJCPF := DmWorkCom.CdsEmpresaCNPJ_CPF.AsString;
      Emit.IE := DmWorkCom.CdsEmpresaINSCRICAO_RG.AsString;
      Emit.IEST := '';
      // Emit.IEST    := DmWorkCom.CdsEmpresaINSCRICAO_RG.AsString;
      Emit.xNome := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;
      Emit.xFant := DmWorkCom.CdsEmpresaFANTASIA.AsString;
      Emit.IM := DmWorkCom.CdsEmpresaINSC_MUNIC.AsString;
      Emit.CNAE := FiltraNumero(DmWorkCom.CdsEmpresaCNAE.AsString);
      //
      Emit.EnderEmit.xLgr := DmWorkCom.CdsEmpresaENDERECO.AsString;
      Emit.EnderEmit.nro := DmWorkCom.CdsEmpresaNUMERO.AsString;
      Emit.EnderEmit.xCpl := DmWorkCom.CdsEmpresaCOMPLEMENTO.AsString;
      Emit.EnderEmit.xBairro := DmWorkCom.CdsEmpresaBAIRRO.AsString;
      Emit.EnderEmit.cMun := StrToInt(DmWorkCom.CdsEmpresaCOD_MUNICIPIO.AsString);
      Emit.EnderEmit.xMun := DmWorkCom.CdsEmpresaCIDADE.AsString;
      Emit.EnderEmit.UF := aUFEmitente;
      // Emit.EnderEmit.UF      := DmWorkCom.CdsEmpresaUF.AsString;
      Emit.EnderEmit.Cep := StrToInt(DmWorkCom.CdsEmpresaCEP.AsString);
      Emit.EnderEmit.fone := DmWorkCom.CdsEmpresaTELEFONE.AsString;
      Emit.EnderEmit.cPais := 1058;
      Emit.EnderEmit.xPais := 'BRASIL';
      // Destinatario
      Dest.CNPJCPF := CdsPedidos.FieldByName('CNPJCPF').AsString;
      if not NFCe then
      begin
        if length(Trim(FiltraNumero(CdsPedidos.FieldByName('CNPJCPF').AsString))) > 11 then
        begin
          if Trim(FiltraNumero(CdsPedidos.FieldByName('INSCEST').AsString)) <> '' then
          begin
            Dest.indIEDest := inContribuinte;
            Dest.IE := CdsPedidos.FieldByName('INSCEST').AsString;
          end
          else
          begin
            Dest.indIEDest := inIsento;
            Dest.IE := '';
          end;
        end
        else
        begin
          Dest.indIEDest := inNaoContribuinte;
          Dest.IE := '';
        end;
      end
      else
      begin
        Dest.indIEDest := inNaoContribuinte;
        Dest.IE := '';
      end;
      Dest.ISUF := '';
      Dest.xNome := DmClientes.CdsContatosNOME.AsString;
      Dest.EnderDest.xLgr := DmClientes.CdsContatosENDERECO.AsString;
      Dest.EnderDest.nro := DmClientes.CdsContatosNUM_END.AsString;
      Dest.EnderDest.xCpl := DmClientes.CdsContatosCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := DmClientes.CdsContatosBAIRRO_END.AsString;
      if DmClientes.CdsContatosCODCIDADE.AsString <> '' then
        Dest.EnderDest.cMun := StrToInt(DmClientes.CdsContatosCODCIDADE.AsString)
      else
        Dest.EnderDest.cMun := 0;
      Dest.EnderDest.xMun := DmClientes.CdsContatosCIDADE_END.AsString;
      Dest.EnderDest.UF := DmClientes.CdsContatosUF_END.AsString;
      if DmClientes.CdsContatosCEP_END.AsString <> '' then
        Dest.EnderDest.Cep := StrToInt(DmClientes.CdsContatosCEP_END.AsString)
      else
        Dest.EnderDest.Cep := 0;
      Dest.EnderDest.cPais := 1058;
      Dest.EnderDest.xPais := 'BRASIL';
      Dest.EnderDest.fone := DmClientes.CdsContatosTELEFONE.AsString;
      // Entrega
      Entrega.CNPJCPF := CdsPedidos.FieldByName('CNPJCPF').AsString;
      Entrega.xLgr := CdsPedidos.FieldByName('END_ENTREGA').AsString;
      Entrega.nro := CdsPedidos.FieldByName('NUM_END_ENTREGA').AsString;
      Entrega.xCpl := CdsPedidos.FieldByName('COMPL_END_ENTREGA').AsString;
      Entrega.xBairro := CdsPedidos.FieldByName('BAIRRO_END_ENTREGA').AsString;
      if FiltraNumero(DmClientes.CdsContatosCODCIDADE.AsString) <> '' then
        Entrega.cMun := StrToInt(FiltraNumero(DmClientes.CdsContatosCODCIDADE.AsString))
      else
        Entrega.cMun := 0;
      Entrega.xMun := CdsPedidos.FieldByName('CID_END_ENTREGA').AsString;
      Entrega.UF := CdsPedidos.FieldByName('UF_END_ENTREGA').AsString;
      // autoriza��o
      autXML.Add.CNPJCPF := sCNPJContador; // '13937073000156';
      // Itens da NFe
      ValorII := 0;
      // ValorTotCarga := 0;
      aNumIten := 0;
      DmWorkCom.CdsPedidoItens.First;
      while not DmWorkCom.CdsPedidoItens.Eof do
      begin
        if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'N' then
        begin
          Inc(aNumIten);
          DmProdutos.Dados_Produto(DmWorkCom.CdsPedidoItensIDPRODUTO.AsInteger);
          with Det.Add do
          begin
            aCodGTIN := DmWorkCom.CdsPedidoItensEAN13.AsString;
            if not ValidaCodigoGTIN(aCodGTIN) then
              aCodGTIN := '';
            //
            Prod.nItem := aNumIten;
            Prod.cProd := IntToStr(DmWorkCom.CdsPedidoItensIDPRODUTO.AsInteger);
            Prod.cEAN := aCodGTIN;
            Prod.xProd := DmWorkCom.CdsPedidoItensDESCRICAO.AsString;
            Prod.NCM := DmProdutos.CdsProdutosCODIGO_NCM.AsString;
            if Trim(DmProdutos.CdsProdutosCOD_CEST.AsString) <> '' then
              Prod.CEST := DmProdutos.CdsProdutosCOD_CEST.AsString;
            Prod.EXTIPI := '';
            if CdsPedidos.FieldByName('COO').AsInteger > 0 then
              Prod.CFOP := '5929'
            else
              Prod.CFOP := DmWorkCom.CdsPedidoItensCFOP.AsString;
            Prod.uCom := DmProdutos.CdsProdutosUNIDADE.AsString;
            Prod.qCom := DmWorkCom.CdsPedidoItensQUANTIDADE.AsFloat;
            Prod.vUnCom := DmWorkCom.CdsPedidoItensVALOR.AsFloat;
            Prod.vProd := DmWorkCom.CdsPedidoItensVALOR_TOTAL.AsFloat;
            Prod.cEANTrib := aCodGTIN;
            Prod.uTrib := DmProdutos.CdsProdutosUNIDADE.AsString;
            Prod.qTrib := DmWorkCom.CdsPedidoItensQUANTIDADE.AsFloat;
            Prod.vUnTrib := DmWorkCom.CdsPedidoItensVALOR.AsFloat;
            Prod.vFrete := 0;
            Prod.vSeg := 0;
            Prod.vDesc := DmWorkCom.CdsPedidoItensDESCONTO.AsFloat;
            with Imposto do
            begin
              with ICMS do
              begin
                // simples nacional
                if (DmWorkCom.CdsEmpresaCRT.AsInteger = 0) then
                begin
                  CSOSN := StrToCSOSNIcms(aOK, DmWorkCom.CdsPedidoItensCSOSN.AsString);
                end;
                // regime normal ou excesso
                if (DmWorkCom.CdsEmpresaCRT.AsInteger = 1) or (DmWorkCom.CdsEmpresaCRT.AsInteger = 2) then
                begin
                  CST := StrToCSTICMS(aOK, DmWorkCom.CdsPedidoItensCST.AsString);
                end;
                //
                ICMS.orig := oeNacional;
                ICMS.modBC := dbiValorOperacao;
                ICMS.vBC := DmWorkCom.CdsPedidoItensBASE_ICMS.AsFloat;
                ICMS.pICMS := DmProdutos.CdsProdutosALIQUOTA_ICMS.AsFloat;
                ICMS.vICMS := DmWorkCom.CdsPedidoItensVALOR_ICMS.AsFloat;
                ICMS.modBCST := dbisMargemValorAgregado;
                ICMS.pMVAST := DmWorkCom.CdsPedidoItensMVA.AsFloat;
                ICMS.pRedBCST := 0;
                ICMS.vBCST := DmWorkCom.CdsPedidoItensBASE_ICMS_ST.AsFloat;
                ICMS.pICMSST := DmWorkCom.CdsPedidoItensVALOR_ICMS_ST.AsFloat;
                ICMS.pRedBC := DmWorkCom.CdsPedidoItensREDUCAO_BASE.AsFloat;
              end;
              if DmWorkCom.CdsPedidoItensCST_PIS.AsString <> '' then
              begin
                with PIS do
                begin
                  CST := StrToCSTPIS(aOK, DmWorkCom.CdsPedidoItensCST_PIS.AsString);
                  vBC := DmWorkCom.CdsPedidoItensBASE_PIS.AsFloat;
                  pPIS := DmWorkCom.CdsPedidoItensALIQ_PIS.AsFloat;
                  vPIS := DmWorkCom.CdsPedidoItensVALOR_PIS.AsFloat;
                end;
              end;
              //
              if DmWorkCom.CdsPedidoItensCST_COFINS.AsString <> '' then
              begin
                with COFINS do
                begin
                  CST := StrToCSTCOFINS(aOK, DmWorkCom.CdsPedidoItensCST_COFINS.AsString);
                  vBC := DmWorkCom.CdsPedidoItensBASE_COFINS.AsFloat;
                  pCOFINS := DmWorkCom.CdsPedidoItensALIQ_COFINS.AsFloat;
                  vCOFINS := DmWorkCom.CdsPedidoItensVALOR_COFINS.AsFloat;
                end;
              end;
              //
              { if not NFCe then
                begin
                if (Copy(DmWorkCom.CdsPedidoItensCST.AsString,2,2) = '40') or // 1 - Isento
                (Copy(DmWorkCom.CdsPedidoItensCST.AsString,2,2) = '41') then // 2 - N�o tributado
                begin
                with II do
                begin
                vBc      := DmWorkCom.CdsPedidoItensBASE_ICMS.AsFloat;
                vDespAdu := 0;
                vII      := DmWorkCom.CdsPedidoItensVALOR_TOTAL.AsFloat;
                vIOF     := 0;
                end;
                ValorII := ValorII + DmWorkCom.CdsPedidoItensVALOR_TOTAL.AsFloat;
                end;
                end; }

            end;
          end;
        end;
        DmWorkCom.CdsPedidoItens.Next;
      end;
      // informa��es finais da NFe
      Total.ICMSTot.vProd := CdsPedidos.FieldByName('VALOR').AsFloat;
      Total.ICMSTot.vBC := 0;
      Total.ICMSTot.vICMS := 0;
      Total.ICMSTot.vBCST := 0;
      Total.ICMSTot.vST := 0;
      Total.ICMSTot.vFrete := 0;
      Total.ICMSTot.vSeg := 0;
      if CdsEmpresaCRT.AsInteger > 0 then
      begin
        Total.ICMSTot.vBC := CdsPedidos.FieldByName('BASE_ICMS').AsFloat;
        Total.ICMSTot.vICMS := CdsPedidos.FieldByName('VALOR_ICMS').AsFloat;
        Total.ICMSTot.vBCST := CdsPedidos.FieldByName('BASE_ICMS_ST').AsFloat;
        Total.ICMSTot.vST := CdsPedidos.FieldByName('VALOR_ICMS_ST').AsFloat;
        Total.ICMSTot.vFrete := CdsPedidos.FieldByName('VALOR_FRETE').AsFloat;
        Total.ICMSTot.vSeg := CdsPedidos.FieldByName('VALOR_SEGURO').AsFloat;
      end;
      Total.ICMSTot.vDesc := CdsPedidos.FieldByName('DESCONTO').AsFloat;
      Total.ICMSTot.vII := ValorII;
      Total.ICMSTot.vIPI := CdsPedidos.FieldByName('VALOR_IPI').AsFloat;
      Total.ICMSTot.vPIS := CdsPedidos.FieldByName('VALOR_PIS').AsFloat;
      Total.ICMSTot.vCOFINS := CdsPedidos.FieldByName('VALOR_COFINS').AsFloat;
      Total.ICMSTot.vOutro := 0;
      Total.ICMSTot.vNF := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
      //
      Total.ISSQNtot.vServ := 0;
      Total.ISSQNtot.vBC := 0;
      Total.ISSQNtot.vISS := 0;
      Total.ISSQNtot.vPIS := 0;
      Total.ISSQNtot.vCOFINS := 0;
      //
      Total.retTrib.vRetPIS := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL := 0;
      Total.retTrib.vBCIRRF := 0;
      Total.retTrib.vIRRF := 0;
      Total.retTrib.vRetPrev := 0;
      // transportara
      Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE
      if not NFCe then
      begin
        Transp.modFrete := mfContaEmitente; // NFC-e n�o pode ter FRETE
        Transp.Transporta.CNPJCPF := '';
        Transp.Transporta.xNome := '';
        Transp.Transporta.IE := '';
        Transp.Transporta.xEnder := '';
        Transp.Transporta.xMun := '';
        Transp.Transporta.UF := '';
        { With Transp.Reboque.Add do
          begin
          placa := '';
          UF    := '';
          RNTC  := '';
          end;
          with Transp.Vol.Add do
          begin
          qVol  := 1;
          esp   := '';
          marca := '';
          nVol  := '';
          pesoL := 0;
          pesoB := 0;
          end;
        }
      end;
      if not NFCe then
      begin
        // fatura
        Cobr.Fat.nFat := CdsPedidosNUMERO_DOC.AsString;
        Cobr.Fat.vOrig := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
        Cobr.Fat.vDesc := 0;
        Cobr.Fat.vLiq := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
        // Cobranca
        if Dados_ContasPedido(CdsPedidos.FieldByName('ID').AsInteger, 0) then
        begin
          while not CdsContasAux.Eof do
          begin
            with Cobr.Dup.Add do
            begin
              nDup := CdsContasAux.FieldByName('NUMCONTA').AsString;
              dVenc := CdsContasAux.FieldByName('DATA_VENC').AsDateTime;
              vDup := CdsContasAux.FieldByName('VALOR_CONTA').AsFloat;
            end;
            CdsContasAux.Next;
          end;
          // forma de pagamento
          with pag.Add do
          begin
            tPag := fpCreditoLoja;
            vPag := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
          end;
        end
        else
        begin
          with Cobr.Dup.Add do
          begin
            nDup := CdsPedidos.FieldByName('PEDIDO_NUM').AsString;
            dVenc := CdsPedidos.FieldByName('DATA_PEDIDO').AsDateTime;
            vDup := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
          end;
          // forma de pagamento
          with pag.Add do
          begin
            tPag := fpDinheiro;
            vPag := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
          end;
        end;
      end
      else
      begin
        Dados_PedidoFP(CdsPedidos.FieldByName('ID').AsInteger);
        CdsPedidoFP.First;
        while not CdsPedidoFP.Eof do
        begin
          case CdsPedidoFPTIPO_DOCUMENTO.AsInteger of
            0:
              begin // dinheiro
                with pag.Add do // PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpDinheiro;
                  vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat - CdsPedidoFP.FieldByName('TROCO').AsFloat;
                  ValorTroco := ValorTroco + CdsPedidoFP.FieldByName('TROCO').AsFloat;
                end;
              end;
            1:
              begin // Cheque
                with pag.Add do // PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCheque;
                  vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            2:
              begin // Cart�o
                if CdsPedidoFP.FieldByName('TIPO_TEF').AsString = 'CREDITO' then
                begin
                  with pag.Add do // PAGAMENTOS apenas para NFC-e
                  begin
                    tPag := fpCartaoCredito;
                    vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                  end;
                end
                else
                begin
                  with pag.Add do // PAGAMENTOS apenas para NFC-e
                  begin
                    tPag := fpCartaoDebito;
                    vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                  end;
                end;
              end;
            3:
              begin // NP
                with pag.Add do // PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCreditoLoja;
                  vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            4:
              begin // Carnet
                with pag.Add do // PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCreditoLoja;
                  vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            5:
              begin // Boleto
                with pag.Add do // PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCreditoLoja;
                  vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            6:
              begin // Outros
                with pag.Add do // PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpOutro;
                  vPag := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
          end;
          GravaRegistroA2(SVData, CdsPedidoFP.FieldByName('DESCRICAO').AsString, 3,
            (CdsPedidoFP.FieldByName('VALOR').AsFloat - CdsPedidoFP.FieldByName('TROCO').AsFloat));
          CdsPedidoFP.Next;
        end;
      end;
      aMensagem := 'MD-5: ' + PAFECF.gMD5 + #13 + #10;
      if CdsPedidos.FieldByName('COO').AsInteger > 0 then
        aMensagem := aMensagem + 'N�mero do COO do cupom: ' + ZeroEsquerda(CdsPedidos.FieldByName('COO').AsString, 6) + #13 + #10;
      // Exive a mensagem do troco
      if ValorTroco > 0 then
        aMensagem := aMensagem + 'Valor do troco: R$' + FormatFloat(PAFECF.gMascaraDec, ValorTroco) + #13 + #10;
      // exibe carga tributaria
      aMensagem := aMensagem + 'Val Aprox trib. Fed. R$' + FormatFloat(PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_FED').AsFloat) + ' Est. R$' +
        FormatFloat(PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_EST').AsFloat) + ' Mun. R$' +
        FormatFloat(PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_MUN').AsFloat) + ' Fonte IBPT' + #13 + #10;
      // Observa��es da NFe
      if not NFCe then
      begin
        if CdsPedidos.FieldByName('OBSNFE_1').AsString <> '' then
          aMensagem := aMensagem + CdsPedidos.FieldByName('OBSNFE_1').AsString + #13 + #10;
        if CdsPedidos.FieldByName('OBSNFE_2').AsString <> '' then
          aMensagem := aMensagem + CdsPedidos.FieldByName('OBSNFE_2').AsString + #13 + #10;
        if CdsPedidos.FieldByName('OBSNFE_3').AsString <> '' then
          aMensagem := aMensagem + CdsPedidos.FieldByName('OBSNFE_3').AsString + #13 + #10;
        if CdsPedidos.FieldByName('OBSNFE_4').AsString <> '' then
          aMensagem := aMensagem + CdsPedidos.FieldByName('OBSNFE_4').AsString + #13 + #10;
      end;
      if sPAFNFCe = 1 then
        aMensagem := aMensagem + 'OPERADOR: ' + PAFECF.gNomeOperador + ' - Caixa: ' + PAFECF.gCaixa + #13 + #10;
      InfAdic.infCpl := aMensagem;
      InfAdic.infAdFisco := '';
    end;
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      Result := false;
    end;
  end;

end;

procedure TDmWorkCom.DspCNAEGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CNAE';
end;

function TDmWorkCom.Dados_CNAE(CNAE: String): Boolean;
begin
  CdsCNAE.Close;
  CdsCNAE.Params.ParamByName('pCNAE').AsString := CNAE;
  CdsCNAE.Open;
  //
  Result := false;
  if CdsCNAE.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.RetornaValoresTributarios(var abase_icms, avalor_icms, abase_icms_st, avalor_icms_st, abase_pis, avalor_pis, abase_cofins, avalor_cofins,
  abase_ipi, avalor_ipi, abase_iss, avalor_iss: Double; pID: Integer): Boolean;
var
  Q: TFDQuery;
begin
  Result := false;
  abase_icms := 0;
  avalor_icms := 0;
  abase_icms_st := 0;
  avalor_icms_st := 0;
  abase_pis := 0;
  avalor_pis := 0;
  abase_cofins := 0;
  avalor_cofins := 0;
  abase_ipi := 0;
  avalor_ipi := 0;
  abase_iss := 0;
  avalor_iss := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select sum(i.base_icms) as base_icms,');
    Q.SQL.Add('    sum(i.valor_icms) as valor_icms,');
    Q.SQL.Add('    sum(i.base_icms_st)as base_icms_st,');
    Q.SQL.Add('    sum(i.valor_icms_st) as valor_icms_st,');
    Q.SQL.Add('    sum(i.base_pis) as base_pis,');
    Q.SQL.Add('    sum(i.valor_pis) as valor_pis,');
    Q.SQL.Add('    sum(i.base_cofins) as base_cofins,');
    Q.SQL.Add('    sum(i.valor_cofins) as valor_cofins,');
    Q.SQL.Add('    sum(i.base_ipi) as base_ipi,');
    Q.SQL.Add('    sum(i.valor_ipi) as valor_ipi,');
    Q.SQL.Add('    sum(i.base_iss) as base_iss,');
    Q.SQL.Add('    sum(i.valor_iss) as valor_iss');
    Q.SQL.Add('from pedido_itens i');
    Q.SQL.Add('where i.idpedido = :pID');
    Q.Params.ParamByName('pID').AsInteger := pID;
    Q.Open;
    if not Q.IsEmpty then
    begin
      Result := true;
      abase_icms := Q.FieldByName('base_icms').AsFloat;
      avalor_icms := Q.FieldByName('valor_icms').AsFloat;
      abase_icms_st := Q.FieldByName('base_icms_st').AsFloat;
      avalor_icms_st := Q.FieldByName('valor_icms_st').AsFloat;
      abase_pis := Q.FieldByName('base_pis').AsFloat;
      avalor_pis := Q.FieldByName('valor_pis').AsFloat;
      abase_cofins := Q.FieldByName('base_cofins').AsFloat;
      avalor_cofins := Q.FieldByName('valor_cofins').AsFloat;
      abase_ipi := Q.FieldByName('base_ipi').AsFloat;
      avalor_ipi := Q.FieldByName('valor_ipi').AsFloat;
      abase_iss := Q.FieldByName('base_iss').AsFloat;
      avalor_iss := Q.FieldByName('valor_iss').AsFloat;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.Grava_CancelamentoNFCe(ChaveNFe, Status: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update pedido p set');
    Q.SQL.Add('p.cancelado = ' + QuotedStr('S') + ',');
    Q.SQL.Add('p.status_nfe = ' + QuotedStr(Status));
    Q.SQL.Add('where p.chave_nfe = ' + QuotedStr(ChaveNFe));
    Q.SQL.Add('and p.status_nfe = ' + QuotedStr('100'));
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.VerificaAutorizacao(NAutorizacao: String): Boolean;
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
      SQL.Add('select p.id from pedido p');
      SQL.Add('where p.nautoriza_vidalink = ' + QuotedStr(NAutorizacao));
      Open;
      Result := not IsEmpty;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.RegistraCupomAutorizaaco: Integer;
var
  i: Integer;
  aTotalProd, aTotalCupom: Double;
begin
  { Result := 0;
    // grava pedido
    CdsPedidos.Append;
    if DmClientes.Dados_Contato(CdsPedidos.FieldByName('IDCLIENTE').AsInteger) then
    PreencheDadosCliente(0);
    CdsPedidos.FieldByName('DATA_PEDIDO').AsDateTime      := now;
    CdsPedidos.FieldByName('HORA_PEDIDO').AsDateTime      := now;
    CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime     := now;
    CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime     := now;
    CdsPedidos.FieldByName('VALOR').AsFloat               := 0;
    CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat         := 0;
    CdsPedidos.FieldByName('NAUTORIZA_VIDALINK').AsString := DmAuxiliar.PBMVidaLink1.Solicitacao.Autorizacao;
    Grava_Dados(CdsPedidos);
    Result := CdsPedidos.FieldByName('ID').AsInteger;
    // REGISTRA OS ITENS
    with DmAuxiliar.PBMVidaLink1 do
    begin
    aTotalCupom := 0;
    for i := 0 to Solicitacao.Count-1 do
    begin
    aTotalProd := TruncaValor(Solicitacao.Items[i].Qtd_Autorizada*
    Solicitacao.Items[i].Preco_Venda,PAFECF.gDecimais);
    DmProdutos.Dados_Produto(Solicitacao.Items[i].Ean);
    InsereItemCupom(Solicitacao.Items[i].Qtd_Autorizada,0,0);
    CdsPedidoItens.Edit;
    CdsPedidoItens.FieldByName('VALOR').AsFloat           := Solicitacao.Items[i].Preco_Venda;
    CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat     := aTotalProd;
    CdsPedidoItens.FieldByName('CANCELADO').AsString      := 'N';
    CdsPedidoItens.FieldByName('VALOR_REENBOLSO').AsFloat := Solicitacao.Items[i].Valor_Reembolso;
    CdsPedidoItens.FieldByName('VALOR_SUBSIDIO').AsFloat  := Solicitacao.Items[i].Valor_Subsidio+
    Solicitacao.Items[i].Preco_AReceber;
    Grava_Dados(CdsPedidoItens);
    aTotalCupom := aTotalCupom + aTotalProd;
    end;
    end;
    // grava o total do cupom
    CdsPedidos.Edit;
    CdsPedidos.FieldByName('VALOR').AsFloat       := aTotalCupom;
    CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat := aTotalCupom;
    Grava_Dados(CdsPedidos);
  }
end;

function TDmWorkCom.RetornaReembolsoVidaLink(pID: Integer): Double;
var
  Q: TFDQuery;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    with Q do
    begin
      Connection := ConexaoDados;
      Close;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('coalesce(sum((i.valor_reenbolso+i.valor_subsidio)*i.quantidade),0) as Valor');
      SQL.Add('from pedido_itens i');
      SQL.Add('where i.idpedido = :pID');
      Params.ParamByName('pID').AsInteger := pID;
      Open;
      Result := FieldByName('valor').AsFloat;
      Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.GerarNFeContingencia;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select p.id from pedido p');
    Q.SQL.Add('where (p.nfe_tipoemiss = 1 or p.nfe_tipoemiss = 2)');
    Q.SQL.Add('and (p.chave_nfe is null or p.chave_nfe = ' + QuotedStr('') + ')');
    Q.Open;
    while not Q.Eof do
    begin
      // gera e emite a NFCe
      if DmWorkCom.GerarNFe(Q.FieldByName('ID').AsInteger, false, true) then
      begin
        try
          // comandos para gerar arquivo XML
          DmAcBr.ACBrNFe1.NotasFiscais.Assinar;
          DmAcBr.ACBrNFe1.NotasFiscais.Items[0].GravarXML;
          // executa valida��o do arquivo
          DmAcBr.ACBrNFe1.NotasFiscais.Validar;
          // enviar ao portal
          DmAcBr.ACBrNFe1.Enviar('1' + FormatDateTime('hhmm', Now));
          // grava chave NFe
          if DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe <> '' then
          begin
            DmWorkCom.GravaChaveNFEPedido(DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe,
              DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt, DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec,
              FormatDateTime('mmss', Now), DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NomeArq,
              IntToStr(DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat), DmWorkCom.sFormas, Q.FieldByName('ID').AsInteger,
              DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto, DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0]
              .dhRecbto);
          end;
        except
          on E: Exception do
          begin
            ShowMessage(E.message);
          end;
        end;
      end;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.GravaArquivoXML(Chave_nfe, Arquivoxml: AnsiString);
var
  Q: TFDQuery;
  aLoc: Boolean;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select chave_nfe from nfe_xml where chave_nfe = ' + QuotedStr(Chave_nfe));
    Q.Open;
    aLoc := Q.IsEmpty;
    Q.Close;
    //
    if aLoc then
    begin
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('insert into nfe_xml (');
      Q.SQL.Add('      chave_nfe,');
      Q.SQL.Add('      data_gravacao,');
      Q.SQL.Add('      usuario,');
      Q.SQL.Add('      arquivo_xml)');
      Q.SQL.Add('  values (');
      Q.SQL.Add('      :chave_nfe,');
      Q.SQL.Add('      current_date,');
      Q.SQL.Add('      :usuario,');
      Q.SQL.Add('      :arquivo_xml)');
      Q.Params.ParamByName('chave_nfe').AsString := Chave_nfe;
      Q.Params.ParamByName('usuario').AsString := '';
      Q.Params.ParamByName('arquivo_xml').AsString := Arquivoxml;
      Q.ExecSQL;
      Q.Close;
    end
    else
    begin
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('update nfe_xml set');
      Q.SQL.Add('data_gravacao = current_date,');
      Q.SQL.Add('usuario = :usuario,');
      Q.SQL.Add('arquivo_xml = :arquivo_xml');
      Q.SQL.Add('where chave_nfe = :chave_nfe');
      Q.Params.ParamByName('chave_nfe').AsString := Chave_nfe;
      Q.Params.ParamByName('usuario').AsString := '';
      Q.Params.ParamByName('arquivo_xml').AsString := Arquivoxml;
      Q.ExecSQL;
      Q.Close;
    end;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.PreencheDadosCliente(pTipo: Integer);
begin
  if pTipo = 0 then // tabela de pedidos
  begin
    CdsPedidos.FieldByName('CLIENTE').AsString := DmClientes.CdsContatos.FieldByName('NOME').AsString;
    CdsPedidos.FieldByName('END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('END_ENTREGA').AsString;
    CdsPedidos.FieldByName('NUM_END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('NUM_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('COMPL_END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('COMPL_ENT').AsString;
    CdsPedidos.FieldByName('BAIRRO_END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('BAIRRO_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('CID_END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('CID_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('UF_END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('UF_END_ENT').AsString;
    CdsPedidos.FieldByName('CEP_END_ENTREGA').AsString := DmClientes.CdsContatos.FieldByName('CEP_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('CNPJCPF').AsString := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
    CdsPedidos.FieldByName('INSCEST').AsString := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
  end
  else if pTipo = 1 then // tabela de OS
  begin
    CDSOS.FieldByName('CONTATO').AsString := DmClientes.CdsContatos.FieldByName('NOME').AsString;
    CDSOS.FieldByName('ENDERECO').AsString := DmClientes.CdsContatos.FieldByName('END_ENTREGA').AsString;
    CDSOS.FieldByName('NUMERO').AsString := DmClientes.CdsContatos.FieldByName('NUM_END_ENTREGA').AsString;
    CDSOS.FieldByName('COMPLEMENTO').AsString := DmClientes.CdsContatos.FieldByName('COMPL_ENT').AsString;
    CDSOS.FieldByName('BAIRRO').AsString := DmClientes.CdsContatos.FieldByName('BAIRRO_END_ENTREGA').AsString;
    CDSOS.FieldByName('CIDADE').AsString := DmClientes.CdsContatos.FieldByName('CID_END_ENTREGA').AsString;
    CDSOS.FieldByName('UF').AsString := DmClientes.CdsContatos.FieldByName('UF_END_ENT').AsString;
    CDSOS.FieldByName('CEP').AsString := DmClientes.CdsContatos.FieldByName('CEP_END_ENTREGA').AsString;
    CDSOS.FieldByName('CNPJCPF').AsString := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
    CDSOS.FieldByName('INSCRICAORG').AsString := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
  end;

end;

procedure TDmWorkCom.PreencherCabecalho(const AACBrBlocoX: TACBrBlocoX);
begin
  Dados_Empresa(sIDEmpresa);
  Dados_DadosTecnicos;
  with DmAcBr.ACBrBlocoX1 do
  begin
    configuracoes.Certificados.NumeroSerie := sSerial;
    configuracoes.Certificados.Senha := sSenha;

    Estabelecimento.IE := FiltraNumero(CdsEmpresaINSCRICAO_RG.AsString);
    Estabelecimento.Cnpj := FiltraNumero(CdsEmpresaCNPJ_CPF.AsString);
    Estabelecimento.NomeEmpresarial := CdsEmpresaRAZAO_SOCIAL.AsString;

    PAFECF.Versao := CdsDadosTecnicosVERSAO.AsString;
    PAFECF.NumeroCredenciamento := CdsDadosTecnicosNR_LAUDO_TECNICO.AsString;
    PAFECF.NomeComercial := CdsDadosTecnicosDENOMINACAO.AsString;
    PAFECF.NomeEmpresarialDesenvolvedor := CdsDadosTecnicosEMPRESA.AsString;
    PAFECF.CnpjDesenvolvedor := FiltraNumero(CdsDadosTecnicosCNPJ.AsString);
  end;

end;

procedure TDmWorkCom.PreencheClientPadraoRegistro;
begin
  if DmClientes.Dados_Contato(CdsConfigCLIENTE_PADRAO.AsInteger) then
  begin
    with ClienteCupom do
    begin
      ID := DmClientes.CdsContatos.FieldByName('ID').AsInteger;
      Cliente := DmClientes.CdsContatos.FieldByName('NOME').AsString;
      Endereco := DmClientes.CdsContatos.FieldByName('ENDERECO').AsString;
      Numero := DmClientes.CdsContatos.FieldByName('NUM_END').AsString;
      Complemento := DmClientes.CdsContatos.FieldByName('COMPLEMENTO').AsString;
      Bairro := DmClientes.CdsContatos.FieldByName('BAIRRO_END').AsString;
      Cidade := DmClientes.CdsContatos.FieldByName('CIDADE_END').AsString;
      UF := DmClientes.CdsContatos.FieldByName('UF_END').AsString;
      Cep := DmClientes.CdsContatos.FieldByName('CEP_END').AsString;
      CPF := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
      Identidade := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
    end
  end;

end;

function TDmWorkCom.LocalizaXMLBanco(var MemoResp: TMemo; ChaveNFe: String): Boolean;
var
  Q: TFDQuery;
begin
  try
    Result := false;
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select * from nfe_xml x');
    Q.SQL.Add('where x.chave_nfe = ' + QuotedStr('NFe' + ChaveNFe));
    Q.Open;
    if not Q.IsEmpty then
    begin
      MemoResp.Text := Q.FieldByName('ARQUIVO_XML').AsString;
      Result := true;
    end;
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
    end;
  end;

end;

procedure TDmWorkCom.EmitirConferenciaMesaNFCe(pID: Integer);
var
  Mesa, Item: TFDQuery;
  aux: String;
  prn: TCharPrinter;
begin
  Mesa := TFDQuery.Create(nil);
  Item := TFDQuery.Create(nil);
  try
    Mesa.Connection := ConexaoDados;
    Item.Connection := ConexaoDados;
    // seleciona a mensa na tabela
    Mesa.Close;
    Mesa.SQL.Clear;
    Mesa.SQL.Add('select * from mesas_abertas');
    Mesa.SQL.Add('where mesas_abertas.id = :pID');
    Mesa.Params.ParamByName('pID').AsInteger := pID;
    Mesa.Open;
    if not Mesa.IsEmpty then
    begin
      prn := TCharPrinter.Create;
      prn.OpenDoc('');
      prn.SendData(#27'@');
      prn.SendData('      * * * Conferencia de Mesa * * *      ');
      //
      aux := 'Data: ' + FormatDateTime('DD/MM/YYYY', Date) + ' - Hora: ' + FormatDateTime('00:00:00', Time);
      prn.SendData(aux + #13 + #10);
      aux := 'Mesa No.: ' + Trim(Mesa.FieldByName('NUMERO_MESA').AsString);
      prn.SendData(aux + #13 + #10);
      aux := '----------------------------------------';
      prn.SendData(aux + #13 + #10);
      aux := 'Codigo   Descricao';
      prn.SendData(aux + #13 + #10);
      aux := 'Quant.  x  Preco    =     Total';
      prn.SendData(aux + #13 + #10);
      aux := '----------------------------------------';
      prn.SendData(aux + #13 + #10);
      Item.Close;
      Item.SQL.Clear;
      Item.SQL.Add('select * from mesas_itens');
      Item.SQL.Add('where mesas_itens.id_mesa = :pID');
      Item.Params.ParamByName('pID').AsInteger := pID;
      Item.Open;
      while not Item.Eof do
      begin
        aux := ZeroEsquerda(IntToStr(Item.FieldByName('ID_PRODUTO').AsInteger), 5) + ' - ' + Copy(Item.FieldByName('DESCRICAO').AsString, 1, 32);
        prn.SendData(aux + #13 + #10);
        aux := FormatFloat('0.000', Item.FieldByName('QUANT').AsFloat) + '   x   ' + FormatFloat('0.000', Item.FieldByName('PRECO_UNIT').AsFloat) + '   =   ' +
          FormatFloat('0.000', Item.FieldByName('PRECO_TOTAL').AsFloat);
        prn.SendData(aux + #13 + #10);
        if Item.FieldByName('CANCELADO').AsString = 'S' then
        begin
          aux := 'Produto ' + ZeroEsquerda(IntToStr(Item.FieldByName('ID_PRODUTO').AsInteger), 5) + ' - Cancelado';
          prn.SendData(aux + #13 + #10);
        end;
        if Item.FieldByName('NUMERO_MESA_ORIG').AsString <> '' then
        begin
          aux := 'Produto ' + ZeroEsquerda(IntToStr(Item.FieldByName('ID_PRODUTO').AsInteger), 5) + ' - Transf.da mesa: ' +
            Item.FieldByName('NUMERO_MESA_ORIG').AsString;
          prn.SendData(aux + #13 + #10);
        end;
        Item.Next;
      end;
      aux := '----------------------------------------';
      prn.SendData(aux + #13 + #10);
      aux := 'Total da Mesa: ' + FormatFloat('0.00', Mesa.FieldByName('VALOR').AsFloat);
      prn.SendData(aux + #13 + #10);
      aux := '----------------------------------------';
      prn.SendData(aux + #13 + #10);
      aux := 'AGUARDE A EMISS�O DO CUPOM FISCAL';
      prn.SendData(aux + #13 + #10);
      aux := '';
      prn.SendData(aux + #13 + #10);
      prn.SendData(#12);
      prn.CloseDoc;
    end;
  finally
    FreeAndNil(Mesa);
    FreeAndNil(Item);
  end;

end;

function TDmWorkCom.RetornaSequenciaCartaCorrecao: Integer;
var
  Q: TFDQuery;
begin
  Result := 0;
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT GEN_ID(SEQ_CARTA_CORRECAO,1) FROM RDB$DATABASE');
    Q.Open;
    Result := Q.Fields[0].AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.VerificaChaveNFeLancada(ChaveNFe: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select p.id from pedido p');
    Q.SQL.Add('where p.chave_nfe = ' + QuotedStr(ChaveNFe));
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.VerificaContaAdicionalLancada(pIDConta: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('delete from contas x');
    Q.SQL.Add('where x.idctavinculada = ' + IntToStr(pIDConta));
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.EmitereGerecialNFCe(pIDPedido: Integer; Path_BMP: String);
var
  ContItens: Integer;
  ValorTroco: Double;
begin
  if PAFECF.AbrePortaSerial then
  begin
    Dados_Pedido(pIDPedido);
    Dados_PedidoItens(pIDPedido);
    Dados_PedidoFP(pIDPedido);
    // carrega a imagem
    // DmAcBr.ACBrECF1.ProgramarBitmapPromocional(1,Path_BMP,alCentro);
    // gera o gerencial
    PAFECF.Abre_RelatorioGerencial(PAFECF.gIndiceNFCe);
    // cabecalho
    PAFECF.ImprimeRelatorioGerencial(CdsEmpresaRAZAO_SOCIAL.AsString);
    PAFECF.ImprimeRelatorioGerencial('CNPJ: ' + Trim(CdsEmpresaCNPJ_CPF.AsString) + ' - IE: ' + Trim(CdsEmpresaINSCRICAO_RG.AsString));
    PAFECF.ImprimeRelatorioGerencial(Trim(CdsEmpresaENDERECO.AsString) + ', ' + Trim(CdsEmpresaNUMERO.AsString) + ' - ' + Trim(CdsEmpresaBAIRRO.AsString));
    PAFECF.ImprimeRelatorioGerencial(Trim(CdsEmpresaCIDADE.AsString) + ' - ' + CdsEmpresaUF.AsString);
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('        DANFE NFC-e Documento auxiliar          ');
    PAFECF.ImprimeRelatorioGerencial('     da Nota Fiscal de Consumidor Eletr�nica    ');
    PAFECF.ImprimeRelatorioGerencial('  N�o permite aproveitamento de cr�dido do ICMS ');
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('C�digo  Descri��o');
    PAFECF.ImprimeRelatorioGerencial('   Quant.    Und.        Vl.Unit        Vl.Total');
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    // imprime os itens
    ContItens := 0;
    CdsPedidoItens.First;
    while not CdsPedidoItens.Eof do
    begin
      if CdsPedidoItensCANCELADO.AsString = 'N' then
      begin
        Inc(ContItens);
        PAFECF.ImprimeRelatorioGerencial(CdsPedidoItensEAN13.AsString + ' - ' + Copy(CdsPedidoItensDESCRICAO.AsString, 1, 29));
        PAFECF.ImprimeRelatorioGerencial('   ' + AlinhaCampoValor(CdsPedidoItensQUANTIDADE.AsFloat, 8, 3) + '   ' + CdsPedidoItensUNIDADE.AsString + '   ' +
          AlinhaCampoValor(CdsPedidoItensVALOR.AsFloat, 8, 2) + '   ' + AlinhaCampoValor(CdsPedidoItensVALOR_TOTAL.AsFloat, 8, 2));
      end;
      CdsPedidoItens.Next;
    end;
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('QTD. Total de itens: ' + IntToStr(ContItens));
    // PAFECF.ImprimeRelatorioGerencial('');
    PAFECF.ImprimeRelatorioGerencial('Valor dos produtos: ' + AlinhaCampoValor(CdsPedidosVALOR.AsFloat, 10, 2));
    PAFECF.ImprimeRelatorioGerencial('Valor Desconto....: ' + AlinhaCampoValor(CdsPedidosDESCONTO.AsFloat, 10, 2));
    PAFECF.ImprimeRelatorioGerencial('Valor Acrescimos..: ' + AlinhaCampoValor(CdsPedidosACRESCIMO.AsFloat, 10, 2));
    PAFECF.ImprimeRelatorioGerencial('Valor total NFCe..: ' + AlinhaCampoValor(CdsPedidosVALOR_TOTAL.AsFloat, 10, 2));
    PAFECF.ImprimeRelatorioGerencial('');
    //
    ValorTroco := 0;
    PAFECF.ImprimeRelatorioGerencial('FORMA DE PAGAMENTO');
    CdsPedidoFP.First;
    while not CdsPedidoFP.Eof do
    begin
      PAFECF.ImprimeRelatorioGerencial(CdsPedidoFPDESCRICAO.AsString + ' - ' + AlinhaCampoValor(CdsPedidoFPVALOR.AsFloat, 10, 2));
      ValorTroco := ValorTroco + CdsPedidoFPTROCO.AsFloat;
      CdsPedidoFP.Next;
    end;
    if ValorTroco > 0 then
    begin
      PAFECF.ImprimeRelatorioGerencial('Valor do troco..: ' + AlinhaCampoValor(ValorTroco, 10, 2));
    end;
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('Tributos totais incidentes: ' + AlinhaCampoValor(CdsPedidosVALOR_CARGA_TRIB.AsFloat, 10, 2));
    PAFECF.ImprimeRelatorioGerencial('Lei federal 12.741/2012');
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('MD-5:' + PAFECF.gMD5);
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    if sAmbiente = 2 then
    begin
      PAFECF.ImprimeRelatorioGerencial('Emitida em ambiente de homologa��o.');
      PAFECF.ImprimeRelatorioGerencial('Sem valor fiscal.');
      PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    end;
    PAFECF.ImprimeRelatorioGerencial('N�mero: ' + CdsPedidosNUMERO_DOC.AsString + ' - S�rie: 001');

    PAFECF.ImprimeRelatorioGerencial('Emiss�o: ' + FormatDateTime('DD/MM/YYYY', CdsPedidosDATA_ENTREGA.AsDateTime) + ' ' + FormatDateTime('HH:MM:SS',
      CdsPedidosHORA_ENTREGA.AsDateTime));
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('Consulte pela chave de acesso em:');
    if CdsConfigNFE_WS_UF_AUX.AsString = 'AM' then
      PAFECF.ImprimeRelatorioGerencial('http://portalnfce.sefaz.am.gov.br/consumidor/consulte-sua-nota/')
    else if CdsConfigNFE_WS_UF_AUX.AsString = 'RS' then
      PAFECF.ImprimeRelatorioGerencial('https://www.sefaz.rs.gov.br/NFE/NFE-COM.aspx')
    else
      PAFECF.ImprimeRelatorioGerencial('http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
    PAFECF.ImprimeRelatorioGerencial('');
    PAFECF.ImprimeRelatorioGerencial('CHAVE DE ACESSO');
    PAFECF.ImprimeRelatorioGerencial(CdsPedidosCHAVE_NFE.AsString);
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('CONSUMIDOR');
    if FiltraNumero(CdsPedidosCNPJCPF.AsString) <> '' then
    begin
      PAFECF.ImprimeRelatorioGerencial('CPF/CNPJ: ' + CdsPedidosCNPJCPF.AsString);
      PAFECF.ImprimeRelatorioGerencial(CdsPedidosCLIENTE.AsString);
      PAFECF.ImprimeRelatorioGerencial(CdsPedidosEND_ENTREGA.AsString + ', ' + CdsPedidosNUM_END_ENTREGA.AsString + ' - ' +
        CdsPedidosBAIRRO_END_ENTREGA.AsString);
      PAFECF.ImprimeRelatorioGerencial(CdsPedidosCID_END_ENTREGA.AsString + ' - ' + CdsPedidosUF_END_ENTREGA.AsString + ' - ' + 'CEP:' +
        CdsPedidosCEP_END_ENTREGA.AsString);
    end
    else
    begin
      PAFECF.ImprimeRelatorioGerencial('CONSUMIDOR N�O IDENTIFICADO');
    end;
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.ImprimeRelatorioGerencial('Protoculo de autoriza��o');
    PAFECF.ImprimeRelatorioGerencial(CdsPedidosPROTOCOLO_NFE.AsString + ' ' + FormatDateTime('DD/MM/YYYY', CdsPedidosDATA_AUTORIZA.AsDateTime) + ' ' +
      FormatDateTime('HH:MM:SS', CdsPedidosHORA_AUTORIZA.AsDateTime));
    PAFECF.ImprimeRelatorioGerencial('------------------------------------------------');
    PAFECF.FechaRelatorioGerencial;
    //
    PAFECF.FechaPortaSerial;
  end;

end;

function TDmWorkCom.VerificaNFCePendente: Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.SQL.Clear;
    Q.SQL.Add('select p.id,p.data_pedido,p.data_entrega,p.idcliente,');
    Q.SQL.Add('p.cliente,p.valor_total from pedido p');
    Q.SQL.Add('where p.confirmada = ' + QuotedStr('N'));
    Q.SQL.Add('and p.cancelado = ' + QuotedStr('N'));
    Q.SQL.Add('and (p.chave_nfe is null or p.chave_nfe = ' + QuotedStr('') + ')');
    Q.SQL.Add('and (p.coo is null or p.coo <=0)');
    Q.SQL.Add('and p.nfe_tipoemiss is null');
    Q.SQL.Add('order by p.data_entrega desc');
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.EmiteNFePendenteAutomatica(pIDPedido: Integer): Boolean;
var
  aMensagem, aNumItem: String;
  aCodMinasLegal, aCodCupomMania, FormaPag: String;
  PercCarga, ValorPago: Double;
begin
  try
    Result := true;
    Dados_Pedido(pIDPedido);
    Dados_PedidoItens(pIDPedido);
    Dados_PedidoFP(pIDPedido);
    if CdsPedidos.RecordCount > 0 then
    begin
      if (CdsPedidos.FieldByName('Cancelado').AsString = 'N') then
      begin
        // captura os dados do cliente
        DmClientes.Dados_Contato(CdsPedidos.FieldByName('IDCLIENTE').AsInteger);
        with ClienteCupom do
        begin
          ID := DmWorkCom.CdsConfigCLIENTE_PADRAO.AsInteger;
          Cliente := DmClientes.CdsContatos.FieldByName('NOME').AsString;
          Endereco := DmClientes.CdsContatos.FieldByName('END_ENTREGA').AsString;
          Numero := DmClientes.CdsContatos.FieldByName('NUM_END_ENTREGA').AsString;
          Complemento := DmClientes.CdsContatos.FieldByName('COMPL_ENT').AsString;
          Bairro := DmClientes.CdsContatos.FieldByName('BAIRRO_END_ENTREGA').AsString;
          Cidade := DmClientes.CdsContatos.FieldByName('CID_END_ENTREGA').AsString;
          Cep := DmClientes.CdsContatos.FieldByName('CEP_END_ENTREGA').AsString;
          UF := DmClientes.CdsContatos.FieldByName('UF_END_ENT').AsString;
          CPF := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
          Identidade := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
          Placa := '';
          Odometro := '';
        end;
        if not IncluirCupomExecute(aMensagem, true) then
        begin
          ShowMessage(aMensagem);
          Result := false;
          Abort;
        end;
        //
        CdsPedidoItens.First;
        while not CdsPedidoItens.Eof do
        begin
          CdsPedidoItens.Edit;
          Grava_Dados(CdsPedidoItens);
          // inclui o item na impressora fiscal
          DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('ean13').AsString);
          if DmWorkCom.RegistraItemECF(FloatToStr(CdsPedidoItens.FieldByName('Quantidade').AsFloat)) then
          begin
            PAFECF.AtualizaINI(false);
            // verifica Item Cancelado
            if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'S' then
            begin
              aNumItem := IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger);
              aNumItem := ZeroEsquerda(aNumItem, 3);
              PAFECF.CancelarItemCupom(aNumItem);
            end;
          end;
          // proximo registro
          CdsPedidoItens.Next;
        end;
        // realiza o fechamento do cupom fiscal
        PAFECF.IniciaFechamentoCupom('D', '0,00');
        while not CdsPedidoFP.Eof do
        begin
          // verifica forma de pagamento
          case CdsPedidoFP.FieldByName('TIPO_DOCUMENTO').AsInteger of
            0:
              FormaPag := DmWorkCom.PAFECF.gDINHEIRO;
            1:
              FormaPag := DmWorkCom.PAFECF.gCHEQUE;
            2:
              FormaPag := DmWorkCom.PAFECF.gCARTAO;
            3:
              FormaPag := DmWorkCom.PAFECF.gNP;
            4:
              FormaPag := DmWorkCom.PAFECF.gCARNE;
            5:
              FormaPag := DmWorkCom.PAFECF.gBOLETO;
            6:
              FormaPag := DmWorkCom.PAFECF.gOUTROS;
          end;
          if CdsPedidoFP.FieldByName('TIPO_DOCUMENTO').AsInteger = 2 then
          begin
            ValorPago := TruncaValor((CdsPedidoFP.FieldByName('VALOR').AsFloat + CdsPedidoFP.FieldByName('TROCO').AsFloat) - CdsPedidoFP.FieldByName('DESCONTO')
              .AsFloat, DmWorkCom.PAFECF.gDecimais);
          end
          else
          begin
            ValorPago := TruncaValor(CdsPedidoFP.FieldByName('VALOR').AsFloat, DmWorkCom.PAFECF.gDecimais);
          end;
          PAFECF.RegistraFormaPagtoCupom(FormaPag, TruncaValor(ValorPago, DmWorkCom.PAFECF.gDecimais));
          CdsPedidoFP.Next;
        end;
        aMensagem := '';
        // aMensagem := aMensagem + 'NFCe'+CdsPedidosNUMERO_DOC.AsString;
        // aMensagem := aMensagem+#13+#10;
        // calcula o percentual de carga
        PercCarga := ((CdsPedidos.FieldByName('VALOR_CARGA_TRIB').AsFloat * 100) / CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat);
        // verifica op��o de Minas Legal
        if DmWorkCom.CdsEmpresaUF.AsString = 'MG' then
        begin
          // 99999999ddmmaaaa8888888
          aCodMinasLegal := Copy(FiltraNumero(DmWorkCom.CdsEmpresaCNPJ_CPF.AsString), 1, 8);
          aCodMinasLegal := aCodMinasLegal + FormatDateTime('DDMMYYYY', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime);
          aCodMinasLegal := aCodMinasLegal + FloatToStr(TruncaValor(CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat, 0));
          aMensagem := aMensagem + 'MINAS LEGAL: ' + aCodMinasLegal + #13 + #10;
        end;
        // verifica op��o de Minas Legal
        { if DmWorkCom.CdsEmpresaUF.AsString = 'RJ' then
          begin
          aCodCupomMania := Copy(FiltraNumero(DmWorkCom.CdsEmpresaINSCRICAO_RG.AsString),1,8);
          aCodCupomMania := aCodCupomMania + FormatDateTime('DDMMYYYY',CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime);
          aCodCupomMania := aCodCupomMania + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('COO').AsInteger),6);
          aCodCupomMania := aCodCupomMania + ZeroEsquerda(IntToStr(StrToInt(DmAcBr.ACBrECF1.NumECF)),3);
          aMensagem := aMensagem + 'CUPOM MANIA, CONCORRA A PREMIOS'+#13+#10;
          aMensagem := aMensagem + 'ENVIE SMS P/6789: '+aCodCupomMania+#13+#10;
          end; }
        if DmWorkCom.CdsEmpresaUF.AsString = 'DF' then
        begin
          aMensagem := aMensagem + 'ESTABELECIMENTO INCLUIDO NO PROGRAMA DE' + #13 + #10;
          aMensagem := aMensagem + 'CONCESSAO DE CREDITOS - LEI N� 4.159/08' + #13 + #10;
          aMensagem := aMensagem + 'NOTA LEGAL: ICMS: ' + FormatFloat('0.00', PercCarga) + #13 + #10;
        end;
        if DmWorkCom.CdsEmpresaUF.AsString = 'PB' then
        begin
          aCodCupomMania := Copy(FiltraNumero(DmWorkCom.CdsEmpresaCNPJ_CPF.AsString), 1, 14) + ' ';
          aCodCupomMania := aCodCupomMania + FormatDateTime('DDMMYYYY', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime) + ' ';
          aCodCupomMania := aCodCupomMania + FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat)) + ' ';
          aCodCupomMania := aCodCupomMania + FiltraNumero(CdsPedidos.FieldByName('CNPJ_CPF').AsString);
          aMensagem := aMensagem + 'PARAIBA LEGAL - RECEITA CIDAD�' + #13 + #10;
          aMensagem := aMensagem + 'TORPEDO PREMIADO: ' + aCodCupomMania + #13 + #10;
        end;
        // exibe carga tributaria
        aMensagem := aMensagem + 'Val Aprox trib. Fed. R$' + FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_FED').AsFloat) +
          ' Est. R$' + FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_EST').AsFloat) + ' Mun. R$' +
          FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_MUN').AsFloat) + ' Fonte IBPT' + #13 + #10;
        PAFECF.TerminaFechamentoCupom(aMensagem);
        PAFECF.AtualizaINI(false);
        // Grava Cupom Confirma��o no banco de dados
        if not(CdsPedidos.State in [dsInsert, dsEdit]) then
          CdsPedidos.Edit;
        CdsPedidos.FieldByName('CONFIRMADA').AsString := 'S';
        Grava_Dados(CdsPedidos);
      end;
    end;
  except
    on E: Exception do
    begin
      Result := false;
      ShowMessage(E.message);
    end;
  end;
end;

function TDmWorkCom.RetornaModeloECF(NumSerie: String): String;
var
  Q: TFDQuery;
begin
  Result := '';
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select d.modelo_ecf from dados_pdv d');
    Q.SQL.Add('where d.serial_ecf = ' + QuotedStr(NumSerie));
    Q.Open;
    Result := Q.FieldByName('modelo_ecf').AsString;
    Q.Close;
    if Result = '' then
      Result := PAFECF.pModeloECF;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.RetornaSerialECF(COO: Integer; Data: TDateTime): String;
var
  Q: TFDQuery;
begin
  Result := '';
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select p.numserieecf from pedido p');
    Q.SQL.Add('where p.coo = ' + IntToStr(COO));
    Q.SQL.Add('and p.data_entrega = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data)));
    Q.Open;
    Result := Q.FieldByName('numserieecf').AsString;
    Q.Close;
    if Result = '' then
      Result := PAFECF.gSerial;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.DspConfigECFGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONFIG_PDV';

end;

function TDmWorkCom.Dados_ConfigECF: Boolean;
begin
  CdsConfigECF.Close;
  CdsConfigECF.Params.Clear;
  QryConfigECF.Close;
  QryConfigECF.SQL.Clear;
  QryConfigECF.SQL.Add('select * from config_pdv');
  //
  CdsConfigECF.FetchParams;
  CdsConfigECF.Open;
  //
  Result := false;
  if CdsConfigECF.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.GravaConfigECFBanco;
begin
  Dados_ConfigECF;
  if CdsConfigECF.RecordCount = 0 then
    CdsConfigECF.Append
  else
    CdsConfigECF.Edit;
  //
  CdsConfigECFNUMSERIE.AsString := PAFECF.gSerial;
  CdsConfigECFPORTA.AsString := PAFECF.gPortaECF;
  CdsConfigECFMODELO.AsInteger := PAFECF.gModeloECF;
  CdsConfigECFBAUDRATE.AsInteger := PAFECF.gBaudRateECF;
  CdsConfigECFDATABITS.AsInteger := PAFECF.gDataBitsECF;
  CdsConfigECFPARITY.AsInteger := PAFECF.gParityECF;
  CdsConfigECFSTOPBITS.AsInteger := PAFECF.gStopBitsECF;
  CdsConfigECFHANDSHAKING.AsInteger := PAFECF.gHandShakingECF;
  if PAFECF.gHardFlowECF then
    CdsConfigECFHARDFLOW.AsInteger := 1
  else
    CdsConfigECFHARDFLOW.AsInteger := 0;
  if PAFECF.gSoftFlowECF then
    CdsConfigECFSOFTFLOW.AsInteger := 1
  else
    CdsConfigECFSOFTFLOW.AsInteger := 0;
  Grava_Dados(CdsConfigECF);
end;

function TDmWorkCom.Dados_PDVaux: Boolean;
begin
  CdsPDVaux.Close;
  CdsPDV.Params.Clear;
  QryPDV.Close;
  QryPDV.SQL.Clear;
  QryPDV.SQL.Add('select * from dados_pdv');
  //
  CdsPDVaux.FetchParams;
  CdsPDVaux.Open;
  //
  Result := false;
  if CdsPDVaux.RecordCount > 0 then
    Result := true;

end;

procedure TDmWorkCom.AtualizaEstoquedoDia;
var
  Q: TFDQuery;
  aTipoProd: Integer;
  aControla: Boolean;
  Hora, minuto, segundo, miliseg: Word;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select pr.id from produtos pr');
    Q.SQL.Add('where pr.combustivel = ' + QuotedStr('N'));
    Q.Open;
    while not Q.Eof do
    begin
      // aQtdVenda := CapturaQuantVendidaData(Q.FieldByName('ID').AsInteger,pDataMov);
      // verifica se item movimenta estoque
      DmProdutos.Dados_Produto(Q.FieldByName('ID').AsInteger);
      if DmProdutos.CdsProdutos.FieldByName('CONTROLAR_ESTOQUE').AsString = 'S' then
      begin
        // retorna tipo de produto
        aTipoProd := Retorna_TipoProduto(Q.FieldByName('ID').AsInteger);
        // verifica se controla estoque de produto que possui composi��o
        aControla := true;
        if (sContEstComp = 'N') and (aTipoProd = 1) then
          aControla := false;
        // Grava a informa��o de estoaque do dia
        DmProdutos.Grava_EstoqueDia(Q.FieldByName('ID').AsInteger);
        // se for produto composto da baixa na composi��o
        if aTipoProd = 1 then
        begin
          // processa baixa acrescimo produto composto
          DmProdutos.Dados_ProdComposto(Q.FieldByName('ID').AsInteger);
          while not DmProdutos.CdsProdutoComposto.Eof do
          begin
            // localiza registro do produto composto na tabela
            if DmProdutos.Dados_Produto(DmProdutos.CdsProdutoCompostoID_PRODUTO.AsInteger) then
            begin
              // grava tabela de estoque
              DmProdutos.Grava_EstoqueDia(DmProdutos.CdsProdutoCompostoID_PRODUTO.AsInteger);
            end;
            // proximo produto
            DmProdutos.CdsProdutoComposto.Next;
          end;
        end;
      end;
      Q.Next;
    end;
    // grava na tabela de controle
    if Dados_DadosTecnicos then
    begin
      // DecodeTime(xHoraECF,hora,minuto,segundo,miliseg);
      // case pTipo of
      // 0 : begin
      // segundo := segundo - 1;
      // end;
      // 1 : begin
      // segundo := segundo - 2;
      // end;
      // end;
      // xHoraECF := EncodeTime(Hora,minuto,segundo,miliseg);
      //
      if not(CdsDadosTecnicos.State in [dsInsert, dsEdit]) then
        CdsDadosTecnicos.Edit;
      CdsDadosTecnicos.FieldByName('DATA_ESTOQUE').AsDateTime := xDataECF;
      CdsDadosTecnicos.FieldByName('HORA_ESTOQUE').AsDateTime := xHoraECF;
      Grava_Dados(CdsDadosTecnicos);
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.ProcessaRegistro50(pDatai, pDataf: TDateTime);
begin

end;

procedure TDmWorkCom.ProcessaRegistro54(pDatai, pDataf: TDateTime);
begin

end;

procedure TDmWorkCom.GerarRegistro10(pDatai, pDataf: TDateTime; pConvenio, pNatureza, pFinalidade: String);
begin
  with DmAcBr.ACBrSintegra1 do
  begin
    Registro10.Cnpj := FiltraNumero(CdsEmpresa.FieldByName('CNPJ_CPF').AsString);
    Registro10.Inscricao := FiltraNumero(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString);
    Registro10.RazaoSocial := CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
    Registro10.Cidade := CdsEmpresa.FieldByName('CIDADE').AsString;
    Registro10.Estado := CdsEmpresa.FieldByName('UF').AsString;
    Registro10.Telefone := CdsEmpresa.FieldByName('TELEFONE').AsString;
    Registro10.DataInicial := pDatai;
    Registro10.DataFinal := pDataf;
    Registro10.CodigoConvenio := pConvenio;
    Registro10.NaturezaInformacoes := pNatureza;
    Registro10.FinalidadeArquivo := pFinalidade;
  end;
end;

procedure TDmWorkCom.GerarRegistro11;
begin
  with DmAcBr.ACBrSintegra1 do
  begin
    Registro11.Endereco := CdsEmpresa.FieldByName('ENDERECO').AsString;
    Registro11.Numero := FiltraNumero(CdsEmpresa.FieldByName('NUMERO').AsString);
    Registro11.Bairro := CdsEmpresa.FieldByName('BAIRRO').AsString;
    Registro11.Cep := CdsEmpresa.FieldByName('CEP').AsString;
    Registro11.Responsavel := CdsEmpresa.FieldByName('CONTATO').AsString;
    Registro11.Telefone := CdsEmpresa.FieldByName('TELEFONE').AsString;
  end;

end;

procedure TDmWorkCom.GerarRegistro50(pDatai, pDataf: TDateTime);
var
  wregistro50: TRegistro50;
  AuxUF: String;
begin
  Dados_Empresa(sIDEmpresa);
  if DmAuxiliar.AbreDadosRegistro50(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      AuxUF := DmAuxiliar.CdsRegistros.FieldByName('uf').AsString;
      if Trim(AuxUF) = '' then
        AuxUF := CdsEmpresaUF.AsString;
      wregistro50 := TRegistro50.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro50.CPFCNPJ := DmAuxiliar.CdsRegistros.FieldByName('cpfcnpj').AsString;
        wregistro50.Inscricao := DmAuxiliar.CdsRegistros.FieldByName('inscricao').AsString;
        wregistro50.DataDocumento := DmAuxiliar.CdsRegistros.FieldByName('datadocumento').AsDateTime;
        wregistro50.UF := DmAuxiliar.CdsRegistros.FieldByName('uf').AsString;
        wregistro50.modelo := DmAuxiliar.CdsRegistros.FieldByName('modelo').AsString;
        wregistro50.serie := DmAuxiliar.CdsRegistros.FieldByName('serie').AsString;
        wregistro50.Numero := DmAuxiliar.CdsRegistros.FieldByName('numero').AsString;
        wregistro50.CFOP := DmAuxiliar.CdsRegistros.FieldByName('cfop').AsString;
        wregistro50.EmissorDocumento := DmAuxiliar.CdsRegistros.FieldByName('emissordocumento').AsString;
        wregistro50.ValorContabil := DmAuxiliar.CdsRegistros.FieldByName('valorcontabil').AsFloat;
        wregistro50.BasedeCalculo := DmAuxiliar.CdsRegistros.FieldByName('basedecalculo').AsFloat;
        wregistro50.ICMS := DmAuxiliar.CdsRegistros.FieldByName('icms').AsFloat;
        wregistro50.Isentas := DmAuxiliar.CdsRegistros.FieldByName('isentas').AsFloat;
        wregistro50.Outras := DmAuxiliar.CdsRegistros.FieldByName('outras').AsFloat;
        wregistro50.Aliquota := DmAuxiliar.CdsRegistros.FieldByName('aliquota').AsFloat;
        wregistro50.Situacao := DmAuxiliar.CdsRegistros.FieldByName('situacao').AsString;
        DmAcBr.ACBrSintegra1.Registros50.Add(wregistro50);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end
  end;
end;

procedure TDmWorkCom.GerarRegistro51(pDatai, pDataf: TDateTime);
var
  wregistro51: TRegistro51;
begin
  if DmAuxiliar.AbreDadosRegistro51(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro51 := TRegistro51.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro51.CPFCNPJ := DmAuxiliar.CdsRegistros.FieldByName('CPFCNPJ').AsString;
        wregistro51.Inscricao := DmAuxiliar.CdsRegistros.FieldByName('INSCRICAO').AsString;
        wregistro51.DataDocumento := DmAuxiliar.CdsRegistros.FieldByName('DATADOCUMENTO').AsDateTime;
        wregistro51.Estado := DmAuxiliar.CdsRegistros.FieldByName('UF').AsString;
        wregistro51.serie := DmAuxiliar.CdsRegistros.FieldByName('SERIE').AsString;
        wregistro51.Numero := DmAuxiliar.CdsRegistros.FieldByName('NUMERO').AsString;
        wregistro51.CFOP := DmAuxiliar.CdsRegistros.FieldByName('CFOP').AsString;
        wregistro51.ValorContabil := DmAuxiliar.CdsRegistros.FieldByName('VALORCONTABIL').AsFloat;
        wregistro51.ValorIpi := DmAuxiliar.CdsRegistros.FieldByName('VALORIPI').AsFloat;
        wregistro51.ValorIsentas := DmAuxiliar.CdsRegistros.FieldByName('ISENTAS').AsFloat;
        wregistro51.ValorOutras := DmAuxiliar.CdsRegistros.FieldByName('OUTRAS').AsFloat;
        wregistro51.Situacao := DmAuxiliar.CdsRegistros.FieldByName('SITUACAO').AsString;
        DmAcBr.ACBrSintegra1.Registros51.Add(wregistro51);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro53(pDatai, pDataf: TDateTime);
var
  wregistro53: TRegistro53;
begin
  if DmAuxiliar.AbreDadosRegistro53(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro53 := TRegistro53.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro53.CPFCNPJ := DmAuxiliar.CdsRegistros.FieldByName('CPFCNPJ').AsString;
        wregistro53.Inscricao := DmAuxiliar.CdsRegistros.FieldByName('INSCRICAO').AsString;
        wregistro53.DataDocumento := DmAuxiliar.CdsRegistros.FieldByName('DATADOCUMENTO').AsDateTime;
        wregistro53.Estado := DmAuxiliar.CdsRegistros.FieldByName('UF').AsString;
        wregistro53.modelo := DmAuxiliar.CdsRegistros.FieldByName('MODELO').AsString;
        wregistro53.serie := DmAuxiliar.CdsRegistros.FieldByName('SERIE').AsString;
        wregistro53.Numero := DmAuxiliar.CdsRegistros.FieldByName('NUMERO').AsString;
        wregistro53.CFOP := DmAuxiliar.CdsRegistros.FieldByName('CFOP').AsString;
        wregistro53.Emitente := DmAuxiliar.CdsRegistros.FieldByName('EMISSORDOCUMENTO').AsString;
        wregistro53.BaseST := DmAuxiliar.CdsRegistros.FieldByName('BASEDECALCULOST').AsFloat;
        wregistro53.IcmsRetido := DmAuxiliar.CdsRegistros.FieldByName('ICMSST').AsFloat;
        wregistro53.Despesas := DmAuxiliar.CdsRegistros.FieldByName('OUTRAS_DESP').AsFloat;
        wregistro53.Situacao := DmAuxiliar.CdsRegistros.FieldByName('SITUACAO').AsString;;
        DmAcBr.ACBrSintegra1.Registros53.Add(wregistro53);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro54(pDatai, pDataf: TDateTime);
var
  wregistro54: TRegistro54;
  wregistro75: TRegistro75;
begin
  if DmAuxiliar.AbreDadosRegistro54(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro54 := TRegistro54.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro54.CPFCNPJ := DmAuxiliar.CdsRegistros.FieldByName('CPFCNPJ').AsString;
        wregistro54.modelo := DmAuxiliar.CdsRegistros.FieldByName('MODELO').AsString;
        wregistro54.serie := DmAuxiliar.CdsRegistros.FieldByName('SERIE').AsString;
        wregistro54.Numero := DmAuxiliar.CdsRegistros.FieldByName('NUMERO').AsString;
        wregistro54.CFOP := DmAuxiliar.CdsRegistros.FieldByName('CFOP').AsString;
        wregistro54.CST := DmAuxiliar.CdsRegistros.FieldByName('CST').AsString;
        wregistro54.NumeroItem := DmAuxiliar.CdsRegistros.FieldByName('NUMEROITEM').AsInteger;
        wregistro54.codigo := DmAuxiliar.CdsRegistros.FieldByName('CODIGO').AsString;
        wregistro54.Descricao := DmAuxiliar.CdsRegistros.FieldByName('DESCRICAO').AsString;
        wregistro54.Quantidade := DmAuxiliar.CdsRegistros.FieldByName('QUANTIDADE').AsFloat;
        wregistro54.Valor := DmAuxiliar.CdsRegistros.FieldByName('VALOR').AsFloat;
        wregistro54.ValorDescontoDespesa := DmAuxiliar.CdsRegistros.FieldByName('VALORDESCONTO').AsFloat;
        wregistro54.BasedeCalculo := DmAuxiliar.CdsRegistros.FieldByName('BASEDECALCULO').AsFloat;
        wregistro54.BaseST := DmAuxiliar.CdsRegistros.FieldByName('BASEST').AsFloat;
        wregistro54.ValorIpi := DmAuxiliar.CdsRegistros.FieldByName('VALORIPI').AsFloat;
        wregistro54.Aliquota := DmAuxiliar.CdsRegistros.FieldByName('ALIQUOTA').AsFloat;
        DmAcBr.ACBrSintegra1.Registros54.Add(wregistro54);
      end;
      //
      wregistro75 := TRegistro75.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro75.codigo := wregistro54.codigo;
        wregistro75.AliquotaICMS := wregistro54.Aliquota;
        wregistro75.DataInicial := DmAcBr.ACBrSintegra1.Registro10.DataInicial;
        wregistro75.DataFinal := DmAcBr.ACBrSintegra1.Registro10.DataFinal;
        wregistro75.Descricao := DmAuxiliar.CdsRegistros.FieldByName('DESCRICAO').AsString;
        wregistro75.Unidade := DmAuxiliar.CdsRegistros.FieldByName('UNIDADE').AsString;
        DmAcBr.ACBrSintegra1.Registros75.Add(wregistro75);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro60A(Cd_Reg60m: Integer);
var
  wregistro60A: TRegistro60A;
begin
  if DmAuxiliar.AbreDadosRegistro60A(Cd_Reg60m) then
  begin
    while not DmAuxiliar.CdsRegAuxiliar.Eof do
    begin
      wregistro60A := TRegistro60A.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro60A.Emissao := DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime;
        wregistro60A.NumSerie := DmAuxiliar.CdsRegistros.FieldByName('NUMSERIE').AsString;
        wregistro60A.StAliquota := DmAuxiliar.CdsRegAuxiliar.FieldByName('STALIQUOTA').AsString;
        wregistro60A.Valor := DmAuxiliar.CdsRegAuxiliar.FieldByName('VALOR').AsFloat;
        DmAcBr.ACBrSintegra1.Registros60A.Add(wregistro60A);
      end;
      DmAuxiliar.CdsRegAuxiliar.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro60D(DtaEmis: TDateTime);
var
  wregistro60D: TRegistro60D;
  wregistro75: TRegistro75;
begin
  if DmAuxiliar.AbreDadosRegistro60D(DtaEmis) then
  begin
    while not DmAuxiliar.CdsRegAuxiliar1.Eof do
    begin
      wregistro60D := TRegistro60D.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro60D.Emissao := DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime;
        wregistro60D.NumSerie := DmAuxiliar.CdsRegistros.FieldByName('NUMSERIE').AsString;
        wregistro60D.codigo := DmAuxiliar.CdsRegAuxiliar1.FieldByName('CODIGO').AsString;
        wregistro60D.Quantidade := DmAuxiliar.CdsRegAuxiliar1.FieldByName('QUANTIDADE').AsFloat;
        wregistro60D.Valor := DmAuxiliar.CdsRegAuxiliar1.FieldByName('VALOR').AsFloat;
        wregistro60D.BasedeCalculo := DmAuxiliar.CdsRegAuxiliar1.FieldByName('BASEDECALCULO').AsFloat;
        wregistro60D.StAliquota := DmAuxiliar.CdsRegAuxiliar1.FieldByName('STALIQUOTA').AsString;
        wregistro60D.ValorIcms := DmAuxiliar.CdsRegAuxiliar1.FieldByName('VALORICMS').AsFloat;
        DmAcBr.ACBrSintegra1.Registros60D.Add(wregistro60D);
      end;
      //
      wregistro75 := TRegistro75.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro75.codigo := wregistro60D.codigo;
        wregistro75.AliquotaICMS := DmAuxiliar.CdsRegAuxiliar1.FieldByName('PERC_ICMS').AsFloat;
        wregistro75.DataInicial := DmAcBr.ACBrSintegra1.Registro10.DataInicial;
        wregistro75.DataFinal := DmAcBr.ACBrSintegra1.Registro10.DataFinal;
        wregistro75.Descricao := DmAuxiliar.CdsRegAuxiliar1.FieldByName('DESCRICAO').AsString;
        wregistro75.Unidade := DmAuxiliar.CdsRegAuxiliar1.FieldByName('UNIDADE').AsString;
        DmAcBr.ACBrSintegra1.Registros75.Add(wregistro75);
      end;
      DmAuxiliar.CdsRegAuxiliar1.Next;
    end
  end;
end;

procedure TDmWorkCom.GerarRegistro60M(pDatai, pDataf: TDateTime; p60d: Boolean; p60i: Boolean; p60r: Boolean);
var
  wregistro60M: TRegistro60M;
begin
  if DmAuxiliar.AbreDadosRegistro60m(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro60M := TRegistro60M.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro60M.Emissao := DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime;
        wregistro60M.NumSerie := DmAuxiliar.CdsRegistros.FieldByName('NUMSERIE').AsString;
        wregistro60M.NumOrdem := DmAuxiliar.CdsRegistros.FieldByName('NUMORDEM').AsInteger;
        wregistro60M.ModeloDoc := DmAuxiliar.CdsRegistros.FieldByName('MODELODOC').AsString;
        wregistro60M.CooInicial := DmAuxiliar.CdsRegistros.FieldByName('COOINICIAL').AsInteger;
        wregistro60M.CooFinal := DmAuxiliar.CdsRegistros.FieldByName('COOFINAL').AsInteger;
        wregistro60M.CRZ := DmAuxiliar.CdsRegistros.FieldByName('CRZ').AsInteger;
        wregistro60M.CRO := DmAuxiliar.CdsRegistros.FieldByName('CRO').AsInteger;
        wregistro60M.VendaBruta := DmAuxiliar.CdsRegistros.FieldByName('VENDABRUTA').AsFloat;
        wregistro60M.ValorGT := DmAuxiliar.CdsRegistros.FieldByName('VALORGT').AsFloat;
        DmAcBr.ACBrSintegra1.Registros60M.Add(wregistro60M);
      end;
      // gera registro 60 adicionais
      GerarRegistro60A(DmAuxiliar.CdsRegistros.FieldByName('CD_REGISTRO60M').AsInteger);
      if p60d then
        GerarRegistro60D(DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime);
      if p60i then
        GerarRegistro60I(DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime);
      if p60r then
        GerarRegistro60R(pDatai, pDataf, DmAuxiliar.CdsRegistros.FieldByName('NUMSERIE').AsString);
      //
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro61(pDatai, pDataf: TDateTime);
var
  wregistro61: TRegistro61;
begin
  if DmAuxiliar.AbreDadosRegistro61(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro61 := TRegistro61.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro61.Emissao := DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime;
        wregistro61.modelo := DmAuxiliar.CdsRegistros.FieldByName('MODELO').AsString;
        wregistro61.serie := DmAuxiliar.CdsRegistros.FieldByName('SERIE').AsString;
        wregistro61.SubSerie := DmAuxiliar.CdsRegistros.FieldByName('SUBSERIE').AsString;
        wregistro61.NumOrdemInicial := DmAuxiliar.CdsRegistros.FieldByName('NUMORDEMINICIAL').AsInteger;
        wregistro61.NumOrdemFinal := DmAuxiliar.CdsRegistros.FieldByName('NUMORDEMFINAL').AsInteger;
        wregistro61.Valor := DmAuxiliar.CdsRegistros.FieldByName('VALOR').AsFloat;
        wregistro61.BasedeCalculo := DmAuxiliar.CdsRegistros.FieldByName('BASEDECALCULO').AsFloat;
        wregistro61.ValorIcms := DmAuxiliar.CdsRegistros.FieldByName('VALORICMS').AsFloat;
        wregistro61.Isentas := DmAuxiliar.CdsRegistros.FieldByName('ISENTAS').AsFloat;
        wregistro61.Outras := DmAuxiliar.CdsRegistros.FieldByName('OUTRAS').AsFloat;
        wregistro61.Aliquota := DmAuxiliar.CdsRegistros.FieldByName('ALIQUOTA').AsFloat;
        DmAcBr.ACBrSintegra1.Registros61.Add(wregistro61);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro61R(pDatai, pDataf: TDateTime);
var
  wregistro61R: TRegistro61R;
begin
  if DmAuxiliar.AbreDadosRegistro61R(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro61R := TRegistro61R.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro61R.MesAno := DmAuxiliar.CdsRegistros.FieldByName('MESANO').AsString;
        wregistro61R.codigo := DmAuxiliar.CdsRegistros.FieldByName('CODIGO').AsString;
        wregistro61R.Qtd := DmAuxiliar.CdsRegistros.FieldByName('QTD').AsFloat;
        wregistro61R.Valor := DmAuxiliar.CdsRegistros.FieldByName('VALOR').AsFloat;
        wregistro61R.BasedeCalculo := DmAuxiliar.CdsRegistros.FieldByName('BASEDECALCULO').AsFloat;
        wregistro61R.Aliquota := DmAuxiliar.CdsRegistros.FieldByName('ALIQUOTA').AsFloat;
        DmAcBr.ACBrSintegra1.Registros61R.Add(wregistro61R);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro70(pDatai, pDataf: TDateTime);
var
  wregistro70: TRegistro70;
begin
  if DmAuxiliar.AbreDadosRegistro70(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro70 := TRegistro70.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro70.CPFCNPJ := DmAuxiliar.CdsRegistros.FieldByName('CPFCNPJ').AsString;
        wregistro70.Inscricao := DmAuxiliar.CdsRegistros.FieldByName('INSCRICAO').AsString;
        wregistro70.DataDocumento := DmAuxiliar.CdsRegistros.FieldByName('DATADOCUMENTO').AsDateTime;
        wregistro70.UF := DmAuxiliar.CdsRegistros.FieldByName('UF').AsString;
        wregistro70.modelo := DmAuxiliar.CdsRegistros.FieldByName('MODELO').AsString;
        wregistro70.serie := DmAuxiliar.CdsRegistros.FieldByName('SERIE').AsString;
        wregistro70.SubSerie := DmAuxiliar.CdsRegistros.FieldByName('SUBSERIE').AsString;
        wregistro70.Numero := DmAuxiliar.CdsRegistros.FieldByName('NUMERO').AsString;
        wregistro70.CFOP := DmAuxiliar.CdsRegistros.FieldByName('CFOP').AsString;
        wregistro70.ValorContabil := DmAuxiliar.CdsRegistros.FieldByName('VALORCONTABIL').AsFloat;
        wregistro70.BasedeCalculo := DmAuxiliar.CdsRegistros.FieldByName('BASEDECALCULO').AsFloat;
        wregistro70.ICMS := DmAuxiliar.CdsRegistros.FieldByName('ICMS').AsFloat;
        wregistro70.Isentas := DmAuxiliar.CdsRegistros.FieldByName('ISENTAS').AsFloat;
        wregistro70.Outras := DmAuxiliar.CdsRegistros.FieldByName('OUTRAS').AsFloat;
        wregistro70.CifFobOutros := DmAuxiliar.CdsRegistros.FieldByName('CIFFOBOUTROS').AsString;
        wregistro70.Situacao := DmAuxiliar.CdsRegistros.FieldByName('SITUACAO').AsString;
        DmAcBr.ACBrSintegra1.Registros70.Add(wregistro70);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro71(pDatai, pDataf: TDateTime);
var
  wregistro71: TRegistro71;
begin
  if DmAuxiliar.AbreDadosRegistro71(pDatai, pDataf) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      wregistro71 := TRegistro71.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro71.CPFCNPJ := '43.214.055/0042-85';
        wregistro71.Inscricao := '349016872110';
        wregistro71.DataDocumento := Registro10.DataFinal;
        wregistro71.modelo := '1';
        wregistro71.serie := '1';
        wregistro71.SubSerie := '1';
        wregistro71.Numero := '123';
        wregistro71.UF := 'MG';
        wregistro71.CPFCNPJNF := '1212121121';
        wregistro71.InscricaoNF := '1212121121';
        wregistro71.DataNF := Date;
        wregistro71.ModeloNF := '1';
        wregistro71.SerieNF := '1';
        wregistro71.NumeroNF := '123';
        wregistro71.UFNF := 'MG';
        wregistro71.ValorNF := 1231;
        DmAcBr.ACBrSintegra1.Registros71.Add(wregistro71);
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

procedure TDmWorkCom.GerarRegistro74(pDtInvent: TDateTime);
var
  wregistro74: TRegistro74;
  wregistro75: TRegistro75;
begin
  if DmAuxiliar.AbreDadosRegistro74(pDtInvent) then
  begin
    while not DmAuxiliar.CdsRegistros.Eof do
    begin
      if DmAuxiliar.CdsRegistros.FieldByName('QUANTIDADE').AsFloat > 0 then
      begin
        wregistro74 := TRegistro74.Create;
        with DmAcBr.ACBrSintegra1 do
        begin
          wregistro74.Data := DmAuxiliar.CdsRegistros.FieldByName('DATA').AsDateTime;
          wregistro74.codigo := DmAuxiliar.CdsRegistros.FieldByName('CODIGO').AsString;
          wregistro74.Quantidade := DmAuxiliar.CdsRegistros.FieldByName('QUANTIDADE').AsFloat;
          wregistro74.ValorProduto := DmAuxiliar.CdsRegistros.FieldByName('VALORPRODUTO').AsFloat;
          wregistro74.CodigoPosse := DmAuxiliar.CdsRegistros.FieldByName('CODIGOPOSSE').AsString;
          wregistro74.CNPJPossuidor := DmAuxiliar.CdsRegistros.FieldByName('CNPJPOSSUIDOR').AsString;
          wregistro74.InscricaoPossuidor := DmAuxiliar.CdsRegistros.FieldByName('INSCRICAOPOSSUIDOR').AsString;
          wregistro74.UFPossuidor := DmAuxiliar.CdsRegistros.FieldByName('UFPOSSUIDOR').AsString;
          DmAcBr.ACBrSintegra1.Registros74.Add(wregistro74);
        end;
        //
        wregistro75 := TRegistro75.Create;
        with DmAcBr.ACBrSintegra1 do
        begin
          wregistro75.codigo := wregistro74.codigo;
          wregistro75.AliquotaICMS := DmAuxiliar.CdsRegistros.FieldByName('ALIQUOTA').AsFloat;
          wregistro75.DataInicial := DmAcBr.ACBrSintegra1.Registro10.DataInicial;
          wregistro75.DataFinal := DmAcBr.ACBrSintegra1.Registro10.DataFinal;
          wregistro75.Descricao := DmAuxiliar.CdsRegistros.FieldByName('DESCRICAO').AsString;
          wregistro75.Unidade := DmAuxiliar.CdsRegistros.FieldByName('UNIDADE').AsString;
          DmAcBr.ACBrSintegra1.Registros75.Add(wregistro75);
        end;
      end;
      DmAuxiliar.CdsRegistros.Next;
    end;
  end;
end;

function TDmWorkCom.CapturaQuantVendidaData(pIDProd: Integer; pDataMov: TDateTime): Double;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select sum(i.quantidade) as quant');
    Q.SQL.Add('from pedido p');
    Q.SQL.Add('inner join pedido_itens i on p.id = i.idpedido');
    Q.SQL.Add('where p.data_entrega = :pData');
    Q.SQL.Add('and p.confirmada = ' + QuotedStr('S'));
    Q.SQL.Add('and p.cancelado = ' + QuotedStr('N'));
    Q.SQL.Add('and p.coo > 0');
    Q.SQL.Add('and i.idproduto = :pIDProd');
    Q.Params.ParamByName('pIDProd').AsInteger := pIDProd;
    Q.Params.ParamByName('pData').AsDate := pDataMov;
    Q.Open;
    Result := Q.FieldByName('quant').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.VerificaNotaManualEmitida(Numero: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select x.id from pedido x');
    Q.SQL.Add('where x.numero_doc = ' + QuotedStr(Numero));
    Q.SQL.Add('and x.notamanual = ' + QuotedStr('S'));
    Q.SQL.Add('and x.cancelado = ' + QuotedStr('N'));
    Q.SQL.Add('and x.idempresa = :pIDEmpresa');
    Q.Params.ParamByName('pIDEmpresa').AsInteger := sIDEmpresa;
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.VerificaProdutoGrade(IDProduto, IDCor, IDTamanho: Integer): Boolean;
var
  Q: TFDQuery;
begin
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select p.id from produtos p');
    Q.SQL.Add('where p.id = :pID');
    Q.SQL.Add('and p.id_cor = :pIDCor');
    Q.SQL.Add('and p.id_tamanho = :pIDTamanho');
    Q.Params.ParamByName('pID').AsInteger := IDProduto;
    Q.Params.ParamByName('pIDCor').AsInteger := IDCor;
    Q.Params.ParamByName('pIDTamanho').AsInteger := IDTamanho;
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.LocalizaEmiteMesaAberta(pData: TDateTime): Boolean;
var
  aIDPedido: Integer;
  aMensagem, aNumItem, aCodMinasLegal, aCodCupomMania, aNumMesa: String;
  PercCarga: Double;
begin
  if Dados_MesasAbertas(pData) then
  begin
    with DmWorkCom.CdsMesasAbertas do
    begin
      while not Eof do
      begin
        aIDPedido := DmWorkCom.RegistraFechamentoMesa(CdsMesasAbertas.FieldByName('ID').AsInteger);
        if aIDPedido > 0 then
        begin
          // emite cupom fiscal da mesa
          DmWorkCom.Dados_Pedido(aIDPedido);
          DmWorkCom.Dados_PedidoItens(aIDPedido);
          Dados_PedidoFP(aIDPedido);
          if DmWorkCom.CdsPedidos.RecordCount > 0 then
          begin
            // captura os dados do cliente
            DmClientes.Dados_Contato(DmWorkCom.CdsPedidos.FieldByName('IDCLIENTE').AsInteger);
            with ClienteCupom do
            begin
              ID := DmWorkCom.CdsConfigCLIENTE_PADRAO.AsInteger;
              Cliente := DmClientes.CdsContatos.FieldByName('NOME').AsString;
              Endereco := DmClientes.CdsContatos.FieldByName('END_ENTREGA').AsString;
              Numero := DmClientes.CdsContatos.FieldByName('NUM_END_ENTREGA').AsString;
              Complemento := DmClientes.CdsContatos.FieldByName('COMPL_ENT').AsString;
              Bairro := DmClientes.CdsContatos.FieldByName('BAIRRO_END_ENTREGA').AsString;
              Cidade := DmClientes.CdsContatos.FieldByName('CID_END_ENTREGA').AsString;
              Cep := DmClientes.CdsContatos.FieldByName('CEP_END_ENTREGA').AsString;
              UF := DmClientes.CdsContatos.FieldByName('UF_END_ENT').AsString;
              CPF := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
              Identidade := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
              Placa := '';
              Odometro := '';
            end;
            if not IncluirCupomExecute(aMensagem, true) then
            begin
              ShowMessage(aMensagem);
              Abort;
            end;
            //
            CdsPedidoItens.First;
            while not CdsPedidoItens.Eof do
            begin
              // inclui o item na impressora fiscal
              DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('IDPRODUTO').AsInteger);
              if DmWorkCom.RegistraItemECF(FloatToStr(CdsPedidoItens.FieldByName('Quantidade').AsFloat)) then
              begin
                PAFECF.AtualizaINI(false);
                // verifica Item Cancelado
                if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'S' then
                begin
                  aNumItem := IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger);
                  aNumItem := ZeroEsquerda(aNumItem, 3);
                  DmWorkCom.PAFECF.CancelarItemCupom(aNumItem);
                end;
              end;
              // proximo registro
              CdsPedidoItens.Next;
            end;
            if CdsPedidos.FieldByName('valor_total').AsFloat = 0 then
            begin
              AlteraStatusMesa(CdsPedidos.FieldByName('ID_MESA').AsInteger, 2);
              // cancelar a pre-venda
              DmWorkCom.PAFECF.CancelaCupomECF;
              PAFECF.AtualizaINI(false);
              // Grava Cupom Cancelado no banco de dados
              if not(CdsPedidos.State in [dsInsert, dsEdit]) then
                CdsPedidos.Edit;
              CdsPedidos.FieldByName('CANCELADO').AsString := 'S';
              Grava_Dados(CdsPedidos);
            end
            else
            begin
              // realiza o fechamento do cupom
              CdsPedidoFP.Append;
              CdsPedidoFP.FieldByName('TIPO_DOCUMENTO').AsInteger := 0;
              CdsPedidoFP.FieldByName('DESCRICAO').AsString := 'Dinheiro';
              CdsPedidoFP.FieldByName('VALOR').AsFloat := CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat;
              CdsPedidoFP.FieldByName('TROCO').AsFloat := 0;
              CdsPedidoFP.FieldByName('ID_FORMAPAG_CUPOM').AsInteger := CdsPedidos.FieldByName('ID_FORMAPAG').AsInteger;
              Grava_Dados(CdsPedidoFP);
              // realiza o fechamento do cupom fiscal
              PAFECF.IniciaFechamentoCupom('D', '0,00');
              PAFECF.RegistraFormaPagtoCupom(DmWorkCom.PAFECF.gDINHEIRO, TruncaValor(CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat,
                DmWorkCom.PAFECF.gDecimais));
              aMensagem := '';
              if CdsPedidos.FieldByName('CER').AsInteger > 0 then
              begin
                aMensagem := aMensagem + 'ECF: ' + DmWorkCom.PAFECF.gCaixa + ' - Confer�ncia de Mesa - ' + 'CER n� ' +
                  ZeroEsquerda(CdsPedidos.FieldByName('CER').AsString, 4) + ' - COO n� ' + ZeroEsquerda(CdsPedidos.FieldByName('COO_CONF_MESA').AsString, 6) +
                  #13 + #10;
              end
              else
              begin
                aNumMesa := RetornaNumeroMesa(CdsPedidos.FieldByName('ID_MESA').AsInteger);
                aMensagem := 'Consumo da Mesa ' + aNumMesa + ' � SEM EMISS�O DE CONFER�NCIA DE MESA' + #13 + #10;
              end;
              // calcula o percentual de carga
              PercCarga := ((CdsPedidos.FieldByName('VALOR_CARGA_TRIB').AsFloat * 100) / CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat);
              // verifica op��o de Minas Legal
              if DmWorkCom.CdsEmpresaUF.AsString = 'MG' then
              begin
                // 99999999ddmmaaaa8888888
                aCodMinasLegal := Copy(FiltraNumero(DmWorkCom.CdsEmpresaCNPJ_CPF.AsString), 1, 8);
                aCodMinasLegal := aCodMinasLegal + FormatDateTime('DDMMYYYY', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime);
                aCodMinasLegal := aCodMinasLegal + FloatToStr(TruncaValor(CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat, 0));
                aMensagem := aMensagem + 'MINAS LEGAL: ' + aCodMinasLegal + #13 + #10;
              end;
              // verifica op��o de Minas Legal
              { if DmWorkCom.CdsEmpresaUF.AsString = 'RJ' then
                begin
                aCodCupomMania := Copy(FiltraNumero(DmWorkCom.CdsEmpresaINSCRICAO_RG.AsString),1,8);
                aCodCupomMania := aCodCupomMania + FormatDateTime('DDMMYYYY',CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime);
                aCodCupomMania := aCodCupomMania + ZeroEsquerda(IntToStr(CdsPedidos.FieldByName('COO').AsInteger),6);
                aCodCupomMania := aCodCupomMania + ZeroEsquerda(IntToStr(StrToInt(DmAcBr.ACBrECF1.NumECF)),3);
                aMensagem := aMensagem + 'CUPOM MANIA, CONCORRA A PREMIOS'+#13+#10;
                aMensagem := aMensagem + 'ENVIE SMS P/6789: '+aCodCupomMania+#13+#10;
                end; }
              if DmWorkCom.CdsEmpresaUF.AsString = 'DF' then
              begin
                aMensagem := aMensagem + 'ESTABELECIMENTO INCLUIDO NO PROGRAMA DE' + #13 + #10;
                aMensagem := aMensagem + 'CONCESSAO DE CREDITOS - LEI N� 4.159/08' + #13 + #10;
                aMensagem := aMensagem + 'NOTA LEGAL: ICMS: ' + FormatFloat('0.00', PercCarga) + #13 + #10;
              end;
              if DmWorkCom.CdsEmpresaUF.AsString = 'PB' then
              begin
                aCodCupomMania := Copy(FiltraNumero(DmWorkCom.CdsEmpresaCNPJ_CPF.AsString), 1, 14) + ' ';
                aCodCupomMania := aCodCupomMania + FormatDateTime('DDMMYYYY', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime) + ' ';
                aCodCupomMania := aCodCupomMania + FiltraNumero(FormatFloat('0.00', CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat)) + ' ';
                aCodCupomMania := aCodCupomMania + FiltraNumero(CdsPedidos.FieldByName('CNPJ_CPF').AsString);
                aMensagem := aMensagem + 'PARAIBA LEGAL - RECEITA CIDAD�' + #13 + #10;
                aMensagem := aMensagem + 'TORPEDO PREMIADO: ' + aCodCupomMania + #13 + #10;
              end;
              // exibe carga tributaria
              aMensagem := aMensagem + 'Val Aprox trib. Fed. R$' + FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_FED').AsFloat) +
                ' Est. R$' + FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_EST').AsFloat) + ' Mun. R$' +
                FormatFloat(DmWorkCom.PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_MUN').AsFloat) + ' Fonte IBPT' + #13 + #10;
              PAFECF.TerminaFechamentoCupom(aMensagem);

              // marca como confirmado
              if not(CdsPedidos.State in [dsInsert, dsEdit]) then
                CdsPedidos.Edit;
              CdsPedidos.FieldByName('confirmada').AsString := 'S';
              Grava_Dados(CdsPedidos);
              // se for fechamento de mesa indica como fechada
              if CdsPedidos.FieldByName('ID_MESA').AsInteger > 0 then
                AlteraStatusMesa(CdsPedidos.FieldByName('ID_MESA').AsInteger, 3);
              PAFECF.AtualizaINI(false);
            end;
          end;
        end;
        Next;
      end;
    end;
  end;
  // emite o gerencial
  if Dados_MesasAbertas then
    PAFECF.MesasAbertas(CdsMesasAbertas);

end;

function TDmWorkCom.VerificaUltimoCaixaAberto: Boolean;
var
  Q: TFDQuery;
begin
  Result := false;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select coalesce(count(x.id),0) as ncaixa');
    Q.SQL.Add('from caixa x');
    Q.SQL.Add('where x.data_fechamento is null');
    Q.Open;
    if Q.FieldByName('ncaixa').AsInteger < 1 then
      Result := true;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.RetornaDataUltimaRedZ: TDateTime;
var
  Q: TFDQuery;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select max(x.data_movimento) as data');
    Q.SQL.Add('from registro60m x');
    Q.SQL.Add('where x.caixa = ' + QuotedStr(PAFECF.gCaixa));
    Q.SQL.Add('and x.automatica = ' + QuotedStr('N'));
    Q.Open;
    if not Q.IsEmpty then
      Result := Q.FieldByName('data').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.LocalizaEmiteAbastecPendente(pNumBomba: Integer): Boolean;
var
  aMensagem, aNumItem: String;
  Tanque, Bomba, Bico: String;
  EI, EF, aValorConta: Double;
  aIDPedido: Integer;
begin
  Result := true;
  try
    // defini situa��o de pendentes
    xSolucaoPendentes := true;
    try
      DmPosto.Dados_Abastecimentos1;
      while not DmPosto.CdsAbastecimentos1.Eof do
      begin
        aIDPedido := DmWorkCom.RegistraCupomAbastPendente;
        if aIDPedido > 0 then
        begin
          DmWorkCom.Dados_Pedido(aIDPedido);
          Dados_PedidoItens(aIDPedido);
          Dados_PedidoFP(aIDPedido);
          if CdsPedidos.RecordCount > 0 then
          begin
            if (CdsPedidos.FieldByName('COO').AsInteger = 0) then
            begin
              if DmClientes.Dados_Contato(CdsPedidos.FieldByName('IDCLIENTE').AsInteger) then
              begin
                with ClienteCupom do
                begin
                  ID := DmWorkCom.CdsConfigCLIENTE_PADRAO.AsInteger;
                  Cliente := DmClientes.CdsContatos.FieldByName('NOME').AsString;
                  Endereco := DmClientes.CdsContatos.FieldByName('END_ENTREGA').AsString;
                  Numero := DmClientes.CdsContatos.FieldByName('NUM_END_ENTREGA').AsString;
                  Complemento := DmClientes.CdsContatos.FieldByName('COMPL_ENT').AsString;
                  Bairro := DmClientes.CdsContatos.FieldByName('BAIRRO_END_ENTREGA').AsString;
                  Cidade := DmClientes.CdsContatos.FieldByName('CID_END_ENTREGA').AsString;
                  Cep := DmClientes.CdsContatos.FieldByName('CEP_END_ENTREGA').AsString;
                  UF := DmClientes.CdsContatos.FieldByName('UF_END_ENT').AsString;
                  CPF := DmClientes.CdsContatos.FieldByName('CNPJ_CPF').AsString;
                  Identidade := DmClientes.CdsContatos.FieldByName('INSC_RG').AsString;
                  Placa := '';
                  Odometro := '';
                end;
              end;
              if not IncluirCupomExecute(aMensagem, true) then
              begin
                ShowMessage(aMensagem);
                Abort;
              end;
              //
              CdsPedidoItens.First;
              while not CdsPedidoItens.Eof do
              begin
                // inclui o item na impressora fiscal
                DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('ean13').AsString);
                if DmWorkCom.RegistraItemECF(FloatToStr(CdsPedidoItens.FieldByName('Quantidade').AsFloat)) then
                begin
                  DmWorkCom.PAFECF.AtualizaINI(false);
                  // verifica Item Cancelado
                  if CdsPedidoItens.FieldByName('CANCELADO').AsString = 'S' then
                  begin
                    aNumItem := IntToStr(CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger);
                    aNumItem := ZeroEsquerda(aNumItem, 3);
                    DmWorkCom.PAFECF.CancelarItemCupom(aNumItem);
                  end;
                  if (CdsPedidos.FieldByName('NUMERO_DOC').AsString) <> '' then
                  begin
                    DmPosto.AlteraStatusAbastecimento(CdsPedidoItens.FieldByName('ID_ABASTECIMENTO').AsInteger, 4, CdsPedidos.FieldByName('COO').AsInteger,
                      CdsPedidos.FieldByName('NUMERO_DOC').AsString, CdsPedidosDATA_ENTREGA.AsDateTime, CdsPedidosHORA_ENTREGA.AsDateTime);
                  end
                  else
                  begin
                    DmPosto.AlteraStatusAbastecimento(CdsPedidoItens.FieldByName('ID_ABASTECIMENTO').AsInteger, 4, CdsPedidos.FieldByName('COO').AsInteger, '',
                      CdsPedidosDATA_ENTREGA.AsDateTime, CdsPedidosHORA_ENTREGA.AsDateTime);
                  end;
                end;
                // proximo registro
                CdsPedidoItens.Next;
              end;
              // realiza o fechamento do cupom fiscal
              DmWorkCom.PAFECF.IniciaFechamentoCupom('D', '0,00');
              DmWorkCom.PAFECF.RegistraFormaPagtoCupom(DmWorkCom.PAFECF.gDINHEIRO, TruncaValor(CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat,
                DmWorkCom.PAFECF.gDecimais));
              aMensagem := '';
              // verifica se � nota manual
              if Trim(CdsPedidos.FieldByName('NUMERO_DOC').AsString) <> '' then
              begin
                aMensagem := aMensagem + 'NF: ' + CdsPedidos.FieldByName('NUMERO_DOC').AsString + #13 + #10;
              end;
              sCdsInfoCupomPosto.EmptyDataSet;
              RetornaInformacaoAbastecimeneto(sCdsInfoCupomPosto, CdsPedidos.FieldByName('ID').AsInteger, false);
              sCdsInfoCupomPosto.First;
              while not sCdsInfoCupomPosto.Eof do
              begin
                aMensagem := aMensagem + '#CF:B' + ZeroEsquerda(sCdsInfoCupomPosto.FieldByName('Bico').AsString, 2) + ' ' + 'EI' +
                  ZeroEsquerda(FormatFloat('0.000', sCdsInfoCupomPosto.FieldByName('EI').AsFloat), 11) + ' ' + 'EF' +
                  ZeroEsquerda(FormatFloat('0.000', sCdsInfoCupomPosto.FieldByName('EF').AsFloat), 11) + ' ' + 'V' +
                  FormatFloat('0.000', sCdsInfoCupomPosto.FieldByName('EF').AsFloat - sCdsInfoCupomPosto.FieldByName('EI').AsFloat) + 'A' + #13 + #10;
                sCdsInfoCupomPosto.Next;
              end;
              // exibe carga tributaria
              aMensagem := aMensagem + 'Val Aprox trib. Fed. R$' + FormatFloat(PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_FED').AsFloat) + ' Est. R$'
                + FormatFloat(PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_EST').AsFloat) + ' Mun. R$' +
                FormatFloat(PAFECF.gMascaraDec, CdsPedidos.FieldByName('VAL_CARGA_MUN').AsFloat) + ' Fonte IBPT' + #13 + #10;
              aMensagem := aMensagem + 'Obrigado! Volte sempre!!!';

              DmWorkCom.PAFECF.TerminaFechamentoCupom(aMensagem);
              DmWorkCom.PAFECF.AtualizaINI(false);

              // ----------------------------------------------------------------------------------------------
              // marca como confirmado
              if not(CdsPedidos.State in [dsInsert, dsEdit]) then
                CdsPedidos.Edit;
              CdsPedidos.FieldByName('confirmada').AsString := 'S';
              // se for abastecimento altera o status
              if CdsPedidos.FieldByName('ABASTECIMENTO').AsString = 'S' then
                CdsPedidos.FieldByName('STATUS_ABASTEC').AsInteger := 4;
              Grava_Dados(CdsPedidos);
              // Baixa estoque e gera contas a receber
              if Dados_PedidoClassificacao(1, CdsPedidos.FieldByName('ID_CLASSIFICACAO').AsInteger) then
              begin
                // baixa estoque
                if CdsPedidoClass.FieldByName('BAIXAR_ESTOQUE').AsString = 'S' then
                  Movimenta_Estoque(0, CdsPedidoItens);
              end;
              // gera documentos a receber
              Dados_FormaPagto;
              Dados_PedidoFP(CdsPedidos.FieldByName('ID').AsInteger);
              while not CdsPedidoFP.Eof do
              begin
                if CdsFormaPag.Locate('ID', CdsPedidoFP.FieldByName('ID_FORMAPAG_CUPOM').AsInteger, []) then
                begin
                  if (CdsFormaPag.FieldByName('GERAR_CONTA').AsString = 'S') then
                  begin
                    aValorConta := CdsPedidoFP.FieldByName('VALOR').AsFloat / CdsFormaPag.FieldByName('QUANT_PAGTOS').AsInteger;
                    Gerar_Contas(0, CdsPedidos.FieldByName('ID').AsInteger, 0, CdsPedidos.FieldByName('IDCLIENTE').AsInteger,
                      CdsFormaPag.FieldByName('QUANT_PAGTOS').AsInteger, CdsFormaPag.FieldByName('FORMA_PAGTO').AsString,
                      CdsPedidos.FieldByName('CLIENTE').AsString, '', CdsPedidos.FieldByName('DATA_PEDIDO').AsDateTime, aValorConta);
                  end;
                  // grava registro de movimento no caixa
                  if (CdsFormaPag.FieldByName('MOVIMENO_CAIXA').AsString = 'S') then
                  begin
                    if Dados_Caixa(SVData) then
                    begin
                      Dados_CaixaMov(0);
                      CdsCaixaMov.Append;
                      CdsCaixaMov.FieldByName('HISTORICO').AsString := 'EMISSAO DE CUPOM FISCAL No: ' + DmAcBr.ACBrECF1.NumCOO;
                      CdsCaixaMov.FieldByName('ORIGEM').AsString := 'MOVIMENTO';
                      CdsCaixaMov.FieldByName('DC').AsString := 'C';
                      CdsCaixaMov.FieldByName('VALOR').AsCurrency := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                      CdsCaixaMov.FieldByName('IDPEDIDO').AsInteger := CdsPedidos.FieldByName('ID').AsInteger;
                      Grava_Dados(CdsCaixaMov);
                    end;
                  end;
                end;
                CdsPedidoFP.Next;
              end;
              // ajustar MD5 do registro
              AjustarMD5Pedido(CdsPedidos.FieldByName('ID').AsInteger);
              // ----------------------------------------------------------------------------------------------

            end;
          end;
        end;
        DmPosto.CdsAbastecimentos1.Next;
      end;
    except
      Result := false;
    end;
  finally
    // defini situa��o de pendentes
    xSolucaoPendentes := false;
  end;

end;

function TDmWorkCom.RetornaVolNotasDescontinuidade(pIDPerda: Integer): Double;
var
  Q: TFDQuery;
  aEncPerda, aEncAtual: Double;
  aNumBico: String;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    // retorna o encerrante da descontinuidade
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select x.ef,x.numbico from bico_perdas x');
    Q.SQL.Add('where x.id = ' + IntToStr(pIDPerda));
    Q.Open;
    if not Q.IsEmpty then
    begin
      aEncPerda := Q.FieldByName('ef').AsFloat;
      aNumBico := Q.FieldByName('numbico').AsString;
    end;
    // registro de nota manual
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select max(a.encerrante) as ea');
    Q.SQL.Add('from abastecimentos a');
    Q.SQL.Add('where a.num_bico = ' + aNumBico);
    Q.Open;
    if not Q.IsEmpty then
      aEncAtual := Q.FieldByName('ea').AsFloat;
    Q.Close;
    // calcula o retorno
    Result := aEncAtual - aEncPerda;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.VerificaGeraAbsProdCombustivel(IDPedido: Integer; NumeroDoc: String);
var
  Q: TFDQuery;
  aEncerranteAnterior: Double;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select b.bico_concentrador,i.descricao,');
    Q.SQL.Add('       i.quantidade,i.valor');
    Q.SQL.Add('from pedido_itens i');
    Q.SQL.Add('inner join produtos p on i.idproduto = p.id');
    Q.SQL.Add('inner join tanques_abastec t on p.id = t.id_produto');
    Q.SQL.Add('inner join bicos_abastec b on t.id = b.id_tanque');
    Q.SQL.Add('where i.idpedido = ' + IntToStr(IDPedido));
    Q.SQL.Add('and p.combustivel = ' + QuotedStr('S'));
    Q.SQL.Add('and i.cfop = ' + QuotedStr('5929'));
    Q.SQL.Add('and (i.id_abastecimento is null or i.id_abastecimento = 0)');
    Q.Open;
    if not Q.IsEmpty then
    begin
      DmPosto.Dados_Abastecimentos;
      while not Q.Eof do
      begin
        aEncerranteAnterior := PAFECF.RetornaUltimoEncerranteBico(Q.FieldByName('bico_concentrador').AsString);
        aEncerranteAnterior := aEncerranteAnterior + Q.FieldByName('quantidade').AsFloat;
        // grava o pedido do abastecimento
        DmPosto.RegistraAbastecimentos(Q.FieldByName('bico_concentrador').AsString, FormatDateTime('dd/mm/yyyy', Now), FormatDateTime('hh:mm:ss', Now),
          aEncerranteAnterior, Q.FieldByName('quantidade').AsFloat, Q.FieldByName('valor').AsFloat,
          (Q.FieldByName('quantidade').AsFloat) * Q.FieldByName('valor').AsFloat, false, true, NumeroDoc);
        // grava o encerrante no bico
        DmPosto.GravaEncerranteBico(Q.FieldByName('bico_concentrador').AsString, aEncerranteAnterior);
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.RetornaBicoProduto(pIDProd: Integer): String;
var
  Q: TFDQuery;
begin
  Result := '';
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select b.bico_concentrador');
    Q.SQL.Add('from produtos p');
    Q.SQL.Add('inner join tanques_abastec t on t.id_produto = p.id');
    Q.SQL.Add('inner join bicos_abastec b on b.id_tanque = t.id');
    Q.SQL.Add('where p.id = ' + IntToStr(pIDProd));
    Q.Open;
    Result := Q.FieldByName('bico_concentrador').AsString;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TDmWorkCom.VerificaAlteraStatusAbastecimento(pIDPedido: Integer; Cancelamento: Boolean = false);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select p.numero_doc,p.data_entrega,p.hora_entrega,');
    Q.SQL.Add('       i.id_abastecimento');
    Q.SQL.Add('from pedido p');
    Q.SQL.Add('inner join pedido_itens i on p.id = i.idpedido');
    Q.SQL.Add('where i.idpedido = ' + IntToStr(pIDPedido));
    Q.SQL.Add('and i.id_abastecimento > 0');
    Q.Open;
    if not Q.IsEmpty then
    begin
      DmPosto.Dados_Abastecimentos;
      while not Q.Eof do
      begin
        // altera o status do abastecimento
        if not Cancelamento then
        begin
          DmPosto.AlteraStatusAbastecimento(Q.FieldByName('id_abastecimento').AsInteger, 3, 0, Q.FieldByName('numero_doc').AsString,
            Q.FieldByName('data_entrega').AsDateTime, Q.FieldByName('hora_entrega').AsDateTime);
        end
        else
        begin
          DmPosto.AlteraStatusAbastecimento(Q.FieldByName('id_abastecimento').AsInteger, 1, 0, '');
        end;
        Q.Next;
      end;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.GravaReducaoZNaoAutomatica;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('execute procedure proc_grava_redz_nao_automatica');
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.GerarRegistro60I(DtaEmis: TDateTime);
var
  wregistro60I: TRegistro60I;
begin
  if DmAuxiliar.AbreDadosRegistro60I(DtaEmis) then
  begin
    while not DmAuxiliar.CdsRegAuxiliar1.Eof do
    begin
      wregistro60I := TRegistro60I.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro60I.Emissao := DmAuxiliar.CdsRegistros.FieldByName('EMISSAO').AsDateTime;
        wregistro60I.NumSerie := DmAuxiliar.CdsRegistros.FieldByName('NUMSERIE').AsString;
        wregistro60I.ModeloDoc := DmAuxiliar.CdsRegistros.FieldByName('MODELODOC').AsString;
        wregistro60I.Cupom := DmAuxiliar.CdsRegAuxiliar1.FieldByName('CUPOM').AsString;
        wregistro60I.Item := DmAuxiliar.CdsRegAuxiliar1.FieldByName('ITEM').AsInteger;
        wregistro60I.codigo := DmAuxiliar.CdsRegAuxiliar1.FieldByName('CODIGO').AsString;
        wregistro60I.Quantidade := DmAuxiliar.CdsRegAuxiliar1.FieldByName('QUANTIDADE').AsFloat;
        wregistro60I.Valor := DmAuxiliar.CdsRegAuxiliar1.FieldByName('VALOR').AsFloat;
        wregistro60I.BasedeCalculo := DmAuxiliar.CdsRegAuxiliar1.FieldByName('BASEDECALCULO').AsFloat;
        wregistro60I.StAliquota := DmAuxiliar.CdsRegAuxiliar1.FieldByName('STALIQUOTA').AsString;
        wregistro60I.ValorIcms := DmAuxiliar.CdsRegAuxiliar1.FieldByName('VALORICMS').AsFloat;
        DmAcBr.ACBrSintegra1.Registros60I.Add(wregistro60I);
      end;
      DmAuxiliar.CdsRegAuxiliar1.Next;
    end;
  end;

end;

procedure TDmWorkCom.GerarRegistro60R(pDatai, pDataf: TDateTime; NumSerie: String);
var
  wregistro60R: TRegistro60R;
begin
  if DmAuxiliar.AbreDadosRegistro60R(pDatai, pDataf, NumSerie) then
  begin
    while not DmAuxiliar.CdsRegAuxiliar1.Eof do
    begin
      wregistro60R := TRegistro60R.Create;
      with DmAcBr.ACBrSintegra1 do
      begin
        wregistro60R.MesAno := DmAuxiliar.CdsRegAuxiliar1.FieldByName('MESANO').AsString;
        wregistro60R.codigo := DmAuxiliar.CdsRegAuxiliar1.FieldByName('CODIGO').AsString;
        wregistro60R.Qtd := DmAuxiliar.CdsRegAuxiliar1.FieldByName('QUANTIDADE').AsFloat;
        wregistro60R.Valor := DmAuxiliar.CdsRegAuxiliar1.FieldByName('VALOR').AsFloat;
        wregistro60R.BasedeCalculo := DmAuxiliar.CdsRegAuxiliar1.FieldByName('BASEDECALCULO').AsFloat;
        wregistro60R.Aliquota := DmAuxiliar.CdsRegAuxiliar1.FieldByName('STALIQUOTA').AsString;
        DmAcBr.ACBrSintegra1.Registros60R.Add(wregistro60R);
      end;
      DmAuxiliar.CdsRegAuxiliar1.Next;
    end;
  end;

end;

function TDmWorkCom.VendasIdentificadas(fNomeArquivo, CNPJCPF: String; Mes, Ano: Integer): Boolean;
var
  aDatai, aDataf: TDateTime;
  aTotalReg: Integer;
begin
  Result := true;
  try
    // prepara datas
    aDatai := PrimeiroDia(EncodeDate(Ano, Mes, 1));
    aDataf := UltimoDia(EncodeDate(Ano, Mes, 1));
    //
    AssignFile(sArquivo, fNomeArquivo);
    Rewrite(sArquivo);
    // Cria os registros
    CriaRegistroZ1;
    CriaRegistroZ2;
    CriaRegistroZ3;
    CriaRegistroZ4(aTotalReg, aDatai, aDataf, CNPJCPF);
    CriaRegistroZ9(aTotalReg);
    // fecha o arquivo
    CloseFile(sArquivo);
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      Result := false;
    end;
  end;

end;

procedure TDmWorkCom.CriaRegistroZ1;
var
  Linha: String;
begin
  Dados_Empresa(sIDEmpresa);
  Linha := 'Z1';
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsEmpresa.FieldByName('CNPJ_CPF').AsString), 14); // 14 espacos
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSCRICAO_RG').AsString, 1, 14); // 14 espa�os
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('INSC_MUNIC').AsString, 1, 14); // 14 espa�os
  Linha := Linha + AlinhaTXT(CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString, 1, 50); // 50 espa�os
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.CriaRegistroZ2;
var
  Linha: String;
begin
  Dados_DadosTecnicos;
  Linha := 'Z2';
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsDadosTecnicos.FieldByName('CNPJ').AsString), 14);
  if Trim(FiltraNumero(CdsDadosTecnicos.FieldByName('INSCEST').AsString)) <> '' then
    Linha := Linha + ZeroEsquerda(CdsDadosTecnicos.FieldByName('INSCEST').AsString, 14)
  else
    Linha := Linha + ZeroEsquerda('0', 14);
  Linha := Linha + ZeroEsquerda(CdsDadosTecnicos.FieldByName('INSCMUN').AsString, 14);
  Linha := Linha + AlinhaTXT(Copy(CdsDadosTecnicos.FieldByName('EMPRESA').AsString, 1, 50), 1, 50);
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.CriaRegistroZ3;
var
  Linha: String;
begin
  // Dados_DadosTecnicos;
  // Dados_Empresa(sIDEmpresa);
  Linha := 'Z3';
  Linha := Linha + AlinhaTXT(CdsDadosTecnicos.FieldByName('NR_LAUDO_TECNICO').AsString, 1, 10);
  Linha := Linha + AlinhaTXT(Copy(CdsDadosTecnicos.FieldByName('DENOMINACAO').AsString, 1, 50), 1, 50);
  Linha := Linha + AlinhaTXT(CdsDadosTecnicos.FieldByName('VERSAO').AsString, 1, 10);
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.CriaRegistroZ4(var TotalReg: Integer; pDatai, pDataf: TDateTime; pCNPJCPF: String);
var
  Linha: String;
  Q: TFDQuery;
begin
  TotalReg := 0;
  Q := TFDQuery.Create(nil);
  try
    try
      Q.Connection := ConexaoDados;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('select x.cnpjcpf,sum(x.valor_total) as total');
      Q.SQL.Add('from pedido x');
      Q.SQL.Add('where x.data_entrega >= :pDatai');
      Q.SQL.Add('and x.data_entrega <= :pDataf');
      Q.SQL.Add('and x.cancelado = ' + QuotedStr('N'));
      Q.SQL.Add('and x.coo > 0');
      Q.SQL.Add('and x.idempresa = :pEmpresa');
      if Trim(FiltraNumero(pCNPJCPF)) <> '' then
        Q.SQL.Add('and x.cnpjcpf = ' + QuotedStr(''));
      Q.SQL.Add('group by x.cnpjcpf');
      Q.Params.ParamByName('pDatai').AsDate := pDatai;
      Q.Params.ParamByName('pDataf').AsDate := pDataf;
      Q.Params.ParamByName('pEmpresa').AsInteger := sIDEmpresa;
      Q.Open;
      if not Q.IsEmpty then
      begin
        while not Q.Eof do
        begin
          Linha := 'Z4';
          Linha := Linha + ZeroEsquerda(FiltraNumero(Q.FieldByName('cnpjcpf').AsString), 14);
          Linha := Linha + ZeroEsquerda(FiltraNumero(FormatFloat('0.00', Q.FieldByName('total').AsFloat)), 14);
          Linha := Linha + FormatDateTime('YYYYMMDD', pDatai);
          Linha := Linha + FormatDateTime('YYYYMMDD', pDataf);
          Linha := Linha + FormatDateTime('YYYYMMDD', Now);
          Linha := Linha + FormatDateTime('HHMMSS', Now);
          writeLn(sArquivo, Linha);
          Inc(TotalReg);
          Q.Next;
        end;
      end;
      Q.Close;
    except
      on Exc: Exception do
        MessageDlg(Exc.message, mtError, [mbOK], 0);
    end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TDmWorkCom.CriaRegistroZ9(TotalReg: Integer);
var
  Linha: String;
begin
  // Dados_DadosTecnicos(CdsDadosTecnicos);
  Linha := 'Z9';
  Linha := Linha + ZeroEsquerda(FiltraNumero(CdsDadosTecnicos.FieldByName('CNPJ').AsString), 14);
  if Trim(FiltraNumero(CdsDadosTecnicos.FieldByName('INSCEST').AsString)) <> '' then
    Linha := Linha + ZeroEsquerda(CdsDadosTecnicos.FieldByName('INSCEST').AsString, 14)
  else
    Linha := Linha + ZeroEsquerda('0', 14);
  Linha := Linha + ZeroEsquerda(IntToStr(TotalReg), 6);
  writeLn(sArquivo, Linha);

end;

procedure TDmWorkCom.DspRegistroA2GetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PAF_REGISTRO_A2';

end;

procedure TDmWorkCom.CdsRegistroA2NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PAF_REGISTRO_A2');
  DataSet.FieldByName('DATA_MOVIMENTO').AsDateTime := SVData;

end;

procedure TDmWorkCom.CdsRegistroA2BeforePost(DataSet: TDataSet);
var
  MD5: String;
begin
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmWorkCom.GravaRegistroA2(DataMov: TDateTime; Descricao: String; Cod_Tipo: Integer; Valor: Double; Somar: Boolean = true);
var
  aIDA2: Integer;
begin
  // retorna o ID do movimento
  aIDA2 := DmAuxiliar.RetornaIDA2Movimento(DataMov, Descricao, Cod_Tipo);
  if Dados_RegistroA2(aIDA2) then
  begin
    CdsRegistroA2.Edit;
  end
  else
  begin
    CdsRegistroA2.Append;
    CdsRegistroA2.FieldByName('DESCRICAO').AsString := Descricao;
    CdsRegistroA2.FieldByName('COD_TIPO').AsInteger := Cod_Tipo;
  end;
  if Somar then
    CdsRegistroA2.FieldByName('VALOR').AsFloat := CdsRegistroA2.FieldByName('VALOR').AsFloat + Valor
  else
    CdsRegistroA2.FieldByName('VALOR').AsFloat := CdsRegistroA2.FieldByName('VALOR').AsFloat - Valor;
  Grava_Dados(CdsRegistroA2);

end;

function TDmWorkCom.Dados_RegistroA2(pID: Integer): Boolean;
begin
  CdsRegistroA2.Close;
  CdsRegistroA2.Params.Clear;
  QryRegistroA2.Close;
  QryRegistroA2.SQL.Clear;
  QryRegistroA2.SQL.Add('select * from PAF_REGISTRO_A2 a');
  QryRegistroA2.SQL.Add('where a.id = :pID');
  //
  CdsRegistroA2.FetchParams;
  CdsRegistroA2.Params.ParamByName('pID').AsInteger := pID;
  CdsRegistroA2.Open;
  Result := false;
  if CdsRegistroA2.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_Recargas(pData: TDateTime): Boolean;
begin
  CdsRecargas.Close;
  CdsRecargas.Params.ParamByName('pCaixa').AsString := PAFECF.gCaixa;
  CdsRecargas.Params.ParamByName('pData').AsDate := pData;
  CdsRecargas.Open;
  //
  Result := false;
  if CdsRecargas.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.Dados_RegistroA2(pDatai, pDataf: TDateTime): Boolean;
begin
  CdsRegistroA2.Close;
  CdsRegistroA2.Params.Clear;
  QryRegistroA2.Close;
  QryRegistroA2.SQL.Clear;
  QryRegistroA2.SQL.Add('select * from PAF_REGISTRO_A2 a');
  QryRegistroA2.SQL.Add('where a.data_movimento between :pDatai and :pDataf');
  //
  CdsRegistroA2.FetchParams;
  CdsRegistroA2.Params.ParamByName('pDatai').AsDate := pDatai;
  CdsRegistroA2.Params.ParamByName('pDataf').AsDate := pDataf;
  try
    CdsRegistroA2.Open;
  except
    on E: Exception do
      ShowMessage(E.message);
  end;

  Result := false;
  if CdsRegistroA2.RecordCount > 0 then
    Result := true;

end;

function TDmWorkCom.VerificaNFeContingencia: Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select p.id,P.CHAVE_NFE from pedido p');
    Q.SQL.Add('where p.nfe_tipoemiss <> 1');
    Q.SQL.Add('and (p.chave_nfe is not null or p.chave_nfe <> ' + QuotedStr('') + ')');
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(Application.ExeName)) + 'temp.xml');
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(Application.ExeName)) + 'temp.xml');

end;

function TDmWorkCom.TestaNotaJaEnviada(pIDPedido: Integer; pChaveNFe: String): Boolean;
var
  vProtocolo, vReciboRet, vStatus, vDigest: String;
begin
  Result := false;
  if (pChaveNFe <> '') then
  begin
    try
      DmAcBr.ACBrNFe1.NotasFiscais.Clear;
      DmAcBr.ACBrNFe1.WebServices.Consulta.NFeChave := pChaveNFe;
      DmAcBr.ACBrNFe1.WebServices.Consulta.Executar;
      // captura os dados
      if DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.chNFe <> '' then
      begin
        vProtocolo := DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.nProt;
        vReciboRet := DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.nProt;
        vStatus := IntToStr(DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.cStat);
        vDigest := DmAcBr.ACBrNFe1.WebServices.Consulta.ProtNFe.digVal;
        Result := true;
        //
        DmWorkCom.GravaChaveNFEPedido(pChaveNFe, vProtocolo, vReciboRet, '', DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NomeArq,
          IntToStr(DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat), DmWorkCom.sFormas, pIDPedido, Now, Now);
      end;
    except
      on Exc: Exception do
      begin
        MessageDlg('Erro ao tentar consultar a NFCe:' + #13 + #10 + Exc.message, mtError, [mbOK], 0);
        Result := false;
      end;
    end;
  end;

end;

procedure TDmWorkCom.ComunicaCertificado;
var
  SL: TStringList;
begin
  if CdsConfigNFE_PATH_CERTF.AsString <> '' then
  begin
    if FileExists(CdsConfigNFE_PATH_CERTF.AsString) then
    begin
      SL := TStringList.Create;
      try
        SL.LoadFromFile(CdsConfigNFE_PATH_CERTF.AsString);
        DmAcBr.ACBrSAT1.ComunicarCertificadoICPBRASIL(SL.Text);
      finally
        SL.Free;
      end;
    end;
  end;

end;

procedure TDmWorkCom.ConfiguraComponenteNFSe;
var
  PathMensal: String;
  OK: Boolean;
begin

  DmAcBr.ACBrNFSe1.configuracoes.Certificados.ArquivoPFX := sNFSeCaminho;
  DmAcBr.ACBrNFSe1.configuracoes.Certificados.Senha := sNFSeCertSenha;
  DmAcBr.ACBrNFSe1.configuracoes.Certificados.NumeroSerie := sNFSeNumSerie;

  DmAcBr.ACBrNFSe1.configuracoes.Certificados.VerificarValidade := false;

  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.AdicionarLiteral := true;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.EmissaoPathNFSe := true;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.SepararPorMes := true;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.SepararPorCNPJ := false;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.PathGer := sNFSePathLogs;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.PathSchemas := sNFSeSchemas;

  PathMensal := DmAcBr.ACBrNFSe1.configuracoes.Arquivos.GetPathGer(0);

  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.PathNFSe := PathMensal;

  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.PathCan := PathMensal;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.PathSalvar := PathMensal;
  DmAcBr.ACBrNFSe1.configuracoes.Arquivos.Salvar := true;

  DmAcBr.ACBrNFSe1.configuracoes.Geral.Salvar := sNFSeSalvar;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.PathIniCidades := sNFSeArqINI;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.PathIniProvedor := sNFSeArqINI;
  if Trim(FiltraNumero(sNFSeCodCidade)) <> '' then
    DmAcBr.ACBrNFSe1.configuracoes.Geral.CodigoMunicipio := StrToIntDef(sNFSeCodCidade, 0);
  DmAcBr.ACBrNFSe1.configuracoes.Geral.SenhaWeb := sNFSeSenhaWeb;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.UserWeb := sNFSeUserWeb;

  DmAcBr.ACBrNFSe1.configuracoes.Geral.Emitente.Cnpj := sNFSeEmitCNPJ;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.Emitente.InscMun := sNFSeEmitIM;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.Emitente.RazSocial := sNFSeEmitRazao;

  DmAcBr.ACBrNFSe1.configuracoes.Geral.Emitente.WebUser := sNFSeUserWeb;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.Emitente.WebSenha := sNFSeSenhaWeb;
  DmAcBr.ACBrNFSe1.configuracoes.Geral.Emitente.WebFraseSecr := '';

  DmAcBr.ACBrNFSe1.configuracoes.WebServices.Salvar := sNFSeSalvarSoap;
  DmAcBr.ACBrNFSe1.configuracoes.WebServices.Ambiente := StrToTpAmb(OK, IntToStr(sNFSeTipoAmb + 1));
  DmAcBr.ACBrNFSe1.configuracoes.WebServices.Visualizar := sNFSeVisualizar;
  DmAcBr.ACBrNFSe1.configuracoes.WebServices.ProxyHost := sNFSeProxyHost;
  DmAcBr.ACBrNFSe1.configuracoes.WebServices.ProxyPort := sNFSeProxyPorta;
  DmAcBr.ACBrNFSe1.configuracoes.WebServices.ProxyUser := sNFSeProxyUser;
  DmAcBr.ACBrNFSe1.configuracoes.WebServices.ProxyPass := sNFSeProxySenha;

  DmAcBr.ACBrNFSe1.configuracoes.Geral.SetConfigMunicipio;

  if DmAcBr.ACBrNFSe1.DANFSe <> nil then
  begin
    DmAcBr.ACBrNFSe1.DANFSe.Logo := sNFSeLogoMarca;
    DmAcBr.ACBrNFSe1.DANFSe.PrestLogo := sNFSePrestLogo;
    DmAcBr.ACBrNFSe1.DANFSe.Prefeitura := sNFSePrefeitura;
    DmAcBr.ACBrNFSe1.DANFSe.PathPDF := PathMensal;

    // TTipoDANFSE = ( tpPadrao, tpIssDSF, tpFiorilli );
    DmAcBr.ACBrNFSe1.DANFSe.TipoDANFSE := tpPadrao;
  end;
  if (Trim(sNFSeSmtpHost) <> '') and (Trim(sNFSeSmtpPort) <> '') and (Trim(sNFSeSmtpUser) <> '') and (Trim(sNFSeSmtpPass) <> '') then
  begin
    DmAcBr.ACBrNFSe1.MAIL.Host := sNFSeSmtpHost;
    DmAcBr.ACBrNFSe1.MAIL.Port := sNFSeSmtpPort;
    DmAcBr.ACBrNFSe1.MAIL.Username := sNFSeSmtpUser;
    DmAcBr.ACBrNFSe1.MAIL.Password := sNFSeSmtpPass;
    DmAcBr.ACBrNFSe1.MAIL.From := sNFSeEmailRemetente;
    DmAcBr.ACBrNFSe1.MAIL.FromName := sNFSeEmitRazao;
    DmAcBr.ACBrNFSe1.MAIL.SetTLS := sNFSeEmailTLS;
    DmAcBr.ACBrNFSe1.MAIL.SetSSL := sNFSeEmailSSL;
    DmAcBr.ACBrNFSe1.MAIL.UseThread := false;
    DmAcBr.ACBrNFSe1.MAIL.ReadingConfirmation := false;
  end;

end;

procedure TDmWorkCom.ConfiguraRedeSAT;
begin
  with DmAcBr.ACBrSAT1.Rede do
  begin
    tipoInter := TTipoInterface(sSAT_TIPO_REDE);
    SSID := sSAT_WIFI_SSID;
    Seg := TSegSemFio(sSAT_WIFI_SEG);
    codigo := sSAT_WIFI_SENHA;
    tipoLan := TTipoLan(sSAT_PROTOCOLO_REDE);
    lanIP := sIPFIX_IP;
    lanMask := sIPFIX_MASK;
    lanGW := sIPFIX_GATEWAY;
    lanDNS1 := sIPFIX_DNS1;
    lanDNS2 := sIPFIX_DNS2;
    Usuario := sSAT_PPPoE_USER;
    Senha := sSAT_PPPoE_LOGIN;
    proxy := sSAT_REDE_PROXY;
    proxy_ip := sSAT_REDE_IP;
    proxy_porta := sSAT_REDE_PORTA;
    proxy_user := sSAT_REDE_USER;
    proxy_senha := sSAT_REDE_LOGIN;
  end;
end;

procedure TDmWorkCom.PreparaDataSetRelCaixa;
begin
  xCdsRelCaixa := TClientDataSet.Create(nil);
  try
    // xCdsRelCaixa.FieldDefs.Add('INDICE',ftString,2,false);
    xCdsRelCaixa.FieldDefs.Add('DESCRICAO', ftString, 20, false);
    xCdsRelCaixa.FieldDefs.Add('VL_INFORMADO', ftFloat, 0, false);
    xCdsRelCaixa.FieldDefs.Add('VL_IMPRESSORA', ftFloat, 0, false);
    xCdsRelCaixa.FieldDefs.Add('VL_DIVERGENTE', ftFloat, 0, false);
    if not xCdsRelCaixa.Active then
      xCdsRelCaixa.CreateDataSet;
    // xCdsRelCaixa.AddIndex('IDXCST','INDICE;DESCRICAO',[IxUnique]);
    // xCdsRelCaixa.AddIndex('IDXCST','DESCRICAO',[IxUnique]);
    // xCdsRelCaixa.IndexName := 'IDXCST';
  finally
    xCdsRelCaixa.EmptyDataSet;
    xCdsRelCaixa.Open;
  end;

end;

procedure TDmWorkCom.PrepararImpressao;
begin
  if sSAT_IMPRESSORA = 1 then // Termica POS
  begin
    DmAcBr.ACBrSAT1.Extrato := DmAcBr.ACBrSATExtratoESCPOS1;
    DmAcBr.ACBrPosPrinter1.Desativar;
    DmAcBr.ACBrPosPrinter1.modelo := TACBrPosPrinterModelo(sSAT_POS_MODELO);
    DmAcBr.ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(sSAT_POS_PAGCODIGO);
    DmAcBr.ACBrPosPrinter1.Porta := sSAT_POS_PORTA;
    DmAcBr.ACBrPosPrinter1.ColunasFonteNormal := sSAT_POS_COLUNAS;
    DmAcBr.ACBrPosPrinter1.LinhasEntreCupons := sSAT_POS_LINHAS;
    DmAcBr.ACBrPosPrinter1.EspacoEntreLinhas := sSAT_POS_ESPACO;
    DmAcBr.ACBrSATExtratoESCPOS1.ImprimeQRCode := (sSAT_QRCODE = 'S');
    DmAcBr.ACBrSATExtratoESCPOS1.ImprimeEmUmaLinha := (sSAT_IMPUMALINHA = 'S');
    DmAcBr.ACBrSATExtratoESCPOS1.Site := 'Fone:' + CdsEmpresaTELEFONE.Text + ' - ' + CdsEmpresaSITE.Text;
    if FileExists(ExtractFilePath(Application.ExeName) + 'imagens\Logo_Sat.jpg') then
      DmAcBr.ACBrSATExtratoESCPOS1.PictureLogo.LoadFromFile(ExtractFilePath(Application.ExeName) + 'imagens\Logo_Sat.jpg');
  end
  else
  begin
    DmAcBr.ACBrSAT1.Extrato := DmAcBr.ACBrSATExtratoFortes1;
    DmAcBr.ACBrSATExtratoFortes1.LarguraBobina := sSAT_IMP_LARGURA;
    DmAcBr.ACBrSATExtratoFortes1.Margens.Topo := sSAT_IMP_TOPO;
    DmAcBr.ACBrSATExtratoFortes1.Margens.Fundo := sSAT_IMP_FUNDO;
    DmAcBr.ACBrSATExtratoFortes1.Margens.Esquerda := sSAT_IMP_ESQUERDA;
    DmAcBr.ACBrSATExtratoFortes1.Margens.Direita := sSAT_IMP_DIREITA;
    DmAcBr.ACBrSATExtratoFortes1.MostrarPreview := (sSAT_IMP_PREVIEW = 'S');
    DmAcBr.ACBrSATExtratoFortes1.ImprimeQRCode := (sSAT_QRCODE = 'S');
    DmAcBr.ACBrSATExtratoFortes1.Site := 'Fone:' + CdsEmpresaTELEFONE.Text + ' - ' + CdsEmpresaSITE.Text;
    if FileExists(ExtractFilePath(Application.ExeName) + 'imagens\Logo_Sat.jpg') then
      DmAcBr.ACBrSATExtratoFortes1.PictureLogo.LoadFromFile(ExtractFilePath(Application.ExeName) + 'imagens\Logo_Sat.jpg');
    try
      if sSAT_IMP_NOME <> '' then
        DmAcBr.ACBrSATExtratoFortes1.PrinterName := sSAT_IMP_NOME;
    except
      on E: Exception do
        ShowMessage(E.message);
    end;
  end;
end;

procedure TDmWorkCom.AjustaACBrSAT;
var
  aIndRatISSQN, aRegimeTrib: Integer;
begin
  Dados_Empresa(sIDEmpresa);
  Dados_DadosTecnicos;
  //
  aRegimeTrib := CdsEmpresaCRT.AsInteger;
  if aRegimeTrib = 2 then
    aRegimeTrib := 1;

  //
  aIndRatISSQN := 0;
  if CdsEmpresaRATEIO_ISSQN.AsString = 'S' then
    aIndRatISSQN := 1;
  // se n�o existir as pasta o sistema cria
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'SAT\CFeVenda\') then
    CreateDir(ExtractFilePath(Application.ExeName) + 'SAT\CFeVenda\');
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'SAT\CFeCanc\') then
    CreateDir(ExtractFilePath(Application.ExeName) + 'SAT\CFeCanc\');
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'SAT\Envio\') then
    CreateDir(ExtractFilePath(Application.ExeName) + 'SAT\Envio\');
  //
  with DmAcBr.ACBrSAT1 do
  begin
    modelo := TACBrSATModelo(sSAT_MODELO);
    ArqLOG := sPATH_ARQ_LOG_SAT;
    NomeDLL := sNOME_DLL_SAT;
    Config.ide_numeroCaixa := StrToInt(PAFECF.gCaixa);
    Config.ide_tpAmb := TpcnTipoAmbiente(sAMBIENTE_SAT);
    Config.ide_CNPJ := CdsDadosTecnicosCNPJ.AsString;
    Config.emit_CNPJ := CdsEmpresaCNPJ_CPF.AsString;
    Config.emit_IE := CdsEmpresaINSCRICAO_RG.AsString;
    Config.emit_IM := CdsEmpresaINSC_MUNIC.AsString;
    Config.emit_cRegTrib := TpcnRegTrib(aRegimeTrib);
    Config.emit_cRegTribISSQN := TpcnRegTribISSQN(CdsEmpresaCRT_ISSQN.AsInteger);
    Config.emit_indRatISSQN := TpcnindRatISSQN(aIndRatISSQN);
    Config.PaginaDeCodigo := sSAT_PAG_CODIGO;
    Config.EhUTF8 := (sSAT_UTF8 = 'S');
    Config.infCFe_versaoDadosEnt := StringToFloat(sSAT_VERSAO);
    ConfigArquivos.PastaCFeVenda := ExtractFilePath(Application.ExeName) + 'SAT\CFeVenda\';
    ConfigArquivos.PastaCFeCancelamento := ExtractFilePath(Application.ExeName) + 'SAT\CFeCanc\';
    ConfigArquivos.PastaEnvio := ExtractFilePath(Application.ExeName) + 'SAT\Envio\';
    ConfigArquivos.SalvarCFe := (sSALVAR_CFES = 'S');
    ConfigArquivos.SalvarCFeCanc := (sSALVAR_CEF_CANC = 'S');
    ConfigArquivos.SalvarEnvio := (sSALVAR_ENVIO_SAT = 'S');
    ConfigArquivos.SepararPorCNPJ := (sSAT_SEPARAR_CNPJ = 'S');
    ConfigArquivos.SepararPorMes := (sSALVAR_CEF_CANC = 'S');
  end

end;

function TDmWorkCom.GerarSAT(pID: Integer): Boolean;
var
  TotalProdutos, TotalImpostoAprox, ValorTroco: Double;
  aMensagem: String;
  A: Integer;
begin
  try
    Result := true;
    if Dados_Pedido(pID) then
    begin
      DmAcBr.ACBrSAT1.CFe.Clear;
      // abre dados dos itens e forma de pagamento
      Dados_PedidoItens(pID);
      Dados_PedidoFP(pID);
      //
      DmAcBr.ACBrSAT1.CFe.IdentarXML := (sSAT_FORMAT_XML = 'S');
      DmAcBr.ACBrSAT1.CFe.TamanhoIdentacao := 3;

      // Trasnferindo Informa��es de Config para o CFe //
      DmAcBr.ACBrSAT1.InicializaCFe;

      // Montando uma Venda //
      with DmAcBr.ACBrSAT1.CFe do
      begin
        Ide.numeroCaixa := StrToInt(PAFECF.gCaixa);

        if (Trim(CdsPedidos.FieldByName('CNPJCPF').AsString) <> '') and (Trim(CdsPedidos.FieldByName('CNPJCPF').AsString) <> '11111111111') then
        begin
          Dest.CNPJCPF := CdsPedidos.FieldByName('CNPJCPF').AsString;
          Dest.xNome := CdsPedidos.FieldByName('CLIENTE').AsString;
          Entrega.xLgr := CdsPedidos.FieldByName('END_ENTREGA').AsString;
          Entrega.nro := CdsPedidos.FieldByName('NUM_END_ENTREGA').AsString;
          Entrega.xCpl := CdsPedidos.FieldByName('COMPL_END_ENTREGA').AsString;
          Entrega.xBairro := CdsPedidos.FieldByName('BAIRRO_END_ENTREGA').AsString;
          Entrega.xMun := CdsPedidos.FieldByName('CID_END_ENTREGA').AsString;
          Entrega.UF := CdsPedidos.FieldByName('UF_END_ENTREGA').AsString;
        end
        else
        begin
          Dest.xNome := 'CONSUMIDOR';
        end;

        TotalProdutos := CdsPedidos.FieldByName('VALOR').AsFloat;
        TotalImpostoAprox := CdsPedidos.FieldByName('VALOR_CARGA_TRIB').AsFloat;

        // itens
        CdsPedidoItens.First;
        while not CdsPedidoItens.Eof do
        begin
          DmProdutos.Dados_Produto(CdsPedidoItens.FieldByName('IDPRODUTO').AsInteger);
          with Det.Add do
          begin
            nItem := CdsPedidoItens.FieldByName('NUM_ITEM').AsInteger;
            Prod.cProd := CdsPedidoItens.FieldByName('IDPRODUTO').AsString;
            Prod.cEAN := CdsPedidoItens.FieldByName('EAN13').AsString;
            Prod.xProd := CdsPedidoItens.FieldByName('DESCRICAO').AsString;
            Prod.NCM := DmProdutos.CdsProdutos.FieldByName('CODIGO_NCM').AsString;
            Prod.CFOP := CdsPedidoItens.FieldByName('CFOP').AsString;
            Prod.uCom := DmProdutos.CdsProdutos.FieldByName('UNIDADE').AsString;
            Prod.indRegra := irTruncamento;
            Prod.qCom := CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat;
            Prod.vUnCom := CdsPedidoItens.FieldByName('VALOR').AsFloat;
            Prod.vDesc := CdsPedidoItens.FieldByName('DESCONTO').AsFloat;
            Prod.vOutro := CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat;
            Prod.vProd := CdsPedidoItens.FieldByName('VALOR').AsFloat;
            Prod.vItem := CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat;
            Imposto.ICMS.orig := oeNacional;
            if DmAcBr.ACBrSAT1.Config.emit_cRegTrib = RTRegimeNormal then
            begin
              case StrToInt(Copy(DmWorkCom.CdsPedidoItensCST.AsString, 2, 2)) of
                0:
                  Imposto.ICMS.CST := cst00;
                10:
                  Imposto.ICMS.CST := cst10;
                20:
                  Imposto.ICMS.CST := cst20;
                30:
                  Imposto.ICMS.CST := cst30;
                40:
                  Imposto.ICMS.CST := cst40;
                41:
                  Imposto.ICMS.CST := cst41;
                45:
                  Imposto.ICMS.CST := cst45;
                50:
                  Imposto.ICMS.CST := cst50;
                51:
                  Imposto.ICMS.CST := cst51;
                60:
                  Imposto.ICMS.CST := cst60;
                70:
                  Imposto.ICMS.CST := cst70;
                80:
                  Imposto.ICMS.CST := cst80;
                81:
                  Imposto.ICMS.CST := cst81;
                90:
                  Imposto.ICMS.CST := cst90;
              end;
              Imposto.ICMS.pICMS := CdsPedidoItens.FieldByName('ALIQ_ICMS').AsFloat;
            end
            else
            begin
              case StrToInt(Copy(DmWorkCom.CdsPedidoItensCST.AsString, 2, 2)) of
                0:
                  Imposto.ICMS.CSOSN := csosn101;
                10:
                  Imposto.ICMS.CSOSN := csosn203;
                20:
                  Imposto.ICMS.CSOSN := csosn900;
                30:
                  Imposto.ICMS.CSOSN := csosn900;
                40:
                  Imposto.ICMS.CSOSN := csosn103;
                41:
                  Imposto.ICMS.CSOSN := csosn400;
                45:
                  Imposto.ICMS.CSOSN := csosn900;
                50:
                  Imposto.ICMS.CSOSN := csosn900;
                51:
                  Imposto.ICMS.CSOSN := csosn900;
                60:
                  Imposto.ICMS.CSOSN := csosn500;
                70:
                  Imposto.ICMS.CSOSN := csosn900;
                80:
                  Imposto.ICMS.CSOSN := csosn900;
                81:
                  Imposto.ICMS.CSOSN := csosn900;
                90:
                  Imposto.ICMS.CSOSN := csosn900;
              end;
            end;
            Imposto.ICMS.pICMS := CdsPedidoItens.FieldByName('ALIQ_ICMS').AsFloat;
            Imposto.ICMS.pICMS := CdsPedidoItens.FieldByName('ALIQ_ICMS').AsFloat;
            Imposto.ICMS.vICMS := CdsPedidoItens.FieldByName('VALOR_ICMS').AsFloat;
            // Pis
            if (CdsPedidoItens.FieldByName('VALOR_PIS').AsFloat > 0) and (Trim(FiltraNumero(CdsPedidoItens.FieldByName('CST_PIS').AsString)) <> '') then
            begin
              case StrToInt(FiltraNumero(CdsPedidoItens.FieldByName('CST_PIS').AsString)) of
                01:
                  Imposto.PIS.CST := pis01;
                02:
                  Imposto.PIS.CST := pis02;
                03:
                  Imposto.PIS.CST := pis03;
                04:
                  Imposto.PIS.CST := pis04;
                05:
                  Imposto.PIS.CST := pis05;
                06:
                  Imposto.PIS.CST := pis06;
                07:
                  Imposto.PIS.CST := pis07;
                08:
                  Imposto.PIS.CST := pis08;
                09:
                  Imposto.PIS.CST := pis09;
                49:
                  Imposto.PIS.CST := pis49;
                50:
                  Imposto.PIS.CST := pis50;
                51:
                  Imposto.PIS.CST := pis51;
                52:
                  Imposto.PIS.CST := pis52;
                53:
                  Imposto.PIS.CST := pis53;
                54:
                  Imposto.PIS.CST := pis54;
                55:
                  Imposto.PIS.CST := pis55;
                56:
                  Imposto.PIS.CST := pis56;
                60:
                  Imposto.PIS.CST := pis60;
                61:
                  Imposto.PIS.CST := pis61;
                62:
                  Imposto.PIS.CST := pis62;
                63:
                  Imposto.PIS.CST := pis63;
                64:
                  Imposto.PIS.CST := pis64;
                65:
                  Imposto.PIS.CST := pis65;
                66:
                  Imposto.PIS.CST := pis66;
                67:
                  Imposto.PIS.CST := pis67;
                70:
                  Imposto.PIS.CST := pis70;
                71:
                  Imposto.PIS.CST := pis71;
                72:
                  Imposto.PIS.CST := pis72;
                73:
                  Imposto.PIS.CST := pis73;
                74:
                  Imposto.PIS.CST := pis74;
                75:
                  Imposto.PIS.CST := pis75;
                98:
                  Imposto.PIS.CST := pis98;
                99:
                  Imposto.PIS.CST := pis99;
              end;
              Imposto.PIS.vBC := CdsPedidoItens.FieldByName('BASE_PIS').AsFloat;
              Imposto.PIS.pPIS := CdsPedidoItens.FieldByName('ALIQ_PIS').AsFloat;
              Imposto.PIS.vPIS := CdsPedidoItens.FieldByName('VALOR_PIS').AsFloat;
            end;
            // Cofins
            if (CdsPedidoItens.FieldByName('VALOR_COFINS').AsFloat > 0) and (Trim(FiltraNumero(CdsPedidoItens.FieldByName('CST_COFINS').AsString)) <> '') then
            begin
              case StrToInt(FiltraNumero(CdsPedidoItens.FieldByName('CST_COFINS').AsString)) of
                01:
                  Imposto.COFINS.CST := cof01;
                02:
                  Imposto.COFINS.CST := cof02;
                03:
                  Imposto.COFINS.CST := cof03;
                04:
                  Imposto.COFINS.CST := cof04;
                05:
                  Imposto.COFINS.CST := cof05;
                06:
                  Imposto.COFINS.CST := cof06;
                07:
                  Imposto.COFINS.CST := cof07;
                08:
                  Imposto.COFINS.CST := cof08;
                09:
                  Imposto.COFINS.CST := cof09;
                49:
                  Imposto.COFINS.CST := cof49;
                50:
                  Imposto.COFINS.CST := cof50;
                51:
                  Imposto.COFINS.CST := cof51;
                52:
                  Imposto.COFINS.CST := cof52;
                53:
                  Imposto.COFINS.CST := cof53;
                54:
                  Imposto.COFINS.CST := cof54;
                55:
                  Imposto.COFINS.CST := cof55;
                56:
                  Imposto.COFINS.CST := cof56;
                60:
                  Imposto.COFINS.CST := cof60;
                61:
                  Imposto.COFINS.CST := cof61;
                62:
                  Imposto.COFINS.CST := cof62;
                63:
                  Imposto.COFINS.CST := cof63;
                64:
                  Imposto.COFINS.CST := cof64;
                65:
                  Imposto.COFINS.CST := cof65;
                66:
                  Imposto.COFINS.CST := cof66;
                67:
                  Imposto.COFINS.CST := cof67;
                70:
                  Imposto.COFINS.CST := cof70;
                71:
                  Imposto.COFINS.CST := cof71;
                72:
                  Imposto.COFINS.CST := cof72;
                73:
                  Imposto.COFINS.CST := cof73;
                74:
                  Imposto.COFINS.CST := cof74;
                75:
                  Imposto.COFINS.CST := cof75;
                98:
                  Imposto.COFINS.CST := cof98;
                99:
                  Imposto.COFINS.CST := cof99;
              end;
              Imposto.COFINS.vBC := CdsPedidoItens.FieldByName('BASE_COFINS').AsFloat;
              Imposto.COFINS.pCOFINS := CdsPedidoItens.FieldByName('ALIQ_COFINS').AsFloat;
              Imposto.COFINS.vCOFINS := CdsPedidoItens.FieldByName('VALOR_COFINS').AsFloat;
            end;
            // imposto aproximado
            // Imposto.vItem12741 := 0;
          end;
          CdsPedidoItens.Next;
        end;

        Total.DescAcrEntr.vDescSubtot := 0;
        Total.vCFeLei12741 := TotalImpostoAprox;
        //
        ValorTroco := 0;
        CdsPedidoFP.First;
        while not CdsPedidoFP.Eof do
        begin
          case CdsPedidoFPTIPO_DOCUMENTO.AsInteger of
            0:
              begin // dinheiro
                with Pagto.Add do
                begin
                  cMP := mpDinheiro;
                  vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat - CdsPedidoFP.FieldByName('TROCO').AsFloat;
                  ValorTroco := ValorTroco + CdsPedidoFP.FieldByName('TROCO').AsFloat;
                end;
              end;
            1:
              begin // Cheque
                with Pagto.Add do
                begin
                  cMP := mpCheque;
                  vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            2:
              begin // Cart�o
                if CdsPedidoFP.FieldByName('TIPO_TEF').AsString = 'CREDITO' then
                begin
                  with Pagto.Add do
                  begin
                    cMP := mpCartaodeCredito;
                    vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                  end;
                end
                else
                begin
                  with Pagto.Add do
                  begin
                    cMP := mpCartaodeDebito;
                    vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                  end;
                end;
              end;
            3:
              begin // NP
                with Pagto.Add do
                begin
                  cMP := mpCreditoLoja;
                  vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            4:
              begin // Carnet
                with Pagto.Add do
                begin
                  cMP := mpCreditoLoja;
                  vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            5:
              begin // Boleto
                with Pagto.Add do
                begin
                  cMP := mpCreditoLoja;
                  vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
            6:
              begin // Outros
                with Pagto.Add do
                begin
                  cMP := mpOutros;
                  vMP := CdsPedidoFP.FieldByName('VALOR').AsFloat;
                end;
              end;
          end;
          CdsPedidoFP.Next;
        end;

        // with Pagto.Add do
        // begin
        // cMP   := mpCartaodeCredito;
        // vMP   := 50;
        // cAdmC := 999;
        // end;

        aMensagem := '';
        // Exive a mensagem do troco
        if ValorTroco > 0 then
          aMensagem := aMensagem + 'Valor do troco: R$' + FormatFloat(PAFECF.gMascaraDec, ValorTroco) + #13 + #10;
        aMensagem := aMensagem + 'OPERADOR: ' + PAFECF.gNomeOperador + ' - Caixa: ' + PAFECF.gCaixa + #13 + #10;
        InfAdic.infCpl := aMensagem;
      end;
    end
    else
      Result := false;
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      Result := false;
    end;
  end;
end;

procedure TDmWorkCom.GerarXMLEstoque(pDatai, pDataf: TDateTime; pNomeArq: String);
var
  aEstoque: Double;
begin
  with DmAcBr.ACBrBlocoX1 do
  begin
    PreencherCabecalho(DmAcBr.ACBrBlocoX1);

    // arquivo de Estoque
    with Estoque do
    begin
      DataReferencia := Date;
      // DataReferenciaFinal   := DATE;

      Produtos.Clear;
      // abre os produtos
      DmProdutos.Dados_Produto2(pDatai, pDataf);
      while not DmProdutos.CdsProdutos2.Eof do
      begin
        with Produtos.Add do
        begin
          codigo.Tipo := tpcProprio;
          codigo.CodigoProprio := DmProdutos.CdsProdutos2ID.AsString;
          Descricao := DmProdutos.CdsProdutos2DESCRICAO.AsString;
          ValorUnitario := DmProdutos.CdsProdutos2PRECO_VENDA.AsFloat;
          if DmProdutos.CdsProdutos2IPPT.AsString = 'T' then
            Ippt := ipptTerceiros
          else
            Ippt := ipptProprio;
          if true then
            //
            case DmProdutos.CdsProdutos2.FieldByName('TRIBUTACAO').AsInteger of
              0:
                SituacaoTributaria := stIsento;
              1:
                SituacaoTributaria := stSubstTributaria;
              2:
                SituacaoTributaria := stTributado;
              3:
                SituacaoTributaria := stNaoTributado;
              4:
                SituacaoTributaria := stISSQN;
            end;
          Aliquota := DmProdutos.CdsProdutos2ALIQUOTA_ICMS.AsFloat;
          Unidade := DmProdutos.CdsProdutos2UNIDADE.AsString;
          if DmProdutos.Dados_Estoque(DmProdutos.CdsProdutos2.FieldByName('ID').AsInteger, sIDEmpresa) then
            aEstoque := DmProdutos.CdsEstoque.FieldByName('ESTOQUE_DIA').AsFloat
          else
            aEstoque := DmProdutos.CdsProdutos.FieldByName('Estoque').AsFloat;
          Quantidade := StrToInt(FormatFloat('0', aEstoque));
          IndicadorArredondamento := false;
        end;
        DmProdutos.CdsProdutos2.Next;
      end;
      SaveToFile(pNomeArq);
    end;
  end;

end;

procedure TDmWorkCom.GerarXMLReducao(pDatai, pDataf: TDateTime; pNomeArq: String);
var
  Contador, aTributacao: Integer;
  aAliquota: Double;
  Q: TFDQuery;
begin
  PreencherCabecalho(DmAcBr.ACBrBlocoX1);

  RetornaDadosImpressora(Self.PAFECF.gCaixa);

  // captura os dados da redu��o
  DmWorkCom.Dados_60M(pDatai, pDataf, Self.PAFECF.gCaixa);
  while not Cds60M.Eof do
  begin
    with DmAcBr.ACBrBlocoX1 do
    begin
      ECF.NumeroFabricacao := Self.PAFECF.pSerial;
      ECF.Tipo := Self.PAFECF.pTipoECF;
      ECF.Marca := Self.PAFECF.pMarcaECF;
      ECF.modelo := Self.PAFECF.pModeloECF;
      ECF.Versao := Self.PAFECF.pVersao;
      with ReducoesZ do
      begin
        ReducoesZ.DataReferencia := Cds60MDATA_MOVIMENTO.AsDateTime;
        ReducoesZ.CRZ := Cds60MCONTADOR_REDUCAO.AsInteger;
        ReducoesZ.COO := Cds60MCOO_FINAL.AsInteger;
        ReducoesZ.CRO := Cds60MCONTADOR_REINICIO.AsInteger;
        ReducoesZ.VendaBrutaDiaria := Cds60MVENDA_BRUTA.AsFloat;
        ReducoesZ.GT := Cds60MGRANDE_TOTAL.AsFloat;
        Contador := 1;
        TotalizadoresParciais.Clear;
        Dados_60A(Cds60MID.AsInteger);
        while not Cds60A.Eof do
        begin
          with TotalizadoresParciais.Add do
          begin

            // Totalizador parcial
            if Cds60A.FieldByName('ALIQUOTA_TRIB').AsString = 'N' then
            begin
              Identificacao := Cds60A.FieldByName('ALIQUOTA_TRIB').AsString + ZeroEsquerda(IntToStr(Contador), 2) + '    ';
              aTributacao := 3;
              aAliquota := 0;
            end
            else if Cds60A.FieldByName('ALIQUOTA_TRIB').AsString = 'F' then
            begin
              Identificacao := Cds60A.FieldByName('ALIQUOTA_TRIB').AsString + ZeroEsquerda(IntToStr(Contador), 2) + '    ';
              aTributacao := 1;
              aAliquota := 0;
            end
            else if Cds60A.FieldByName('ALIQUOTA_TRIB').AsString = 'I' then
            begin
              Identificacao := Cds60A.FieldByName('ALIQUOTA_TRIB').AsString + ZeroEsquerda(IntToStr(Contador), 2) + '    ';
              aTributacao := 0;
              aAliquota := 0;
            end
            else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'DESC') then
            begin
              Identificacao := 'DT     ';
              aTributacao := -1;
              aAliquota := 0;
            end
            else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'ACRE') then
            begin
              Identificacao := 'AT     ';
              aTributacao := -1;
              aAliquota := 0;
            end
            else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'AT') then
            begin
              Identificacao := 'AT     ';
              aTributacao := -1;
              aAliquota := 0;
            end
            else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'CANC') then
            begin
              Identificacao := 'Can-T  ';
              aTributacao := -1;
              aAliquota := 0;
            end
            else if (UpperCase(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) = 'OPNF') then
            begin
              Identificacao := 'OPNF   ';
              aTributacao := -1;
              aAliquota := 0;
            end
            else
            begin
              Identificacao := ZeroEsquerda(IntToStr(Contador), 2) + 'T' + ZeroEsquerda(Copy(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString, 1, 2), 4);
              aTributacao := 2;
              aAliquota := StrToFloat(Cds60A.FieldByName('ALIQUOTA_TRIB').AsString) / 100;
            end;
            Valor := Cds60ATOTALIZADOR.AsFloat;
            Inc(Contador);
            // produtos
            try
              Q := TFDQuery.Create(nil);
              Q.Connection := ConexaoDados;
              Q.Close;
              Q.SQL.Clear;
              Q.SQL.Add('select i.idproduto,i.descricao,p.unidade,');
              Q.SQL.Add('       coalesce(sum(i.quantidade),0) as quantidade,');
              Q.SQL.Add('       coalesce(sum(i.valor_total),0) as valor');
              Q.SQL.Add('from pedido n');
              Q.SQL.Add('left outer join pedido_itens i on i.idpedido = n.id');
              Q.SQL.Add('left outer join produtos p on p.id = i.idproduto');
              Q.SQL.Add('where n.data_entrega = :pdataemis');
              Q.SQL.Add('and p.tributacao = :pTributacao');
              Q.SQL.Add('and i.aliq_icms = :pAliquota');
              Q.SQL.Add('and n.coo > 0');
              Q.SQL.Add('group by i.idproduto,i.descricao,p.unidade');
              Q.Params.ParamByName('pdataemis').AsDate := Cds60MDATA_MOVIMENTO.AsDateTime;
              Q.Params.ParamByName('pTributacao').AsInteger := aTributacao;
              Q.Params.ParamByName('pAliquota').AsFloat := aAliquota;
              Q.Open;
              while not Q.Eof do
              begin
                with Produtos.Add do
                begin
                  codigo.Tipo := tpcProprio;
                  codigo.CodigoProprio := Q.FieldByName('idproduto').AsString;
                  Descricao := Q.FieldByName('DESCRICAO').AsString;
                  Quantidade := Q.FieldByName('QUANTIDADE').AsInteger;
                  Unidade := Q.FieldByName('UNIDADE').AsString;
                  ValorUnitario := Q.FieldByName('VALOR').AsFloat;
                end;
                Q.Next;
              end;
            finally
              FreeAndNil(Q);
            end;
            {
              for X := 1 to 2 do
              begin
              with Servicos.Add do
              begin
              Codigo.Tipo   := tpcProprio;
              Codigo.Numero := IntToStr(X);
              Descricao     := 'SERVICO ' + IntToStr(X);
              Quantidade    := 1234556;
              Unidade       := 'UN';
              ValorUnitario := 1234.99;
              end;
              end;
            }
          end;
          Cds60A.Next;
        end;

        SaveToFile(pNomeArq);
      end;
    end;
    Cds60M.Next;
  end;

end;

procedure TDmWorkCom.Grava_DadosSAT(pIDPedido: Integer; pChaveSat: String; pCodigoSefaz, pNumeroSessao: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update pedido x set');
    Q.SQL.Add('x.chave_nfe    = :pChaveSat,');
    Q.SQL.Add('x.codigosefaz  = :pCodigoSefaz,');
    Q.SQL.Add('x.numerosessao = :pNumeroSessao');
    Q.SQL.Add('where x.id = :pID');
    Q.Params.ParamByName('pChaveSat').AsString := pChaveSat;
    Q.Params.ParamByName('pCodigoSefaz').AsInteger := pCodigoSefaz;
    Q.Params.ParamByName('pNumeroSessao').AsInteger := pNumeroSessao;
    Q.Params.ParamByName('pID').AsInteger := pIDPedido;
    try
      Q.ExecSQL;
    except
      on E: Exception do
        ShowMessage(E.message);
    end
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.RetornaUltimaVenda: Integer;
var
  Q: TFDQuery;
begin
  Result := 0;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select max(p.id) as id from pedido p');
    Q.Open;
    Result := Q.FieldByName('id').AsInteger;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.CarregaDadosClientDataSet(ArquivoTXT: String): Boolean;
var
  cLinhaArquivo, aNumDav: String;
  cArquivo: TextFile;
  aOK, ApagaArquivo: Boolean;
begin
  Result := false;
  ApagaArquivo := false;
  try
    if FileExists(ArquivoTXT) then
    begin
      AssignFile(cArquivo, ArquivoTXT);
      Reset(cArquivo);
      while not System.Eof(cArquivo) do
      begin
        ReadLn(cArquivo, cLinhaArquivo);
        // captura o cabecalho do pedido
        if UpperCase(Copy(cLinhaArquivo, 2, 1)) = 'N' then // nota fiscal
        begin
          aOK := false;
          // verifica se o pedido � direcionado para o caixa
          if (ZeroEsquerda(Le_Linha_Arquivo(cLinhaArquivo, '|', 3), 3) = PAFECF.gCaixa) or (ZeroEsquerda(Le_Linha_Arquivo(cLinhaArquivo, '|', 3), 3) = '000')
          then
          begin
            aNumDav := Le_Linha_Arquivo(cLinhaArquivo, '|', 4);
            if not VerificaExistenciaDAV(aNumDav) then
            begin
              Result := true;
              ApagaArquivo := true;
              aOK := true;
              CdsPedidos.Append;
              CdsPedidos.FieldByName('NUMDAV').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 4);
              CdsPedidos.FieldByName('DATA_PEDIDO').AsDateTime := StrToDateTime(Le_Linha_Arquivo(cLinhaArquivo, '|', 5));
              CdsPedidos.FieldByName('HORA_PEDIDO').AsDateTime := StrToDateTime(Le_Linha_Arquivo(cLinhaArquivo, '|', 6));
              CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime := Now;
              CdsPedidos.FieldByName('HORA_ENTREGA').AsDateTime := Now;
              CdsPedidos.FieldByName('CONFIRMADA').AsString := 'S';
              CdsPedidos.FieldByName('ENTREGUE').AsString := 'S';
              CdsPedidos.FieldByName('VALOR').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 7), '.', ','));
              CdsPedidos.FieldByName('DESCONTO').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 8), '.', ','));
              CdsPedidos.FieldByName('ACRESCIMO').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 9), '.', ','));
              CdsPedidos.FieldByName('OUTRAS_DESPESAS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 10), '.', ','));
              CdsPedidos.FieldByName('VALOR_TOTAL').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 11), '.', ','));
              CdsPedidos.FieldByName('END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 12);
              CdsPedidos.FieldByName('NUM_END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 13);
              CdsPedidos.FieldByName('COMPL_END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 14);
              CdsPedidos.FieldByName('BAIRRO_END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 15);
              CdsPedidos.FieldByName('CID_END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 16);
              CdsPedidos.FieldByName('UF_END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 17);
              CdsPedidos.FieldByName('CEP_END_ENTREGA').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 18);
              CdsPedidos.FieldByName('CLIENTE').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 19);
              CdsPedidos.FieldByName('CNPJCPF').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 20);
              CdsPedidos.FieldByName('INSCEST').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 21);
              CdsPedidos.FieldByName('NATOP').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 22);
              CdsPedidos.FieldByName('BASE_ICMS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 23), '.', ','));
              CdsPedidos.FieldByName('VALOR_ICMS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 24), '.', ','));
              CdsPedidos.FieldByName('BASE_ICMS_ST').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 25), '.', ','));
              CdsPedidos.FieldByName('VALOR_ICMS_ST').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 26), '.', ','));
              CdsPedidos.FieldByName('BASE_PIS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 27), '.', ','));
              CdsPedidos.FieldByName('VALOR_PIS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 28), '.', ','));
              CdsPedidos.FieldByName('BASE_COFINS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 29), '.', ','));
              CdsPedidos.FieldByName('VALOR_COFINS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 30), '.', ','));
              CdsPedidos.FieldByName('BASE_IPI').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 31), '.', ','));
              CdsPedidos.FieldByName('VALOR_IPI').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 32), '.', ','));
              // CdsPedidos.FieldByName('NUMERO_DOC').AsString         := Le_Linha_Arquivo(cLinhaArquivo,'|',33);
              CdsPedidos.FieldByName('TIPO_FRETE').AsInteger := 1;
              CdsPedidos.FieldByName('VALOR_FRETE').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 34), '.', ','));
              CdsPedidos.FieldByName('VALOR_SEGURO').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 35), '.', ','));
              CdsPedidos.FieldByName('VALOR_OUTROS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 36), '.', ','));
              CdsPedidos.FieldByName('MODELO').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 37);
              CdsPedidos.FieldByName('CAIXA').AsString := PAFECF.gCaixa;
              Grava_Dados(CdsPedidos);
            end
            else
            begin
              MessageDlg('O pedido n�mero: ' + aNumDav + ', j� foi importado anteriormente. Verifique!', mtWarning, [mbOK], 0);
              ApagaArquivo := true;
              Break;
            end;
          end;
        end;
        if (aOK) and (UpperCase(Copy(cLinhaArquivo, 2, 1)) = 'I') then // itens
        begin
          CdsPedidoItens.Append;
          CdsPedidoItens.FieldByName('IDPRODUTO').AsInteger := StrToInt(Le_Linha_Arquivo(cLinhaArquivo, '|', 3));
          CdsPedidoItens.FieldByName('DESCRICAO').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 4);
          CdsPedidoItens.FieldByName('QUANTIDADE').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 5), '.', ','));
          CdsPedidoItens.FieldByName('UNIDADE').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 6);
          CdsPedidoItens.FieldByName('VALOR').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 7), '.', ','));
          CdsPedidoItens.FieldByName('DESCONTO').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 8), '.', ','));
          CdsPedidoItens.FieldByName('ACRESCIMO').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 9), '.', ','));
          CdsPedidoItens.FieldByName('VALOR_TOTAL').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 10), '.', ','));
          CdsPedidoItens.FieldByName('EAN13').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 11);
          CdsPedidoItens.FieldByName('CST').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 12);
          CdsPedidoItens.FieldByName('CFOP').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 13);
          CdsPedidoItens.FieldByName('ALIQ_ICMS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 14), '.', ','));
          CdsPedidoItens.FieldByName('BASE_ICMS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 15), '.', ','));
          CdsPedidoItens.FieldByName('VALOR_ICMS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 16), '.', ','));
          CdsPedidoItens.FieldByName('REDUCAO_BASE').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 17), '.', ','));
          CdsPedidoItens.FieldByName('MVA').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 18), '.', ','));
          CdsPedidoItens.FieldByName('ALIQ_ICMS_ST').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 19), '.', ','));
          CdsPedidoItens.FieldByName('BASE_ICMS_ST').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 20), '.', ','));
          CdsPedidoItens.FieldByName('VALOR_ICMS_ST').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 21), '.', ','));
          CdsPedidoItens.FieldByName('CST_PIS').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 22);
          CdsPedidoItens.FieldByName('ALIQ_PIS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 23), '.', ','));
          CdsPedidoItens.FieldByName('BASE_PIS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 24), '.', ','));
          CdsPedidoItens.FieldByName('VALOR_PIS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 25), '.', ','));
          CdsPedidoItens.FieldByName('CST_COFINS').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 26);
          CdsPedidoItens.FieldByName('ALIQ_COFINS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 27), '.', ','));
          CdsPedidoItens.FieldByName('BASE_COFINS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 28), '.', ','));
          CdsPedidoItens.FieldByName('VALOR_COFINS').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 29), '.', ','));
          CdsPedidoItens.FieldByName('CST_IPI').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 30);
          CdsPedidoItens.FieldByName('ALIQ_IPI').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 31), '.', ','));
          CdsPedidoItens.FieldByName('BASE_IPI').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 32), '.', ','));
          CdsPedidoItens.FieldByName('VALOR_IPI').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 33), '.', ','));
          Grava_Dados(CdsPedidoItens);
          // manda gravar os dados da tabela pedidos para atualizar os totais
          CdsPedidos.Edit;
          Grava_Dados(CdsPedidos);
        end;
        if (aOK) and (UpperCase(Copy(cLinhaArquivo, 2, 1)) = 'P') then // forma de pagamento
        begin
          CdsPedidoFP.Append;
          CdsPedidoFP.FieldByName('VALOR').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 3), '.', ','));
          CdsPedidoFP.FieldByName('TROCO').AsFloat := StrToFloat(AlteraCaracter(Le_Linha_Arquivo(cLinhaArquivo, '|', 4), '.', ','));
          CdsPedidoFP.FieldByName('TIPO_DOCUMENTO').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 5);
          CdsPedidoFP.FieldByName('DESCRICAO').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 6);
          CdsPedidoFP.FieldByName('VINCULAR').AsString := Le_Linha_Arquivo(cLinhaArquivo, '|', 7);
          CdsPedidoFP.FieldByName('ID_FORMAPAG_CUPOM').AsInteger := 1;
          Grava_Dados(CdsPedidoFP);
        end;
      end;
      CloseFile(cArquivo);
      Sleep(1000);
      if ApagaArquivo then
        SysUtils.DeleteFile(ArquivoTXT);
    end;
  except
    on E: Exception do
    begin
      ShowMessage(E.message);
      Result := false;
    end;
  end;

end;

function TDmWorkCom.VerificaExistenciaDAV(pNumDAV: String): Boolean;
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select x.numdav from pedido x');
    Q.SQL.Add('where x.numdav = ' + QuotedStr(pNumDAV));
    Q.SQL.Add('and x.idempresa = ' + IntToStr(sIDEmpresa));
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.VerificaExisteNFeChave(ChaveNFe: String): Boolean;
var
  Q: TFDQuery;
begin
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select x.nota from compras x');
    Q.SQL.Add('where x.chave_nfe = ' + QuotedStr(ChaveNFe));
    Q.Open;
    Result := not Q.IsEmpty;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmWorkCom.ImprimirComprovanteNFrente(pIDPedido: Integer);
var
  prn: TCharPrinter;
  ContItens: Integer;
  ValorTroco: Double;
begin
  if Dados_Pedido(pIDPedido) then
  begin
    Dados_PedidoItens(pIDPedido);
    Dados_PedidoFP(pIDPedido);

    // Cria o objeto de impressora
    try
      prn := TCharPrinter.Create;
      // Abre o documento para impress�o
      prn.OpenDoc('');

      // Inicializa a impressora
      prn.SendData(#27'@');

      // cabecalho
      prn.SendData(CdsEmpresaRAZAO_SOCIAL.AsString + #13 + #10);
      prn.SendData('CNPJ: ' + Trim(CdsEmpresaCNPJ_CPF.AsString) + ' - IE: ' + Trim(CdsEmpresaINSCRICAO_RG.AsString) + #13 + #10);
      prn.SendData(Trim(CdsEmpresaENDERECO.AsString) + ', ' + Trim(CdsEmpresaNUMERO.AsString) + ' - ' + Trim(CdsEmpresaBAIRRO.AsString) + #13 + #10);
      prn.SendData(Trim(CdsEmpresaCIDADE.AsString) + ' - ' + CdsEmpresaUF.AsString + #13 + #10);
      prn.SendData('------------------------------------------------' + #13 + #10);
      prn.SendData('          Documento auxiliar de venda           ' + #13 + #10);
      prn.SendData('                   ORCAMENTO                    ' + #13 + #10);
      prn.SendData('           NAO POSSUI VALOR FISCAL              ' + #13 + #10);
      prn.SendData('------------------------------------------------' + #13 + #10);
      prn.SendData('Codigo  Descricao' + #13 + #10);
      prn.SendData('   Quant.    Und.        Vl.Unit        Vl.Total' + #13 + #10);
      prn.SendData('------------------------------------------------' + #13 + #10);
      // imprime os itens
      ContItens := 0;
      CdsPedidoItens.First;
      while not CdsPedidoItens.Eof do
      begin
        if CdsPedidoItensCANCELADO.AsString = 'N' then
        begin
          Inc(ContItens);
          prn.SendData(CdsPedidoItensEAN13.AsString + ' - ' + Copy(CdsPedidoItensDESCRICAO.AsString, 1, 29) + #13 + #10);
          prn.SendData('   ' + AlinhaCampoValor(CdsPedidoItensQUANTIDADE.AsFloat, 8, 3) + '   ' + CdsPedidoItensUNIDADE.AsString + '   ' +
            AlinhaCampoValor(CdsPedidoItensVALOR.AsFloat, 8, 2) + '   ' + AlinhaCampoValor(CdsPedidoItensVALOR_TOTAL.AsFloat, 8, 2) + #13 + #10);
        end;
        CdsPedidoItens.Next;
      end;
      prn.SendData('------------------------------------------------' + #13 + #10);
      prn.SendData('QTD. Total de itens: ' + IntToStr(ContItens) + #13 + #10);
      prn.SendData('Valor dos produtos.: ' + AlinhaCampoValor(CdsPedidosVALOR.AsFloat, 10, 2) + #13 + #10);
      prn.SendData('Valor Desconto.....: ' + AlinhaCampoValor(CdsPedidosDESCONTO.AsFloat, 10, 2) + #13 + #10);
      prn.SendData('Valor Acrescimos...: ' + AlinhaCampoValor(CdsPedidosACRESCIMO.AsFloat, 10, 2) + #13 + #10);
      prn.SendData('Valor total NFCe...: ' + AlinhaCampoValor(CdsPedidosVALOR_TOTAL.AsFloat, 10, 2) + #13 + #10);
      prn.SendData('' + #13 + #10);
      //
      ValorTroco := 0;
      prn.SendData('FORMA DE PAGAMENTO' + #13 + #10);
      CdsPedidoFP.First;
      while not CdsPedidoFP.Eof do
      begin
        prn.SendData(CdsPedidoFPDESCRICAO.AsString + ' - ' + AlinhaCampoValor(CdsPedidoFPVALOR.AsFloat, 10, 2) + #13 + #10);
        ValorTroco := ValorTroco + CdsPedidoFPTROCO.AsFloat;
        CdsPedidoFP.Next;
      end;
      if ValorTroco > 0 then
      begin
        prn.SendData('Valor do troco...: ' + AlinhaCampoValor(ValorTroco, 10, 2) + #13 + #10);
      end;
      prn.SendData('------------------------------------------------' + #13 + #10);
      prn.SendData('E vedado a autentica��o deste documento.' + #13 + #10);
      prn.SendData('SEM VALOR FISCAL' + #13 + #10);
      prn.SendData('------------------------------------------------' + #13 + #10);
      prn.SendData('Numero do pedido: ' + CdsPedidosPEDIDO_NUM.AsString + #13 + #10);
      prn.SendData('Emiss�o: ' + FormatDateTime('DD/MM/YYYY', CdsPedidosDATA_ENTREGA.AsDateTime) + ' ' + FormatDateTime('HH:MM:SS',
        CdsPedidosHORA_ENTREGA.AsDateTime) + #13 + #10);
      prn.SendData('------------------------------------------------' + #13 + #10);
      prn.SendData('CONSUMIDOR' + #13 + #10);
      if FiltraNumero(CdsPedidosCNPJCPF.AsString) <> '' then
      begin
        prn.SendData('CPF/CNPJ: ' + CdsPedidosCNPJCPF.AsString + #13 + #10);
        prn.SendData(CdsPedidosCLIENTE.AsString + #13 + #10);
        prn.SendData(CdsPedidosEND_ENTREGA.AsString + ', ' + CdsPedidosNUM_END_ENTREGA.AsString + ' - ' + CdsPedidosBAIRRO_END_ENTREGA.AsString + #13 + #10);
        prn.SendData(CdsPedidosCID_END_ENTREGA.AsString + ' - ' + CdsPedidosUF_END_ENTREGA.AsString + ' - ' + 'CEP:' + CdsPedidosCEP_END_ENTREGA.AsString +
          #13 + #10);
      end
      else
      begin
        prn.SendData('CLIENTE NAO IDENTIFICADO' + #13 + #10);
      end;
      prn.SendData('------------------------------------------------' + #13 + #10);

      // Avan�o de p�gina
      prn.SendData(#12);

      // fecha o relatorio
      prn.CloseDoc;
    finally
      prn.Free;
    end;
  end;

end;

procedure TDmWorkCom.GravaArquivoRetornoSAT(pCodRetorno, pMensagem: String);
var
  cArquivo: TextFile;
  cNomeArq, cConteudoArquivo: string;
begin
  // Prepara arquivo de comunicacao
  cConteudoArquivo := '';
  cConteudoArquivo := cConteudoArquivo + CdsPedidos.FieldByName('NUMDAV').AsString + '|'; // NRCUPOM
  cConteudoArquivo := cConteudoArquivo + '40' + '|'; // SERIE
  cConteudoArquivo := cConteudoArquivo + FiltraNumero(CdsEmpresa.FieldByName('CNPJ_CPF').AsString) + '|'; // CNPJ EMITENTE
  cConteudoArquivo := cConteudoArquivo + FormatDateTime('dd/mm/yyyy', CdsPedidos.FieldByName('DATA_ENTREGA').AsDateTime) + '|'; // DATA
  cConteudoArquivo := cConteudoArquivo + '|'; // espa�o em branco
  cConteudoArquivo := cConteudoArquivo + pCodRetorno + '|'; // CODIGO
  cConteudoArquivo := cConteudoArquivo + pMensagem + '|'; // MENSAGEM DE ERRO
  cConteudoArquivo := cConteudoArquivo + '|'; // espa�o em branco
  cConteudoArquivo := cConteudoArquivo + '|'; // espa�o em branco
  cConteudoArquivo := cConteudoArquivo + '|'; // espa�o em branco
  cConteudoArquivo := cConteudoArquivo + FiltraNumero(CdsPedidos.FieldByName('CNPJCPF').AsString) + '|'; // CNPJ DESTINO|
  //
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\Retorno\') then
    CreateDir(ExtractFilePath(Application.ExeName) + '\Retorno\');
  cNomeArq := ExtractFilePath(Application.ExeName) + '\Retorno\' + FiltraNumero(CdsEmpresa.FieldByName('CNPJ_CPF').AsString) + '_' +
    CdsPedidos.FieldByName('NUMDAV').AsString + '.txt';
  //
  AssignFile(cArquivo, cNomeArq);
  Rewrite(cArquivo);
  writeLn(cArquivo, cConteudoArquivo);
  CloseFile(cArquivo);

end;

function TDmWorkCom.RetornaNumDAV: Integer;
var
  Q: TFDQuery;
begin
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select coalesce(max(numdav),0) as numdav from pedido');
    Q.Open;
    Result := Q.FieldByName('numdav').AsInteger + 1;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TDmWorkCom.RetornaNumNfe(pModelo: String; pAmbiente: Integer): Integer;
var
  Q: TFDQuery;
begin
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select coalesce(n.numero_doc,0) as numero_doc from nfe_numero n');
    Q.SQL.Add('where n.idempresa = :idempresa');
    Q.SQL.Add('and n.modelo = :modelo');
    Q.SQL.Add('and n.ambiente = :ambiente');
    Q.Params.ParamByName('idempresa').AsInteger := sIDEmpresa;
    Q.Params.ParamByName('modelo').AsString := pModelo;
    Q.Params.ParamByName('ambiente').AsInteger := pAmbiente;
    Q.Open;
    Result := Q.FieldByName('numero_doc').AsInteger;
    Q.Close;
    // veriffica se retorno o numero
    if Result = 0 then
    begin
      Result := 1;
      //
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('insert into nfe_numero(idempresa,');
      Q.SQL.Add('                       modelo,');
      Q.SQL.Add('                       ambiente,');
      Q.SQL.Add('                       numero_doc)');
      Q.SQL.Add('                values(' + IntToStr(sIDEmpresa) + ',');
      Q.SQL.Add('                       ' + QuotedStr(pModelo) + ',');
      Q.SQL.Add('                       ' + IntToStr(pAmbiente) + ',');
      Q.SQL.Add('                       ' + IntToStr(Result) + ')');
      Q.ExecSQL;
      Q.Close;
    end
    else
    begin
      Result := Result + 1;
      //
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('update nfe_numero set');
      Q.SQL.Add('numero_doc = ' + IntToStr(Result));
      Q.SQL.Add('where idempresa = ' + IntToStr(sIDEmpresa));
      Q.SQL.Add('and modelo = ' + QuotedStr(pModelo));
      Q.SQL.Add('and ambiente = ' + IntToStr(pAmbiente));
      Q.ExecSQL;
      Q.Close;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

function TDmWorkCom.RetornaNumPV: Integer;
var
  Q: TFDQuery;
begin
  try
    Q := TFDQuery.Create(nil);
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Add('select coalesce(max(numpv),0) as numpv from pedido');
    Q.Open;
    Result := Q.FieldByName('numpv').AsInteger + 1;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

end.
