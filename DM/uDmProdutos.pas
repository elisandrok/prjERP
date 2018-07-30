unit uDmProdutos;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Windows, Messages, Variants, Graphics, Controls,
  Forms, ExtCtrls, ComCtrls, ImgList, Dialogs, Menus, uDmAcBr, ACBrDevice,
  pcnConversao, IniFiles, ACBrPAFClass, StdCtrls, ActnList, jpeg, OleCtrls,
  SHDocVw, CharPrinter, ACBrSintegra, pcnConversaoNFe, ACBrUtil, pcnRede,
  ACBrSATClass, ACBrPosPrinter, ACBrBlocoX, ACBrBlocoX_Comum, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmProdutos = class(TDataModule)
    QryFechamentoEst: TFDQuery;
    QryFechamentoEstID: TIntegerField;
    QryFechamentoEstMES: TStringField;
    QryFechamentoEstANO: TStringField;
    QryFechamentoEstID_PRODUTO: TIntegerField;
    QryFechamentoEstQUANTIDADE: TFloatField;
    QryFechamentoEstIDEMPRESA: TIntegerField;
    QryMovimentoEst: TFDQuery;
    QryMovimentoEstID: TIntegerField;
    QryMovimentoEstIDPRODUTO: TIntegerField;
    QryMovimentoEstQUANTIDADE: TFloatField;
    QryMovimentoEstDATA: TSQLTimeStampField;
    QryMovimentoEstHORA: TSQLTimeStampField;
    QryMovimentoEstIDEMPRESA: TIntegerField;
    DspFechamentoEst: TDataSetProvider;
    DspMovimentoEst: TDataSetProvider;
    CdsFechamentoEst: TClientDataSet;
    CdsFechamentoEstID: TIntegerField;
    CdsFechamentoEstMES: TStringField;
    CdsFechamentoEstANO: TStringField;
    CdsFechamentoEstID_PRODUTO: TIntegerField;
    CdsFechamentoEstQUANTIDADE: TFloatField;
    CdsFechamentoEstIDEMPRESA: TIntegerField;
    CdsMovimentoEst: TClientDataSet;
    CdsMovimentoEstID: TIntegerField;
    CdsMovimentoEstIDPRODUTO: TIntegerField;
    CdsMovimentoEstQUANTIDADE: TFloatField;
    CdsMovimentoEstDATA: TSQLTimeStampField;
    CdsMovimentoEstHORA: TSQLTimeStampField;
    CdsMovimentoEstIDEMPRESA: TIntegerField;
    QryProduto_Aliquota: TFDQuery;
    QryProduto_AliquotaID: TIntegerField;
    QryProduto_AliquotaIDPRODUTO: TIntegerField;
    QryProduto_AliquotaUF: TStringField;
    QryProduto_AliquotaCST: TStringField;
    QryProduto_AliquotaCFOP: TStringField;
    QryProduto_AliquotaALIQUOTA: TFloatField;
    QryProduto_AliquotaREDUCAO_BASE: TFloatField;
    DspProduto_Aliquota: TDataSetProvider;
    CdsProduto_Aliquota: TClientDataSet;
    CdsProduto_AliquotaID: TIntegerField;
    CdsProduto_AliquotaIDPRODUTO: TIntegerField;
    CdsProduto_AliquotaUF: TStringField;
    CdsProduto_AliquotaCST: TStringField;
    CdsProduto_AliquotaCFOP: TStringField;
    CdsProduto_AliquotaALIQUOTA: TFloatField;
    CdsProduto_AliquotaREDUCAO_BASE: TFloatField;
    QryProdutos: TFDQuery;
    QryProdutosID: TIntegerField;
    QryProdutosDESCRICAO: TStringField;
    QryProdutosREFERENCIA: TStringField;
    QryProdutosEAN13: TStringField;
    QryProdutosDUN14: TStringField;
    QryProdutosGRUPO: TIntegerField;
    QryProdutosSUBGRUPO: TIntegerField;
    QryProdutosUNIDADE: TStringField;
    QryProdutosQUANT_CAIXA: TFloatField;
    QryProdutosALIQUOTA_ICMS: TFloatField;
    QryProdutosALIQUOTA_IPI: TFloatField;
    QryProdutosESTOQUE: TFloatField;
    QryProdutosPRECO_COMPRA: TFloatField;
    QryProdutosPRECO_VENDA: TFloatField;
    QryProdutosTIPOPROD: TIntegerField;
    QryProdutosPERC_DESC: TFloatField;
    QryProdutosPERC_COM: TFloatField;
    QryProdutosATIVO: TStringField;
    QryProdutosTIPO_PRODUTO: TIntegerField;
    QryProdutosMARGEM_LUCRO: TFloatField;
    QryProdutosCONTROLAR_ESTOQUE: TStringField;
    QryProdutosTRIBUTACAO: TIntegerField;
    QryProdutosFRACIONADO: TStringField;
    QryProdutosCODIGO_NCM: TStringField;
    QryProdutosREDUCAO_BASE: TFloatField;
    QryProdutosEDITA_DESC_PED: TStringField;
    QryProdutosMD5REGISTRO: TStringField;
    QryProdutosGARANTIA: TStringField;
    QryProdutosGARANTIA_MESES: TIntegerField;
    QryProdutosDATA_ESTOQUE: TSQLTimeStampField;
    QryProdutosHORA_ESTOQUE: TSQLTimeStampField;
    QryProdutosCOMBUSTIVEL: TStringField;
    QryProdutosIPPT: TStringField;
    QryProdutosIAT: TStringField;
    QryProdutosMVA: TFloatField;
    QryProdutosALIQUOTA_PIS: TFloatField;
    QryProdutosALIQUOTA_COFINS: TFloatField;
    QryProdutosSINCRONIZADO: TStringField;
    QryProdutosEXCECAO_NCM: TIntegerField;
    QryProdutosINDICEA: TStringField;
    QryProdutosCST_INTERNO: TStringField;
    QryProdutosCFOP_INTERNO: TStringField;
    QryProdutosBENS_CONSUMO: TStringField;
    QryProdutosPROD_COMPONENTE: TStringField;
    QryProdutosIDPRODPRINCIPAL: TIntegerField;
    QryProdutosPROD_FINALIDADE: TStringField;
    QryProdutosVIDAUTIL_MESES: TIntegerField;
    QryProdutosCOD_CEST: TStringField;
    QryProdutosPESAVEL: TStringField;
    DspProdutos: TDataSetProvider;
    CdsProdutos: TClientDataSet;
    CdsProdutosID: TIntegerField;
    CdsProdutosDESCRICAO: TStringField;
    CdsProdutosREFERENCIA: TStringField;
    CdsProdutosEAN13: TStringField;
    CdsProdutosDUN14: TStringField;
    CdsProdutosGRUPO: TIntegerField;
    CdsProdutosSUBGRUPO: TIntegerField;
    CdsProdutosUNIDADE: TStringField;
    CdsProdutosQUANT_CAIXA: TFloatField;
    CdsProdutosALIQUOTA_ICMS: TFloatField;
    CdsProdutosALIQUOTA_IPI: TFloatField;
    CdsProdutosESTOQUE: TFloatField;
    CdsProdutosPRECO_COMPRA: TFloatField;
    CdsProdutosPRECO_VENDA: TFloatField;
    CdsProdutosTIPOPROD: TIntegerField;
    CdsProdutosPERC_DESC: TFloatField;
    CdsProdutosPERC_COM: TFloatField;
    CdsProdutosATIVO: TStringField;
    CdsProdutosTIPO_PRODUTO: TIntegerField;
    CdsProdutosMARGEM_LUCRO: TFloatField;
    CdsProdutosCONTROLAR_ESTOQUE: TStringField;
    CdsProdutosTRIBUTACAO: TIntegerField;
    CdsProdutosFRACIONADO: TStringField;
    CdsProdutosCODIGO_NCM: TStringField;
    CdsProdutosREDUCAO_BASE: TFloatField;
    CdsProdutosEDITA_DESC_PED: TStringField;
    CdsProdutosMD5REGISTRO: TStringField;
    CdsProdutosGARANTIA: TStringField;
    CdsProdutosGARANTIA_MESES: TIntegerField;
    CdsProdutosDATA_ESTOQUE: TSQLTimeStampField;
    CdsProdutosHORA_ESTOQUE: TSQLTimeStampField;
    CdsProdutosCOMBUSTIVEL: TStringField;
    CdsProdutosIPPT: TStringField;
    CdsProdutosIAT: TStringField;
    CdsProdutosMVA: TFloatField;
    CdsProdutosALIQUOTA_PIS: TFloatField;
    CdsProdutosALIQUOTA_COFINS: TFloatField;
    CdsProdutosSINCRONIZADO: TStringField;
    CdsProdutosEXCECAO_NCM: TIntegerField;
    CdsProdutosINDICEA: TStringField;
    CdsProdutosCST_INTERNO: TStringField;
    CdsProdutosCFOP_INTERNO: TStringField;
    CdsProdutosBENS_CONSUMO: TStringField;
    CdsProdutosPROD_COMPONENTE: TStringField;
    CdsProdutosIDPRODPRINCIPAL: TIntegerField;
    CdsProdutosPROD_FINALIDADE: TStringField;
    CdsProdutosVIDAUTIL_MESES: TIntegerField;
    CdsProdutosCOD_CEST: TStringField;
    CdsProdutosPESAVEL: TStringField;
    CdsProdutos2: TClientDataSet;
    CdsProdutos2ID: TIntegerField;
    CdsProdutos2DESCRICAO: TStringField;
    CdsProdutos2REFERENCIA: TStringField;
    CdsProdutos2EAN13: TStringField;
    CdsProdutos2DUN14: TStringField;
    CdsProdutos2GRUPO: TIntegerField;
    CdsProdutos2SUBGRUPO: TIntegerField;
    CdsProdutos2UNIDADE: TStringField;
    CdsProdutos2QUANT_CAIXA: TFloatField;
    CdsProdutos2ALIQUOTA_ICMS: TFloatField;
    CdsProdutos2ALIQUOTA_IPI: TFloatField;
    CdsProdutos2ESTOQUE: TFloatField;
    CdsProdutos2PRECO_COMPRA: TFloatField;
    CdsProdutos2PRECO_VENDA: TFloatField;
    CdsProdutos2TIPOPROD: TIntegerField;
    CdsProdutos2PERC_DESC: TFloatField;
    CdsProdutos2PERC_COM: TFloatField;
    CdsProdutos2ATIVO: TStringField;
    CdsProdutos2TIPO_PRODUTO: TIntegerField;
    CdsProdutos2MARGEM_LUCRO: TFloatField;
    CdsProdutos2CONTROLAR_ESTOQUE: TStringField;
    CdsProdutos2TRIBUTACAO: TIntegerField;
    CdsProdutos2FRACIONADO: TStringField;
    CdsProdutos2CODIGO_NCM: TStringField;
    CdsProdutos2REDUCAO_BASE: TFloatField;
    CdsProdutos2EDITA_DESC_PED: TStringField;
    CdsProdutos2MD5REGISTRO: TStringField;
    CdsProdutos2GARANTIA: TStringField;
    CdsProdutos2GARANTIA_MESES: TIntegerField;
    CdsProdutos2DATA_ESTOQUE: TSQLTimeStampField;
    CdsProdutos2HORA_ESTOQUE: TSQLTimeStampField;
    CdsProdutos2COMBUSTIVEL: TStringField;
    CdsProdutos2IPPT: TStringField;
    CdsProdutos2IAT: TStringField;
    CdsProdutos2MVA: TFloatField;
    CdsProdutos2ALIQUOTA_PIS: TFloatField;
    CdsProdutos2ALIQUOTA_COFINS: TFloatField;
    CdsProdutos2SINCRONIZADO: TStringField;
    CdsProdutos2EXCECAO_NCM: TIntegerField;
    CdsProdutos2INDICEA: TStringField;
    CdsProdutos2CST_INTERNO: TStringField;
    CdsProdutos2CFOP_INTERNO: TStringField;
    CdsProdutos2BENS_CONSUMO: TStringField;
    CdsProdutos2PROD_COMPONENTE: TStringField;
    CdsProdutos2IDPRODPRINCIPAL: TIntegerField;
    CdsProdutos2PROD_FINALIDADE: TStringField;
    CdsProdutos2VIDAUTIL_MESES: TIntegerField;
    CdsProdutos2COD_CEST: TStringField;
    CdsProdutos2PESAVEL: TStringField;
    QryProdutoFornecedor: TFDQuery;
    QryProdutoFornecedorID: TIntegerField;
    QryProdutoFornecedorIDPRODUTO: TIntegerField;
    QryProdutoFornecedorIDFORNECEDOR: TIntegerField;
    QryProdutoFornecedorNOME_FORNECEDOR: TStringField;
    QryProdutoFornecedorVALOR_COMPRA: TFloatField;
    QryProdutoFornecedorDATA_ULTCOMPRA: TSQLTimeStampField;
    DspProdutoFornecedor: TDataSetProvider;
    CdsProdutoFornecedor: TClientDataSet;
    CdsProdutoFornecedorID: TIntegerField;
    CdsProdutoFornecedorIDPRODUTO: TIntegerField;
    CdsProdutoFornecedorIDFORNECEDOR: TIntegerField;
    CdsProdutoFornecedorNOME_FORNECEDOR: TStringField;
    CdsProdutoFornecedorVALOR_COMPRA: TFloatField;
    CdsProdutoFornecedorDATA_ULTCOMPRA: TSQLTimeStampField;
    QryEstoque: TFDQuery;
    QryEstoqueID: TIntegerField;
    QryEstoqueIDEMPRESA: TIntegerField;
    QryEstoqueIDPRODUTO: TIntegerField;
    QryEstoqueQUANTIDADE: TFloatField;
    QryEstoqueMD5REGISTRO: TStringField;
    QryEstoqueESTOQUE_DIA: TFloatField;
    QryEstoqueDATA_ESTOQUE: TSQLTimeStampField;
    QryEstoqueHORA_ESTOQUE: TSQLTimeStampField;
    DspEstoque: TDataSetProvider;
    CdsEstoque: TClientDataSet;
    CdsEstoqueID: TIntegerField;
    CdsEstoqueIDEMPRESA: TIntegerField;
    CdsEstoqueIDPRODUTO: TIntegerField;
    CdsEstoqueQUANTIDADE: TFloatField;
    CdsEstoqueMD5REGISTRO: TStringField;
    CdsEstoqueESTOQUE_DIA: TFloatField;
    CdsEstoqueDATA_ESTOQUE: TSQLTimeStampField;
    CdsEstoqueHORA_ESTOQUE: TSQLTimeStampField;
    QryProdutoComposto: TFDQuery;
    QryProdutoCompostoID: TIntegerField;
    QryProdutoCompostoID_PRODUTO: TIntegerField;
    QryProdutoCompostoQUANTIDADE: TFloatField;
    QryProdutoCompostoDESCRICAO: TStringField;
    QryProdutoCompostoUNIDADE: TStringField;
    QryProdutoCompostoVALOR: TFloatField;
    DspProdutoComposto: TDataSetProvider;
    CdsProdutoComposto: TClientDataSet;
    CdsProdutoCompostoID: TIntegerField;
    CdsProdutoCompostoID_PRODUTO: TIntegerField;
    CdsProdutoCompostoQUANTIDADE: TFloatField;
    CdsProdutoCompostoDESCRICAO: TStringField;
    CdsProdutoCompostoUNIDADE: TStringField;
    CdsProdutoCompostoVALOR: TFloatField;
    QryProdutoAux: TFDQuery;
    QryProdutoAuxID: TIntegerField;
    QryProdutoAuxDESCRICAO: TStringField;
    QryProdutoAuxUNIDADE: TStringField;
    QryProdutoAuxGRUPO: TIntegerField;
    QryProdutoAuxALIQUOTA_ICMS: TFloatField;
    QryProdutoAuxPRECO_VENDA: TFloatField;
    QryProdutoAuxMARGEM_LUCRO: TFloatField;
    QryProdutoAuxTIPO_PRODUTO: TIntegerField;
    QryProdutoAuxTIPOPROD: TIntegerField;
    QryProdutoAuxPRECO_COMPRA: TFloatField;
    QryProdutoAuxIPPT: TStringField;
    QryProdutoAuxIAT: TStringField;
    DspProdutoAux: TDataSetProvider;
    CdsProdutoAux: TClientDataSet;
    CdsProdutoAuxID: TIntegerField;
    CdsProdutoAuxDESCRICAO: TStringField;
    CdsProdutoAuxUNIDADE: TStringField;
    CdsProdutoAuxGRUPO: TIntegerField;
    CdsProdutoAuxALIQUOTA_ICMS: TFloatField;
    CdsProdutoAuxPRECO_VENDA: TFloatField;
    CdsProdutoAuxMARGEM_LUCRO: TFloatField;
    CdsProdutoAuxTIPO_PRODUTO: TIntegerField;
    CdsProdutoAuxTIPOPROD: TIntegerField;
    CdsProdutoAuxPRECO_COMPRA: TFloatField;
    CdsProdutoAuxIPPT: TStringField;
    CdsProdutoAuxIAT: TStringField;
    QryGrupo: TFDQuery;
    QryGrupoID: TIntegerField;
    QryGrupoDESCRICAO: TStringField;
    QryGrupoATIVO: TStringField;
    QryGrupoATIVO_VENDA: TStringField;
    QrySubGrupo: TFDQuery;
    QrySubGrupoID: TIntegerField;
    QrySubGrupoIDGRUPO: TIntegerField;
    QrySubGrupoDESCRICAO: TStringField;
    QrySubGrupoATIVO: TStringField;
    QrySubGrupoTIPO: TIntegerField;
    DspGrupo: TDataSetProvider;
    DspSubGrupo: TDataSetProvider;
    CdsGrupo: TClientDataSet;
    CdsGrupoID: TIntegerField;
    CdsGrupoDESCRICAO: TStringField;
    CdsGrupoATIVO: TStringField;
    CdsGrupoATIVO_VENDA: TStringField;
    CdsSubGrupo: TClientDataSet;
    CdsSubGrupoID: TIntegerField;
    CdsSubGrupoIDGRUPO: TIntegerField;
    CdsSubGrupoDESCRICAO: TStringField;
    CdsSubGrupoATIVO: TStringField;
    CdsSubGrupoTIPO: TIntegerField;
    QryNCM: TFDQuery;
    QryNCMCODIGO: TStringField;
    QryNCMEXCECAO: TIntegerField;
    QryNCMTABELA: TIntegerField;
    QryNCMALIQ_NACIONAL: TFloatField;
    QryNCMALIQ_IMPORTACAO: TFloatField;
    QryNCMDESCRICAO: TStringField;
    QryNCMALIQ_ESTADUAL: TFloatField;
    QryNCMALIQ_MUNICIPAL: TFloatField;
    DspNCM: TDataSetProvider;
    CdsNCM: TClientDataSet;
    CdsNCMCODIGO: TStringField;
    CdsNCMEXCECAO: TIntegerField;
    CdsNCMTABELA: TIntegerField;
    CdsNCMALIQ_NACIONAL: TFloatField;
    CdsNCMALIQ_IMPORTACAO: TFloatField;
    CdsNCMDESCRICAO: TStringField;
    CdsNCMALIQ_ESTADUAL: TFloatField;
    CdsNCMALIQ_MUNICIPAL: TFloatField;
    QryCest: TFDQuery;
    QryCestCEST: TStringField;
    QryCestNCM: TStringField;
    QryCestDESCRICAO: TStringField;
    DspCest: TDataSetProvider;
    CdsCest: TClientDataSet;
    CdsCestCEST: TStringField;
    CdsCestNCM: TStringField;
    CdsCestDESCRICAO: TStringField;
    QryTabela: TFDQuery;
    QryTabelaID: TIntegerField;
    QryTabelaDESCRICAO: TStringField;
    QryTabelaREFERENCIA: TStringField;
    QryTabelaEAN13: TStringField;
    QryTabelaDUN14: TStringField;
    QryTabelaGRUPO: TIntegerField;
    QryTabelaSUBGRUPO1: TIntegerField;
    QryTabelaSUBGRUPO2: TIntegerField;
    QryTabelaUNIDADE: TStringField;
    QryTabelaQUANT_CAIXA: TFloatField;
    QryTabelaALIQUOTA_ICMS: TFloatField;
    QryTabelaALIQUOTA_IPI: TFloatField;
    QryTabelaESTOQUE: TFloatField;
    QryTabelaPRECO_COMPRA: TFloatField;
    QryTabelaPRECO_VENDA: TFloatField;
    QryTabelaTIPOPROD: TIntegerField;
    QryTabelaPERC_DESC: TFloatField;
    QryTabelaPERC_COM: TFloatField;
    QryTabelaATIVO: TStringField;
    QryTabelaTIPO_PRODUTO: TIntegerField;
    QryTabelaMARGEM_LUCRO: TFloatField;
    QryTabelaCONTROLAR_ESTOQUE: TStringField;
    QryTabelaTRIBUTACAO: TIntegerField;
    QryTabelaFRACIONADO: TStringField;
    QryTabelaCODIGO_NCM: TStringField;
    QryTabelaREDUCAO_BASE: TFloatField;
    QryTabelaBASE_ST: TFloatField;
    QryTabelaEDITA_DESC_PED: TStringField;
    QryTabelaMD5REGISTRO: TStringField;
    QryTabelaGARANTIA: TStringField;
    QryTabelaGARANTIA_MESES: TIntegerField;
    QryTabelaDATA_ESTOQUE: TSQLTimeStampField;
    QryTabelaHORA_ESTOQUE: TSQLTimeStampField;
    QryTabelaCOMBUSTIVEL: TStringField;
    QryTabelaIPPT: TStringField;
    QryTabelaIAT: TStringField;
    QryTabelaMVA: TFloatField;
    QryTabelaALIQUOTA_PIS: TFloatField;
    QryTabelaALIQUOTA_COFINS: TFloatField;
    QryTabelaSUBSTANCIA: TStringField;
    QryTabelaSINCRONIZADO: TStringField;
    QryTabelaEXCECAO_NCM: TIntegerField;
    QryTabelaINDICEA: TStringField;
    QryTabelaINDICEB: TStringField;
    QryTabelaCST_INTERNO: TStringField;
    QryTabelaCFOP_INTERNO: TStringField;
    QryTabelaCST_EXTERNO: TStringField;
    QryTabelaCFOP_EXTERNO: TStringField;
    DspTabela: TDataSetProvider;
    CdsTabela: TClientDataSet;
    CdsTabelaID: TIntegerField;
    CdsTabelaDESCRICAO: TStringField;
    CdsTabelaREFERENCIA: TStringField;
    CdsTabelaEAN13: TStringField;
    CdsTabelaDUN14: TStringField;
    CdsTabelaGRUPO: TIntegerField;
    CdsTabelaSUBGRUPO1: TIntegerField;
    CdsTabelaSUBGRUPO2: TIntegerField;
    CdsTabelaUNIDADE: TStringField;
    CdsTabelaQUANT_CAIXA: TFloatField;
    CdsTabelaALIQUOTA_ICMS: TFloatField;
    CdsTabelaALIQUOTA_IPI: TFloatField;
    CdsTabelaESTOQUE: TFloatField;
    CdsTabelaPRECO_COMPRA: TFloatField;
    CdsTabelaPRECO_VENDA: TFloatField;
    CdsTabelaTIPOPROD: TIntegerField;
    CdsTabelaPERC_DESC: TFloatField;
    CdsTabelaPERC_COM: TFloatField;
    CdsTabelaATIVO: TStringField;
    CdsTabelaTIPO_PRODUTO: TIntegerField;
    CdsTabelaMARGEM_LUCRO: TFloatField;
    CdsTabelaCONTROLAR_ESTOQUE: TStringField;
    CdsTabelaTRIBUTACAO: TIntegerField;
    CdsTabelaFRACIONADO: TStringField;
    CdsTabelaCODIGO_NCM: TStringField;
    CdsTabelaREDUCAO_BASE: TFloatField;
    CdsTabelaBASE_ST: TFloatField;
    CdsTabelaEDITA_DESC_PED: TStringField;
    CdsTabelaMD5REGISTRO: TStringField;
    CdsTabelaGARANTIA: TStringField;
    CdsTabelaGARANTIA_MESES: TIntegerField;
    CdsTabelaDATA_ESTOQUE: TSQLTimeStampField;
    CdsTabelaHORA_ESTOQUE: TSQLTimeStampField;
    CdsTabelaCOMBUSTIVEL: TStringField;
    CdsTabelaIPPT: TStringField;
    CdsTabelaIAT: TStringField;
    CdsTabelaMVA: TFloatField;
    CdsTabelaALIQUOTA_PIS: TFloatField;
    CdsTabelaALIQUOTA_COFINS: TFloatField;
    CdsTabelaSUBSTANCIA: TStringField;
    CdsTabelaSINCRONIZADO: TStringField;
    CdsTabelaEXCECAO_NCM: TIntegerField;
    CdsTabelaINDICEA: TStringField;
    CdsTabelaINDICEB: TStringField;
    CdsTabelaCST_INTERNO: TStringField;
    CdsTabelaCFOP_INTERNO: TStringField;
    CdsTabelaCST_EXTERNO: TStringField;
    CdsTabelaCFOP_EXTERNO: TStringField;
    QryProdutosCST_PIS: TStringField;
    QryProdutosCST_COFINS: TStringField;
    CdsProdutosCST_PIS: TStringField;
    CdsProdutosCST_COFINS: TStringField;
    CdsProdutos2CST_PIS: TStringField;
    CdsProdutos2CST_COFINS: TStringField;
    QryCSTPisCofins: TFDQuery;
    QryCSTPisCofinsCOD_CST_PIS_COFINS: TStringField;
    QryCSTPisCofinsDESCRICAO: TStringField;
    DspCSTPisCofins: TDataSetProvider;
    CdsCSTPisCofins: TClientDataSet;
    CdsCSTPisCofinsCOD_CST_PIS_COFINS: TStringField;
    CdsCSTPisCofinsDESCRICAO: TStringField;
    QryProdutosDT_INI_PROMO: TDateField;
    QryProdutosDT_FIM_PROMO: TDateField;
    QryProdutosPRECO_PROMOCAO: TFloatField;
    CdsProdutosDT_INI_PROMO: TDateField;
    CdsProdutosDT_FIM_PROMO: TDateField;
    CdsProdutosPRECO_PROMOCAO: TFloatField;
    CdsProdutos2DT_INI_PROMO: TDateField;
    CdsProdutos2DT_FIM_PROMO: TDateField;
    CdsProdutos2PRECO_PROMOCAO: TFloatField;
    QryProdutosID_COR: TIntegerField;
    QryProdutosID_TAMANHO: TIntegerField;
    CdsProdutosID_COR: TIntegerField;
    CdsProdutosID_TAMANHO: TIntegerField;
    CdsProdutos2ID_COR: TIntegerField;
    CdsProdutos2ID_TAMANHO: TIntegerField;
    QryProdutoCor: TFDQuery;
    QryProdutoTamanho: TFDQuery;
    DspProdutoCor: TDataSetProvider;
    DspProdutoTamanho: TDataSetProvider;
    CdsProdutoCor: TClientDataSet;
    CdsProdutoTamanho: TClientDataSet;
    QryProdutoCorID: TIntegerField;
    QryProdutoCorNOME: TStringField;
    CdsProdutoCorID: TIntegerField;
    CdsProdutoCorNOME: TStringField;
    QryProdutoTamanhoID: TIntegerField;
    QryProdutoTamanhoNUMERO: TIntegerField;
    QryProdutoTamanhoMETRAGEM: TFloatField;
    CdsProdutoTamanhoID: TIntegerField;
    CdsProdutoTamanhoNUMERO: TIntegerField;
    CdsProdutoTamanhoMETRAGEM: TFloatField;
    QryProdutosPATH_IMAGEM: TStringField;
    CdsProdutosPATH_IMAGEM: TStringField;
    CdsProdutos2PATH_IMAGEM: TStringField;
    QryProduto_AliquotaCSOSN: TStringField;
    CdsProduto_AliquotaCSOSN: TStringField;
    QryProdutosCSOSN_INTERNO: TStringField;
    CdsProdutosCSOSN_INTERNO: TStringField;
    CdsProdutos2CSOSN_INTERNO: TStringField;
    procedure DspProdutosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsGrupoNewRecord(DataSet: TDataSet);
    procedure CdsSubGrupoNewRecord(DataSet: TDataSet);
    procedure CdsProdutosNewRecord(DataSet: TDataSet);
    procedure CdsGrupoAfterScroll(DataSet: TDataSet);
    procedure DspProdutoCompostoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsProdutoCompostoNewRecord(DataSet: TDataSet);
    procedure DspEstoqueGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsEstoqueNewRecord(DataSet: TDataSet);
    procedure CdsProdutosAfterScroll(DataSet: TDataSet);
    procedure DspProdutoAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsProdutosBeforePost(DataSet: TDataSet);
    procedure CdsProdutoFornecedorNewRecord(DataSet: TDataSet);
    procedure CdsProdutoFornecedorBeforePost(DataSet: TDataSet);
    procedure DspTabelaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspProdutoFornecedorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspProduto_AliquotaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsProduto_AliquotaNewRecord(DataSet: TDataSet);
    procedure CdsMovimentoEstNewRecord(DataSet: TDataSet);
    procedure DspMovimentoEstGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspFechamentoEstGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsFechamentoEstNewRecord(DataSet: TDataSet);
    procedure DspSubGrupoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspGrupoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspNCMGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspCestGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsNCMNewRecord(DataSet: TDataSet);
    procedure DspProdutoCorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspProdutoTamanhoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsProdutoCorNewRecord(DataSet: TDataSet);
    procedure CdsProdutoTamanhoNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure FormataCampos;
    function InsereItemCupom(pQuant, pAcres, pDesc: Double; pPercentual: Boolean): Boolean;
    procedure InsereRegistroProduto(id, grupo, subgrupo: Integer; descricao, referencia, ean13, unidade, codigo_ncm, ippt, iat, cst_interno, cfop_interno,
      bens_consumo, cst_pis, cst_cofins: String; quant_caixa, aliquota_icms, aliquota_ipi, estoque, preco_compra, preco_venda, perc_com, margem_lucro, mva,
      aliquota_pis, aliquota_cofins: Double);
  public
    { Public declarations }
    function Dados_Grupo: Boolean;
    function Dados_SubGrupo(fIDGrupo: Integer): Boolean;
    function Dados_Estoque(pIDProduto, pIDEmpresa: Integer): Boolean;
    function Dados_Produto(fID: Integer): Boolean; overload;
    function Dados_Produto(fEAN13: String): Boolean; overload;
    function Dados_Produto: Boolean; overload;
    function Dados_Produto2(pDatai: TDateTime = 0; pDataf: TDateTime = 0; ApenasProdMovto: Boolean = False): Boolean;
    function Dados_ProdutoPosto: Boolean;
    function Dados_ProdComposto(fID: Integer): Boolean;
    function Dados_ProdCor: Boolean;
    function Dados_ProdTamanho: Boolean;
    function Dados_Produto_Aliquota(pIDProd: Integer; pUF: String = ''): Boolean;
    function Dados_ProdutoAux: Boolean;
    function Dados_ProdFornecedor(fIDProduto: Integer): Boolean;
    function Dados_NCM: Boolean; overload;
    function Dados_NCM(pCodigo: String; pExcecao: Integer): Boolean; overload;
    function Dados_Cest(pNCM: String): Boolean;
    function Dados_CST_Pis_Cofins: Boolean;
    function Dados_MovimentoEst(fID: Integer): Boolean;
    function Dados_FechamentoEst(fID: Integer): Boolean;
    procedure Grava_TabMovEst(fTipoMov, fIDProduto: Integer; fQuant: Double);
    procedure GravaFechamentoProd(fIDProd: Integer; fMes, fAno: String; fQuant: Double);
    procedure GravaFechamentoInicial(fMes, fAno: String);
    procedure Grava_EstoqueDia(pIDProd: Integer);
    function VerificaFechamentoInicial: Boolean;
    function VerificaFechamentoAnterior(fMes, fAno: String): Boolean;
    procedure ImportaDadosTabelaNCM;
    procedure ProcessaImportacaoProdutosSISCOM;
  end;

