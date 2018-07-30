inherited FrmFechaCaixa: TFrmFechaCaixa
  Left = 245
  Top = 126
  Caption = 'Fechamento de Caixa'
  ClientHeight = 256
  ClientWidth = 485
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 485
    Height = 190
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 24
      Width = 211
      Height = 24
      Alignment = taRightJustify
      Caption = 'VALOR EM DINHEIRO'
      FocusControl = DbDinheiro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 63
      Width = 198
      Height = 24
      Alignment = taRightJustify
      Caption = 'VALOR EM CARTAO'
      FocusControl = DbCartao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 102
      Width = 200
      Height = 24
      Alignment = taRightJustify
      Caption = 'VALOR EM CHEQUE'
      FocusControl = DbCheque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 36
      Top = 141
      Width = 189
      Height = 24
      Alignment = taRightJustify
      Caption = 'OUTROS VALORES'
      FocusControl = DbOutros
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbDinheiro: TDBEdit
      Left = 236
      Top = 18
      Width = 203
      Height = 32
      DataField = 'DINHEIRO'
      DataSource = DataFechamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DbDinheiroKeyPress
    end
    object DbCartao: TDBEdit
      Left = 236
      Top = 57
      Width = 203
      Height = 32
      DataField = 'CARTAO'
      DataSource = DataFechamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DbDinheiroKeyPress
    end
    object DbCheque: TDBEdit
      Left = 236
      Top = 96
      Width = 203
      Height = 32
      DataField = 'CHEQUE'
      DataSource = DataFechamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DbDinheiroKeyPress
    end
    object DbOutros: TDBEdit
      Left = 236
      Top = 135
      Width = 203
      Height = 32
      DataField = 'OUTROS'
      DataSource = DataFechamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = DbDinheiroKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 190
    Width = 485
    Height = 66
    Align = alBottom
    TabOrder = 1
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 129
      Top = 2
      Width = 203
      Height = 62
      TabOrder = 0
      inherited BtnConfirmar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnConfirmarClick
      end
      inherited BtnCancelar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnCancelarClick
      end
    end
  end
  object CdsFechamento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 120
    object CdsFechamentoDINHEIRO: TCurrencyField
      FieldName = 'DINHEIRO'
    end
    object CdsFechamentoCARTAO: TCurrencyField
      FieldName = 'CARTAO'
    end
    object CdsFechamentoCHEQUE: TCurrencyField
      FieldName = 'CHEQUE'
    end
    object CdsFechamentoOUTROS: TCurrencyField
      FieldName = 'OUTROS'
    end
  end
  object DataFechamento: TDataSource
    DataSet = CdsFechamento
    Left = 400
    Top = 120
  end
  object ActionList1: TActionList
    Left = 368
    Top = 206
    object ActMenuFiscal: TAction
      Caption = 'ActMenuFiscal'
      ShortCut = 49229
      OnExecute = ActMenuFiscalExecute
    end
  end
end
