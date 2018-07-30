inherited FrmValorFormaPag: TFrmValorFormaPag
  Left = 286
  Top = 281
  BorderIcons = []
  Caption = 'Valor da Forma de Pagamento'
  ClientHeight = 148
  ClientWidth = 212
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 212
    Height = 79
    Align = alClient
    Caption = ' Informe o valor '
    TabOrder = 0
    object DBEdit1: TDBEdit
      Left = 8
      Top = 19
      Width = 193
      Height = 45
      DataField = 'Valor'
      DataSource = DataValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 79
    Width = 212
    Height = 69
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 5
      Top = 4
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
  object CdsValor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 80
    object CdsValorValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object DataValor: TDataSource
    DataSet = CdsValor
    Left = 40
    Top = 88
  end
end
