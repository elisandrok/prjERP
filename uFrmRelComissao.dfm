inherited FrmRelComissao: TFrmRelComissao
  Left = 316
  Top = 189
  Caption = 'Relatorio de Vendas e Comiss'#245'es'
  ClientHeight = 267
  ClientWidth = 323
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 329
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 305
    Height = 144
    TabOrder = 0
    object GrpPeriodo: TGroupBox
      Left = 8
      Top = 14
      Width = 289
      Height = 51
      Caption = ' Per'#237'odo '
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 18
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object Label2: TLabel
        Left = 144
        Top = 18
        Width = 6
        Height = 13
        Caption = #224
      end
      object Datai: TDateTimePicker
        Left = 27
        Top = 15
        Width = 93
        Height = 21
        Date = 39768.659305729170000000
        Time = 39768.659305729170000000
        TabOrder = 0
      end
      object Dataf: TDateTimePicker
        Left = 163
        Top = 15
        Width = 93
        Height = 21
        Date = 39768.659321099530000000
        Time = 39768.659321099530000000
        TabOrder = 1
      end
    end
    object GrpVendedor: TGroupBox
      Left = 8
      Top = 70
      Width = 289
      Height = 41
      Caption = ' Vendedor '
      TabOrder = 1
      object ComboVendedor: TDBLookupComboBox
        Left = 8
        Top = 14
        Width = 273
        Height = 21
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DataVendedor
        TabOrder = 0
      end
    end
    object ChResumo: TCheckBox
      Left = 8
      Top = 117
      Width = 265
      Height = 17
      Caption = 'Exibir por itens do pedido'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 202
    Width = 323
    Height = 65
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 241
    inline Frame: TFrameConfirmaCancela
      Left = 53
      Top = 2
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 53
      ExplicitTop = 2
      inherited BtnConfirmar: TBitBtn
        Action = ActImprimir
        Caption = 'F2 - Imprimir'
      end
      inherited BtnCancelar: TBitBtn
        Left = 101
        Action = ActEncerrar
        Caption = 'F10 - Encerrar'
        ExplicitLeft = 101
      end
    end
  end
  object RadioOrdem: TRadioGroup
    Left = 8
    Top = 156
    Width = 305
    Height = 34
    Caption = ' Ordenar '
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Data'
      'Cliente'
      'Vendedor')
    TabOrder = 2
  end
  object DataVendedor: TDataSource
    Left = 280
    Top = 24
  end
  object ActionList1: TActionList
    Left = 280
    Top = 120
    object ActImprimir: TAction
      Caption = 'F2 - Imprimir'
      ShortCut = 113
      OnExecute = ActImprimirExecute
    end
    object ActEncerrar: TAction
      Caption = 'F10 - Encerrar'
      ShortCut = 121
      OnExecute = ActEncerrarExecute
    end
  end
end
