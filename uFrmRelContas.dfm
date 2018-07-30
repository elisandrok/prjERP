inherited FrmRelContas: TFrmRelContas
  Left = 326
  Top = 209
  Caption = 'Relatorio de Contas e Pagar e Receber'
  ClientHeight = 277
  ClientWidth = 337
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 337
    Height = 277
    Align = alClient
    TabOrder = 0
    object GrpPeriodo: TGroupBox
      Left = 8
      Top = 16
      Width = 129
      Height = 65
      Caption = ' Per'#237'odo '
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object Label2: TLabel
        Left = 8
        Top = 41
        Width = 6
        Height = 13
        Caption = #224
      end
      object Datai: TDateTimePicker
        Left = 32
        Top = 16
        Width = 89
        Height = 21
        Date = 40032.955986319440000000
        Time = 40032.955986319440000000
        TabOrder = 0
      end
      object Dataf: TDateTimePicker
        Left = 32
        Top = 38
        Width = 89
        Height = 21
        Date = 40032.956000972220000000
        Time = 40032.956000972220000000
        TabOrder = 1
      end
    end
    object RadioTipoConta: TRadioGroup
      Left = 144
      Top = 16
      Width = 185
      Height = 65
      Caption = ' Tipo de Conta '
      ItemIndex = 0
      Items.Strings = (
        '0 - Contas '#224' Receber'
        '1 - Contas  '#224' Pagar')
      TabOrder = 1
    end
    object RadioTipoFiltro: TRadioGroup
      Left = 9
      Top = 85
      Width = 144
      Height = 65
      Caption = ' Tipo de Filtro '
      ItemIndex = 0
      Items.Strings = (
        '0 - Geral'
        '1 - Cliente/Fornecedor')
      TabOrder = 2
      OnClick = RadioTipoFiltroClick
    end
    object GrpContato: TGroupBox
      Left = 8
      Top = 152
      Width = 321
      Height = 43
      Caption = ' Contato '
      TabOrder = 3
      object ComboContatos: TDBLookupComboBox
        Left = 8
        Top = 16
        Width = 305
        Height = 21
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DataContato
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 208
      Width = 333
      Height = 67
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 4
      inline FrameConfirmaCancela1: TFrameConfirmaCancela
        Left = 61
        Top = 3
        Width = 203
        Height = 62
        TabOrder = 0
        ExplicitLeft = 61
        ExplicitTop = 3
        inherited BtnConfirmar: TBitBtn
          Action = ActImprimir
          Caption = 'F2 - Imprimir'
        end
        inherited BtnCancelar: TBitBtn
          Action = ActFechar
          Caption = 'F10 - Fechar'
        end
      end
    end
    object RadioStatus: TRadioGroup
      Left = 159
      Top = 85
      Width = 170
      Height = 65
      Caption = ' Status '
      ItemIndex = 0
      Items.Strings = (
        '0 - Apenas Em Aberto'
        '1 - Apenas Quitadas'
        '2 - Apenas Renegociadas')
      TabOrder = 5
    end
  end
  object DataContato: TDataSource
    Left = 176
    Top = 128
  end
  object ActionList1: TActionList
    Left = 280
    Top = 16
    object ActImprimir: TAction
      Caption = 'F2 - Imprimir'
      ShortCut = 113
      OnExecute = ActImprimirExecute
    end
    object ActFechar: TAction
      Caption = 'F10 - Fechar'
      ShortCut = 121
      OnExecute = ActFecharExecute
    end
  end
  object QryContas: TFDQuery
    Left = 272
    Top = 120
  end
end
