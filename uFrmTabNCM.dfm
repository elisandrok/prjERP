inherited FrmTabNCM: TFrmTabNCM
  Left = 312
  Top = 124
  Caption = 'Consultar C'#243'digo NCM'
  ClientHeight = 474
  ClientWidth = 747
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 747
    Height = 50
    Align = alTop
    Caption = ' Descri'#231#227'o NCM '
    TabOrder = 0
    object EdtDescricao: TEdit
      Left = 13
      Top = 17
      Width = 532
      Height = 21
      TabOrder = 0
      OnExit = EdtDescricaoExit
      OnKeyPress = EdtDescricaoKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 50
    Width = 747
    Height = 424
    Align = alClient
    TabOrder = 1
    object GridNCM: TDBGrid
      Left = 2
      Top = 15
      Width = 743
      Height = 407
      Align = alClient
      DataSource = DataNCM
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = GridNCMDblClick
      OnKeyPress = GridNCMKeyPress
      OnTitleClick = GridNCMTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXCECAO'
          Title.Caption = 'Ex'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TABELA'
          Title.Caption = 'Tab.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_NACIONAL'
          Title.Caption = 'Aliq.Nac'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_IMPORTACAO'
          Title.Caption = 'Aliq.Imp'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DataNCM: TDataSource
    DataSet = CdsNCM
    Left = 216
    Top = 178
  end
  object QryNCM: TFDQuery
    SQL.Strings = (
      'select * from ncm'
      'where upper(ncm.descricao) like '#39'%'#39'||upper(:pDesc)||'#39'%'#39
      'order by ncm.descricao')
    Left = 320
    Top = 170
    ParamData = <
      item
        Name = 'pDesc'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object QryNCMEXCECAO: TIntegerField
      FieldName = 'EXCECAO'
      Required = True
    end
    object QryNCMTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object QryNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 512
    end
    object QryNCMALIQ_NACIONAL: TFloatField
      FieldName = 'ALIQ_NACIONAL'
    end
    object QryNCMALIQ_IMPORTACAO: TFloatField
      FieldName = 'ALIQ_IMPORTACAO'
    end
  end
  object DspNCM: TDataSetProvider
    DataSet = QryNCM
    Left = 320
    Top = 197
  end
  object CdsNCM: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pDesc'
        ParamType = ptInput
      end>
    ProviderName = 'DspNCM'
    Left = 320
    Top = 223
    object CdsNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object CdsNCMEXCECAO: TIntegerField
      FieldName = 'EXCECAO'
      Required = True
    end
    object CdsNCMTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object CdsNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 512
    end
    object CdsNCMALIQ_NACIONAL: TFloatField
      FieldName = 'ALIQ_NACIONAL'
    end
    object CdsNCMALIQ_IMPORTACAO: TFloatField
      FieldName = 'ALIQ_IMPORTACAO'
    end
  end
end
