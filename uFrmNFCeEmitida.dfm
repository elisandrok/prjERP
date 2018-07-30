inherited FrmNFCeEmitida: TFrmNFCeEmitida
  Left = 247
  Top = 116
  Caption = 'Selecionar NFCe emitida'
  ClientHeight = 466
  ClientWidth = 798
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 804
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 798
    Height = 466
    Align = alClient
    TabOrder = 0
    object GridNFe: TDBGrid
      Left = 2
      Top = 15
      Width = 794
      Height = 449
      Align = alClient
      DataSource = DataNFCe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = GridNFeDrawColumnCell
      OnDblClick = GridNFeDblClick
      OnKeyPress = GridNFeKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'data_pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Data Gerado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Data Envio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idcliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 290
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status_nfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'chave_nfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Chave NFCe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DataNFCe: TDataSource
    DataSet = CdsNFCe
    Left = 184
    Top = 272
  end
  object CdsNFCe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspNFCe'
    Left = 104
    Top = 264
    object CdsNFCeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object CdsNFCedata_pedido: TDateField
      FieldName = 'data_pedido'
    end
    object CdsNFCedata_entrega: TDateField
      FieldName = 'data_entrega'
    end
    object CdsNFCeidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object CdsNFCecliente: TStringField
      FieldName = 'cliente'
      Size = 50
    end
    object CdsNFCevalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object CdsNFCechave_nfe: TStringField
      FieldName = 'chave_nfe'
      Size = 100
    end
    object CdsNFCestatus_nfe: TStringField
      FieldName = 'status_nfe'
      FixedChar = True
      Size = 3
    end
    object CdsNFCecancelado: TStringField
      FieldName = 'cancelado'
      FixedChar = True
      Size = 1
    end
  end
  object DspNFCe: TDataSetProvider
    DataSet = QryNFCe
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 192
  end
  object QryNFCe: TFDQuery
    SQL.Strings = (
      'select p.id,p.data_pedido,p.data_entrega,p.idcliente,'
      'p.cliente,p.valor_total,p.chave_nfe,p.status_nfe,'
      'p.cancelado from pedido p'
      'where p.data_entrega = current_date'
      'and p.confirmada = '#39'S'#39
      'and (p.chave_nfe is not null or p.chave_nfe <> '#39#39')'
      'and (p.coo is null or p.coo <=0)'
      'order by p.data_entrega desc')
    Left = 104
    Top = 192
    object QryNFCeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object QryNFCedata_pedido: TDateField
      FieldName = 'data_pedido'
    end
    object QryNFCedata_entrega: TDateField
      FieldName = 'data_entrega'
    end
    object QryNFCeidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object QryNFCecliente: TStringField
      FieldName = 'cliente'
      Size = 50
    end
    object QryNFCevalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object QryNFCechave_nfe: TStringField
      FieldName = 'chave_nfe'
      Size = 100
    end
    object QryNFCestatus_nfe: TStringField
      FieldName = 'status_nfe'
      FixedChar = True
      Size = 3
    end
    object QryNFCecancelado: TStringField
      FieldName = 'cancelado'
      FixedChar = True
      Size = 1
    end
  end
end
