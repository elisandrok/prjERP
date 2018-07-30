inherited FrmLancItensGrid: TFrmLancItensGrid
  Left = 292
  Top = 81
  Caption = 'Lan'#231'amentos de Itens'
  ClientHeight = 551
  ClientWidth = 454
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpComposicaoProd: TGroupBox
    Left = 8
    Top = 2
    Width = 439
    Height = 175
    Caption = ' Composi'#231#227'o do Prodtuto '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GridComposicao: TDBGrid
      Left = 2
      Top = 15
      Width = 435
      Height = 158
      Hint = 'Pressione as teclas Ctrl+T para atualizar tabela de pre'#231'os'
      Align = alClient
      DataSource = DataProdutoComposto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Quant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 243
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end>
    end
  end
  object GrpComposicaoItem: TGroupBox
    Left = 8
    Top = 317
    Width = 440
    Height = 164
    Caption = ' Lan'#231'amento do Item '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GridCompItem: TDBGrid
      Left = 2
      Top = 15
      Width = 436
      Height = 147
      Align = alClient
      DataSource = DataCompItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = GridCompItemEnter
      OnKeyPress = GridCompItemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'QUANT_VIGAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Quant. Vigas'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPRIMENTO_VIGA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Compr. Viga'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_M2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Quant. M2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_M2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end>
    end
  end
  inline FrameConfirmaCancela1: TFrameConfirmaCancela
    Left = 0
    Top = 489
    Width = 454
    Height = 62
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 489
    ExplicitWidth = 454
    inherited BtnConfirmar: TBitBtn
      Left = 121
      Action = ActConfirmar
      Caption = 'F2 - Confirmar'
      ExplicitLeft = 121
    end
    inherited BtnCancelar: TBitBtn
      Left = 223
      Action = ActCancelar
      Caption = 'F10 - Cancelar'
      ExplicitLeft = 223
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 176
    Width = 439
    Height = 136
    Caption = ' Composi'#231#227'o do Item '
    TabOrder = 3
    object GriInformacao: TDBGrid
      Left = 2
      Top = 15
      Width = 435
      Height = 119
      Align = alClient
      Color = clInfoBk
      DataSource = DataDadosComp
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 258
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Title.Alignment = taCenter
          Title.Caption = 'Quant'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end>
    end
  end
  object DataProdutos: TDataSource
    Left = 120
    Top = 56
  end
  object DataProdutoComposto: TDataSource
    Left = 280
    Top = 112
  end
  object DataCompItem: TDataSource
    DataSet = DmWorkCom.CdsPedidoCompItem
    Left = 200
    Top = 56
  end
  object DataPedido: TDataSource
    DataSet = DmWorkCom.CdsPedidos
    Left = 40
    Top = 56
  end
  object CdsDadosComp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 232
    object CdsDadosCompNOME: TStringField
      FieldName = 'NOME'
    end
    object CdsDadosCompQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object CdsDadosCompVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
  end
  object DataDadosComp: TDataSource
    DataSet = CdsDadosComp
    Left = 272
    Top = 240
  end
  object DataItens: TDataSource
    DataSet = DmWorkCom.CdsPedidoItens
    Left = 184
    Top = 112
  end
  object ActionList1: TActionList
    Left = 104
    Top = 397
    object ActConfirmar: TAction
      Caption = 'F2 - Confirmar'
      ShortCut = 113
      OnExecute = ActConfirmarExecute
    end
    object ActCancelar: TAction
      Caption = 'F10 - Cancelar'
      ShortCut = 121
      OnExecute = ActCancelarExecute
    end
  end
end
