object DmRelatorios: TDmRelatorios
  OldCreateOrder = False
  Height = 505
  Width = 802
  object QryEntrada: TFDQuery
    Connection = DmConexao.Conexao
    Left = 32
    Top = 136
  end
  object QrySaidas: TFDQuery
    Connection = DmConexao.Conexao
    Left = 32
    Top = 192
  end
  object QryComissoes: TFDQuery
    Connection = DmConexao.Conexao
    Left = 32
    Top = 80
  end
  object DataComissao: TDataSource
    DataSet = QryComissoes
    Left = 136
    Top = 80
  end
  object QryRelatorios: TFDQuery
    Connection = DmConexao.Conexao
    Left = 304
    Top = 71
  end
  object DspRelatorios: TDataSetProvider
    DataSet = QryRelatorios
    UpdateMode = upWhereKeyOnly
    Left = 303
    Top = 103
  end
  object CdsRelatorios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRelatorios'
    Left = 303
    Top = 135
  end
  object frxGeral: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42487.460495925900000000
    ReportOptions.LastChange = 42598.633790300930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 208
    Top = 229
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBHoras
        DataSetName = 'frxDBHoras'
      end
      item
        DataSet = frxDBDOrdServ
        DataSetName = 'frxDBOrdServ'
      end
      item
        DataSet = frxDBPeriodo
        DataSetName = 'frxDBPeriodo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBEmpresaRAZAO_SOCIAL: TfrxMemoView
          Top = 2.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO_SOCIAL"]')
        end
        object Memo2: TfrxMemoView
          Left = 483.779840000000000000
          Top = 2.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mmmm dd, yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.677180000000000000
          Top = 24.456710000000000000
          Width = 710.551640000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Ordem de Servi'#231'os')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 1.779530000000000000
          Top = 107.031540000000000000
          Width = 710.551640000000000000
          Height = 52.913420000000000000
          Shape = skRoundRectangle
        end
        object Memo5: TfrxMemoView
          Left = 78.811070000000000000
          Top = 111.811070000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Abertura')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 110.811070000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' OS')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 336.504020000000000000
          Top = 110.811070000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do cliente')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 626.724800000000000000
          Top = 110.811070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor OS')
          ParentFont = False
        end
        object frxDBPeriododata_inicio: TfrxMemoView
          Left = 3.559060000000000000
          Top = 60.252010000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPeriodo
          DataSetName = 'frxDBPeriodo'
          Memo.UTF8W = (
            
              'Per'#237'odo entre [frxDBPeriodo."data_inicio"] '#224' [frxDBPeriodo."data' +
              '_final"]')
        end
        object Memo8: TfrxMemoView
          Left = 18.897650000000000000
          Top = 136.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Trab.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 102.047310000000000000
          Top = 136.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora Inicio')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 283.464750000000000000
          Top = 135.063080000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Trabalhou')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 370.393940000000000000
          Top = 134.283550000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Funcionario')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 198.535560000000000000
          Top = 113.385900000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Fechamento')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 188.976500000000000000
          Top = 136.063080000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora final')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDOrdServ
        DataSetName = 'frxDBOrdServ'
        RowCount = 0
        object frxDBGeralPEDIDO_NUM: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'N_CONTROLE'
          DataSet = frxDBDOrdServ
          DataSetName = 'frxDBOrdServ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBOrdServ."N_CONTROLE"]')
          ParentFont = False
        end
        object frxDBGeralDATA_PEDIDO: TfrxMemoView
          Left = 90.708720000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_INICIO'
          DataSet = frxDBDOrdServ
          DataSetName = 'frxDBOrdServ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBOrdServ."DATA_INICIO"]')
          ParentFont = False
        end
        object frxDBGeralCLIENTE: TfrxMemoView
          Left = 292.141930000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'CONTATO'
          DataSet = frxDBDOrdServ
          DataSetName = 'frxDBOrdServ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBOrdServ."CONTATO"]')
          ParentFont = False
        end
        object frxDBGeralVALOR_TOTAL: TfrxMemoView
          Left = 627.401980000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PAGO'
          DataSet = frxDBDOrdServ
          DataSetName = 'frxDBOrdServ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOrdServ."VALOR_PAGO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_FIM'
          DataSet = frxDBDOrdServ
          DataSetName = 'frxDBOrdServ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBOrdServ."DATA_FIM"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 540.472790000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = frxDBHoras
        DataSetName = 'frxDBHoras'
        RowCount = 0
        object frxDBHorasDATA_TRAB: TfrxMemoView
          Left = 21.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_TRAB'
          DataSet = frxDBHoras
          DataSetName = 'frxDBHoras'
          Memo.UTF8W = (
            '[frxDBHoras."DATA_TRAB"]')
        end
        object frxDBHorasHORA_INICIO: TfrxMemoView
          Left = 106.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'HORA_INICIO'
          DataSet = frxDBHoras
          DataSetName = 'frxDBHoras'
          Memo.UTF8W = (
            '[frxDBHoras."HORA_INICIO"]')
        end
        object frxDBHorasHORA_FIM: TfrxMemoView
          Left = 202.196970000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'HORA_FIM'
          DataSet = frxDBHoras
          DataSetName = 'frxDBHoras'
          Memo.UTF8W = (
            '[frxDBHoras."HORA_FIM"]')
        end
        object frxDBHorasTEMPO_GASTO: TfrxMemoView
          Left = 283.685220000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'TEMPO_GASTO'
          DataSet = frxDBHoras
          DataSetName = 'frxDBHoras'
          Memo.UTF8W = (
            '[frxDBHoras."TEMPO_GASTO"]')
        end
        object frxDBHorasNOME: TfrxMemoView
          Left = 366.614410000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBHoras
          DataSetName = 'frxDBHoras'
          Memo.UTF8W = (
            '[frxDBHoras."NOME"]')
        end
      end
    end
  end
  object frxDBGeral: TfrxDBDataset
    UserName = 'frxDBGeral'
    CloseDataSource = False
    DataSet = CdsRelatorios
    BCDToCurrency = False
    Left = 296
    Top = 232
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = DmWorkCom.CdsEmpresa
    BCDToCurrency = False
    Left = 296
    Top = 288
  end
  object frxDBItens: TfrxDBDataset
    UserName = 'frxDBItens'
    CloseDataSource = False
    DataSet = DmWorkCom.CdsPedidoItens
    BCDToCurrency = False
    Left = 384
    Top = 240
  end
  object CdsPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 160
    object CdsPeriododata_inicio: TDateField
      FieldName = 'data_inicio'
    end
    object CdsPeriododata_final: TDateField
      FieldName = 'data_final'
    end
  end
  object frxDBPeriodo: TfrxDBDataset
    UserName = 'frxDBPeriodo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data_inicio=data_inicio'
      'data_final=data_final')
    DataSet = CdsPeriodo
    BCDToCurrency = False
    Left = 392
    Top = 296
  end
  object QryHorasTrab: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select h.*,f.nome from os_horas h'
      'left outer join funcionario f on h.id_funcionario = f.id'
      'where h.id_os = :pIDOS')
    Left = 680
    Top = 80
    ParamData = <
      item
        Name = 'pIDOS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryHorasTrabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryHorasTrabID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object QryHorasTrabID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object QryHorasTrabDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object QryHorasTrabDATA_TRAB: TSQLTimeStampField
      FieldName = 'DATA_TRAB'
    end
    object QryHorasTrabHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object QryHorasTrabHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object QryHorasTrabTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object QryHorasTrabREALIZADO: TMemoField
      FieldName = 'REALIZADO'
      BlobType = ftMemo
      Size = 1
    end
    object QryHorasTrabNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object DspHorasTrab: TDataSetProvider
    DataSet = QryHorasTrab
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 112
  end
  object CdsHorasTrab: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_OS'
    MasterFields = 'ID'
    MasterSource = DataOrdServ
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDOS'
        ParamType = ptInput
      end>
    ProviderName = 'DspHorasTrab'
    Left = 680
    Top = 144
    object CdsHorasTrabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsHorasTrabID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object CdsHorasTrabID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object CdsHorasTrabDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object CdsHorasTrabDATA_TRAB: TSQLTimeStampField
      FieldName = 'DATA_TRAB'
    end
    object CdsHorasTrabHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object CdsHorasTrabHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object CdsHorasTrabTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object CdsHorasTrabREALIZADO: TMemoField
      FieldName = 'REALIZADO'
      BlobType = ftMemo
      Size = 1
    end
    object CdsHorasTrabNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object QryOrdServ: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from ord_servico s'
      'where '
      'cast(s.data_os as date) between :pdatai and :pdataf'
      'and s.status = :pStatus'
      'order by s.contato')
    Left = 552
    Top = 79
    ParamData = <
      item
        Position = 1
        Name = 'PDATAI'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'PDATAF'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'PSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryOrdServID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryOrdServN_CONTROLE: TStringField
      FieldName = 'N_CONTROLE'
    end
    object QryOrdServID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Required = True
    end
    object QryOrdServCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object QryOrdServDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object QryOrdServHORA_OS: TSQLTimeStampField
      FieldName = 'HORA_OS'
    end
    object QryOrdServRECLAMADO: TStringField
      FieldName = 'RECLAMADO'
      Size = 2048
    end
    object QryOrdServCONSTATADO: TStringField
      FieldName = 'CONSTATADO'
      Size = 2048
    end
    object QryOrdServREALIZADO: TStringField
      FieldName = 'REALIZADO'
      Size = 2048
    end
    object QryOrdServDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object QryOrdServHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object QryOrdServDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object QryOrdServHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object QryOrdServTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object QryOrdServVALOR_COBRADO: TFloatField
      FieldName = 'VALOR_COBRADO'
    end
    object QryOrdServDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QryOrdServACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object QryOrdServOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object QryOrdServVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object QryOrdServFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object QryOrdServDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
    end
    object QryOrdServENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object QryOrdServNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QryOrdServCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object QryOrdServBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object QryOrdServCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object QryOrdServUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QryOrdServCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QryOrdServTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object QryOrdServCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 12
    end
    object QryOrdServCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object QryOrdServINSCRICAORG: TStringField
      FieldName = 'INSCRICAORG'
    end
    object QryOrdServSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object QryOrdServIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object QryOrdServCHAVE_NFSE: TStringField
      FieldName = 'CHAVE_NFSE'
      Size = 50
    end
  end
  object DspOrdServ: TDataSetProvider
    DataSet = QryOrdServ
    UpdateMode = upWhereKeyOnly
    Left = 551
    Top = 111
  end
  object CdsOrdServ: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'PDATAI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PDATAF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PSTATUS'
        ParamType = ptInput
      end>
    ProviderName = 'DspOrdServ'
    Left = 551
    Top = 143
    object CdsOrdServID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsOrdServN_CONTROLE: TStringField
      FieldName = 'N_CONTROLE'
    end
    object CdsOrdServID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Required = True
    end
    object CdsOrdServCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object CdsOrdServDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object CdsOrdServHORA_OS: TSQLTimeStampField
      FieldName = 'HORA_OS'
    end
    object CdsOrdServRECLAMADO: TStringField
      FieldName = 'RECLAMADO'
      Size = 2048
    end
    object CdsOrdServCONSTATADO: TStringField
      FieldName = 'CONSTATADO'
      Size = 2048
    end
    object CdsOrdServREALIZADO: TStringField
      FieldName = 'REALIZADO'
      Size = 2048
    end
    object CdsOrdServDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object CdsOrdServHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object CdsOrdServDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object CdsOrdServHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object CdsOrdServTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object CdsOrdServVALOR_COBRADO: TFloatField
      FieldName = 'VALOR_COBRADO'
    end
    object CdsOrdServDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object CdsOrdServACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object CdsOrdServOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object CdsOrdServVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object CdsOrdServFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object CdsOrdServDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
    end
    object CdsOrdServENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object CdsOrdServNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CdsOrdServCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object CdsOrdServBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsOrdServCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object CdsOrdServUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CdsOrdServCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsOrdServTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object CdsOrdServCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 12
    end
    object CdsOrdServCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object CdsOrdServINSCRICAORG: TStringField
      FieldName = 'INSCRICAORG'
    end
    object CdsOrdServSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object CdsOrdServIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object CdsOrdServCHAVE_NFSE: TStringField
      FieldName = 'CHAVE_NFSE'
      Size = 50
    end
  end
  object frxDBDOrdServ: TfrxDBDataset
    UserName = 'frxDBOrdServ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'N_CONTROLE=N_CONTROLE'
      'ID_CONTATO=ID_CONTATO'
      'CONTATO=CONTATO'
      'DATA_OS=DATA_OS'
      'HORA_OS=HORA_OS'
      'RECLAMADO=RECLAMADO'
      'CONSTATADO=CONSTATADO'
      'REALIZADO=REALIZADO'
      'DATA_INICIO=DATA_INICIO'
      'HORA_INICIO=HORA_INICIO'
      'DATA_FIM=DATA_FIM'
      'HORA_FIM=HORA_FIM'
      'TEMPO_GASTO=TEMPO_GASTO'
      'VALOR_COBRADO=VALOR_COBRADO'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'OUTROS=OUTROS'
      'VALOR_PAGO=VALOR_PAGO'
      'FORMAPAGTO=FORMAPAGTO'
      'DOCUMENTO=DOCUMENTO'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'CELULAR=CELULAR'
      'CNPJCPF=CNPJCPF'
      'INSCRICAORG=INSCRICAORG'
      'STATUS=STATUS'
      'IDEMPRESA=IDEMPRESA'
      'CHAVE_NFSE=CHAVE_NFSE')
    DataSet = CdsOrdServ
    BCDToCurrency = False
    Left = 552
    Top = 224
  end
  object DataOrdServ: TDataSource
    DataSet = CdsOrdServ
    Left = 608
    Top = 144
  end
  object frxDBHoras: TfrxDBDataset
    UserName = 'frxDBHoras'
    CloseDataSource = False
    DataSet = CdsHorasTrab
    BCDToCurrency = False
    Left = 680
    Top = 224
  end
end
