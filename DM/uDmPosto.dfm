object DmPosto: TDmPosto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 395
  Width = 670
  object QryAbastecimentos: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from abastecimentos a'
      'where a.status_abastec = 1')
    Left = 264
    Top = 24
    object QryAbastecimentosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAbastecimentosNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QryAbastecimentosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosENCERRANTE: TFMTBCDField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object QryAbastecimentosLITROS: TFMTBCDField
      FieldName = 'LITROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object QryAbastecimentosPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosSTATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosCOO_CUPOM: TIntegerField
      FieldName = 'COO_CUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosNOTAFISCAL_NUM: TStringField
      FieldName = 'NOTAFISCAL_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryAbastecimentosMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object QryAbastecimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryAbastecimentosIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryAbastecimentosDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosDATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosHORA_ABASTEC: TSQLTimeStampField
      FieldName = 'HORA_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastecimentosREMANECENTE: TStringField
      FieldName = 'REMANECENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryAbastecimentosAUTOMATICO: TStringField
      FieldName = 'AUTOMATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object DspAbastecimentos: TDataSetProvider
    DataSet = QryAbastecimentos
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspAbastecimentosGetTableName
    Left = 264
    Top = 41
  end
  object CdsAbastecimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAbastecimentos'
    BeforePost = CdsAbastecimentosBeforePost
    OnNewRecord = CdsAbastecimentosNewRecord
    Left = 264
    Top = 56
    object CdsAbastecimentosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAbastecimentosNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsAbastecimentosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosENCERRANTE: TFMTBCDField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object CdsAbastecimentosLITROS: TFMTBCDField
      FieldName = 'LITROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object CdsAbastecimentosPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosSTATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosCOO_CUPOM: TIntegerField
      FieldName = 'COO_CUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosNOTAFISCAL_NUM: TStringField
      FieldName = 'NOTAFISCAL_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsAbastecimentosMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsAbastecimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsAbastecimentosIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsAbastecimentosDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosDATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosHORA_ABASTEC: TSQLTimeStampField
      FieldName = 'HORA_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentosREMANECENTE: TStringField
      FieldName = 'REMANECENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsAbastecimentosAUTOMATICO: TStringField
      FieldName = 'AUTOMATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object CdsAbastecimentos1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAbastecimentos'
    Left = 264
    Top = 72
    object CdsAbastecimentos1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAbastecimentos1NUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsAbastecimentos1DATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1HORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1ENCERRANTE: TFMTBCDField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object CdsAbastecimentos1LITROS: TFMTBCDField
      FieldName = 'LITROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object CdsAbastecimentos1PRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1STATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1COO_CUPOM: TIntegerField
      FieldName = 'COO_CUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1NOTAFISCAL_NUM: TStringField
      FieldName = 'NOTAFISCAL_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsAbastecimentos1MD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsAbastecimentos1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsAbastecimentos1IDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1NUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsAbastecimentos1DATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1HORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1DATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1HORA_ABASTEC: TSQLTimeStampField
      FieldName = 'HORA_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastecimentos1REMANECENTE: TStringField
      FieldName = 'REMANECENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsAbastecimentos1AUTOMATICO: TStringField
      FieldName = 'AUTOMATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryBombasLacre: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from bombas_lacres b'
      'where b.id_bomba = :pIDBomba')
    Left = 152
    Top = 24
    ParamData = <
      item
        Name = 'pIDBomba'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryBombasLacreID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBombasLacreID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
    end
    object QryBombasLacreNUM_LACRE: TStringField
      FieldName = 'NUM_LACRE'
      ProviderFlags = [pfInUpdate]
    end
    object QryBombasLacreDATA_APLIC: TSQLTimeStampField
      FieldName = 'DATA_APLIC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspBombasLacre: TDataSetProvider
    DataSet = QryBombasLacre
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspBombasLacreGetTableName
    Left = 152
    Top = 40
  end
  object CdsBombasLacre: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDBomba'
        ParamType = ptInput
      end>
    ProviderName = 'DspBombasLacre'
    OnNewRecord = CdsBombasLacreNewRecord
    Left = 152
    Top = 64
    object CdsBombasLacreID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsBombasLacreID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBombasLacreNUM_LACRE: TStringField
      FieldName = 'NUM_LACRE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBombasLacreDATA_APLIC: TSQLTimeStampField
      FieldName = 'DATA_APLIC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryPlacasAbastec: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from placas_abastec')
    Left = 40
    Top = 22
    object QryPlacasAbastecID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPlacasAbastecID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPlacasAbastecID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPlacasAbastecID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPlacasAbastecDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecMOTIVO: TStringField
      FieldName = 'MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPlacasAbastecCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecNUM_LACRE_OUT: TStringField
      FieldName = 'NUM_LACRE_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecNUM_LACRE_IN: TStringField
      FieldName = 'NUM_LACRE_IN'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecENCERRANTE_OUT: TFloatField
      FieldName = 'ENCERRANTE_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecENCERRANTE_IN: TFloatField
      FieldName = 'ENCERRANTE_IN'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecVESPEB: TFloatField
      FieldName = 'VESPEB'
      ProviderFlags = [pfInUpdate]
    end
    object QryPlacasAbastecJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPlacasAbastecMEDIDAS: TStringField
      FieldName = 'MEDIDAS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPlacasAbastecPRESTADORA: TStringField
      FieldName = 'PRESTADORA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPlacasAbastecMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPlacasAbastecMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPlacasAbastecMEDIDAS1: TStringField
      FieldName = 'MEDIDAS1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPlacasAbastecMEDIDAS2: TStringField
      FieldName = 'MEDIDAS2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPlacasAbastecJUSTIFICATIVA1: TStringField
      FieldName = 'JUSTIFICATIVA1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryPlacasAbastecJUSTIFICATIVA2: TStringField
      FieldName = 'JUSTIFICATIVA2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DspPlacasAbastec: TDataSetProvider
    DataSet = QryPlacasAbastec
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspPlacasAbastecGetTableName
    Left = 40
    Top = 48
  end
  object CdsPlacasAbastec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPlacasAbastec'
    OnNewRecord = CdsPlacasAbastecNewRecord
    Left = 40
    Top = 72
    object CdsPlacasAbastecID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPlacasAbastecID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPlacasAbastecID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPlacasAbastecID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPlacasAbastecDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecMOTIVO: TStringField
      FieldName = 'MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPlacasAbastecCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecNUM_LACRE_OUT: TStringField
      FieldName = 'NUM_LACRE_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecNUM_LACRE_IN: TStringField
      FieldName = 'NUM_LACRE_IN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecENCERRANTE_OUT: TFloatField
      FieldName = 'ENCERRANTE_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecENCERRANTE_IN: TFloatField
      FieldName = 'ENCERRANTE_IN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecVESPEB: TFloatField
      FieldName = 'VESPEB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPlacasAbastecJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPlacasAbastecMEDIDAS: TStringField
      FieldName = 'MEDIDAS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPlacasAbastecPRESTADORA: TStringField
      FieldName = 'PRESTADORA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPlacasAbastecMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPlacasAbastecMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPlacasAbastecMEDIDAS1: TStringField
      FieldName = 'MEDIDAS1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPlacasAbastecMEDIDAS2: TStringField
      FieldName = 'MEDIDAS2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPlacasAbastecJUSTIFICATIVA1: TStringField
      FieldName = 'JUSTIFICATIVA1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPlacasAbastecJUSTIFICATIVA2: TStringField
      FieldName = 'JUSTIFICATIVA2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object QryBicoPerda: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select *  from bico_perdas'
      'where bico_perdas.pendente = '#39'S'#39
      'and bico_perdas.numbico = :pNumBico')
    Left = 360
    Top = 32
    ParamData = <
      item
        Name = 'pNumBico'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryBicoPerdaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBicoPerdaNUMBICO: TStringField
      FieldName = 'NUMBICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryBicoPerdaDATA_MOVTO: TSQLTimeStampField
      FieldName = 'DATA_MOVTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicoPerdaHORA_MOVTO: TSQLTimeStampField
      FieldName = 'HORA_MOVTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicoPerdaVOLUME: TFloatField
      FieldName = 'VOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicoPerdaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryBicoPerdaEF: TFloatField
      FieldName = 'EF'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicoPerdaTRAVA_ABAST: TStringField
      FieldName = 'TRAVA_ABAST'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryBicoPerdaEA: TFloatField
      FieldName = 'EA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspBicoPerda: TDataSetProvider
    DataSet = QryBicoPerda
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspBicoPerdaGetTableName
    Left = 360
    Top = 48
  end
  object CdsBicoPerda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pNumBico'
        ParamType = ptInput
      end>
    ProviderName = 'DspBicoPerda'
    OnNewRecord = CdsBicoPerdaNewRecord
    Left = 360
    Top = 68
    object CdsBicoPerdaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsBicoPerdaNUMBICO: TStringField
      FieldName = 'NUMBICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsBicoPerdaDATA_MOVTO: TSQLTimeStampField
      FieldName = 'DATA_MOVTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicoPerdaHORA_MOVTO: TSQLTimeStampField
      FieldName = 'HORA_MOVTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicoPerdaVOLUME: TFloatField
      FieldName = 'VOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicoPerdaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsBicoPerdaEF: TFloatField
      FieldName = 'EF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicoPerdaTRAVA_ABAST: TStringField
      FieldName = 'TRAVA_ABAST'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsBicoPerdaEA: TFloatField
      FieldName = 'EA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsTanques: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspTanques'
    OnNewRecord = CdsTanquesNewRecord
    Left = 184
    Top = 194
    object CdsTanquesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsTanquesTANQUE_NUMERO: TIntegerField
      FieldName = 'TANQUE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTanquesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTanquesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsTanquesCAPACIDADE: TFloatField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTanquesDATA_ESTOQUE: TSQLTimeStampField
      FieldName = 'DATA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTanquesHORA_ESTOQUE: TSQLTimeStampField
      FieldName = 'HORA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTanquesEST_FISICO: TFloatField
      FieldName = 'EST_FISICO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspTanques: TDataSetProvider
    DataSet = QryTanques
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspTanquesGetTableName
    Left = 184
    Top = 163
  end
  object QryTanques: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from tanques_abastec t'
      'where t.id = :pID')
    Left = 184
    Top = 143
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryTanquesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTanquesTANQUE_NUMERO: TIntegerField
      FieldName = 'TANQUE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object QryTanquesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryTanquesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryTanquesCAPACIDADE: TFloatField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QryTanquesDATA_ESTOQUE: TSQLTimeStampField
      FieldName = 'DATA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QryTanquesHORA_ESTOQUE: TSQLTimeStampField
      FieldName = 'HORA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QryTanquesEST_FISICO: TFloatField
      FieldName = 'EST_FISICO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsTanquePerda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTanquePerda'
    Left = 272
    Top = 192
    object CdsTanquePerdaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsTanquePerdaDATA: TDateField
      FieldName = 'DATA'
    end
    object CdsTanquePerdaTANQUE_NUMERO: TIntegerField
      FieldName = 'TANQUE_NUMERO'
    end
    object CdsTanquePerdaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object CdsTanquePerdaIMPRESSO: TIntegerField
      FieldName = 'IMPRESSO'
    end
    object CdsTanquePerdaNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsTanquePerdaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTanquePerdaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DspTanquePerda: TDataSetProvider
    DataSet = QryTanquePerda
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 168
  end
  object QryTanquePerda: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from tanque_perdas t'
      'where t.data = current_date'
      'and t.impresso = 0')
    Left = 272
    Top = 144
    object QryTanquePerdaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryTanquePerdaDATA: TDateField
      FieldName = 'DATA'
    end
    object QryTanquePerdaTANQUE_NUMERO: TIntegerField
      FieldName = 'TANQUE_NUMERO'
    end
    object QryTanquePerdaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object QryTanquePerdaIMPRESSO: TIntegerField
      FieldName = 'IMPRESSO'
    end
    object QryTanquePerdaNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryTanquePerdaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryTanquePerdaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object CdsBombas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspBombas'
    OnNewRecord = CdsBombasNewRecord
    Left = 112
    Top = 198
    object CdsBombasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsBombasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsBombasBOMBA_NUMERO: TIntegerField
      FieldName = 'BOMBA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBombasSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsBombasFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsBombasMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsBombasTIPO_MEDICAO: TIntegerField
      FieldName = 'TIPO_MEDICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspBombas: TDataSetProvider
    DataSet = QryBombas
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspBombasGetTableName
    Left = 112
    Top = 172
  end
  object QryBombas: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from bombas_abastec b'
      'where b.id = :pID')
    Left = 112
    Top = 143
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryBombasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBombasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryBombasBOMBA_NUMERO: TIntegerField
      FieldName = 'BOMBA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object QryBombasSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryBombasFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryBombasMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryBombasTIPO_MEDICAO: TIntegerField
      FieldName = 'TIPO_MEDICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsBicos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pBico'
        ParamType = ptInput
      end>
    ProviderName = 'DspBicos'
    OnNewRecord = CdsBicosNewRecord
    Left = 40
    Top = 197
    object CdsBicosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsBicosID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicosID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicosBICO_CONCENTRADOR: TStringField
      FieldName = 'BICO_CONCENTRADOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object CdsBicosPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicosENCERRANTE: TFloatField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicosNUM_LOGICO: TStringField
      FieldName = 'NUM_LOGICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBicosATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object DspBicos: TDataSetProvider
    DataSet = QryBicos
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspBicosGetTableName
    Left = 40
    Top = 173
  end
  object QryBicos: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from bicos_abastec b'
      'where b.bico_concentrador = :pBico')
    Left = 40
    Top = 144
    ParamData = <
      item
        Name = 'pBico'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryBicosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBicosID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicosID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicosBICO_CONCENTRADOR: TStringField
      FieldName = 'BICO_CONCENTRADOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object QryBicosPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicosENCERRANTE: TFloatField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicosNUM_LOGICO: TStringField
      FieldName = 'NUM_LOGICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QryBicosATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object CdsConfigPosto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConfigPosto'
    OnNewRecord = CdsConfigPostoNewRecord
    Left = 448
    Top = 72
    object CdsConfigPostoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsConfigPostoPORTA_CBC: TIntegerField
      FieldName = 'PORTA_CBC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsConfigPostoIP_CBC: TStringField
      FieldName = 'IP_CBC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsConfigPostoTIPO_CBC: TIntegerField
      FieldName = 'TIPO_CBC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsConfigPostoPORTA_IP_CBC: TIntegerField
      FieldName = 'PORTA_IP_CBC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsConfigPostoCBC_IDENTIFICADOR: TStringField
      FieldName = 'CBC_IDENTIFICADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsConfigPostoCONCENTRADOR: TIntegerField
      FieldName = 'CONCENTRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigPostoSPI_SERIAL: TIntegerField
      FieldName = 'SPI_SERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigPostoSPI_IP: TIntegerField
      FieldName = 'SPI_IP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsConfigPostoSPI_HOST: TStringField
      FieldName = 'SPI_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DspConfigPosto: TDataSetProvider
    DataSet = QryConfigPosto
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspConfigPostoGetTableName
    Left = 448
    Top = 48
  end
  object QryConfigPosto: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from config_posto')
    Left = 448
    Top = 24
    object QryConfigPostoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConfigPostoPORTA_CBC: TIntegerField
      FieldName = 'PORTA_CBC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryConfigPostoIP_CBC: TStringField
      FieldName = 'IP_CBC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryConfigPostoTIPO_CBC: TIntegerField
      FieldName = 'TIPO_CBC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryConfigPostoPORTA_IP_CBC: TIntegerField
      FieldName = 'PORTA_IP_CBC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryConfigPostoCBC_IDENTIFICADOR: TStringField
      FieldName = 'CBC_IDENTIFICADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryConfigPostoCONCENTRADOR: TIntegerField
      FieldName = 'CONCENTRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigPostoSPI_SERIAL: TIntegerField
      FieldName = 'SPI_SERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigPostoSPI_IP: TIntegerField
      FieldName = 'SPI_IP'
      ProviderFlags = [pfInUpdate]
    end
    object QryConfigPostoSPI_HOST: TStringField
      FieldName = 'SPI_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object QryBicoComunica: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from bico_comunica bc'
      'where bc.fim is null'
      'and bc.comunicacao = 0')
    Left = 544
    Top = 26
    object QryBicoComunicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryBicoComunicaID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Required = True
    end
    object QryBicoComunicaCOMUNICACAO: TIntegerField
      FieldName = 'COMUNICACAO'
      Required = True
    end
    object QryBicoComunicaINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object QryBicoComunicaFIM: TTimeField
      FieldName = 'FIM'
    end
    object QryBicoComunicaNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      Size = 2
    end
    object QryBicoComunicaCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 50
    end
    object QryBicoComunicaEI: TFloatField
      FieldName = 'EI'
    end
    object QryBicoComunicaEF: TFloatField
      FieldName = 'EF'
    end
    object QryBicoComunicaDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryBicoComunicaIMPRESSO: TIntegerField
      FieldName = 'IMPRESSO'
      ProviderFlags = [pfInUpdate]
    end
    object QryBicoComunicaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspBicoComunica: TDataSetProvider
    DataSet = QryBicoComunica
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 50
  end
  object CdsBicoComunica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBicoComunica'
    Left = 544
    Top = 74
    object CdsBicoComunicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsBicoComunicaID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Required = True
    end
    object CdsBicoComunicaCOMUNICACAO: TIntegerField
      FieldName = 'COMUNICACAO'
      Required = True
    end
    object CdsBicoComunicaINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object CdsBicoComunicaFIM: TTimeField
      FieldName = 'FIM'
    end
    object CdsBicoComunicaNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      Size = 2
    end
    object CdsBicoComunicaCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 50
    end
    object CdsBicoComunicaEI: TFloatField
      FieldName = 'EI'
    end
    object CdsBicoComunicaEF: TFloatField
      FieldName = 'EF'
    end
    object CdsBicoComunicaDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsBicoComunicaIMPRESSO: TIntegerField
      FieldName = 'IMPRESSO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBicoComunicaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryAbastTemp: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from abast_pendente')
    Left = 368
    Top = 144
    object QryAbastTempID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAbastTempNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QryAbastTempDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempENCERRANTE: TFloatField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempLITROS: TFloatField
      FieldName = 'LITROS'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempSTATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempCOO_CUPOM: TIntegerField
      FieldName = 'COO_CUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempNOTAFISCAL_NUM: TStringField
      FieldName = 'NOTAFISCAL_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryAbastTempMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object QryAbastTempDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryAbastTempIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryAbastTempDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempDATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempHORA_ABASTEC: TSQLTimeStampField
      FieldName = 'HORA_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object QryAbastTempREMANECENTE: TStringField
      FieldName = 'REMANECENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryAbastTempAUTOMATICO: TStringField
      FieldName = 'AUTOMATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object DspAbastTemp: TDataSetProvider
    DataSet = QryAbastTemp
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspAbastTempGetTableName
    Left = 368
    Top = 168
  end
  object CdsAbastTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAbastTemp'
    OnNewRecord = CdsAbastTempNewRecord
    Left = 368
    Top = 192
    object CdsAbastTempID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAbastTempNUM_BICO: TStringField
      FieldName = 'NUM_BICO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsAbastTempDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempENCERRANTE: TFloatField
      FieldName = 'ENCERRANTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempLITROS: TFloatField
      FieldName = 'LITROS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempSTATUS_ABASTEC: TIntegerField
      FieldName = 'STATUS_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempCOO_CUPOM: TIntegerField
      FieldName = 'COO_CUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempNOTAFISCAL_NUM: TStringField
      FieldName = 'NOTAFISCAL_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsAbastTempMD5REGISTRO: TStringField
      FieldName = 'MD5REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object CdsAbastTempDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsAbastTempIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempNUMSERIEECF: TStringField
      FieldName = 'NUMSERIEECF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsAbastTempDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempDATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempHORA_ABASTEC: TSQLTimeStampField
      FieldName = 'HORA_ABASTEC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAbastTempREMANECENTE: TStringField
      FieldName = 'REMANECENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsAbastTempAUTOMATICO: TStringField
      FieldName = 'AUTOMATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryLivroLMC: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from livro_lmc l'
      'where l.data_fechamento is null')
    Left = 464
    Top = 144
    object QryLivroLMCNUM_LIVRO: TIntegerField
      FieldName = 'NUM_LIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLivroLMCQUANT_PAG: TIntegerField
      FieldName = 'QUANT_PAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryLivroLMCDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryLivroLMCDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryLivroLMCPAG_ATUAL_IMPRESSA: TIntegerField
      FieldName = 'PAG_ATUAL_IMPRESSA'
      ProviderFlags = [pfInUpdate]
    end
    object QryLivroLMCID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object QryLivroLMCID_CONFERENTE: TIntegerField
      FieldName = 'ID_CONFERENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryLivroLMCID_GERENTE: TIntegerField
      FieldName = 'ID_GERENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspLivroLMC: TDataSetProvider
    DataSet = QryLivroLMC
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspLivroLMCGetTableName
    Left = 464
    Top = 168
  end
  object CdsLivroLMC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLivroLMC'
    Left = 464
    Top = 192
    object CdsLivroLMCNUM_LIVRO: TIntegerField
      FieldName = 'NUM_LIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsLivroLMCQUANT_PAG: TIntegerField
      FieldName = 'QUANT_PAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsLivroLMCDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsLivroLMCDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsLivroLMCPAG_ATUAL_IMPRESSA: TIntegerField
      FieldName = 'PAG_ATUAL_IMPRESSA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsLivroLMCID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsLivroLMCID_CONFERENTE: TIntegerField
      FieldName = 'ID_CONFERENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsLivroLMCID_GERENTE: TIntegerField
      FieldName = 'ID_GERENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QryLivroLMCPag: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from livro_lmc_pag p'
      'where p.num_livro = :pNumLivro')
    Left = 560
    Top = 144
    ParamData = <
      item
        Name = 'pNumLivro'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryLivroLMCPagNUM_LIVRO: TIntegerField
      FieldName = 'NUM_LIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLivroLMCPagNUM_PAGINA: TIntegerField
      FieldName = 'NUM_PAGINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLivroLMCPagDATA_PAGINA: TDateField
      FieldName = 'DATA_PAGINA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryLivroLMCPagID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryLivroLMCPagEST_FECHAMENTO: TFloatField
      FieldName = 'EST_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryLivroLMCPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DspLivroLMCPag: TDataSetProvider
    DataSet = QryLivroLMCPag
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspLivroLMCPagGetTableName
    Left = 560
    Top = 168
  end
  object CdsLivroLMCPag: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNumLivro'
        ParamType = ptInput
      end>
    ProviderName = 'DspLivroLMCPag'
    Left = 560
    Top = 192
    object CdsLivroLMCPagNUM_LIVRO: TIntegerField
      FieldName = 'NUM_LIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsLivroLMCPagNUM_PAGINA: TIntegerField
      FieldName = 'NUM_PAGINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsLivroLMCPagDATA_PAGINA: TDateField
      FieldName = 'DATA_PAGINA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsLivroLMCPagID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsLivroLMCPagEST_FECHAMENTO: TFloatField
      FieldName = 'EST_FECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsLivroLMCPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
end
