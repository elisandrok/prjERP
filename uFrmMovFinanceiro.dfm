inherited FrmMovFinanceiro: TFrmMovFinanceiro
  Left = 353
  Top = 162
  Caption = 'Movimento Financeiro'
  ClientHeight = 182
  ClientWidth = 203
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 105
    Caption = ' Per'#237'odo '
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 29
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 19
      Top = 55
      Width = 6
      Height = 13
      Caption = #224
    end
    object Datai: TDateTimePicker
      Left = 43
      Top = 29
      Width = 117
      Height = 21
      Date = 40146.382808275460000000
      Time = 40146.382808275460000000
      TabOrder = 0
    end
    object Dataf: TDateTimePicker
      Left = 43
      Top = 53
      Width = 117
      Height = 21
      Date = 40146.382826539350000000
      Time = 40146.382826539350000000
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 117
    Width = 203
    Height = 65
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 0
      Top = 3
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitTop = 3
      inherited BtnConfirmar: TBitBtn
        Action = ActConfirmar
      end
      inherited BtnCancelar: TBitBtn
        Action = ActCancelar
      end
    end
  end
  object ActionList1: TActionList
    Left = 88
    Top = 125
    object ActCancelar: TAction
      Caption = 'Cancelar'
      OnExecute = ActCancelarExecute
    end
    object ActConfirmar: TAction
      Caption = 'Confirmar'
      OnExecute = ActConfirmarExecute
    end
  end
  object QryEntrada: TFDQuery
    Left = 64
    Top = 80
  end
  object QrySaidas: TFDQuery
    Left = 144
    Top = 40
  end
end
