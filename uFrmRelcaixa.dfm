object FrmRelcaixa: TFrmRelcaixa
  Left = 211
  Top = 125
  Caption = 'FrmRelcaixa'
  ClientHeight = 441
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DataCaixa: TDataSource
    DataSet = DmWorkCom.CdsCaixaMov
    Left = 89
    Top = 248
  end
end
