inherited FrmProdutoCores: TFrmProdutoCores
  Caption = 'Cores para produtos'
  ClientHeight = 378
  ClientWidth = 338
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 344
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  object GridCor: TDBGrid
    Left = 0
    Top = 0
    Width = 338
    Height = 378
    Align = alClient
    DataSource = DataProdutoCor
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GridCorDblClick
    OnKeyPress = GridCorKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome da Cor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 226
        Visible = True
      end>
  end
  object DataProdutoCor: TDataSource
    DataSet = DmProdutos.CdsProdutoCor
    Left = 168
    Top = 112
  end
end