var
  DmProdutos: TDmProdutos;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses
  uDmConexao, uLibrary, uDmWorkCom, uDmAuxiliar;

{$R *.dfm}

procedure TDmProdutos.CdsEstoqueNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('ESTOQUE');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;

end;

procedure TDmProdutos.CdsFechamentoEstNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('FECHAMENTO_EST');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;

end;

procedure TDmProdutos.CdsGrupoAfterScroll(DataSet: TDataSet);
begin
  Dados_SubGrupo(CdsGrupo.FieldByName('ID').AsInteger);

end;

procedure TDmProdutos.CdsGrupoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('GRUPO');
  DataSet.FieldByName('ATIVO').AsString := 'T';
  DataSet.FieldByName('ATIVO_VENDA').AsString := 'T';

end;

procedure TDmProdutos.CdsMovimentoEstNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('MOVIMENTO_EST');
  DataSet.FieldByName('IDEMPRESA').AsInteger := sIDEmpresa;
  DataSet.FieldByName('DATA').AsDateTime := SVData;
  DataSet.FieldByName('HORA').AsDateTime := SVHora;

end;

procedure TDmProdutos.CdsNCMNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('EXCECAO').AsInteger := 0;

end;

procedure TDmProdutos.CdsProdutoCompostoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := CdsProdutos.FieldByName('ID').AsInteger;

