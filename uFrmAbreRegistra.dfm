inherited FrmAbreRegistra: TFrmAbreRegistra
  Left = 299
  Top = 198
  Caption = 'Abertura e Registro de Itens'
  ClientHeight = 296
  ClientWidth = 554
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 560
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 554
    Height = 229
    Align = alClient
    Color = clGray
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 17
      Width = 39
      Height = 16
      Caption = 'Mesa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 66
      Width = 55
      Height = 16
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 116
      Width = 81
      Height = 16
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 513
      Top = 81
      Width = 31
      Height = 28
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object ComboMesa: TDBLookupComboBox
      Left = 8
      Top = 32
      Width = 292
      Height = 28
      DataField = 'ID_MESA'
      DataSource = DataAuxiliar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = DataMesa
      ParentFont = False
      TabOrder = 0
      OnExit = ComboMesaExit
      OnKeyPress = ComboMesaKeyPress
    end
    object EdtProduto: TMaskEdit
      Left = 8
      Top = 81
      Width = 499
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnKeyPress = ComboMesaKeyPress
    end
    object DbQuant: TDBEdit
      Left = 8
      Top = 131
      Width = 97
      Height = 28
      DataField = 'QUANT'
      DataSource = DataAuxiliar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = ComboMesaKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 229
    Width = 554
    Height = 67
    Align = alBottom
    TabOrder = 1
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 165
      Top = 3
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 165
      ExplicitTop = 3
      inherited BtnConfirmar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnConfirmarClick
      end
      inherited BtnCancelar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnCancelarClick
      end
    end
  end
  object DataMesa: TDataSource
    DataSet = DmWorkCom.CdsMesas
    Left = 136
    Top = 104
  end
  object CdsAuxiliar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 104
    object CdsAuxiliarID_MESA: TIntegerField
      FieldName = 'ID_MESA'
    end
    object CdsAuxiliarID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object CdsAuxiliarQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object CdsAuxiliarPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object DataAuxiliar: TDataSource
    DataSet = CdsAuxiliar
    Left = 200
    Top = 104
  end
end
