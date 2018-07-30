inherited FrmAbreCaixa: TFrmAbreCaixa
  Left = 368
  Top = 229
  Caption = 'Abre caixa'
  ClientHeight = 206
  ClientWidth = 358
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 141
    Width = 358
    Height = 65
    Align = alBottom
    TabOrder = 0
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 74
      Top = 1
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 74
      ExplicitTop = 1
      inherited BtnConfirmar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnConfirmarClick
      end
      inherited BtnCancelar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnCancelarClick
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 358
    Height = 141
    Align = alClient
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 82
      Height = 16
      Caption = 'Funcionario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 63
      Width = 123
      Height = 16
      Caption = 'Valor de Abertura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboFuncionario: TDBLookupComboBox
      Left = 16
      Top = 34
      Width = 329
      Height = 24
      DataField = 'IDFUNC'
      DataSource = DataCaixa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DataFuncionario
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ComboFuncionarioKeyPress
    end
    object DbValor: TDBEdit
      Left = 16
      Top = 81
      Width = 201
      Height = 32
      DataField = 'VALOR_ABERTURA'
      DataSource = DataCaixa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = ComboFuncionarioKeyPress
    end
  end
  object DataCaixa: TDataSource
    DataSet = DmWorkCom.CdsCaixa
    Left = 192
    Top = 72
  end
  object DataFuncionario: TDataSource
    Left = 272
    Top = 72
  end
  object ActionList1: TActionList
    Left = 296
    Top = 104
    object ActMenuFiscal: TAction
      Caption = 'ActMenuFiscal'
      ShortCut = 49229
      OnExecute = ActMenuFiscalExecute
    end
  end
end
