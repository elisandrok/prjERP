inherited FrmRegistraDescAcres: TFrmRegistraDescAcres
  Left = 296
  Top = 217
  Caption = 'Desconto/Acrescimo'
  ClientHeight = 179
  ClientWidth = 206
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RadioAplicar: TRadioGroup
    Left = 9
    Top = 6
    Width = 185
    Height = 35
    Caption = ' Aplicar '
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Acrescimo'
      'Desconto')
    TabOrder = 0
  end
  object GrpValor: TGroupBox
    Left = 9
    Top = 80
    Width = 185
    Height = 54
    Caption = ' Valor '
    TabOrder = 1
    object EdtValor: TMaskEdit
      Left = 8
      Top = 17
      Width = 161
      Height = 21
      TabOrder = 0
      OnExit = EdtValorExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 144
    Width = 206
    Height = 35
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 5
      Top = 3
      Width = 97
      Height = 28
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 105
      Top = 3
      Width = 97
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object RadioTipo: TRadioGroup
    Left = 9
    Top = 44
    Width = 185
    Height = 35
    Caption = ' Tipo '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Real'
      'Percentual')
    TabOrder = 3
    OnClick = RadioTipoClick
  end
  object ActionList1: TActionList
    Left = 160
    Top = 72
    object ActMenuFiscal: TAction
      Caption = 'ActMenuFiscal'
      ShortCut = 49229
      OnExecute = ActMenuFiscalExecute
    end
  end
end