end;

procedure TDmProdutos.CdsProdutoCorNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PRODUTO_CORES');

end;

procedure TDmProdutos.CdsProdutoFornecedorBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('NOME_FORNECEDOR').AsString := DmWorkCom.CdsConsulta.FieldByName('NOME').AsString;

end;

procedure TDmProdutos.CdsProdutoFornecedorNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PRODUTO_FORNECEDOR');
  DataSet.FieldByName('IDPRODUTO').AsInteger := CdsProdutosID.AsInteger;

end;

procedure TDmProdutos.CdsProdutosAfterScroll(DataSet: TDataSet);
begin
  Dados_Estoque(DataSet.FieldByName('iD').AsInteger, sIDEmpresa);

end;

procedure TDmProdutos.CdsProdutosBeforePost(DataSet: TDataSet);
var
  aIndice, aValorVenda: Double;
  MD5: String;
begin
  if DataSet.FieldByName('PRECO_VENDA').AsFloat = 0 then
  begin
    if sTipoCalcPerc = 0 then // mutiplica��o
    begin
      aIndice := Retorna_IndicePercentual('P', DataSet.FieldByName('MARGEM_LUCRO').AsFloat);
      aValorVenda := DataSet.FieldByName('PRECO_COMPRA').AsFloat * aIndice;
    end
    else if sTipoCalcPerc = 1 then // divis�o
    begin
      aIndice := Retorna_IndicePercentual('N', DataSet.FieldByName('MARGEM_LUCRO').AsFloat);
      aValorVenda := DataSet.FieldByName('PRECO_COMPRA').AsFloat / aIndice;
    end;
    aValorVenda := TruncaValor(aValorVenda, DmWorkCom.PAFECF.gDecimais);
    DataSet.FieldByName('PRECO_VENDA').AsFloat := aValorVenda;
  end;
  // verifica preenchimento do EAN
  if DataSet.FieldByName('EAN13').AsString = '' then
    DataSet.FieldByName('EAN13').AsString := ZeroEsquerda(IntToStr(DataSet.FieldByName('ID').AsInteger), 13);
  // Grava informa��o de sincroniza��o
  DataSet.FieldByName('SINCRONIZADO').AsString := 'N';
  // grava MD5 do sainota
  MD5 := RetornaMD5Registro(DataSet);
  DataSet.FieldByName('MD5REGISTRO').AsString := MD5;

