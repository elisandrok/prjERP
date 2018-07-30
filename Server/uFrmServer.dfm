object FrmServer: TFrmServer
  Left = 249
  Top = 167
  Width = 416
  Height = 270
  BorderIcons = [biSystemMenu]
  Caption = 'Servidor de Aplica'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 213
    Height = 37
    Caption = 'Servidor Ativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbContador: TLabel
    Left = 8
    Top = 56
    Width = 261
    Height = 20
    Caption = 'N'#250'mero de conex'#245'es ativas: 000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 84
    Width = 408
    Height = 159
    Align = alBottom
    Caption = ' Usu'#225'rios conectados '
    TabOrder = 0
    object MemoUsuarios: TMemo
      Left = 2
      Top = 22
      Width = 404
      Height = 135
      Align = alClient
      ParentColor = True
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
