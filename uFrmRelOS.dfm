object FrmRelOS: TFrmRelOS
  Left = 260
  Top = 113
  Caption = 'FrmRelOS'
  ClientHeight = 537
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QryRelOS: TFDQuery
    SQL.Strings = (
      
        'select ord_servico.n_controle,ord_servico.data_os,os_horas.data_' +
        'trab,'
      'os_horas.hora_inicio,os_horas.hora_fim,os_horas.tempo_gasto,'
      'funcionario.nome,ord_servico.contato,ord_servico.id_contato,'
      
        'ord_servico.valor_cobrado,ord_servico.desconto,ord_servico.acres' +
        'cimo,'
      
        'ord_servico.outros,ord_servico.valor_pago,ord_servico.status fro' +
        'm ord_servico'
      'left outer join os_horas on ord_servico.id = os_horas.id_os'
      
        'left outer join funcionario on os_horas.id_funcionario = funcion' +
        'ario.id')
    Left = 112
    Top = 272
    object QryRelOSN_CONTROLE: TStringField
      FieldName = 'N_CONTROLE'
    end
    object QryRelOSDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object QryRelOSDATA_TRAB: TSQLTimeStampField
      FieldName = 'DATA_TRAB'
    end
    object QryRelOSHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object QryRelOSHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object QryRelOSTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object QryRelOSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QryRelOSCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object QryRelOSID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Required = True
    end
    object QryRelOSVALOR_COBRADO: TFloatField
      FieldName = 'VALOR_COBRADO'
    end
    object QryRelOSDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QryRelOSACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object QryRelOSOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object QryRelOSVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object QryRelOSSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object DspRelOS: TDataSetProvider
    DataSet = QryRelOS
    Left = 112
    Top = 320
  end
  object CdsRelOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRelOS'
    Left = 112
    Top = 368
    object CdsRelOSN_CONTROLE: TStringField
      FieldName = 'N_CONTROLE'
    end
    object CdsRelOSDATA_OS: TSQLTimeStampField
      FieldName = 'DATA_OS'
    end
    object CdsRelOSDATA_TRAB: TSQLTimeStampField
      FieldName = 'DATA_TRAB'
    end
    object CdsRelOSHORA_INICIO: TSQLTimeStampField
      FieldName = 'HORA_INICIO'
    end
    object CdsRelOSHORA_FIM: TSQLTimeStampField
      FieldName = 'HORA_FIM'
    end
    object CdsRelOSTEMPO_GASTO: TSQLTimeStampField
      FieldName = 'TEMPO_GASTO'
    end
    object CdsRelOSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsRelOSCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object CdsRelOSID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Required = True
    end
    object CdsRelOSVALOR_COBRADO: TFloatField
      FieldName = 'VALOR_COBRADO'
    end
    object CdsRelOSDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object CdsRelOSACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object CdsRelOSOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object CdsRelOSVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object CdsRelOSSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
end
