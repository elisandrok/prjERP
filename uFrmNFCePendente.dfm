inherited FrmNFCePendente: TFrmNFCePendente
  Left = 291
  Caption = 'Selecionar NFCe pendente'
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 667
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 661
    Height = 446
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 657
      Height = 429
      Align = alClient
      DataSource = DataNFCe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'data_pedido'
          Title.Caption = 'Data Gerado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_entrega'
          Title.Caption = 'Data Envio'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idcliente'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cliente'
          Title.Caption = 'Nome do Cliente'
          Width = 319
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Title.Caption = 'Valor Total'
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
      'p.cliente,p.valor_total from pedido p'
      'where p.confirmada = '#39'N'#39
      'and p.cancelado = '#39'N'#39
      'and (p.chave_nfe is null or p.chave_nfe = '#39#39')'
      'and (p.coo is null or p.coo <=0)'
      'and p.nfe_tipoemiss is null'
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
  end
end
