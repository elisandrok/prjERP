inherited FrmListaAbastec: TFrmListaAbastec
  Left = 267
  Top = 218
  Caption = 'Lista de abastecimntos pendentes'
  ClientHeight = 288
  ClientWidth = 684
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 684
    Height = 288
    Align = alClient
    DataSource = DsAbastec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NUM_BICO'
        Title.Caption = 'Num. Bico'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDPRODUTO'
        Title.Caption = 'Cod.Prod'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 365
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ABAST'
        Title.Caption = 'Data'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LITROS'
        Title.Caption = 'Volume'
        Width = 77
        Visible = True
      end>
  end
  object DsAbastec: TDataSource
    Left = 96
    Top = 88
  end
end
