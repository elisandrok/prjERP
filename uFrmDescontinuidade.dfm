inherited FrmDescontinuidade: TFrmDescontinuidade
  Left = 267
  Top = 191
  Caption = 'Lista de descontinuidades'
  ClientHeight = 288
  ClientWidth = 549
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 549
    Height = 288
    Align = alClient
    DataSource = DsDescontinuidade
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
        FieldName = 'numbico'
        Title.Caption = 'Num. Bico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codpro'
        Title.Caption = 'Cod.Prod'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 375
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_movto'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'volume'
        Title.Caption = 'Volume'
        Visible = True
      end>
  end
  object DsDescontinuidade: TDataSource
    Left = 96
    Top = 88
  end
end
