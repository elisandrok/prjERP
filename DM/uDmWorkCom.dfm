object DmWorkCom: TDmWorkCom
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 532
  Width = 1023
  object QryPedidos: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from pedido'
      'where pedido.id = :pID')
    Left = 184
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPedidosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidosPEDIDO_NUM: TStringField
      FieldName = 'PEDIDO_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosHORA_PEDIDO: TTimeField
      FieldName = 'HORA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosHORA_ENTREGA: TTimeField
      FieldName = 'HORA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryPedidosNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosCOMPL_END_ENTREGA: TStringField
      FieldName = 'COMPL_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosUF_END_ENTREGA: TStringField
      FieldName = 'UF_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryPedidosCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPedidosTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_REAL: TFloatField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosMARGEM_VENDA: TFloatField
      FieldName = 'MARGEM_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosDAV: TStringField
      FieldName = 'DAV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QryPedidosCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object QryPedidosINSCEST: TStringField
      FieldName = 'INSCEST'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object QryPedidosVALOR_TROCO: TFloatField
      FieldName = 'VALOR_TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryPedidosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNATOP: TStringField
      FieldName = 'NATOP'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryPedidosALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object QryPedidosNUMPV: TStringField
      FieldName = 'NUMPV'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosCER: TIntegerField
      FieldName = 'CER'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosABASTECIMENTO: TStringField
      FieldName = 'ABASTECIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosSTATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryPedidosPLACA_VEIC: TStringField
      FieldName = 'PLACA_VEIC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object QryPedidosODOMETRO: TStringField
      FieldName = 'ODOMETRO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPedidosSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object QryPedidosPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPedidosRECIBO_NFE: TStringField
      FieldName = 'RECIBO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPedidosDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosIDUSUARIOCANC: TIntegerField
      FieldName = 'IDUSUARIOCANC'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_CARGA_TRIB: TFloatField
      FieldName = 'VALOR_CARGA_TRIB'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNUMDAV: TStringField
      FieldName = 'NUMDAV'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosTIPO_FRETE: TIntegerField
      FieldName = 'TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBASE_ISS: TFloatField
      FieldName = 'BASE_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosIDCENTROCUSTO: TIntegerField
      FieldName = 'IDCENTROCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNFE_TIPOEMISS: TIntegerField
      FieldName = 'NFE_TIPOEMISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNAUTORIZA_VIDALINK: TStringField
      FieldName = 'NAUTORIZA_VIDALINK'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosARQUIVO_XML: TStringField
      FieldName = 'ARQUIVO_XML'
      ProviderFlags = [pfInUpdate]
      Size = 512
    end
    object QryPedidosVAL_CARGA_FED: TFloatField
      FieldName = 'VAL_CARGA_FED'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVAL_CARGA_EST: TFloatField
      FieldName = 'VAL_CARGA_EST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVAL_CARGA_MUN: TFloatField
      FieldName = 'VAL_CARGA_MUN'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNOTAMANUAL: TStringField
      FieldName = 'NOTAMANUAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosCOO_CONF_MESA: TIntegerField
      FieldName = 'COO_CONF_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object QryPedidosDATA_AUTORIZA: TDateField
      FieldName = 'DATA_AUTORIZA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosHORA_AUTORIZA: TTimeField
      FieldName = 'HORA_AUTORIZA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosOBSNFE_1: TStringField
      FieldName = 'OBSNFE_1'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object QryPedidosOBSNFE_2: TStringField
      FieldName = 'OBSNFE_2'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object QryPedidosOBSNFE_3: TStringField
      FieldName = 'OBSNFE_3'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object QryPedidosOBSNFE_4: TStringField
      FieldName = 'OBSNFE_4'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object QryPedidosCODIGOSEFAZ: TIntegerField
      FieldName = 'CODIGOSEFAZ'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosNUMEROSESSAO: TIntegerField
      FieldName = 'NUMEROSESSAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryPedidoItens: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select pedido_itens.*,pedido.coo,pedido.ccf'
      'from pedido_itens'
      'inner join pedido on pedido.id = pedido_itens.idpedido'
      'where pedido_itens.idpedido = :pID')
    Left = 272
    Top = 16
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPedidoItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidoItensIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPedidoItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_REAL: TFloatField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensEAN13: TStringField
      FieldName = 'EAN13'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object QryPedidoItensCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryPedidoItensCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryPedidoItensALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensREDUCAO_BASE: TFloatField
      FieldName = 'REDUCAO_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object QryPedidoItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensEI: TFloatField
      FieldName = 'EI'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensEF: TFloatField
      FieldName = 'EF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensMVA: TFloatField
      FieldName = 'MVA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryPedidoItensID_ABASTECIMENTO: TIntegerField
      FieldName = 'ID_ABASTECIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryPedidoItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryPedidoItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryPedidoItensALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensBASE_ISS: TFloatField
      FieldName = 'BASE_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object QryPedidoItensVALOR_REENBOLSO: TFloatField
      FieldName = 'VALOR_REENBOLSO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensVALOR_SUBSIDIO: TFloatField
      FieldName = 'VALOR_SUBSIDIO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCOO_1: TIntegerField
      FieldName = 'COO_1'
    end
    object QryPedidoItensCCF_1: TIntegerField
      FieldName = 'CCF_1'
    end
    object QryPedidoItensID_BICO_PERDA: TIntegerField
      FieldName = 'ID_BICO_PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensID_COR: TIntegerField
      FieldName = 'ID_COR'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object QryAgenda: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from agenda'
      'where agenda.data between :pDatai and :pDataf')
    Left = 888
    Top = 16
    ParamData = <
      item
        Name = 'pDatai'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pDataf'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QryAgendaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAgendaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryAgendaHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryAgendaCOMPROMISSO: TStringField
      FieldName = 'COMPROMISSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryAgendaDETALHE: TStringField
      FieldName = 'DETALHE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryAgendaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object QryAgendaEXECUTOR: TStringField
      FieldName = 'EXECUTOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryAgendaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object QryAgendaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryConsulta: TFDQuery
    Connection = DmConexao.Conexao
    Left = 664
    Top = 328
  end
  object DspConsulta: TDataSetProvider
    DataSet = QryConsulta
    Left = 664
    Top = 352
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 664
    Top = 368
  end
  object DspPedidos: TDataSetProvider
    DataSet = QryPedidos
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPedidosGetTableName
    Left = 184
    Top = 40
  end
  object DspPedidoItens: TDataSetProvider
    DataSet = QryPedidoItens
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPedidoItensGetTableName
    Left = 272
    Top = 40
  end
  object DspAgenda: TDataSetProvider
    DataSet = QryAgenda
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspAgendaGetTableName
    Left = 888
    Top = 40
  end
  object CdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidos'
    BeforePost = CdsPedidosBeforePost
    OnNewRecord = CdsPedidosNewRecord
    Left = 184
    Top = 56
    object CdsPedidosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidosPEDIDO_NUM: TStringField
      FieldName = 'PEDIDO_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosHORA_PEDIDO: TTimeField
      FieldName = 'HORA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosHORA_ENTREGA: TTimeField
      FieldName = 'HORA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPedidosNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosCOMPL_END_ENTREGA: TStringField
      FieldName = 'COMPL_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosUF_END_ENTREGA: TStringField
      FieldName = 'UF_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsPedidosCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPedidosTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_REAL: TFloatField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosMARGEM_VENDA: TFloatField
      FieldName = 'MARGEM_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosDAV: TStringField
      FieldName = 'DAV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsPedidosINSCEST: TStringField
      FieldName = 'INSCEST'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsPedidosVALOR_TROCO: TFloatField
      FieldName = 'VALOR_TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNATOP: TStringField
      FieldName = 'NATOP'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsPedidosALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsPedidosNUMPV: TStringField
      FieldName = 'NUMPV'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosCER: TIntegerField
      FieldName = 'CER'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosABASTECIMENTO: TStringField
      FieldName = 'ABASTECIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosSTATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPedidosPLACA_VEIC: TStringField
      FieldName = 'PLACA_VEIC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPedidosODOMETRO: TStringField
      FieldName = 'ODOMETRO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsPedidosPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosRECIBO_NFE: TStringField
      FieldName = 'RECIBO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosIDUSUARIOCANC: TIntegerField
      FieldName = 'IDUSUARIOCANC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_CARGA_TRIB: TFloatField
      FieldName = 'VALOR_CARGA_TRIB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNUMDAV: TStringField
      FieldName = 'NUMDAV'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosTIPO_FRETE: TIntegerField
      FieldName = 'TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBASE_ISS: TFloatField
      FieldName = 'BASE_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosIDCENTROCUSTO: TIntegerField
      FieldName = 'IDCENTROCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNFE_TIPOEMISS: TIntegerField
      FieldName = 'NFE_TIPOEMISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNAUTORIZA_VIDALINK: TStringField
      FieldName = 'NAUTORIZA_VIDALINK'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosARQUIVO_XML: TStringField
      FieldName = 'ARQUIVO_XML'
      ProviderFlags = [pfInUpdate]
      Size = 512
    end
    object CdsPedidosVAL_CARGA_FED: TFloatField
      FieldName = 'VAL_CARGA_FED'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVAL_CARGA_EST: TFloatField
      FieldName = 'VAL_CARGA_EST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVAL_CARGA_MUN: TFloatField
      FieldName = 'VAL_CARGA_MUN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNOTAMANUAL: TStringField
      FieldName = 'NOTAMANUAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosCOO_CONF_MESA: TIntegerField
      FieldName = 'COO_CONF_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsPedidosDATA_AUTORIZA: TDateField
      FieldName = 'DATA_AUTORIZA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosHORA_AUTORIZA: TTimeField
      FieldName = 'HORA_AUTORIZA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosOBSNFE_1: TStringField
      FieldName = 'OBSNFE_1'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsPedidosOBSNFE_2: TStringField
      FieldName = 'OBSNFE_2'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsPedidosOBSNFE_3: TStringField
      FieldName = 'OBSNFE_3'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsPedidosOBSNFE_4: TStringField
      FieldName = 'OBSNFE_4'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsPedidosCODIGOSEFAZ: TIntegerField
      FieldName = 'CODIGOSEFAZ'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosNUMEROSESSAO: TIntegerField
      FieldName = 'NUMEROSESSAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsPedidoItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidoItens'
    BeforePost = CdsPedidoItensBeforePost
    OnNewRecord = CdsPedidoItensNewRecord
    Left = 272
    Top = 56
    object CdsPedidoItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidoItensIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPedidoItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_REAL: TFloatField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensEAN13: TStringField
      FieldName = 'EAN13'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsPedidoItensCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidoItensCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPedidoItensALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensREDUCAO_BASE: TFloatField
      FieldName = 'REDUCAO_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsPedidoItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensEI: TFloatField
      FieldName = 'EI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensEF: TFloatField
      FieldName = 'EF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensMVA: TFloatField
      FieldName = 'MVA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPedidoItensID_ABASTECIMENTO: TIntegerField
      FieldName = 'ID_ABASTECIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsPedidoItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsPedidoItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsPedidoItensALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensBASE_ISS: TFloatField
      FieldName = 'BASE_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsPedidoItensVALOR_REENBOLSO: TFloatField
      FieldName = 'VALOR_REENBOLSO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensVALOR_SUBSIDIO: TFloatField
      FieldName = 'VALOR_SUBSIDIO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCOO_1: TIntegerField
      FieldName = 'COO_1'
    end
    object CdsPedidoItensCCF_1: TIntegerField
      FieldName = 'CCF_1'
    end
    object CdsPedidoItensID_BICO_PERDA: TIntegerField
      FieldName = 'ID_BICO_PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensID_COR: TIntegerField
      FieldName = 'ID_COR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end>
    ProviderName = 'DspAgenda'
    OnNewRecord = CdsAgendaNewRecord
    Left = 888
    Top = 56
    object CdsAgendaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAgendaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAgendaHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAgendaCOMPROMISSO: TStringField
      FieldName = 'COMPROMISSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsAgendaDETALHE: TStringField
      FieldName = 'DETALHE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsAgendaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAgendaEXECUTOR: TStringField
      FieldName = 'EXECUTOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAgendaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsAgendaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryPedidoClass: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from classificacao'
      'where classificacao.tipo_movimento = :pTipo'
      'order by classificacao.descricao')
    Left = 360
    Top = 16
    ParamData = <
      item
        Name = 'pTipo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPedidoClassID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidoClassDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPedidoClassTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoClassTIPO_MOVIMENTO: TIntegerField
      FieldName = 'TIPO_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoClassBAIXAR_ESTOQUE: TStringField
      FieldName = 'BAIXAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoClassGERAR_MOVIMENTO: TStringField
      FieldName = 'GERAR_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoClassMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QryPedidoClassSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoClassDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoClassNATOP: TStringField
      FieldName = 'NATOP'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryPedidoClassAPROPRIAR_ICMS_AP: TStringField
      FieldName = 'APROPRIAR_ICMS_AP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoClassCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object QryPedidoClassEXIBE_LISTA: TStringField
      FieldName = 'EXIBE_LISTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object DspPedidoClass: TDataSetProvider
    DataSet = QryPedidoClass
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPedidoClassGetTableName
    Left = 360
    Top = 40
  end
  object CdsPedidoClass: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTipo'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidoClass'
    OnNewRecord = CdsPedidoClassNewRecord
    Left = 360
    Top = 56
    object CdsPedidoClassID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidoClassDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPedidoClassTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoClassTIPO_MOVIMENTO: TIntegerField
      FieldName = 'TIPO_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoClassBAIXAR_ESTOQUE: TStringField
      FieldName = 'BAIXAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoClassGERAR_MOVIMENTO: TStringField
      FieldName = 'GERAR_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoClassMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPedidoClassSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoClassDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoClassNATOP: TStringField
      FieldName = 'NATOP'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsPedidoClassAPROPRIAR_ICMS_AP: TStringField
      FieldName = 'APROPRIAR_ICMS_AP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoClassCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsPedidoClassEXIBE_LISTA: TStringField
      FieldName = 'EXIBE_LISTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryFormaPag: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from forma_pagto'
      'order by forma_pagto.descricao')
    Left = 704
    Top = 16
    object QryFormaPagID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFormaPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryFormaPagTIPO_PAGTO: TIntegerField
      FieldName = 'TIPO_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryFormaPagTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryFormaPagGERAR_CONTA: TStringField
      FieldName = 'GERAR_CONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryFormaPagMOVIMENO_CAIXA: TStringField
      FieldName = 'MOVIMENO_CAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryFormaPagATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryFormaPagFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object QryFormaPagQUANT_PAGTOS: TIntegerField
      FieldName = 'QUANT_PAGTOS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspFormaPag: TDataSetProvider
    DataSet = QryFormaPag
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspFormaPagGetTableName
    Left = 704
    Top = 40
  end
  object CdsFormaPag: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFormaPag'
    OnNewRecord = CdsFormaPagNewRecord
    Left = 704
    Top = 56
    object CdsFormaPagID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsFormaPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsFormaPagTIPO_PAGTO: TIntegerField
      FieldName = 'TIPO_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsFormaPagTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsFormaPagGERAR_CONTA: TStringField
      FieldName = 'GERAR_CONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsFormaPagMOVIMENO_CAIXA: TStringField
      FieldName = 'MOVIMENO_CAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsFormaPagATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsFormaPagFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object CdsFormaPagQUANT_PAGTOS: TIntegerField
      FieldName = 'QUANT_PAGTOS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryContas: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from contas'
      'where contas.id = :pID')
    Left = 624
    Top = 16
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryContasIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryContasDATA_LANC: TDateField
      FieldName = 'DATA_LANC'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContasSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasDATA_QUIT: TTimeField
      FieldName = 'DATA_QUIT'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasVALOR_CONTA: TFloatField
      FieldName = 'VALOR_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasVALOR_QUITATO: TFloatField
      FieldName = 'VALOR_QUITATO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContasDOC_CONTATO: TStringField
      FieldName = 'DOC_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasIDOS: TIntegerField
      FieldName = 'IDOS'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryContasIDCTAVINCULADA: TIntegerField
      FieldName = 'IDCTAVINCULADA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspContas: TDataSetProvider
    DataSet = QryContas
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspContasGetTableName
    Left = 624
    Top = 40
  end
  object CdsContas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspContas'
    BeforePost = CdsContasBeforePost
    OnNewRecord = CdsContasNewRecord
    AfterApplyUpdates = CdsContasAfterApplyUpdates
    Left = 624
    Top = 56
    object CdsContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsContasIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsContasDATA_LANC: TDateField
      FieldName = 'DATA_LANC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContasSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasDATA_QUIT: TTimeField
      FieldName = 'DATA_QUIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasVALOR_CONTA: TFloatField
      FieldName = 'VALOR_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasVALOR_QUITATO: TFloatField
      FieldName = 'VALOR_QUITATO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContasDOC_CONTATO: TStringField
      FieldName = 'DOC_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasIDOS: TIntegerField
      FieldName = 'IDOS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsContasIDCTAVINCULADA: TIntegerField
      FieldName = 'IDCTAVINCULADA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryCheque: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from cheques'
      'where cheques.id = :pID')
    Left = 496
    Top = 120
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryChequeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryChequeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryChequeNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryChequeNUM_CONTA: TStringField
      FieldName = 'NUM_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryChequeEMITENTE: TStringField
      FieldName = 'EMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryChequeCNPJ_CPF_EMITENTE: TStringField
      FieldName = 'CNPJ_CPF_EMITENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeBOM_PARA: TSQLTimeStampField
      FieldName = 'BOM_PARA'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeDATA_CAD: TSQLTimeStampField
      FieldName = 'DATA_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object QryChequeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DspCheques: TDataSetProvider
    DataSet = QryCheque
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspChequesGetTableName
    Left = 496
    Top = 136
  end
  object CdsCheques: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspCheques'
    OnNewRecord = CdsChequesNewRecord
    Left = 496
    Top = 160
    object CdsChequesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsChequesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsChequesNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsChequesNUM_CONTA: TStringField
      FieldName = 'NUM_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsChequesAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsChequesEMITENTE: TStringField
      FieldName = 'EMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsChequesCNPJ_CPF_EMITENTE: TStringField
      FieldName = 'CNPJ_CPF_EMITENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesBOM_PARA: TSQLTimeStampField
      FieldName = 'BOM_PARA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesDATA_CAD: TSQLTimeStampField
      FieldName = 'DATA_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object QryConfig: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from config'
      'where config.id_empresa = :pID')
    Left = 192
    Top = 120
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryConfigID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConfigTIPO_EMPRESA: TIntegerField
      FieldName = 'TIPO_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigTIPO_BUSCA_CLIENTE: TIntegerField
      FieldName = 'TIPO_BUSCA_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigCONF_LANC_CAIXA: TStringField
      FieldName = 'CONF_LANC_CAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigTIPODOC_PADRAO: TIntegerField
      FieldName = 'TIPODOC_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigEXIBIR: TIntegerField
      FieldName = 'EXIBIR'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigCADASTRAR_CHEQUES: TStringField
      FieldName = 'CADASTRAR_CHEQUES'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigPATHLOGOMARCA: TStringField
      FieldName = 'PATHLOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QryConfigTELAVENDAPADRAO: TIntegerField
      FieldName = 'TELAVENDAPADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigCLIENTE_PADRAO: TIntegerField
      FieldName = 'CLIENTE_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigVENDEDOR_PADRAO: TIntegerField
      FieldName = 'VENDEDOR_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigCLASSIFICA_PADRAO: TIntegerField
      FieldName = 'CLASSIFICA_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigFORMAPAG_PADRAO: TIntegerField
      FieldName = 'FORMAPAG_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigINDICE_TIJOLO: TFloatField
      FieldName = 'INDICE_TIJOLO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigINDICE_ISOPOR: TFloatField
      FieldName = 'INDICE_ISOPOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigGRUPO_PADRAO: TIntegerField
      FieldName = 'GRUPO_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigTIPO_COMISSAO: TIntegerField
      FieldName = 'TIPO_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigINDICE_OUTROS: TFloatField
      FieldName = 'INDICE_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigTIPO_CALC_PERC: TIntegerField
      FieldName = 'TIPO_CALC_PERC'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigESTOQUE_NEGATICO: TStringField
      FieldName = 'ESTOQUE_NEGATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigPERMITIRVALORNEGATIVO: TStringField
      FieldName = 'PERMITIRVALORNEGATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigNUMPED_SEQ: TStringField
      FieldName = 'NUMPED_SEQ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_SEG: TStringField
      FieldName = 'COMISSAO_INTEGRAL_SEG'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_TER: TStringField
      FieldName = 'COMISSAO_INTEGRAL_TER'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_QUA: TStringField
      FieldName = 'COMISSAO_INTEGRAL_QUA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_QUI: TStringField
      FieldName = 'COMISSAO_INTEGRAL_QUI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_SEX: TStringField
      FieldName = 'COMISSAO_INTEGRAL_SEX'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_SAB: TStringField
      FieldName = 'COMISSAO_INTEGRAL_SAB'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigCOMISSAO_INTEGRAL_DOM: TStringField
      FieldName = 'COMISSAO_INTEGRAL_DOM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigCONTROLAR_ESTCOMP: TStringField
      FieldName = 'CONTROLAR_ESTCOMP'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigVERSAO_LAYOUT: TStringField
      FieldName = 'VERSAO_LAYOUT'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryConfigPERFIL_APRESENTA: TStringField
      FieldName = 'PERFIL_APRESENTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QryConfigINDICADOR_ATV: TIntegerField
      FieldName = 'INDICADOR_ATV'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object QryConfigDIAS_AGENDA: TIntegerField
      FieldName = 'DIAS_AGENDA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigMODELO_PEDIDO: TIntegerField
      FieldName = 'MODELO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigPED_EDITAR_CLI: TStringField
      FieldName = 'PED_EDITAR_CLI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryConfigEXIBE_IMPOSTO: TStringField
      FieldName = 'EXIBE_IMPOSTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigIMPOSTO_MENSAGEM: TStringField
      FieldName = 'IMPOSTO_MENSAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigCOD_RECEITA: TStringField
      FieldName = 'COD_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryConfigNFE_FORMA_EMISS: TIntegerField
      FieldName = 'NFE_FORMA_EMISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigNFE_PATH_LOGOMARCA: TStringField
      FieldName = 'NFE_PATH_LOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object QryConfigNFE_SALVAR_ARQ: TStringField
      FieldName = 'NFE_SALVAR_ARQ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigNFE_PATH_CERTF: TStringField
      FieldName = 'NFE_PATH_CERTF'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object QryConfigNFE_SERIE_CERTF: TStringField
      FieldName = 'NFE_SERIE_CERTF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryConfigNFE_SENHA_CERTF: TStringField
      FieldName = 'NFE_SENHA_CERTF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryConfigNFE_WS_UF: TStringField
      FieldName = 'NFE_WS_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryConfigNFE_WS_AMBIENTE: TIntegerField
      FieldName = 'NFE_WS_AMBIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigNFE_WS_HOST: TStringField
      FieldName = 'NFE_WS_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryConfigNFE_WS_PORTA: TStringField
      FieldName = 'NFE_WS_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigNFE_WS_USUARIO: TStringField
      FieldName = 'NFE_WS_USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigNFE_WS_SENHA: TStringField
      FieldName = 'NFE_WS_SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigNFE_WS_VISUALIZAR: TStringField
      FieldName = 'NFE_WS_VISUALIZAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigNFE_EMAIL_HOST: TStringField
      FieldName = 'NFE_EMAIL_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryConfigNFE_EMAIL_PORTA: TStringField
      FieldName = 'NFE_EMAIL_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigNFE_EMAIL_USUARIO: TStringField
      FieldName = 'NFE_EMAIL_USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigNFE_EMAIL_SENHA: TStringField
      FieldName = 'NFE_EMAIL_SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigNFE_PATH_ARQUIVO: TStringField
      FieldName = 'NFE_PATH_ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object QryConfigNFE_VERSAODF: TIntegerField
      FieldName = 'NFE_VERSAODF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryConfigNFE_TOKEN: TStringField
      FieldName = 'NFE_TOKEN'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryConfigNFE_DANFE_PREVIEW: TStringField
      FieldName = 'NFE_DANFE_PREVIEW'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSCPATH_DB: TStringField
      FieldName = 'SCPATH_DB'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryConfigSCUSUARIO: TStringField
      FieldName = 'SCUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSCPASSWORD: TStringField
      FieldName = 'SCPASSWORD'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSCIP_SRV: TStringField
      FieldName = 'SCIP_SRV'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigSCPATH_REL: TStringField
      FieldName = 'SCPATH_REL'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryConfigSCPORTA: TStringField
      FieldName = 'SCPORTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryConfigSCVERSAO_FB: TStringField
      FieldName = 'SCVERSAO_FB'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigSCPATH_SCRIBES: TStringField
      FieldName = 'SCPATH_SCRIBES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryConfigGERENCIAL_NFCE: TStringField
      FieldName = 'GERENCIAL_NFCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigBLQ_ATV: TIntegerField
      FieldName = 'BLQ_ATV'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryConfigNFE_IDTOKEN: TStringField
      FieldName = 'NFE_IDTOKEN'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryConfigNFE_WS_UF_AUX: TStringField
      FieldName = 'NFE_WS_UF_AUX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryConfigNFE_USAR_AUX_NFCE: TStringField
      FieldName = 'NFE_USAR_AUX_NFCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigCLASSIFICA_NFCE: TIntegerField
      FieldName = 'CLASSIFICA_NFCE'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigABRE_POSTO_AUTO: TStringField
      FieldName = 'ABRE_POSTO_AUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigPATH_ARQ_LOG_SAT: TStringField
      FieldName = 'PATH_ARQ_LOG_SAT'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object QryConfigNOME_DLL_SAT: TStringField
      FieldName = 'NOME_DLL_SAT'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object QryConfigCOD_ATV_SAT: TStringField
      FieldName = 'COD_ATV_SAT'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigCOD_UF_SAT: TStringField
      FieldName = 'COD_UF_SAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryConfigAMBIENTE_SAT: TIntegerField
      FieldName = 'AMBIENTE_SAT'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSALVAR_CFES: TStringField
      FieldName = 'SALVAR_CFES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSALVAR_CEF_CANC: TStringField
      FieldName = 'SALVAR_CEF_CANC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSALVAR_ENVIO_SAT: TStringField
      FieldName = 'SALVAR_ENVIO_SAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_UTF8: TStringField
      FieldName = 'SAT_UTF8'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_FORMAT_XML: TStringField
      FieldName = 'SAT_FORMAT_XML'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_PAG_CODIGO: TIntegerField
      FieldName = 'SAT_PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_VERSAO: TStringField
      FieldName = 'SAT_VERSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_SEPARAR_CNPJ: TStringField
      FieldName = 'SAT_SEPARAR_CNPJ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_SEPARAR_MES: TStringField
      FieldName = 'SAT_SEPARAR_MES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_TIPO_REDE: TIntegerField
      FieldName = 'SAT_TIPO_REDE'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_PROTOCOLO_REDE: TIntegerField
      FieldName = 'SAT_PROTOCOLO_REDE'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_WIFI_SSID: TStringField
      FieldName = 'SAT_WIFI_SSID'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_WIFI_SEG: TIntegerField
      FieldName = 'SAT_WIFI_SEG'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_WIFI_SENHA: TStringField
      FieldName = 'SAT_WIFI_SENHA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_PPPOE_USER: TStringField
      FieldName = 'SAT_PPPOE_USER'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_PPPOE_LOGIN: TStringField
      FieldName = 'SAT_PPPOE_LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_REDE_PROXY: TIntegerField
      FieldName = 'SAT_REDE_PROXY'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_REDE_IP: TStringField
      FieldName = 'SAT_REDE_IP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QryConfigSAT_REDE_PORTA: TIntegerField
      FieldName = 'SAT_REDE_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_REDE_USER: TStringField
      FieldName = 'SAT_REDE_USER'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_REDE_LOGIN: TStringField
      FieldName = 'SAT_REDE_LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMP_LARGURA: TIntegerField
      FieldName = 'SAT_IMP_LARGURA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMP_TOPO: TIntegerField
      FieldName = 'SAT_IMP_TOPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMP_FUNDO: TIntegerField
      FieldName = 'SAT_IMP_FUNDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMP_ESQUERDA: TIntegerField
      FieldName = 'SAT_IMP_ESQUERDA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMP_DIREITA: TIntegerField
      FieldName = 'SAT_IMP_DIREITA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMP_PREVIEW: TStringField
      FieldName = 'SAT_IMP_PREVIEW'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_IMP_NOME: TStringField
      FieldName = 'SAT_IMP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryConfigIPFIX_IP: TStringField
      FieldName = 'IPFIX_IP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QryConfigIPFIX_MASK: TStringField
      FieldName = 'IPFIX_MASK'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigIPFIX_GATEWAY: TStringField
      FieldName = 'IPFIX_GATEWAY'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigIPFIX_DNS1: TStringField
      FieldName = 'IPFIX_DNS1'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigIPFIX_DNS2: TStringField
      FieldName = 'IPFIX_DNS2'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_MODELO: TIntegerField
      FieldName = 'SAT_MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_IMPRESSORA: TIntegerField
      FieldName = 'SAT_IMPRESSORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_POS_MODELO: TIntegerField
      FieldName = 'SAT_POS_MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_POS_PAGCODIGO: TIntegerField
      FieldName = 'SAT_POS_PAGCODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_POS_PORTA: TStringField
      FieldName = 'SAT_POS_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_POS_COLUNAS: TIntegerField
      FieldName = 'SAT_POS_COLUNAS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_POS_LINHAS: TIntegerField
      FieldName = 'SAT_POS_LINHAS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_POS_ESPACO: TIntegerField
      FieldName = 'SAT_POS_ESPACO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_QRCODE: TStringField
      FieldName = 'SAT_QRCODE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigSAT_IMPUMALINHA: TStringField
      FieldName = 'SAT_IMPUMALINHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigVERIFICA_GTIN: TStringField
      FieldName = 'VERIFICA_GTIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigGERAR_GTIN: TStringField
      FieldName = 'GERAR_GTIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigIMPRESSORA: TStringField
      FieldName = 'IMPRESSORA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigPREVIEW_NFE: TStringField
      FieldName = 'PREVIEW_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigEXIBIR_MSG_WS: TStringField
      FieldName = 'EXIBIR_MSG_WS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigSAT_EXT_RESUMIDO: TStringField
      FieldName = 'SAT_EXT_RESUMIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigGRADE_PRODUTOS: TStringField
      FieldName = 'GRADE_PRODUTOS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigCLONAR_PRODUTO: TStringField
      FieldName = 'CLONAR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigID_CLASS_COMPRA: TIntegerField
      FieldName = 'ID_CLASS_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigID_FP_COMPRA: TIntegerField
      FieldName = 'ID_FP_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigNFSE_SENHA: TStringField
      FieldName = 'NFSE_SENHA'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigNFSE_FRASE: TStringField
      FieldName = 'NFSE_FRASE'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
  end
  object DspConfig: TDataSetProvider
    DataSet = QryConfig
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspConfigGetTableName
    Left = 192
    Top = 144
  end
  object CdsConfig: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspConfig'
    OnNewRecord = CdsConfigNewRecord
    Left = 192
    Top = 160
    object CdsConfigID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsConfigTIPO_EMPRESA: TIntegerField
      FieldName = 'TIPO_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigTIPO_BUSCA_CLIENTE: TIntegerField
      FieldName = 'TIPO_BUSCA_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigCONF_LANC_CAIXA: TStringField
      FieldName = 'CONF_LANC_CAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigTIPODOC_PADRAO: TIntegerField
      FieldName = 'TIPODOC_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigEXIBIR: TIntegerField
      FieldName = 'EXIBIR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigCADASTRAR_CHEQUES: TStringField
      FieldName = 'CADASTRAR_CHEQUES'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigPATHLOGOMARCA: TStringField
      FieldName = 'PATHLOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsConfigTELAVENDAPADRAO: TIntegerField
      FieldName = 'TELAVENDAPADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigCLIENTE_PADRAO: TIntegerField
      FieldName = 'CLIENTE_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigVENDEDOR_PADRAO: TIntegerField
      FieldName = 'VENDEDOR_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigCLASSIFICA_PADRAO: TIntegerField
      FieldName = 'CLASSIFICA_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigFORMAPAG_PADRAO: TIntegerField
      FieldName = 'FORMAPAG_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigINDICE_TIJOLO: TFloatField
      FieldName = 'INDICE_TIJOLO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigINDICE_ISOPOR: TFloatField
      FieldName = 'INDICE_ISOPOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigGRUPO_PADRAO: TIntegerField
      FieldName = 'GRUPO_PADRAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigTIPO_COMISSAO: TIntegerField
      FieldName = 'TIPO_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigINDICE_OUTROS: TFloatField
      FieldName = 'INDICE_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigTIPO_CALC_PERC: TIntegerField
      FieldName = 'TIPO_CALC_PERC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigESTOQUE_NEGATICO: TStringField
      FieldName = 'ESTOQUE_NEGATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigPERMITIRVALORNEGATIVO: TStringField
      FieldName = 'PERMITIRVALORNEGATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigNUMPED_SEQ: TStringField
      FieldName = 'NUMPED_SEQ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_SEG: TStringField
      FieldName = 'COMISSAO_INTEGRAL_SEG'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_TER: TStringField
      FieldName = 'COMISSAO_INTEGRAL_TER'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_QUA: TStringField
      FieldName = 'COMISSAO_INTEGRAL_QUA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_QUI: TStringField
      FieldName = 'COMISSAO_INTEGRAL_QUI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_SEX: TStringField
      FieldName = 'COMISSAO_INTEGRAL_SEX'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_SAB: TStringField
      FieldName = 'COMISSAO_INTEGRAL_SAB'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOMISSAO_INTEGRAL_DOM: TStringField
      FieldName = 'COMISSAO_INTEGRAL_DOM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigCONTROLAR_ESTCOMP: TStringField
      FieldName = 'CONTROLAR_ESTCOMP'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigVERSAO_LAYOUT: TStringField
      FieldName = 'VERSAO_LAYOUT'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsConfigPERFIL_APRESENTA: TStringField
      FieldName = 'PERFIL_APRESENTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsConfigINDICADOR_ATV: TIntegerField
      FieldName = 'INDICADOR_ATV'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsConfigDIAS_AGENDA: TIntegerField
      FieldName = 'DIAS_AGENDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigMODELO_PEDIDO: TIntegerField
      FieldName = 'MODELO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigPED_EDITAR_CLI: TStringField
      FieldName = 'PED_EDITAR_CLI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsConfigEXIBE_IMPOSTO: TStringField
      FieldName = 'EXIBE_IMPOSTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigIMPOSTO_MENSAGEM: TStringField
      FieldName = 'IMPOSTO_MENSAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigCOD_RECEITA: TStringField
      FieldName = 'COD_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsConfigNFE_FORMA_EMISS: TIntegerField
      FieldName = 'NFE_FORMA_EMISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigNFE_PATH_LOGOMARCA: TStringField
      FieldName = 'NFE_PATH_LOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object CdsConfigNFE_SALVAR_ARQ: TStringField
      FieldName = 'NFE_SALVAR_ARQ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigNFE_PATH_CERTF: TStringField
      FieldName = 'NFE_PATH_CERTF'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object CdsConfigNFE_SERIE_CERTF: TStringField
      FieldName = 'NFE_SERIE_CERTF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsConfigNFE_SENHA_CERTF: TStringField
      FieldName = 'NFE_SENHA_CERTF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsConfigNFE_WS_UF: TStringField
      FieldName = 'NFE_WS_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsConfigNFE_WS_AMBIENTE: TIntegerField
      FieldName = 'NFE_WS_AMBIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigNFE_WS_HOST: TStringField
      FieldName = 'NFE_WS_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsConfigNFE_WS_PORTA: TStringField
      FieldName = 'NFE_WS_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigNFE_WS_USUARIO: TStringField
      FieldName = 'NFE_WS_USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigNFE_WS_SENHA: TStringField
      FieldName = 'NFE_WS_SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigNFE_WS_VISUALIZAR: TStringField
      FieldName = 'NFE_WS_VISUALIZAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigNFE_EMAIL_HOST: TStringField
      FieldName = 'NFE_EMAIL_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsConfigNFE_EMAIL_PORTA: TStringField
      FieldName = 'NFE_EMAIL_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigNFE_EMAIL_USUARIO: TStringField
      FieldName = 'NFE_EMAIL_USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigNFE_EMAIL_SENHA: TStringField
      FieldName = 'NFE_EMAIL_SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigNFE_PATH_ARQUIVO: TStringField
      FieldName = 'NFE_PATH_ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object CdsConfigNFE_VERSAODF: TIntegerField
      FieldName = 'NFE_VERSAODF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsConfigNFE_TOKEN: TStringField
      FieldName = 'NFE_TOKEN'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsConfigNFE_DANFE_PREVIEW: TStringField
      FieldName = 'NFE_DANFE_PREVIEW'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSCPATH_DB: TStringField
      FieldName = 'SCPATH_DB'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsConfigSCUSUARIO: TStringField
      FieldName = 'SCUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSCPASSWORD: TStringField
      FieldName = 'SCPASSWORD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSCIP_SRV: TStringField
      FieldName = 'SCIP_SRV'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigSCPATH_REL: TStringField
      FieldName = 'SCPATH_REL'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsConfigSCPORTA: TStringField
      FieldName = 'SCPORTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsConfigSCVERSAO_FB: TStringField
      FieldName = 'SCVERSAO_FB'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigSCPATH_SCRIBES: TStringField
      FieldName = 'SCPATH_SCRIBES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsConfigGERENCIAL_NFCE: TStringField
      FieldName = 'GERENCIAL_NFCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigBLQ_ATV: TIntegerField
      FieldName = 'BLQ_ATV'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsConfigNFE_IDTOKEN: TStringField
      FieldName = 'NFE_IDTOKEN'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsConfigNFE_WS_UF_AUX: TStringField
      FieldName = 'NFE_WS_UF_AUX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsConfigNFE_USAR_AUX_NFCE: TStringField
      FieldName = 'NFE_USAR_AUX_NFCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigCLASSIFICA_NFCE: TIntegerField
      FieldName = 'CLASSIFICA_NFCE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigABRE_POSTO_AUTO: TStringField
      FieldName = 'ABRE_POSTO_AUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigPATH_ARQ_LOG_SAT: TStringField
      FieldName = 'PATH_ARQ_LOG_SAT'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object CdsConfigNOME_DLL_SAT: TStringField
      FieldName = 'NOME_DLL_SAT'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object CdsConfigCOD_ATV_SAT: TStringField
      FieldName = 'COD_ATV_SAT'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigCOD_UF_SAT: TStringField
      FieldName = 'COD_UF_SAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsConfigAMBIENTE_SAT: TIntegerField
      FieldName = 'AMBIENTE_SAT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSALVAR_CFES: TStringField
      FieldName = 'SALVAR_CFES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSALVAR_CEF_CANC: TStringField
      FieldName = 'SALVAR_CEF_CANC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSALVAR_ENVIO_SAT: TStringField
      FieldName = 'SALVAR_ENVIO_SAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_UTF8: TStringField
      FieldName = 'SAT_UTF8'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_FORMAT_XML: TStringField
      FieldName = 'SAT_FORMAT_XML'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_PAG_CODIGO: TIntegerField
      FieldName = 'SAT_PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_VERSAO: TStringField
      FieldName = 'SAT_VERSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_SEPARAR_CNPJ: TStringField
      FieldName = 'SAT_SEPARAR_CNPJ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_SEPARAR_MES: TStringField
      FieldName = 'SAT_SEPARAR_MES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_TIPO_REDE: TIntegerField
      FieldName = 'SAT_TIPO_REDE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_PROTOCOLO_REDE: TIntegerField
      FieldName = 'SAT_PROTOCOLO_REDE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_WIFI_SSID: TStringField
      FieldName = 'SAT_WIFI_SSID'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_WIFI_SEG: TIntegerField
      FieldName = 'SAT_WIFI_SEG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_WIFI_SENHA: TStringField
      FieldName = 'SAT_WIFI_SENHA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_PPPOE_USER: TStringField
      FieldName = 'SAT_PPPOE_USER'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_PPPOE_LOGIN: TStringField
      FieldName = 'SAT_PPPOE_LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_REDE_PROXY: TIntegerField
      FieldName = 'SAT_REDE_PROXY'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_REDE_IP: TStringField
      FieldName = 'SAT_REDE_IP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsConfigSAT_REDE_PORTA: TIntegerField
      FieldName = 'SAT_REDE_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_REDE_USER: TStringField
      FieldName = 'SAT_REDE_USER'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_REDE_LOGIN: TStringField
      FieldName = 'SAT_REDE_LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMP_LARGURA: TIntegerField
      FieldName = 'SAT_IMP_LARGURA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMP_TOPO: TIntegerField
      FieldName = 'SAT_IMP_TOPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMP_FUNDO: TIntegerField
      FieldName = 'SAT_IMP_FUNDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMP_ESQUERDA: TIntegerField
      FieldName = 'SAT_IMP_ESQUERDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMP_DIREITA: TIntegerField
      FieldName = 'SAT_IMP_DIREITA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMP_PREVIEW: TStringField
      FieldName = 'SAT_IMP_PREVIEW'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_IMP_NOME: TStringField
      FieldName = 'SAT_IMP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsConfigIPFIX_IP: TStringField
      FieldName = 'IPFIX_IP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsConfigIPFIX_MASK: TStringField
      FieldName = 'IPFIX_MASK'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigIPFIX_GATEWAY: TStringField
      FieldName = 'IPFIX_GATEWAY'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigIPFIX_DNS1: TStringField
      FieldName = 'IPFIX_DNS1'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigIPFIX_DNS2: TStringField
      FieldName = 'IPFIX_DNS2'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_MODELO: TIntegerField
      FieldName = 'SAT_MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_IMPRESSORA: TIntegerField
      FieldName = 'SAT_IMPRESSORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_POS_MODELO: TIntegerField
      FieldName = 'SAT_POS_MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_POS_PAGCODIGO: TIntegerField
      FieldName = 'SAT_POS_PAGCODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_POS_PORTA: TStringField
      FieldName = 'SAT_POS_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_POS_COLUNAS: TIntegerField
      FieldName = 'SAT_POS_COLUNAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_POS_LINHAS: TIntegerField
      FieldName = 'SAT_POS_LINHAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_POS_ESPACO: TIntegerField
      FieldName = 'SAT_POS_ESPACO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_QRCODE: TStringField
      FieldName = 'SAT_QRCODE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigSAT_IMPUMALINHA: TStringField
      FieldName = 'SAT_IMPUMALINHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigVERIFICA_GTIN: TStringField
      FieldName = 'VERIFICA_GTIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigGERAR_GTIN: TStringField
      FieldName = 'GERAR_GTIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigIMPRESSORA: TStringField
      FieldName = 'IMPRESSORA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigPREVIEW_NFE: TStringField
      FieldName = 'PREVIEW_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigEXIBIR_MSG_WS: TStringField
      FieldName = 'EXIBIR_MSG_WS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigSAT_EXT_RESUMIDO: TStringField
      FieldName = 'SAT_EXT_RESUMIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigGRADE_PRODUTOS: TStringField
      FieldName = 'GRADE_PRODUTOS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigCLONAR_PRODUTO: TStringField
      FieldName = 'CLONAR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigID_CLASS_COMPRA: TIntegerField
      FieldName = 'ID_CLASS_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigID_FP_COMPRA: TIntegerField
      FieldName = 'ID_FP_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigNFSE_SENHA: TStringField
      FieldName = 'NFSE_SENHA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigNFSE_FRASE: TStringField
      FieldName = 'NFSE_FRASE'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
  end
  object QryContasAux: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from contas'
      'where contas.idpedido = :pID'
      'and contas.tipo = :pTipo')
    Left = 344
    Top = 328
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'pTipo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryContasAuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryContasAuxIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryContasAuxDATA_LANC: TDateField
      FieldName = 'DATA_LANC'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContasAuxSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxDATA_QUIT: TTimeField
      FieldName = 'DATA_QUIT'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxVALOR_CONTA: TFloatField
      FieldName = 'VALOR_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxVALOR_QUITATO: TFloatField
      FieldName = 'VALOR_QUITATO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContasAuxDOC_CONTATO: TStringField
      FieldName = 'DOC_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxIDOS: TIntegerField
      FieldName = 'IDOS'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasAuxIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryContasAuxIDCTAVINCULADA: TIntegerField
      FieldName = 'IDCTAVINCULADA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspContasAux: TDataSetProvider
    DataSet = QryContasAux
    OnGetTableName = DspContasAuxGetTableName
    Left = 344
    Top = 352
  end
  object CdsContasAux: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTipo'
        ParamType = ptInput
      end>
    ProviderName = 'DspContasAux'
    Left = 344
    Top = 376
    object CdsContasAuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsContasAuxIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsContasAuxDATA_LANC: TDateField
      FieldName = 'DATA_LANC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContasAuxSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxDATA_QUIT: TTimeField
      FieldName = 'DATA_QUIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxVALOR_CONTA: TFloatField
      FieldName = 'VALOR_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxVALOR_QUITATO: TFloatField
      FieldName = 'VALOR_QUITATO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContasAuxDOC_CONTATO: TStringField
      FieldName = 'DOC_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxIDOS: TIntegerField
      FieldName = 'IDOS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContasAuxIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsContasAuxIDCTAVINCULADA: TIntegerField
      FieldName = 'IDCTAVINCULADA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryCompras: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from compras'
      'where compras.id = :pID')
    Left = 288
    Top = 120
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryComprasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryComprasNOTA: TStringField
      FieldName = 'NOTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryComprasIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryComprasDATA_COMPRA: TSQLTimeStampField
      FieldName = 'DATA_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasHORA_COMPRA: TSQLTimeStampField
      FieldName = 'HORA_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryComprasVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryComprasID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryComprasTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryComprasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryComprasALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryComprasSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object QryComprasPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryComprasRECIBO_NFE: TStringField
      FieldName = 'RECIBO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryComprasDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryComprasVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasIDPLANOCONTA: TIntegerField
      FieldName = 'IDPLANOCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasIDCENTROCUSTO: TIntegerField
      FieldName = 'IDCENTROCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasTIPO_FRETE: TIntegerField
      FieldName = 'TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasNATOP: TStringField
      FieldName = 'NATOP'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryComprasTRANSP_CNPJ_CPF: TStringField
      FieldName = 'TRANSP_CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasTRANSP_INSC_RG: TStringField
      FieldName = 'TRANSP_INSC_RG'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryComprasTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryComprasTRANSP_NUM_END: TStringField
      FieldName = 'TRANSP_NUM_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryComprasTRANSP_BAIRRO_END: TStringField
      FieldName = 'TRANSP_BAIRRO_END'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasTRANSP_COMPLEMENTO: TStringField
      FieldName = 'TRANSP_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasTRANSP_CODCIDADE: TStringField
      FieldName = 'TRANSP_CODCIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object QryComprasTRANSP_CIDADE_END: TStringField
      FieldName = 'TRANSP_CIDADE_END'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasTRANSP_UF_END: TStringField
      FieldName = 'TRANSP_UF_END'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryComprasTRANSP_CEP_END: TStringField
      FieldName = 'TRANSP_CEP_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryComprasTRANSP_TELEFONE: TStringField
      FieldName = 'TRANSP_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
  end
  object QryComprasItens: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from compras_itens'
      'where compras_itens.idcompra = :pID')
    Left = 384
    Top = 120
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryComprasItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryComprasItensIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryComprasItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryComprasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryComprasItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryComprasItensCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryComprasItensALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensREDUCAO_BASE: TFloatField
      FieldName = 'REDUCAO_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object QryComprasItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryComprasItensALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryComprasItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryComprasItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryComprasItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryComprasItensMVA: TFloatField
      FieldName = 'MVA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspCompras: TDataSetProvider
    DataSet = QryCompras
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspComprasGetTableName
    Left = 288
    Top = 144
  end
  object DspComprasItens: TDataSetProvider
    DataSet = QryComprasItens
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspComprasItensGetTableName
    Left = 384
    Top = 144
  end
  object CdsCompras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspCompras'
    OnNewRecord = CdsComprasNewRecord
    Left = 288
    Top = 160
    object CdsComprasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsComprasNOTA: TStringField
      FieldName = 'NOTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsComprasIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsComprasDATA_COMPRA: TSQLTimeStampField
      FieldName = 'DATA_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasHORA_COMPRA: TSQLTimeStampField
      FieldName = 'HORA_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsComprasVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsComprasID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsComprasTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsComprasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsComprasALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsComprasSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsComprasPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsComprasRECIBO_NFE: TStringField
      FieldName = 'RECIBO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsComprasDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsComprasVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasIDPLANOCONTA: TIntegerField
      FieldName = 'IDPLANOCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasIDCENTROCUSTO: TIntegerField
      FieldName = 'IDCENTROCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasTIPO_FRETE: TIntegerField
      FieldName = 'TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasNATOP: TStringField
      FieldName = 'NATOP'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsComprasTRANSP_CNPJ_CPF: TStringField
      FieldName = 'TRANSP_CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasTRANSP_INSC_RG: TStringField
      FieldName = 'TRANSP_INSC_RG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsComprasTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsComprasTRANSP_NUM_END: TStringField
      FieldName = 'TRANSP_NUM_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsComprasTRANSP_BAIRRO_END: TStringField
      FieldName = 'TRANSP_BAIRRO_END'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasTRANSP_COMPLEMENTO: TStringField
      FieldName = 'TRANSP_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasTRANSP_CODCIDADE: TStringField
      FieldName = 'TRANSP_CODCIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsComprasTRANSP_CIDADE_END: TStringField
      FieldName = 'TRANSP_CIDADE_END'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasTRANSP_UF_END: TStringField
      FieldName = 'TRANSP_UF_END'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsComprasTRANSP_CEP_END: TStringField
      FieldName = 'TRANSP_CEP_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsComprasTRANSP_TELEFONE: TStringField
      FieldName = 'TRANSP_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
  end
  object CdsComprasItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspComprasItens'
    BeforePost = CdsComprasItensBeforePost
    OnNewRecord = CdsComprasItensNewRecord
    Left = 384
    Top = 160
    object CdsComprasItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsComprasItensIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsComprasItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsComprasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsComprasItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsComprasItensCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsComprasItensALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensREDUCAO_BASE: TFloatField
      FieldName = 'REDUCAO_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensALIQ_ICMS_ST: TFloatField
      FieldName = 'ALIQ_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsComprasItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsComprasItensALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsComprasItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsComprasItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsComprasItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComprasItensMVA: TFloatField
      FieldName = 'MVA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryPedidoCompItem: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from pedido_composicao_item'
      'where pedido_composicao_item.id_pedido = :pIDPed'
      'and pedido_composicao_item.id_itempedido = :pIDItem')
    Left = 544
    Top = 16
    ParamData = <
      item
        Name = 'pIDPed'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'pIDItem'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPedidoCompItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidoCompItemID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoCompItemID_ITEMPEDIDO: TIntegerField
      FieldName = 'ID_ITEMPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoCompItemQUANT_VIGAS: TFloatField
      FieldName = 'QUANT_VIGAS'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoCompItemCOMPRIMENTO_VIGA: TFloatField
      FieldName = 'COMPRIMENTO_VIGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoCompItemTOTAL_M2: TFloatField
      FieldName = 'TOTAL_M2'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoCompItemVALOR_M2: TFloatField
      FieldName = 'VALOR_M2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspPedidoCompItem: TDataSetProvider
    DataSet = QryPedidoCompItem
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPedidoCompItemGetTableName
    Left = 544
    Top = 40
  end
  object CdsPedidoCompItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDPed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pIDItem'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidoCompItem'
    OnNewRecord = CdsPedidoCompItemNewRecord
    Left = 544
    Top = 56
    object CdsPedidoCompItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidoCompItemID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoCompItemID_ITEMPEDIDO: TIntegerField
      FieldName = 'ID_ITEMPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoCompItemQUANT_VIGAS: TFloatField
      FieldName = 'QUANT_VIGAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoCompItemCOMPRIMENTO_VIGA: TFloatField
      FieldName = 'COMPRIMENTO_VIGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoCompItemTOTAL_M2: TFloatField
      FieldName = 'TOTAL_M2'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoCompItemVALOR_M2: TFloatField
      FieldName = 'VALOR_M2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryTabelaComissao: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from tabela_comissao'
      'where tabela_comissao.idproduto = :pIDProd')
    Left = 40
    Top = 328
    ParamData = <
      item
        Name = 'pIDProd'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryTabelaComissaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTabelaComissaoFAIXA_INI: TFloatField
      FieldName = 'FAIXA_INI'
      ProviderFlags = [pfInUpdate]
    end
    object QryTabelaComissaoFAIXA_FIM: TFloatField
      FieldName = 'FAIXA_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object QryTabelaComissaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryTabelaComissaoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspTabelaComissao: TDataSetProvider
    DataSet = QryTabelaComissao
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspTabelaComissaoGetTableName
    Left = 40
    Top = 352
  end
  object CdsTabelaComissao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDProd'
        ParamType = ptInput
      end>
    ProviderName = 'DspTabelaComissao'
    OnNewRecord = CdsTabelaComissaoNewRecord
    Left = 40
    Top = 368
    object CdsTabelaComissaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsTabelaComissaoFAIXA_INI: TFloatField
      FieldName = 'FAIXA_INI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTabelaComissaoFAIXA_FIM: TFloatField
      FieldName = 'FAIXA_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTabelaComissaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTabelaComissaoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object Qrycaixa: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from caixa'
      'where caixa.data_abertura = :pData')
    Left = 224
    Top = 224
    ParamData = <
      item
        Name = 'pData'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QrycaixaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrycaixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaVALOR_ABERTURA: TFloatField
      FieldName = 'VALOR_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QrycaixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaVALOR_FECHAMENTO: TFloatField
      FieldName = 'VALOR_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaFECHADO: TStringField
      FieldName = 'FECHADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QrycaixaIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QrycaixaCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QrycaixaNUMSERIEFAB: TStringField
      FieldName = 'NUMSERIEFAB'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaIDOPERADOR: TIntegerField
      FieldName = 'IDOPERADOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QrycaixaVALOR_DINHEIRO: TFloatField
      FieldName = 'VALOR_DINHEIRO'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaVALOR_CARTAO: TFloatField
      FieldName = 'VALOR_CARTAO'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaVALOR_CHEQUE: TFloatField
      FieldName = 'VALOR_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QrycaixaVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspCaixa: TDataSetProvider
    DataSet = Qrycaixa
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCaixaGetTableName
    Left = 224
    Top = 248
  end
  object CdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pData'
        ParamType = ptInput
      end>
    ProviderName = 'DspCaixa'
    OnNewRecord = CdsCaixaNewRecord
    Left = 224
    Top = 264
    object CdsCaixaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCaixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaVALOR_ABERTURA: TFloatField
      FieldName = 'VALOR_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCaixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaVALOR_FECHAMENTO: TFloatField
      FieldName = 'VALOR_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaFECHADO: TStringField
      FieldName = 'FECHADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsCaixaIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCaixaCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCaixaNUMSERIEFAB: TStringField
      FieldName = 'NUMSERIEFAB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaIDOPERADOR: TIntegerField
      FieldName = 'IDOPERADOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCaixaVALOR_DINHEIRO: TFloatField
      FieldName = 'VALOR_DINHEIRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaVALOR_CARTAO: TFloatField
      FieldName = 'VALOR_CARTAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaVALOR_CHEQUE: TFloatField
      FieldName = 'VALOR_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryCaixaMov: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from caixa_mov'
      'where caixa_mov.id_caixa = :pID')
    Left = 296
    Top = 224
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryCaixaMovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCaixaMovID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryCaixaMovDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      ProviderFlags = [pfInUpdate]
    end
    object QryCaixaMovHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryCaixaMovORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryCaixaMovDC: TStringField
      FieldName = 'DC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryCaixaMovVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryCaixaMovIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryCaixaMovIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspCaixaMov: TDataSetProvider
    DataSet = QryCaixaMov
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCaixaMovGetTableName
    Left = 296
    Top = 248
  end
  object CdsCaixaMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspCaixaMov'
    OnNewRecord = CdsCaixaMovNewRecord
    Left = 296
    Top = 264
    object CdsCaixaMovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCaixaMovID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCaixaMovDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaMovHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsCaixaMovORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaMovDC: TStringField
      FieldName = 'DC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsCaixaMovVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCaixaMovIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCaixaMovIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Qry60M: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from registro60m'
      'where registro60m.id = -1')
    Left = 360
    Top = 224
    object Qry60MID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry60MDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MSERIAECF: TStringField
      FieldName = 'SERIAECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object Qry60MCONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MCONTADOR_REDUCAO: TIntegerField
      FieldName = 'CONTADOR_REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MCOO_INICIAL: TIntegerField
      FieldName = 'COO_INICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MCOO_FINAL: TIntegerField
      FieldName = 'COO_FINAL'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MVENDA_BRUTA: TFloatField
      FieldName = 'VENDA_BRUTA'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MGRANDE_TOTAL: TFloatField
      FieldName = 'GRANDE_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60MCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object Qry60MIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object Qry60MMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object Qry60MSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object Qry60MAUTOMATICA: TStringField
      FieldName = 'AUTOMATICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object Qry60A: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from registro60a'
      'where registro60a.id_reg60m = :pID60m')
    Left = 424
    Top = 224
    ParamData = <
      item
        Name = 'pID60m'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Qry60AID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry60AID_REG60M: TIntegerField
      FieldName = 'ID_REG60M'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60AALIQUOTA_TRIB: TStringField
      FieldName = 'ALIQUOTA_TRIB'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60ATOTALIZADOR: TFloatField
      FieldName = 'TOTALIZADOR'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60ACAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object Qry60AMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object Qry60ADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60AHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60ADATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60ASERIAECF: TStringField
      FieldName = 'SERIAECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object Qry60ACONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry60ACONTADOR_REDUCAO: TIntegerField
      FieldName = 'CONTADOR_REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Dsp60M: TDataSetProvider
    DataSet = Qry60M
    UpdateMode = upWhereKeyOnly
    OnGetTableName = Dsp60MGetTableName
    Left = 360
    Top = 248
  end
  object Dsp60A: TDataSetProvider
    DataSet = Qry60A
    UpdateMode = upWhereKeyOnly
    OnGetTableName = Dsp60AGetTableName
    Left = 424
    Top = 240
  end
  object Cds60M: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp60M'
    BeforePost = Cds60MBeforePost
    OnNewRecord = Cds60MNewRecord
    Left = 360
    Top = 264
    object Cds60MID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds60MDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MSERIAECF: TStringField
      FieldName = 'SERIAECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object Cds60MCONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MCONTADOR_REDUCAO: TIntegerField
      FieldName = 'CONTADOR_REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MCOO_INICIAL: TIntegerField
      FieldName = 'COO_INICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MCOO_FINAL: TIntegerField
      FieldName = 'COO_FINAL'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MVENDA_BRUTA: TFloatField
      FieldName = 'VENDA_BRUTA'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MGRANDE_TOTAL: TFloatField
      FieldName = 'GRANDE_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60MCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object Cds60MIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object Cds60MMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object Cds60MSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object Cds60MAUTOMATICA: TStringField
      FieldName = 'AUTOMATICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object Cds60A: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID60m'
        ParamType = ptInput
      end>
    ProviderName = 'Dsp60A'
    BeforePost = Cds60ABeforePost
    OnNewRecord = Cds60ANewRecord
    Left = 424
    Top = 256
    object Cds60AID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds60AID_REG60M: TIntegerField
      FieldName = 'ID_REG60M'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60AALIQUOTA_TRIB: TStringField
      FieldName = 'ALIQUOTA_TRIB'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60ATOTALIZADOR: TFloatField
      FieldName = 'TOTALIZADOR'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60ACAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object Cds60AMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object Cds60ADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60AHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60ADATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60ASERIAECF: TStringField
      FieldName = 'SERIAECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object Cds60ACONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds60ACONTADOR_REDUCAO: TIntegerField
      FieldName = 'CONTADOR_REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryControleDoc: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from controledocecf'
      'where controledocecf.data between :pDatai and :pDataf'
      'and controledocecf.caixa = :pCaixa')
    Left = 712
    Top = 227
    ParamData = <
      item
        Name = 'pDatai'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pDataf'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pCaixa'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryControleDocID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryControleDocCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object QryControleDocGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object QryControleDocGRG: TIntegerField
      FieldName = 'GRG'
      ProviderFlags = [pfInUpdate]
    end
    object QryControleDocCDC: TIntegerField
      FieldName = 'CDC'
      ProviderFlags = [pfInUpdate]
    end
    object QryControleDocSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QryControleDocDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryControleDocHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryControleDocCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryControleDocIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryControleDocMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object DspControleDoc: TDataSetProvider
    DataSet = QryControleDoc
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspControleDocGetTableName
    Left = 712
    Top = 248
  end
  object CdsControleDoc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCaixa'
        ParamType = ptInput
      end>
    ProviderName = 'DspControleDoc'
    BeforePost = CdsControleDocBeforePost
    OnNewRecord = CdsControleDocNewRecord
    Left = 712
    Top = 264
    object CdsControleDocID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsControleDocCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsControleDocGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsControleDocGRG: TIntegerField
      FieldName = 'GRG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsControleDocCDC: TIntegerField
      FieldName = 'CDC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsControleDocSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsControleDocDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsControleDocHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsControleDocCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsControleDocIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsControleDocMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object QryContador: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from contador'
      'where contador.id = :pID')
    Left = 800
    Top = 16
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryContadorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryContadorCONTABILIDADE: TStringField
      FieldName = 'CONTABILIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryContadorEND_NUM: TStringField
      FieldName = 'END_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContadorEND_COMPL: TStringField
      FieldName = 'END_COMPL'
      ProviderFlags = [pfInUpdate]
    end
    object QryContadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContadorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryContadorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QryContadorCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContadorCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object QryContadorCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object QryContadorREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryContadorCONTADOR: TStringField
      FieldName = 'CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContadorFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryContadorFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryContadorCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryContadorCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QryContadorEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QryContadorSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object DspContador: TDataSetProvider
    DataSet = QryContador
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspContadorGetTableName
    Left = 800
    Top = 40
  end
  object CdsContador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspContador'
    OnNewRecord = CdsContadorNewRecord
    Left = 800
    Top = 56
    object CdsContadorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsContadorCONTABILIDADE: TStringField
      FieldName = 'CONTABILIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsContadorEND_NUM: TStringField
      FieldName = 'END_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContadorEND_COMPL: TStringField
      FieldName = 'END_COMPL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContadorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContadorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsContadorCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContadorCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsContadorCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContadorREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsContadorCONTADOR: TStringField
      FieldName = 'CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContadorFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsContadorFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsContadorCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContadorCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsContadorEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsContadorSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object QryOS: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from ord_servico')
    Left = 584
    Top = 120
  end
  object QryOSHoras: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from os_horas'
      'where os_horas.id_os = :pID'
      'order by os_horas.id')
    Left = 672
    Top = 120
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryOSHorasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryOSHorasID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object QryOSHorasID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object QryOSHorasDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object QryOSHorasDATA_TRAB: TSQLTimeStampField
      FieldName = 'DATA_TRAB'
    end
    object QryOSHorasHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object QryOSHorasHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object QryOSHorasTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object QryOSHorasREALIZADO: TStringField
      FieldName = 'REALIZADO'
      Size = 2048
    end
  end
  object DspOSHoras: TDataSetProvider
    DataSet = QryOSHoras
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspOSHorasGetTableName
    Left = 672
    Top = 144
  end
  object CdsOSHoras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspOSHoras'
    BeforePost = CdsOSHorasBeforePost
    OnNewRecord = CdsOSHorasNewRecord
    Left = 672
    Top = 160
    object CdsOSHorasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsOSHorasID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object CdsOSHorasID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object CdsOSHorasDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object CdsOSHorasDATA_TRAB: TSQLTimeStampField
      FieldName = 'DATA_TRAB'
    end
    object CdsOSHorasHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object CdsOSHorasHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object CdsOSHorasTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object CdsOSHorasREALIZADO: TStringField
      FieldName = 'REALIZADO'
      Size = 2048
    end
  end
  object QryPedidoFP: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from pedido_formapag f'
      'where f.idpedido = :pIDPedido'
      'order by f.tipo_documento')
    Left = 448
    Top = 16
    ParamData = <
      item
        Name = 'pIDPedido'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPedidoFPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidoFPIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoFPID_FORMAPAG_CUPOM: TIntegerField
      FieldName = 'ID_FORMAPAG_CUPOM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoFPVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPTROCO: TFloatField
      FieldName = 'TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPCONFIRMADO: TStringField
      FieldName = 'CONFIRMADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoFPMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object QryPedidoFPDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryPedidoFPVINCULAR: TStringField
      FieldName = 'VINCULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryPedidoFPTIPO_TEF: TStringField
      FieldName = 'TIPO_TEF'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidoFPNOME_REDE: TStringField
      FieldName = 'NOME_REDE'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoFPNSU_DOC: TStringField
      FieldName = 'NSU_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidoFPPARCELAS_TEF: TIntegerField
      FieldName = 'PARCELAS_TEF'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspPedidoFP: TDataSetProvider
    DataSet = QryPedidoFP
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPedidoFPGetTableName
    Left = 448
    Top = 40
  end
  object CdsPedidoFP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDPedido'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidoFP'
    BeforePost = CdsPedidoFPBeforePost
    OnNewRecord = CdsPedidoFPNewRecord
    Left = 448
    Top = 56
    object CdsPedidoFPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidoFPIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoFPID_FORMAPAG_CUPOM: TIntegerField
      FieldName = 'ID_FORMAPAG_CUPOM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoFPVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPTROCO: TFloatField
      FieldName = 'TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPCONFIRMADO: TStringField
      FieldName = 'CONFIRMADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoFPMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsPedidoFPDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPedidoFPVINCULAR: TStringField
      FieldName = 'VINCULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsPedidoFPTIPO_TEF: TStringField
      FieldName = 'TIPO_TEF'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidoFPNOME_REDE: TStringField
      FieldName = 'NOME_REDE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoFPNSU_DOC: TStringField
      FieldName = 'NSU_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidoFPPARCELAS_TEF: TIntegerField
      FieldName = 'PARCELAS_TEF'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryDadosTecnicos: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from dados_tecnicos')
    Left = 768
    Top = 120
    object QryDadosTecnicosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDadosTecnicosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QryDadosTecnicosNR_LAUDO_TECNICO: TStringField
      FieldName = 'NR_LAUDO_TECNICO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object QryDadosTecnicosCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 36
    end
    object QryDadosTecnicosINSCEST: TStringField
      FieldName = 'INSCEST'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object QryDadosTecnicosINSCMUN: TStringField
      FieldName = 'INSCMUN'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object QryDadosTecnicosDENOMINACAO: TStringField
      FieldName = 'DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QryDadosTecnicosPAFECF: TStringField
      FieldName = 'PAFECF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object QryDadosTecnicosVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object QryDadosTecnicosMD5: TStringField
      FieldName = 'MD5'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 64
    end
    object QryDadosTecnicosVERSAO_ERPAFECF: TStringField
      FieldName = 'VERSAO_ERPAFECF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object QryDadosTecnicosCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object QryDadosTecnicosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object QryDadosTecnicosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryDadosTecnicosMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object QryDadosTecnicosNUMSERFAB: TStringField
      FieldName = 'NUMSERFAB'
      ProviderFlags = [pfInUpdate]
    end
    object QryDadosTecnicosDATA_ESTOQUE: TSQLTimeStampField
      FieldName = 'DATA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QryDadosTecnicosHORA_ESTOQUE: TSQLTimeStampField
      FieldName = 'HORA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QryDadosTecnicosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryDadosTecnicosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryDadosTecnicosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryDadosTecnicosEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryDadosTecnicosSWH_ASSINATURA: TStringField
      FieldName = 'SWH_ASSINATURA'
      ProviderFlags = [pfInUpdate]
      Size = 344
    end
    object QryDadosTecnicosDATA_LAUDO: TDateField
      FieldName = 'DATA_LAUDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspDadosTecnicos: TDataSetProvider
    DataSet = QryDadosTecnicos
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspDadosTecnicosGetTableName
    Left = 768
    Top = 136
  end
  object CdsDadosTecnicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDadosTecnicos'
    BeforePost = CdsDadosTecnicosBeforePost
    OnNewRecord = CdsDadosTecnicosNewRecord
    Left = 768
    Top = 160
    object CdsDadosTecnicosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsDadosTecnicosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object CdsDadosTecnicosNR_LAUDO_TECNICO: TStringField
      FieldName = 'NR_LAUDO_TECNICO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object CdsDadosTecnicosCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 36
    end
    object CdsDadosTecnicosINSCEST: TStringField
      FieldName = 'INSCEST'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object CdsDadosTecnicosINSCMUN: TStringField
      FieldName = 'INSCMUN'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object CdsDadosTecnicosDENOMINACAO: TStringField
      FieldName = 'DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object CdsDadosTecnicosPAFECF: TStringField
      FieldName = 'PAFECF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object CdsDadosTecnicosVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CdsDadosTecnicosMD5: TStringField
      FieldName = 'MD5'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 64
    end
    object CdsDadosTecnicosVERSAO_ERPAFECF: TStringField
      FieldName = 'VERSAO_ERPAFECF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CdsDadosTecnicosCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object CdsDadosTecnicosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object CdsDadosTecnicosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object CdsDadosTecnicosMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsDadosTecnicosNUMSERFAB: TStringField
      FieldName = 'NUMSERFAB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDadosTecnicosDATA_ESTOQUE: TSQLTimeStampField
      FieldName = 'DATA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDadosTecnicosHORA_ESTOQUE: TSQLTimeStampField
      FieldName = 'HORA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDadosTecnicosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDadosTecnicosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsDadosTecnicosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsDadosTecnicosEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsDadosTecnicosSWH_ASSINATURA: TStringField
      FieldName = 'SWH_ASSINATURA'
      ProviderFlags = [pfInUpdate]
      Size = 344
    end
    object CdsDadosTecnicosDATA_LAUDO: TDateField
      FieldName = 'DATA_LAUDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object QryMesasAbertas: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from mesas_abertas'
      'where mesas_abertas.status = 0')
    Left = 792
    Top = 232
    object QryMesasAbertasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMesasAbertasID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMesasAbertasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasAbertasHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasAbertasVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasAbertasCER_CONFERENCIA: TIntegerField
      FieldName = 'CER_CONFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasAbertasSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMesasAbertasID_MESA_ORIGEM: TIntegerField
      FieldName = 'ID_MESA_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasAbertasNUMERO_MESA: TStringField
      FieldName = 'NUMERO_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasAbertasCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryMesasItens: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from mesas_itens'
      'where mesas_itens.id_mesa = :pID')
    Left = 888
    Top = 216
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryMesasItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMesasItensID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMesasItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMesasItensQUANT: TFloatField
      FieldName = 'QUANT'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasItensPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasItensPRECO_TOTAL: TFloatField
      FieldName = 'PRECO_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryMesasItensID_MESA_ORIGEM: TIntegerField
      FieldName = 'ID_MESA_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryMesasItensNUMERO_MESA_ORIG: TStringField
      FieldName = 'NUMERO_MESA_ORIG'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspMesasAbertas: TDataSetProvider
    DataSet = QryMesasAbertas
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspMesasAbertasGetTableName
    Left = 792
    Top = 256
  end
  object DspMesasItens: TDataSetProvider
    DataSet = QryMesasItens
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspMesasItensGetTableName
    Left = 888
    Top = 240
  end
  object CdsMesasAbertas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMesasAbertas'
    AfterScroll = CdsMesasAbertasAfterScroll
    OnNewRecord = CdsMesasAbertasNewRecord
    Left = 792
    Top = 276
    object CdsMesasAbertasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMesasAbertasID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsMesasAbertasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasAbertasHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasAbertasVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasAbertasCER_CONFERENCIA: TIntegerField
      FieldName = 'CER_CONFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasAbertasSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsMesasAbertasID_MESA_ORIGEM: TIntegerField
      FieldName = 'ID_MESA_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasAbertasNUMERO_MESA: TStringField
      FieldName = 'NUMERO_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasAbertasCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsMesasItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspMesasItens'
    OnCalcFields = CdsMesasItensCalcFields
    OnNewRecord = CdsMesasItensNewRecord
    Left = 888
    Top = 266
    object CdsMesasItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMesasItensID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsMesasItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsMesasItensQUANT: TFloatField
      FieldName = 'QUANT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasItensPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasItensPRECO_TOTAL: TFloatField
      FieldName = 'PRECO_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsMesasItensID_MESA_ORIGEM: TIntegerField
      FieldName = 'ID_MESA_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsMesasItensNUMERO_MESA_ORIG: TStringField
      FieldName = 'NUMERO_MESA_ORIG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasItensTRANSFERIDA: TStringField
      FieldKind = fkCalculated
      FieldName = 'TRANSFERIDA'
      Size = 30
      Calculated = True
    end
    object CdsMesasItensINFORMA: TStringField
      FieldKind = fkCalculated
      FieldName = 'INFORMA'
      Size = 50
      Calculated = True
    end
  end
  object QryDavPV: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select p.id,p.data_pedido,p.idcliente,'
      'p.cliente,p.valor_total,p.numdav,'
      'p.numpv from pedido p'
      'where p.abastecimento = '#39'N'#39
      'and p.confirmada = '#39'S'#39
      'and p.cancelado = '#39'N'#39
      'and p.coo  = 0'
      'order by p.data_pedido, p.id')
    Left = 120
    Top = 216
    object QryDavPVid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object QryDavPVdata_pedido: TDateField
      FieldName = 'data_pedido'
    end
    object QryDavPVidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object QryDavPVcliente: TStringField
      FieldName = 'cliente'
      Size = 50
    end
    object QryDavPVvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object QryDavPVnumdav: TStringField
      FieldName = 'numdav'
      Size = 10
    end
    object QryDavPVnumpv: TStringField
      FieldName = 'numpv'
      Size = 10
    end
  end
  object DspDavPV: TDataSetProvider
    DataSet = QryDavPV
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 236
  end
  object CdsDavPV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDavPV'
    Left = 120
    Top = 256
    object CdsDavPVid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object CdsDavPVdata_pedido: TDateField
      FieldName = 'data_pedido'
    end
    object CdsDavPVidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object CdsDavPVcliente: TStringField
      FieldName = 'cliente'
      Size = 50
    end
    object CdsDavPVvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object CdsDavPVnumdav: TStringField
      FieldName = 'numdav'
      Size = 10
    end
    object CdsDavPVnumpv: TStringField
      FieldName = 'numpv'
      Size = 10
    end
  end
  object QryCST: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from cst'
      'order by cst.codigo'
      '')
    Left = 480
    Top = 224
    object QryCSTCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QryCSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object QryCFOP: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from cfop'
      'order by cfop.cfcod')
    Left = 624
    Top = 224
    object QryCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QryCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object QryCFOPCFNOTA: TBlobField
      FieldName = 'CFNOTA'
      Size = 1
    end
  end
  object DspCST: TDataSetProvider
    DataSet = QryCST
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCSTGetTableName
    Left = 480
    Top = 248
  end
  object DspCFOP: TDataSetProvider
    DataSet = QryCFOP
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCFOPGetTableName
    Left = 624
    Top = 248
  end
  object CdsCST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCST'
    Left = 480
    Top = 264
    object CdsCSTCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsCSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object CdsCFOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCFOP'
    Left = 624
    Top = 264
    object CdsCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsCFOPCFNOTA: TBlobField
      FieldName = 'CFNOTA'
      Size = 1
    end
  end
  object QryEmpresa: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from empresa')
    Left = 104
    Top = 120
    object QryEmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryEmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaINSCRICAO_RG: TStringField
      FieldName = 'INSCRICAO_RG'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryEmpresaTELEFAX: TStringField
      FieldName = 'TELEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QryEmpresaSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QryEmpresaINSC_MUNIC: TStringField
      FieldName = 'INSC_MUNIC'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryEmpresaCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryEmpresaIDCONTADOR: TIntegerField
      FieldName = 'IDCONTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaCRT: TIntegerField
      FieldName = 'CRT'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryEmpresaCOD_SUFRAMA: TStringField
      FieldName = 'COD_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object QryEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object QryEmpresaNIRE: TStringField
      FieldName = 'NIRE'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaNOME_RESP: TStringField
      FieldName = 'NOME_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object QryEmpresaCOD_ASSIN: TIntegerField
      FieldName = 'COD_ASSIN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryEmpresaCPF_RESP: TStringField
      FieldName = 'CPF_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object QryEmpresaCEP_RESP: TStringField
      FieldName = 'CEP_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryEmpresaEND_RESP: TStringField
      FieldName = 'END_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object QryEmpresaNUM_RESP: TStringField
      FieldName = 'NUM_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryEmpresaCOMPL_RESP: TStringField
      FieldName = 'COMPL_RESP'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaBAIRRO_RESP: TStringField
      FieldName = 'BAIRRO_RESP'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaFONE_RESP: TStringField
      FieldName = 'FONE_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object QryEmpresaFAX_RESP: TStringField
      FieldName = 'FAX_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object QryEmpresaEMAIL_RESP: TStringField
      FieldName = 'EMAIL_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryEmpresaPERFIL_PAFECF: TStringField
      FieldName = 'PERFIL_PAFECF'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryEmpresaCRT_ISSQN: TIntegerField
      FieldName = 'CRT_ISSQN'
      ProviderFlags = [pfInUpdate]
    end
    object QryEmpresaRATEIO_ISSQN: TStringField
      FieldName = 'RATEIO_ISSQN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object DspEmpresa: TDataSetProvider
    DataSet = QryEmpresa
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspEmpresaGetTableName
    Left = 104
    Top = 144
  end
  object CdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmpresa'
    AfterScroll = CdsEmpresaAfterScroll
    OnNewRecord = CdsEmpresaNewRecord
    Left = 104
    Top = 160
    object CdsEmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaINSCRICAO_RG: TStringField
      FieldName = 'INSCRICAO_RG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsEmpresaTELEFAX: TStringField
      FieldName = 'TELEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsEmpresaSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsEmpresaINSC_MUNIC: TStringField
      FieldName = 'INSC_MUNIC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsEmpresaIDCONTADOR: TIntegerField
      FieldName = 'IDCONTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaCRT: TIntegerField
      FieldName = 'CRT'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsEmpresaCOD_SUFRAMA: TStringField
      FieldName = 'COD_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CdsEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object CdsEmpresaNIRE: TStringField
      FieldName = 'NIRE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaNOME_RESP: TStringField
      FieldName = 'NOME_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsEmpresaCOD_ASSIN: TIntegerField
      FieldName = 'COD_ASSIN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsEmpresaCPF_RESP: TStringField
      FieldName = 'CPF_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsEmpresaCEP_RESP: TStringField
      FieldName = 'CEP_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaEND_RESP: TStringField
      FieldName = 'END_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsEmpresaNUM_RESP: TStringField
      FieldName = 'NUM_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaCOMPL_RESP: TStringField
      FieldName = 'COMPL_RESP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaBAIRRO_RESP: TStringField
      FieldName = 'BAIRRO_RESP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaFONE_RESP: TStringField
      FieldName = 'FONE_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsEmpresaFAX_RESP: TStringField
      FieldName = 'FAX_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsEmpresaEMAIL_RESP: TStringField
      FieldName = 'EMAIL_RESP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaPERFIL_PAFECF: TStringField
      FieldName = 'PERFIL_PAFECF'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaCRT_ISSQN: TIntegerField
      FieldName = 'CRT_ISSQN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaRATEIO_ISSQN: TStringField
      FieldName = 'RATEIO_ISSQN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryPDV: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from dados_pdv'
      'where dados_pdv.caixa = :pCaixa')
    Left = 856
    Top = 120
    ParamData = <
      item
        Name = 'pCaixa'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryPDVCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QryPDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPDVSERIAL_ECF: TStringField
      FieldName = 'SERIAL_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPDVATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryPDVSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPDVLETRA_ADD: TStringField
      FieldName = 'LETRA_ADD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPDVMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPDVTIPO_ECF: TStringField
      FieldName = 'TIPO_ECF'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object QryPDVMARCA_ECF: TStringField
      FieldName = 'MARCA_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPDVVERSAO_ECF: TStringField
      FieldName = 'VERSAO_ECF'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPDVDATA_SB: TDateField
      FieldName = 'DATA_SB'
      ProviderFlags = [pfInUpdate]
    end
    object QryPDVHORA_SB: TTimeField
      FieldName = 'HORA_SB'
      ProviderFlags = [pfInUpdate]
    end
    object QryPDVIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspPDV: TDataSetProvider
    DataSet = QryPDV
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPDVGetTableName
    Left = 856
    Top = 138
  end
  object CdsPDV: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCaixa'
        ParamType = ptInput
      end>
    ProviderName = 'DspPDV'
    OnNewRecord = CdsPDVNewRecord
    Left = 856
    Top = 163
    object CdsPDVCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsPDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPDVSERIAL_ECF: TStringField
      FieldName = 'SERIAL_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPDVATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsPDVSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPDVLETRA_ADD: TStringField
      FieldName = 'LETRA_ADD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPDVMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPDVTIPO_ECF: TStringField
      FieldName = 'TIPO_ECF'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPDVMARCA_ECF: TStringField
      FieldName = 'MARCA_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPDVVERSAO_ECF: TStringField
      FieldName = 'VERSAO_ECF'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPDVDATA_SB: TDateField
      FieldName = 'DATA_SB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPDVHORA_SB: TTimeField
      FieldName = 'HORA_SB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPDVIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryReg61: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from registro61'
      'where registro61.data_emissao >= :pdatai '
      'and  registro61.data_emissao <= :pdataf'
      'and registro61.caixa = :pCaixa')
    Left = 480
    Top = 336
    ParamData = <
      item
        Name = 'pdatai'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pdataf'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pCaixa'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryReg61ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryReg61DATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61NUM_ORDEM: TStringField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryReg61SERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryReg61IDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryReg61DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryReg61MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61MODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61ESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61VALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61TOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61CAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryReg61IDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryReg61ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61CST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryReg61CFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryReg61BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61VALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61VALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object QryReg61ID_BICO_PERDA: TIntegerField
      FieldName = 'ID_BICO_PERDA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspReg61: TDataSetProvider
    DataSet = QryReg61
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspReg61GetTableName
    Left = 480
    Top = 360
  end
  object CdsReg61: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pdatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pdataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCaixa'
        ParamType = ptInput
      end>
    ProviderName = 'DspReg61'
    OnNewRecord = CdsReg61NewRecord
    Left = 480
    Top = 384
    object CdsReg61ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReg61DATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61NUM_ORDEM: TStringField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsReg61SERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsReg61IDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsReg61DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsReg61MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61MODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61ESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61VALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61TOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61CAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReg61IDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsReg61ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61CST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReg61CFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsReg61BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61VALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61VALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReg61ID_BICO_PERDA: TIntegerField
      FieldName = 'ID_BICO_PERDA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryCentroCusto: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from centrocusto c'
      'where c.id = :pID')
    Left = 32
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryCentroCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryCentroCustoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryCentroCustoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryCentroCustoTELEFAX: TStringField
      FieldName = 'TELEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryCentroCustoOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object QryCentroCustoATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QryPlanoConta: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from planoconta p'
      'where p.id = :pID')
    Left = 24
    Top = 112
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPlanoContaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPlanoContaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlanoContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPlanoContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPlanoContaOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object QryPlanoContaIDCONTAMASTER: TIntegerField
      FieldName = 'IDCONTAMASTER'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlanoContaATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DspCentroCusto: TDataSetProvider
    DataSet = QryCentroCusto
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCentroCustoGetTableName
    Left = 32
    Top = 240
  end
  object DspPlanoConta: TDataSetProvider
    DataSet = QryPlanoConta
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPlanoContaGetTableName
    Left = 24
    Top = 136
  end
  object CdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspCentroCusto'
    OnNewRecord = CdsCentroCustoNewRecord
    Left = 32
    Top = 256
    object CdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsCentroCustoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsCentroCustoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsCentroCustoTELEFAX: TStringField
      FieldName = 'TELEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsCentroCustoOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsCentroCustoATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CdsPlanoConta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspPlanoConta'
    OnNewRecord = CdsPlanoContaNewRecord
    Left = 24
    Top = 152
    object CdsPlanoContaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPlanoContaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlanoContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPlanoContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPlanoContaOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsPlanoContaIDCONTAMASTER: TIntegerField
      FieldName = 'IDCONTAMASTER'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlanoContaATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QryPNMaster: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from planoconta p'
      'where p.tipo_conta = '#39'M'#39
      'and p.ativo = '#39'T'#39)
    Left = 264
    Top = 336
    object QryPNMasterID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryPNMasterCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object QryPNMasterDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object QryPNMasterTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object QryPNMasterOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object QryPNMasterIDCONTAMASTER: TIntegerField
      FieldName = 'IDCONTAMASTER'
    end
    object QryPNMasterATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DspPNMaster: TDataSetProvider
    DataSet = QryPNMaster
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 360
  end
  object CdsPNMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPNMaster'
    Left = 264
    Top = 376
    object CdsPNMasterID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsPNMasterCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object CdsPNMasterDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object CdsPNMasterTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object CdsPNMasterOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object CdsPNMasterIDCONTAMASTER: TIntegerField
      FieldName = 'IDCONTAMASTER'
    end
    object CdsPNMasterATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QryPais: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from cod_pais p'
      'order by p.pais')
    Left = 24
    Top = 24
    object QryPaisCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object QryPaisPAIS: TStringField
      FieldName = 'PAIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryPaisDDI: TStringField
      FieldName = 'DDI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object DspPais: TDataSetProvider
    DataSet = QryPais
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPaisGetTableName
    Left = 24
    Top = 48
  end
  object CdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPais'
    Left = 24
    Top = 64
    object CdsPaisCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object CdsPaisPAIS: TStringField
      FieldName = 'PAIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object CdsPaisDDI: TStringField
      FieldName = 'DDI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object QryCNAE: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from cnae'
      'where cnae.subclasse = :pCNAE')
    Left = 104
    Top = 22
    ParamData = <
      item
        Name = 'pCNAE'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryCNAESECAO: TStringField
      FieldName = 'SECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryCNAEDIVISAO: TStringField
      FieldName = 'DIVISAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object QryCNAEGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object QryCNAECLASSE: TStringField
      FieldName = 'CLASSE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 7
    end
    object QryCNAESUBCLASSE: TStringField
      FieldName = 'SUBCLASSE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 9
    end
    object QryCNAEDENOMINACAO: TStringField
      FieldName = 'DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
  end
  object DspCNAE: TDataSetProvider
    DataSet = QryCNAE
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCNAEGetTableName
    Left = 104
    Top = 41
  end
  object CdsCNAE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCNAE'
        ParamType = ptInput
      end>
    ProviderName = 'DspCNAE'
    Left = 104
    Top = 63
    object CdsCNAESECAO: TStringField
      FieldName = 'SECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsCNAEDIVISAO: TStringField
      FieldName = 'DIVISAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object CdsCNAEGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object CdsCNAECLASSE: TStringField
      FieldName = 'CLASSE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 7
    end
    object CdsCNAESUBCLASSE: TStringField
      FieldName = 'SUBCLASSE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 9
    end
    object CdsCNAEDENOMINACAO: TStringField
      FieldName = 'DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
  end
  object QryConfigECF: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from config_pdv')
    Left = 784
    Top = 352
    object QryConfigECFNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object QryConfigECFPORTA: TStringField
      FieldName = 'PORTA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QryConfigECFMODELO: TIntegerField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFBAUDRATE: TIntegerField
      FieldName = 'BAUDRATE'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFDATABITS: TIntegerField
      FieldName = 'DATABITS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFPARITY: TIntegerField
      FieldName = 'PARITY'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFSTOPBITS: TIntegerField
      FieldName = 'STOPBITS'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFHANDSHAKING: TIntegerField
      FieldName = 'HANDSHAKING'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFHARDFLOW: TIntegerField
      FieldName = 'HARDFLOW'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigECFSOFTFLOW: TIntegerField
      FieldName = 'SOFTFLOW'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspConfigECF: TDataSetProvider
    DataSet = QryConfigECF
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspConfigECFGetTableName
    Left = 784
    Top = 376
  end
  object CdsConfigECF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConfigECF'
    Left = 784
    Top = 392
    object CdsConfigECFNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object CdsConfigECFPORTA: TStringField
      FieldName = 'PORTA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsConfigECFMODELO: TIntegerField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFBAUDRATE: TIntegerField
      FieldName = 'BAUDRATE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFDATABITS: TIntegerField
      FieldName = 'DATABITS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFPARITY: TIntegerField
      FieldName = 'PARITY'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFSTOPBITS: TIntegerField
      FieldName = 'STOPBITS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFHANDSHAKING: TIntegerField
      FieldName = 'HANDSHAKING'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFHARDFLOW: TIntegerField
      FieldName = 'HARDFLOW'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigECFSOFTFLOW: TIntegerField
      FieldName = 'SOFTFLOW'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsPDVaux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPDV'
    Left = 880
    Top = 160
    object CdsPDVauxCAIXA: TStringField
      FieldName = 'CAIXA'
      Required = True
      Size = 3
    end
    object CdsPDVauxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CdsPDVauxSERIAL_ECF: TStringField
      FieldName = 'SERIAL_ECF'
    end
    object CdsPDVauxATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsPDVauxSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      FixedChar = True
      Size = 1
    end
    object CdsPDVauxLETRA_ADD: TStringField
      FieldName = 'LETRA_ADD'
      FixedChar = True
      Size = 1
    end
    object CdsPDVauxMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
    end
    object CdsPDVauxTIPO_ECF: TStringField
      FieldName = 'TIPO_ECF'
      Size = 7
    end
    object CdsPDVauxMARCA_ECF: TStringField
      FieldName = 'MARCA_ECF'
    end
    object CdsPDVauxVERSAO_ECF: TStringField
      FieldName = 'VERSAO_ECF'
      Size = 10
    end
    object CdsPDVauxDATA_SB: TDateField
      FieldName = 'DATA_SB'
    end
    object CdsPDVauxHORA_SB: TTimeField
      FieldName = 'HORA_SB'
    end
    object CdsPDVauxIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
  end
  object QryMesas: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from mesas')
    Left = 568
    Top = 336
    object QryMesasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMesasNUMERO_MESA: TStringField
      FieldName = 'NUMERO_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DspMesas: TDataSetProvider
    DataSet = QryMesas
    UpdateMode = upWhereKeyOnly
    Left = 568
    Top = 360
  end
  object CdsMesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMesas'
    Left = 568
    Top = 384
    object CdsMesasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMesasNUMERO_MESA: TStringField
      FieldName = 'NUMERO_MESA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object QryRegistroA2: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from paf_registro_a2 a'
      'where a.id = :pID')
    Left = 149
    Top = 325
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryRegistroA2ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryRegistroA2DATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryRegistroA2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object QryRegistroA2COD_TIPO: TIntegerField
      FieldName = 'COD_TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryRegistroA2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object QryRegistroA2MD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object DspRegistroA2: TDataSetProvider
    DataSet = QryRegistroA2
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspRegistroA2GetTableName
    Left = 150
    Top = 346
  end
  object CdsRegistroA2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspRegistroA2'
    BeforePost = CdsRegistroA2BeforePost
    OnNewRecord = CdsRegistroA2NewRecord
    Left = 151
    Top = 367
    object CdsRegistroA2ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsRegistroA2DATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRegistroA2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsRegistroA2COD_TIPO: TIntegerField
      FieldName = 'COD_TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRegistroA2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsRegistroA2MD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object QryRecargas: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from recargas r'
      'where r.caixa = :pCaixa'
      'and r.data = :pData')
    Left = 880
    Top = 340
    ParamData = <
      item
        Name = 'pCaixa'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'pData'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QryRecargasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryRecargasDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryRecargasHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryRecargasDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object QryRecargasCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object QryRecargasVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryRecargasNSU: TStringField
      FieldName = 'NSU'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object QryRecargasNOME_REDE: TStringField
      FieldName = 'NOME_REDE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryRecargasCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object QryRecargasTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspRecargas: TDataSetProvider
    DataSet = QryRecargas
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspRecargasGetTableName
    Left = 879
    Top = 364
  end
  object CdsRecargas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCaixa'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pData'
        ParamType = ptInput
      end>
    ProviderName = 'DspRecargas'
    OnNewRecord = CdsRecargasNewRecord
    Left = 879
    Top = 380
    object CdsRecargasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsRecargasDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsRecargasHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsRecargasDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object CdsRecargasCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object CdsRecargasVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsRecargasNSU: TStringField
      FieldName = 'NSU'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CdsRecargasNOME_REDE: TStringField
      FieldName = 'NOME_REDE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsRecargasCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsRecargasTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object QryCSOSN: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from CSOSN')
    Left = 552
    Top = 224
    object QryCSOSNCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryCSOSNDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DspCSOSN: TDataSetProvider
    DataSet = QryCSOSN
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspCSOSNGetTableName
    Left = 552
    Top = 248
  end
  object CdsCSOSN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCSOSN'
    Left = 552
    Top = 264
    object CdsCSOSNCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object CdsCSOSNDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DSPOS: TDataSetProvider
    DataSet = QryOS
    Left = 584
    Top = 136
  end
  object CDSOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOS'
    OnNewRecord = CDSOSNewRecord
    Left = 584
    Top = 152
    object CDSOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOSN_CONTROLE: TStringField
      FieldName = 'N_CONTROLE'
      Origin = 'N_CONTROLE'
    end
    object CDSOSID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
      Required = True
    end
    object CDSOSCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object CDSOSDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
      Origin = 'DATA_OS'
    end
    object CDSOSHORA_OS: TSQLTimeStampField
      FieldName = 'HORA_OS'
      Origin = 'HORA_OS'
    end
    object CDSOSRECLAMADO: TStringField
      FieldName = 'RECLAMADO'
      Origin = 'RECLAMADO'
      Size = 2048
    end
    object CDSOSCONSTATADO: TStringField
      FieldName = 'CONSTATADO'
      Origin = 'CONSTATADO'
      Size = 2048
    end
    object CDSOSREALIZADO: TStringField
      FieldName = 'REALIZADO'
      Origin = 'REALIZADO'
      Size = 2048
    end
    object CDSOSDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object CDSOSHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object CDSOSDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
    end
    object CDSOSHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object CDSOSTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
      Origin = 'TEMPO_GASTO'
    end
    object CDSOSVALOR_COBRADO: TFloatField
      FieldName = 'VALOR_COBRADO'
      Origin = 'VALOR_COBRADO'
    end
    object CDSOSDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object CDSOSACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
    end
    object CDSOSOUTROS: TFloatField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
    end
    object CDSOSVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
    end
    object CDSOSFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object CDSOSDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object CDSOSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 30
    end
    object CDSOSNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object CDSOSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object CDSOSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object CDSOSCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object CDSOSUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object CDSOSCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object CDSOSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 12
    end
    object CDSOSCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 12
    end
    object CDSOSCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
    end
    object CDSOSINSCRICAORG: TStringField
      FieldName = 'INSCRICAORG'
      Origin = 'INSCRICAORG'
    end
    object CDSOSSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '`STATUS`'
    end
    object CDSOSIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      Required = True
    end
    object CDSOSCHAVE_NFSE: TStringField
      FieldName = 'CHAVE_NFSE'
      Origin = 'CHAVE_NFSE'
      Size = 50
    end
    object CDSOSNR_RPS: TStringField
      FieldName = 'NR_RPS'
      Origin = 'NR_RPS'
      Size = 45
    end
    object CDSOSNR_LOTE: TStringField
      FieldName = 'NR_LOTE'
      Origin = 'NR_LOTE'
      Size = 45
    end
  end
end
