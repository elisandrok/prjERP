inherited FrmEstoqueLoja: TFrmEstoqueLoja
  Caption = 'Estoque por lojas'
  ClientHeight = 378
  ClientWidth = 485
  OnShow = FormShow
  ExplicitWidth = 491
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  object GridEstoque: TDBGrid
    Left = 0
    Top = 36
    Width = 485
    Height = 342
    Align = alClient
    DataSource = DataEstoque
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDEMPRESA'
        Title.Alignment = taCenter
        Title.Caption = 'Loja'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 36
    Align = alTop
    TabOrder = 1
    object LbProduto: TLabel
      Left = 9
      Top = 11
      Width = 469
      Height = 13
      AutoSize = False
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DataEstoque: TDataSource
    DataSet = CdsEstoque
    Left = 168
    Top = 112
  end
  object QryEstoque: TFDQuery
    SQL.Strings = (
      'select e.idempresa,x.razao_social,e.quantidade from estoque e'
      'inner join empresa x on e.idempresa = x.id'
      'where e.idproduto = :pIDProduto')
    Left = 288
    Top = 120
    ParamData = <
      item
        Name = 'pIDProduto'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryEstoqueIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object QryEstoqueRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object QryEstoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
  end
  object DspEstoque: TDataSetProvider
    DataSet = QryEstoque
    Left = 288
    Top = 168
  end
  object CdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDProduto'
        ParamType = ptInput
      end>
    ProviderName = 'DspEstoque'
    Left = 288
    Top = 216
    object CdsEstoqueIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object CdsEstoqueRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object CdsEstoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
  end
end
