object DmAuxiliar: TDmAuxiliar
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 560
  Width = 804
  object QryGeral: TFDQuery
    Left = 24
    Top = 16
  end
  object DspGeral: TDataSetProvider
    DataSet = QryGeral
    Options = [poAllowCommandText]
    Left = 24
    Top = 80
  end
  object CdsRegistros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGeral'
    Left = 176
    Top = 32
  end
  object CdsRegAuxiliar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGeral'
    Left = 272
    Top = 32
  end
  object CdsRegAuxiliar1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGeral'
    Left = 352
    Top = 32
  end
  object CdsNFeXml: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGeral'
    Left = 440
    Top = 32
  end
  object CdsGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGeral'
    Left = 96
    Top = 32
  end
  object QryAux: TFDQuery
    Left = 64
    Top = 168
  end
  object CdsRegAuxVP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 168
    object CdsRegAuxVPRegistro: TStringField
      FieldName = 'Registro'
      Size = 2
    end
    object CdsRegAuxVPTotal: TIntegerField
      FieldName = 'Total'
    end
  end
  object ControleLinhaBloco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 168
    object ControleLinhaBlocoBLOCO: TStringField
      FieldName = 'BLOCO'
      Size = 4
    end
    object ControleLinhaBlocoQUANT: TIntegerField
      FieldName = 'QUANT'
    end
  end
  object CdsListaEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 168
    object CdsListaEstoqueIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object CdsListaEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CdsListaEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
  end
end
