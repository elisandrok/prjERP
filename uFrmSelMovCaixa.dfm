inherited FrmSelMovCaixa: TFrmSelMovCaixa
  Left = 307
  Top = 223
  Caption = 'Relatorio de Caixa'
  ClientHeight = 237
  ClientWidth = 210
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 216
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 170
    Width = 210
    Height = 67
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 4
      Top = 2
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 2
      inherited BtnConfirmar: TBitBtn
        Left = 3
        Top = 2
        OnClick = FrameConfirmaCancela1BtnConfirmarClick
        ExplicitLeft = 3
        ExplicitTop = 2
      end
      inherited BtnCancelar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnCancelarClick
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 210
    Height = 170
    Align = alClient
    TabOrder = 1
    object Calendario: TMonthCalendar
      Left = 2
      Top = 15
      Width = 206
      Height = 153
      Align = alClient
      Date = 40053.545440659720000000
      TabOrder = 0
    end
  end
end