end;

procedure TDmProdutos.CdsProdutosNewRecord(DataSet: TDataSet);
begin
  if pNumProd > 0 then
  begin
    if Retorna_Total_Produtos >= pNumProd then
    begin
      MessageDlg('SoftWare de Demonstra��o!' + #13 + #10 + 'N�o � permitido ultrapassar o limite de produtos estabelecido,' + #13 + #10 + 'M�ximo ' +
        IntToStr(pNumProd) + '. Entre em contato com o suporte t�cnico!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  DataSet.FieldByName('ID').AsInteger := GenID('PRODUTOS');
  DataSet.FieldByName('ATIVO').AsString := 'T';
  DataSet.FieldByName('CONTROLAR_ESTOQUE').AsString := 'S';
  DataSet.FieldByName('PERC_DESC').AsFloat := 0;
  DataSet.FieldByName('PERC_COM').AsFloat := 0;
  DataSet.FieldByName('PRECO_COMPRA').AsFloat := 0;
  DataSet.FieldByName('PRECO_VENDA').AsFloat := 0;
  DataSet.FieldByName('ESTOQUE').AsFloat := 0;
  DataSet.FieldByName('ALIQUOTA_ICMS').AsFloat := 0;
  DataSet.FieldByName('ALIQUOTA_IPI').AsFloat := 0;
  DataSet.FieldByName('QUANT_CAIXA').AsFloat := 1;
  DataSet.FieldByName('TIPOPROD').AsFloat := 0;
  DataSet.FieldByName('TIPO_PRODUTO').AsFloat := 0;
  DataSet.FieldByName('MARGEM_LUCRO').AsFloat := sMargemPadrao;
  DataSet.FieldByName('IPPT').AsString := 'T';
  DataSet.FieldByName('IAT').AsString := 'T';
  DataSet.FieldByName('EDITA_DESC_PED').AsString := 'N';
  DataSet.FieldByName('EXCECAO_NCM').AsInteger := 0;
  DataSet.FieldByName('BENS_CONSUMO').AsString := 'N';
  DataSet.FieldByName('PROD_COMPONENTE').AsString := 'N';
  DataSet.FieldByName('FRACIONADO').AsString := 'N';
  DataSet.FieldByName('PESAVEL').AsString := 'N';
  DataSet.FieldByName('COMBUSTIVEL').AsString := 'N';

end;

procedure TDmProdutos.CdsProdutoTamanhoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PRODUTO_TAMANHO');
  DataSet.FieldByName('NUMERO').AsInteger := RetornaNumProd;

end;

procedure TDmProdutos.CdsProduto_AliquotaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('PRODUTO_ALIQUOTA');
  DataSet.FieldByName('IDPRODUTO').AsInteger := CdsProdutosID.AsInteger;
  DataSet.FieldByName('ALIQUOTA').AsFloat := 0;
  DataSet.FieldByName('REDUCAO_BASE').AsFloat := 0;

end;

procedure TDmProdutos.CdsSubGrupoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('SUBGRUPO');
  DataSet.FieldByName('IDGRUPO').AsInteger := CdsGrupo.FieldByName('ID').AsInteger;
  DataSet.FieldByName('ATIVO').AsString := 'T';

end;

function TDmProdutos.Dados_Cest(pNCM: String): Boolean;
begin
  CdsCest.Close;
  CdsCest.Params.Clear;
  QryCest.Close;
  QryCest.SQL.Clear;
  QryCest.SQL.Add('select * from tab_cest c');
  QryCest.SQL.Add('where c.ncm like ' + QuotedStr(pNCM + '%'));
  //
  CdsCest.FetchParams;
  CdsCest.Open;
  //
  Result := False;
  if CdsCest.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_CST_Pis_Cofins: Boolean;
begin
  CdsCSTPisCofins.Close;
  CdsCSTPisCofins.Open;
  //
  Result := False;
  if CdsCSTPisCofins.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Estoque(pIDProduto, pIDEmpresa: Integer): Boolean;
begin
  CdsEstoque.Close;
  CdsEstoque.Params.ParamByName('pIDProd').AsInteger := pIDProduto;
  CdsEstoque.Params.ParamByName('pIDEmpresa').AsInteger := pIDEmpresa;
  CdsEstoque.Open;
  //
  Result := False;
  if CdsEstoque.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_FechamentoEst(fID: Integer): Boolean;
begin
  CdsFechamentoEst.Close;
  CdsFechamentoEst.Params.ParamByName('pID').AsInteger := fID;
  CdsFechamentoEst.Open;
  //
  Result := False;
  if CdsFechamentoEst.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Grupo: Boolean;
begin
  CdsGrupo.Close;
  CdsGrupo.Open;
  Result := False;
  if CdsGrupo.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_MovimentoEst(fID: Integer): Boolean;
begin
  CdsMovimentoEst.Close;
  CdsMovimentoEst.Params.ParamByName('pID').AsInteger := fID;
  CdsMovimentoEst.Open;
  //
  Result := False;
  if CdsMovimentoEst.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_NCM: Boolean;
begin
  CdsNCM.Close;
  CdsNCM.Params.Clear;
  QryNCM.Close;
  QryNCM.SQL.Clear;
  QryNCM.SQL.Add('select * from NCM');
  //
  CdsNCM.FetchParams;
  CdsNCM.Open;
  //
  Result := False;
  if CdsNCM.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_NCM(pCodigo: String; pExcecao: Integer): Boolean;
begin
  CdsNCM.Close;
  CdsNCM.Params.Clear;
  QryNCM.Close;
  QryNCM.SQL.Clear;
  QryNCM.SQL.Add('select * from NCM');
  QryNCM.SQL.Add('where NCM.codigo = :pCodigo');
  QryNCM.SQL.Add('and NCM.excecao = :pExcecao');
  //
  CdsNCM.FetchParams;
  CdsNCM.Params.ParamByName('pCodigo').AsString := pCodigo;
  CdsNCM.Params.ParamByName('pExcecao').AsInteger := pExcecao;
  CdsNCM.Open;
  //
  Result := False;
  if CdsNCM.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Produto(fEAN13: String): Boolean;
begin
  CdsProdutos.Close;
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  QryProdutos.SQL.Add('where produtos.EAN13 = :pEAN13');
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Params.ParamByName('pEAN13').AsString := fEAN13;
  CdsProdutos.Open;
  //
  Result := False;
  if CdsProdutos.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Produto(fID: Integer): Boolean;
begin
  CdsProdutos.Close;
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  QryProdutos.SQL.Add('where produtos.id = :pID');
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Params.ParamByName('pID').AsInteger := fID;
  CdsProdutos.Open;
  //
  Result := False;
  if CdsProdutos.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_ProdComposto(fID: Integer): Boolean;
begin
  CdsProdutoComposto.Close;
  CdsProdutoComposto.Params.ParamByName('pID').AsInteger := fID;
  CdsProdutoComposto.Open;
  //
  Result := False;
  if CdsProdutoComposto.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_ProdCor: Boolean;
begin
  CdsProdutoCor.Close;
  CdsProdutoCor.Open;
  //
  Result := False;
  if CdsProdutoCor.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_ProdFornecedor(fIDProduto: Integer): Boolean;
begin
  CdsProdutoFornecedor.Close;
  CdsProdutoFornecedor.Params.ParamByName('pIDProd').AsInteger := fIDProduto;
  CdsProdutoFornecedor.Open;
  //
  Result := False;
  if CdsProdutoFornecedor.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_ProdTamanho: Boolean;
begin
  CdsProdutoTamanho.Close;
  CdsProdutoTamanho.Open;
  //
  Result := False;
  if CdsProdutoTamanho.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Produto: Boolean;
begin
  CdsProdutos.Close;
  CdsProdutos.Params.Clear;
  QryProdutos.Close;
  QryProdutos.Params.Clear;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Open;
  //
  Result := False;
  if CdsProdutos.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Produto2(pDatai, pDataf: TDateTime; ApenasProdMovto: Boolean): Boolean;
var
  aDatai, aDataf: String;
begin
  CdsProdutos2.Close;
  CdsProdutos2.Params.Clear;
  QryProdutos.Close;
  QryProdutos.Params.Clear;
  QryProdutos.SQL.Clear;
  if not ApenasProdMovto then
  begin
    QryProdutos.SQL.Add('select * from produtos')
  end
  else
  begin
    aDatai := FormatDateTime('mm/dd/yyyy', pDatai);
    aDataf := FormatDateTime('mm/dd/yyyy', pDataf);
    QryProdutos.SQL.Add('select p.* from pedido n');
    QryProdutos.SQL.Add('inner join pedido_itens i on n.id = i.idpedido');
    QryProdutos.SQL.Add('inner join produtos p on i.idproduto = p.id');
    QryProdutos.SQL.Add('where n.data_entrega between ' + QuotedStr(aDatai) + ' and ' + QuotedStr(aDataf));
    QryProdutos.SQL.Add('and n.idempresa = ' + IntToStr(sIDEmpresa));
    QryProdutos.SQL.Add('and n.confirmada = ' + QuotedStr('S'));
  end;
  //
  CdsProdutos2.FetchParams;
  CdsProdutos2.Open;
  //
  Result := False;
  if CdsProdutos2.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_ProdutoAux: Boolean;
begin
  CdsProdutoAux.Close;
  // CdsProdutoAux.Params.ParamByName('pGrupo').AsInteger := fIDGrupo;
  CdsProdutoAux.Open;
  //
  Result := False;
  if CdsProdutoAux.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_ProdutoPosto: Boolean;
begin
  CdsProdutos.Close;
  CdsProdutos.Params.Clear;
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  QryProdutos.SQL.Add('where produtos.combustivel = ' + QuotedStr('S'));
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Open;
  //
  Result := False;
  if CdsProdutos.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_Produto_Aliquota(pIDProd: Integer; pUF: String): Boolean;
begin
  CdsProduto_Aliquota.Close;
  CdsProduto_Aliquota.Params.Clear;
  QryProduto_Aliquota.Close;
  QryProduto_Aliquota.SQL.Clear;
  QryProduto_Aliquota.SQL.Add('select * from produto_aliquota');
  QryProduto_Aliquota.SQL.Add('where produto_aliquota.idproduto = :pID');
  if pUF <> '' then
    QryProduto_Aliquota.SQL.Add('and produto_aliquota.uf = ' + QuotedStr(pUF));
  //
  CdsProduto_Aliquota.FetchParams;
  CdsProduto_Aliquota.Params.ParamByName('pID').AsInteger := pIDProd;
  CdsProduto_Aliquota.Open;
  //
  Result := False;
  if CdsProduto_Aliquota.RecordCount > 0 then
    Result := true;

end;

function TDmProdutos.Dados_SubGrupo(fIDGrupo: Integer): Boolean;
begin
  CdsSubGrupo.Close;
  CdsSubGrupo.Params.ParamByName('pID').AsInteger := fIDGrupo;
  CdsSubGrupo.Open;
  //
  Result := False;
  if CdsSubGrupo.RecordCount > 0 then
    Result := true;

end;

procedure TDmProdutos.DataModuleCreate(Sender: TObject);
begin
  FormataCampos;

end;

procedure TDmProdutos.DspCestGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'TAB_CEST';

end;

procedure TDmProdutos.DspEstoqueGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'ESTOQUE';

end;

procedure TDmProdutos.DspFechamentoEstGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'FECHAMENTO_EST';

end;

procedure TDmProdutos.DspGrupoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'GRUPO';

end;

procedure TDmProdutos.DspMovimentoEstGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'MOVIMENTO_EST';

end;

procedure TDmProdutos.DspNCMGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'NCM';

end;

procedure TDmProdutos.DspProdutoAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTOS';

end;

procedure TDmProdutos.DspProdutoCompostoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTO_COMPOSTO';

end;

procedure TDmProdutos.DspProdutoCorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTO_CORES';

end;

procedure TDmProdutos.DspProdutoFornecedorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTO_FORNECEDOR';

end;

procedure TDmProdutos.DspProdutosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTOS';

end;

procedure TDmProdutos.DspProdutoTamanhoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTO_TAMANHO';
end;

procedure TDmProdutos.DspProduto_AliquotaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTO_ALIQUOTA';

end;

procedure TDmProdutos.DspSubGrupoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'SUBGRUPO';

end;

procedure TDmProdutos.DspTabelaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUTOS';

end;

procedure TDmProdutos.FormataCampos;
begin
  // produtos
  CdsProdutosPRECO_COMPRA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutosPRECO_COMPRA.EditFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutosPRECO_VENDA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutosPRECO_VENDA.EditFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutosALIQUOTA_ICMS.DisplayFormat := '##,##0.00';
  CdsProdutosALIQUOTA_ICMS.EditFormat := '##,##0.00';
  CdsProdutosALIQUOTA_IPI.DisplayFormat := '##,##0.00';
  CdsProdutosALIQUOTA_IPI.EditFormat := '##,##0.00';
  CdsProdutosMARGEM_LUCRO.DisplayFormat := '##,##0.00';
  CdsProdutosMARGEM_LUCRO.EditFormat := '##,##0.00';
  CdsProdutosREDUCAO_BASE.DisplayFormat := '##,##0.00';
  CdsProdutosREDUCAO_BASE.EditFormat := '##,##0.00';
  //
  CdsProdutoTamanhoMETRAGEM.DisplayFormat := '##,##0.00';
  CdsProdutoTamanhoMETRAGEM.EditFormat := '##,##0.00';
  // produto auxiliar
  CdsProdutoAuxPRECO_VENDA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutoAuxPRECO_COMPRA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutoAuxMARGEM_LUCRO.DisplayFormat := '##,##0.00';
  // produtos composto
  CdsProdutoCompostoVALOR.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutoCompostoVALOR.EditFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutoCompostoQUANTIDADE.DisplayFormat := '###,###,###0.000';
  CdsProdutoCompostoQUANTIDADE.EditFormat := '###,###,###0,000';
  // produtos composto
  CdsProdutoFornecedorVALOR_COMPRA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsProdutoFornecedor.FieldByName('DATA_ULTCOMPRA').EditMask := '!99/99/0000;1; ';
  CdsProdutoFornecedorDATA_ULTCOMPRA.DisplayFormat := 'dd/mm/yyyy';
  // Tabela
  CdsTabelaPRECO_COMPRA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsTabelaPRECO_VENDA.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;

end;

procedure TDmProdutos.GravaFechamentoInicial(fMes, fAno: String);
begin
  Dados_ProdutoAux;
  Dados_FechamentoEst(0);
  while not CdsProdutoAux.Eof do
  begin
    Dados_Produto(CdsProdutoAuxID.AsInteger);
    CdsFechamentoEst.Append;
    CdsFechamentoEstMES.AsString := fMes;
    CdsFechamentoEstANO.AsString := fAno;
    CdsFechamentoEstIDEMPRESA.AsInteger := sIDEmpresa;
    CdsFechamentoEstID_PRODUTO.AsInteger := CdsProdutoAuxID.AsInteger;
    CdsFechamentoEstQUANTIDADE.AsFloat := CdsProdutosESTOQUE.AsFloat;
    Grava_Dados(CdsFechamentoEst);
    CdsProdutoAux.Next;
  end;

end;

procedure TDmProdutos.GravaFechamentoProd(fIDProd: Integer; fMes, fAno: String; fQuant: Double);
begin
  Dados_FechamentoEst(0);
  try
    CdsFechamentoEst.Append;
    CdsFechamentoEstMES.AsString := fMes;
    CdsFechamentoEstANO.AsString := fAno;
    CdsFechamentoEstID_PRODUTO.AsInteger := fIDProd;
    CdsFechamentoEstQUANTIDADE.AsFloat := fQuant;
    CdsFechamentoEstIDEMPRESA.AsInteger := sIDEmpresa;
    Grava_Dados(CdsFechamentoEst);
  except
    MessageDlg('Erro ao gravar fechamento do produto: ' + IntToStr(fIDProd), mtWarning, [mbOK], 0);
  end;

end;

procedure TDmProdutos.Grava_EstoqueDia(pIDProd: Integer);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('update estoque x set');
    Q.SQL.Add('x.estoque_dia = x.quantidade,');
    Q.SQL.Add('x.data_estoque = current_timestamp,');
    Q.SQL.Add('x.hora_estoque = current_timestamp');
    Q.SQL.Add('where x.idproduto = :pIDProd');
    Q.SQL.Add('and x.idempresa = :pIDEmpresa');
    Q.Params.ParamByName('pIDProd').AsInteger := pIDProd;
    Q.Params.ParamByName('pIDEmpresa').AsInteger := sIDEmpresa;
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TDmProdutos.Grava_TabMovEst(fTipoMov, fIDProduto: Integer; fQuant: Double);
begin
  // fTipoMov = 0 - Baixar
  // 1 - Adcionar
  CdsMovimentoEst.Append;
  CdsMovimentoEstIDPRODUTO.AsInteger := fIDProduto;
  CdsMovimentoEstIDEMPRESA.AsInteger := sIDEmpresa;
  if fTipoMov = 0 then
    CdsMovimentoEstQUANTIDADE.AsFloat := fQuant * -1
  else
    CdsMovimentoEstQUANTIDADE.AsFloat := fQuant;
  CdsMovimentoEst.Post;
  Grava_Dados(CdsMovimentoEst);

end;

procedure TDmProdutos.ImportaDadosTabelaNCM;
var
  i, Excecao: Integer;
  descricao, ArquivoCSV: String;
  AbreArquivo: TOpenDialog;
begin
  if not Dados_NCM then
  begin
    try
      ArquivoCSV := '';
      AbreArquivo := TOpenDialog.Create(Application);
      AbreArquivo.DefaultExt := '.csv';
      AbreArquivo.Filter := 'Tabela IBPTax|*.csv';
      AbreArquivo.Title := 'Abrir tabela IBPTax';
      AbreArquivo.InitialDir := ExtractFilePath(Application.ExeName) + 'tabela\';
      AbreArquivo.Execute;
      ArquivoCSV := AbreArquivo.FileName;
      //
      if DmAcBr.ACBrIBPTax1.AbrirTabela(ArquivoCSV) then
      begin
        for i := 0 to DmAcBr.ACBrIBPTax1.Itens.Count - 1 do
        begin
          // captura a excecao
          Excecao := 0;
          if DmAcBr.ACBrIBPTax1.Itens[i].Excecao <> '' then
            Excecao := StrToInt(DmAcBr.ACBrIBPTax1.Itens[i].Excecao);
          // verifica descri��o maior
          descricao := DmAcBr.ACBrIBPTax1.Itens[i].descricao;
          if Length(descricao) > 512 then
          begin
            descricao := Copy(descricao, 1, 512);
          end;
          // grava no banco de dados
          CdsNCM.Append;
          CdsNCMCODIGO.AsString := DmAcBr.ACBrIBPTax1.Itens[i].NCM;
          CdsNCMEXCECAO.AsInteger := Excecao;
          CdsNCMTABELA.AsInteger := Integer(DmAcBr.ACBrIBPTax1.Itens[i].Tabela);
          CdsNCMALIQ_NACIONAL.AsFloat := DmAcBr.ACBrIBPTax1.Itens[i].FederalNacional;
          CdsNCMALIQ_IMPORTACAO.AsFloat := DmAcBr.ACBrIBPTax1.Itens[i].FederalImportado;
          CdsNCMALIQ_ESTADUAL.AsFloat := DmAcBr.ACBrIBPTax1.Itens[i].Estadual;
          CdsNCMALIQ_MUNICIPAL.AsFloat := DmAcBr.ACBrIBPTax1.Itens[i].Municipal;
          CdsNCMDESCRICAO.AsString := descricao;
          //
          Grava_Dados(CdsNCM);
        end;
      end;
    except
      FreeAndNil(AbreArquivo);
    end;
  end;

end;

function TDmProdutos.InsereItemCupom(pQuant, pAcres, pDesc: Double; pPercentual: Boolean): Boolean;
begin

end;

procedure TDmProdutos.InsereRegistroProduto(id, grupo, subgrupo: Integer; descricao, referencia, ean13, unidade, codigo_ncm, ippt, iat, cst_interno,
  cfop_interno, bens_consumo, cst_pis, cst_cofins: String; quant_caixa, aliquota_icms, aliquota_ipi, estoque, preco_compra, preco_venda, perc_com, margem_lucro,
  mva, aliquota_pis, aliquota_cofins: Double);
var
  SQLPaf: TFDQuery;
begin
  try
    SQLPaf := TFDQuery.Create(Application);
    SQLPaf.Connection := DmConexao.Conexao;
    SQLPaf.Close;
    SQLPaf.SQL.Clear;
    SQLPaf.SQL.Add('insert into produtos (');
    SQLPaf.SQL.Add('  id,');
    SQLPaf.SQL.Add('  descricao,');
    SQLPaf.SQL.Add('  referencia,');
    SQLPaf.SQL.Add('  ean13,');
    SQLPaf.SQL.Add('  grupo,');
    SQLPaf.SQL.Add('  subgrupo,');
    SQLPaf.SQL.Add('  unidade,');
    SQLPaf.SQL.Add('  quant_caixa,');
    SQLPaf.SQL.Add('  aliquota_icms,');
    SQLPaf.SQL.Add('  aliquota_ipi,');
    SQLPaf.SQL.Add('  estoque,');
    SQLPaf.SQL.Add('  preco_compra,');
    SQLPaf.SQL.Add('  preco_venda,');
    SQLPaf.SQL.Add('  tipoprod,');
    SQLPaf.SQL.Add('  perc_com,');
    SQLPaf.SQL.Add('  ativo,');
    SQLPaf.SQL.Add('  tipo_produto,');
    SQLPaf.SQL.Add('  margem_lucro,');
    SQLPaf.SQL.Add('  controlar_estoque,');
    SQLPaf.SQL.Add('  tributacao,');
    SQLPaf.SQL.Add('  fracionado,');
    SQLPaf.SQL.Add('  codigo_ncm,');
    SQLPaf.SQL.Add('  edita_desc_ped,');
    SQLPaf.SQL.Add('  combustivel,');
    SQLPaf.SQL.Add('  ippt,');
    SQLPaf.SQL.Add('  iat,');
    SQLPaf.SQL.Add('  mva,');
    SQLPaf.SQL.Add('  aliquota_pis,');
    SQLPaf.SQL.Add('  aliquota_cofins,');
    SQLPaf.SQL.Add('  sincronizado,');
    SQLPaf.SQL.Add('  excecao_ncm,');
    SQLPaf.SQL.Add('  cst_interno,');
    SQLPaf.SQL.Add('  cfop_interno,');
    SQLPaf.SQL.Add('  bens_consumo,');
    SQLPaf.SQL.Add('  cst_pis,');
    SQLPaf.SQL.Add('  cst_cofins)');

    SQLPaf.SQL.Add('values (');
    SQLPaf.SQL.Add('  :id,');
    SQLPaf.SQL.Add('  :descricao,');
    SQLPaf.SQL.Add('  :referencia,');
    SQLPaf.SQL.Add('  :ean13,');
    SQLPaf.SQL.Add('  :grupo,');
    SQLPaf.SQL.Add('  :subgrupo,');
    SQLPaf.SQL.Add('  :unidade,');
    SQLPaf.SQL.Add('  :quant_caixa,');
    SQLPaf.SQL.Add('  :aliquota_icms,');
    SQLPaf.SQL.Add('  :aliquota_ipi,');
    SQLPaf.SQL.Add('  :estoque,');
    SQLPaf.SQL.Add('  :preco_compra,');
    SQLPaf.SQL.Add('  :preco_venda,');
    SQLPaf.SQL.Add('  :tipoprod,');
    SQLPaf.SQL.Add('  :perc_com,');
    SQLPaf.SQL.Add('  :ativo,');
    SQLPaf.SQL.Add('  :tipo_produto,');
    SQLPaf.SQL.Add('  :margem_lucro,');
    SQLPaf.SQL.Add('  :controlar_estoque,');
    SQLPaf.SQL.Add('  :tributacao,');
    SQLPaf.SQL.Add('  :fracionado,');
    SQLPaf.SQL.Add('  :codigo_ncm,');
    SQLPaf.SQL.Add('  :edita_desc_ped,');
    SQLPaf.SQL.Add('  :combustivel,');
    SQLPaf.SQL.Add('  :ippt,');
    SQLPaf.SQL.Add('  :iat,');
    SQLPaf.SQL.Add('  :mva,');
    SQLPaf.SQL.Add('  :aliquota_pis,');
    SQLPaf.SQL.Add('  :aliquota_cofins,');
    SQLPaf.SQL.Add('  :sincronizado,');
    SQLPaf.SQL.Add('  :excecao_ncm,');
    SQLPaf.SQL.Add('  :cst_interno,');
    SQLPaf.SQL.Add('  :cfop_interno,');
    SQLPaf.SQL.Add('  :bens_consumo,');
    SQLPaf.SQL.Add('  :cst_pis,');
    SQLPaf.SQL.Add('  :cst_cofins)');
    //
    SQLPaf.Params.ParamByName('id').AsInteger := id;
    SQLPaf.Params.ParamByName('descricao').AsString := descricao;
    SQLPaf.Params.ParamByName('referencia').AsString := referencia;
    SQLPaf.Params.ParamByName('ean13').AsString := ean13;
    SQLPaf.Params.ParamByName('grupo').AsInteger := grupo;
    SQLPaf.Params.ParamByName('subgrupo').AsInteger := subgrupo;
    SQLPaf.Params.ParamByName('unidade').AsString := unidade;
    SQLPaf.Params.ParamByName('quant_caixa').AsFloat := quant_caixa;
    SQLPaf.Params.ParamByName('aliquota_icms').AsFloat := aliquota_icms;
    SQLPaf.Params.ParamByName('aliquota_ipi').AsFloat := aliquota_ipi;
    SQLPaf.Params.ParamByName('estoque').AsFloat := estoque;
    SQLPaf.Params.ParamByName('preco_compra').AsFloat := preco_compra;
    SQLPaf.Params.ParamByName('preco_venda').AsFloat := preco_venda;
    SQLPaf.Params.ParamByName('tipoprod').AsInteger := 0;
    SQLPaf.Params.ParamByName('perc_com').AsFloat := perc_com;
    SQLPaf.Params.ParamByName('ativo').AsString := 'T';
    SQLPaf.Params.ParamByName('tipo_produto').AsInteger := 0;
    SQLPaf.Params.ParamByName('margem_lucro').AsFloat := margem_lucro;
    SQLPaf.Params.ParamByName('controlar_estoque').AsString := 'S';
    SQLPaf.Params.ParamByName('tributacao').AsInteger := 0;
    SQLPaf.Params.ParamByName('fracionado').AsString := 'N';
    SQLPaf.Params.ParamByName('codigo_ncm').AsString := codigo_ncm;
    SQLPaf.Params.ParamByName('edita_desc_ped').AsString := 'N';
    SQLPaf.Params.ParamByName('combustivel').AsString := 'N';
    SQLPaf.Params.ParamByName('ippt').AsString := ippt;
    SQLPaf.Params.ParamByName('iat').AsString := iat;
    SQLPaf.Params.ParamByName('mva').AsFloat := mva;
    SQLPaf.Params.ParamByName('aliquota_pis').AsFloat := aliquota_pis;
    SQLPaf.Params.ParamByName('aliquota_cofins').AsFloat := aliquota_cofins;
    SQLPaf.Params.ParamByName('sincronizado').AsString := 'N';
    SQLPaf.Params.ParamByName('excecao_ncm').AsInteger := 0;
    SQLPaf.Params.ParamByName('cst_interno').AsString := cst_interno;
    SQLPaf.Params.ParamByName('cfop_interno').AsString := cfop_interno;
    SQLPaf.Params.ParamByName('bens_consumo').AsString := bens_consumo;
    SQLPaf.Params.ParamByName('cst_pis').AsString := cst_pis;
    SQLPaf.Params.ParamByName('cst_cofins').AsString := cst_cofins;
    //
    try
      SQLPaf.ExecSQL;
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    FreeAndNil(SQLPaf);
  end;

end;

function TDmProdutos.VerificaFechamentoAnterior(fMes, fAno: String): Boolean;
begin
  if not VerificaFechamentoInicial then
  begin
    MessageDlg('� necess�rio efetuar a grava��o do fechamento inicial!!!', mtWarning, [mbOK], 0);
    Result := False;
    Abort;
  end
  else
  begin
    try
      DmAuxiliar.QryAux.Close;
      DmAuxiliar.QryAux.SQL.Clear;
      DmAuxiliar.QryAux.SQL.Add('select * from fechamento_est');
      DmAuxiliar.QryAux.SQL.Add('where fechamento_est.mes = ' + QuotedStr(fMes));
      DmAuxiliar.QryAux.SQL.Add('and fechamento_est.ano = ' + QuotedStr(fAno));
      DmAuxiliar.QryAux.SQL.Add('and fechamento_est.idempresa = ' + QuotedStr(IntToStr(sIDEmpresa)));
      DmAuxiliar.QryAux.Open;
      Result := true;
      if DmAuxiliar.QryAux.IsEmpty then
        Result := False;
    finally
      DmAuxiliar.QryAux.Close;
    end;
  end;

end;

function TDmProdutos.VerificaFechamentoInicial: Boolean;
begin
  try
    DmAuxiliar.QryAux.Close;
    DmAuxiliar.QryAux.SQL.Clear;
    DmAuxiliar.QryAux.SQL.Add('select * from fechamento_est');
    DmAuxiliar.QryAux.SQL.Add('where fechamento_est.idempresa = :pIDempresa');
    DmAuxiliar.QryAux.Params.ParamByName('pIDempresa').AsInteger := sIDEmpresa;
    DmAuxiliar.QryAux.Open;
    Result := true;
    if DmAuxiliar.QryAux.IsEmpty then
      Result := False;
  finally
    DmAuxiliar.QryAux.Close;
  end;

end;

procedure TDmProdutos.ProcessaImportacaoProdutosSISCOM;
var
  SQLRet: TFDQuery;
  aBensConsumo: String;
  aIDProduto, aCodGrupo, aCodSubGrupo: Integer;
begin
  { if not DmConexao.ConectaBancoSISCOM then
    begin
    MessageDlg('N�o foi poss�vel estabelecer uma conex�o com o Banco de dados V15. Verifique!!!',mtWarning,[mbOK],0);
    Exit;
    end;
    //
    try
    Application.ProcessMessages;
    //
    SQLRet := TFDQuery.Create(Application);
    with SQLRet do
    begin
    SQLConnection := DmConexao.ConexaoSISCOM;
    Close;
    SQL.Clear;
    SQL.Add('select p.codigo, p.produto, p.unidade,');
    SQL.Add('       p.codbarra, p.qtde_embalagem, p.comissao,');
    SQL.Add('       p.precovenda, p.precocusto, e.estoque_atual,');
    SQL.Add('       p.codgrupo, p.codsubgrupo, p.margem_minima,');
    SQL.Add('       p.referencia, p.ncm, p.iat, p.ippt,');
    SQL.Add('       p.cst,p.aliquota,p.csosn,p.codaliquota,');
    SQL.Add('       p.margem_agregada');
    SQL.Add('from c000025 p');
    SQL.Add('left outer join c000100 e on (p.codigo = e.codproduto and e.codfilial = :pfilial)');
    Params.ParamByName('pfilial').AsString := IntToStrZero(sIDEmpresa,6);
    Open;
    while not Eof do
    begin
    aIDProduto := GenID('PRODUTOS');
    if not FieldByName('codgrupo').IsNull then
    aCodGrupo := FieldByName('codgrupo').AsInteger
    else
    aCodGrupo := 1;
    if not FieldByName('codsubgrupo').IsNull then
    aCodSubGrupo := FieldByName('codsubgrupo').AsInteger
    else
    aCodSubGrupo := 1;
    //
    aBensConsumo := 'N';
    InsereRegistroProduto(aIDProduto,
    acodgrupo, // grupo,
    acodsubgrupo, //  subgrupo :Integer;
    FieldByName('produto').AsString, // descricao,
    FieldByName('referencia').AsString, // referencia,
    FieldByName('codbarra').AsString, // ean13,
    FieldByName('unidade').AsString, // unidade,
    FieldByName('ncm').AsString, // codigo_ncm,
    FieldByName('ippt').AsString, // ippt,
    FieldByName('iat').AsString, // iat,
    FieldByName('cst').AsString, // cst_interno,
    FieldByName('codaliquota').AsString, // cfop_interno,
    aBensConsumo, // bens_consumo,
    '49', // cst_pis,
    '49', // cst_cofins
    FieldByName('qtde_embalagem').AsFloat, // quant_caixa,
    FieldByName('aliquota').AsFloat, // aliquota_icms,
    0, // aliquota_ipi,
    FieldByName('estoque_atual').AsFloat, // estoque,
    FieldByName('precocusto').AsFloat, // preco_compra,
    FieldByName('precovenda').AsFloat, // preco_venda,
    FieldByName('comissao').AsFloat, // perc_com,
    FieldByName('margem_minima').AsFloat, // margem_lucro,
    FieldByName('margem_agregada').AsFloat, // mva,
    1.65, // aliquota_pis,
    7.60); // aliquota_cofins
    // gerar o estoque
    GeraEstoqueProduto(aIDProduto,sIDEmpresa,FieldByName('estoque_atual').AsFloat);
    Next;
    end;
    end;
    finally
    FreeAndNil(SQLRet);
    Application.ProcessMessages;
    end; }

end;

end.
