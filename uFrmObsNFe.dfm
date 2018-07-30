inherited FrmObsNFe: TFrmObsNFe
  Left = 305
  Top = 256
  Caption = 'Oberva'#231#245'es da NFe'
  ClientHeight = 189
  ClientWidth = 533
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 533
    Height = 124
    Align = alClient
    Caption = ' Observa'#231#245'es '
    TabOrder = 0
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 515
      Height = 21
      DataField = 'OBSNFE_1'
      DataSource = DataNFe
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 47
      Width = 515
      Height = 21
      DataField = 'OBSNFE_2'
      DataSource = DataNFe
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 70
      Width = 515
      Height = 21
      DataField = 'OBSNFE_3'
      DataSource = DataNFe
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 93
      Width = 515
      Height = 21
      DataField = 'OBSNFE_4'
      DataSource = DataNFe
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 124
    Width = 533
    Height = 65
    Align = alBottom
    TabOrder = 1
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 168
      Top = 0
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 168
      inherited BtnConfirmar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnConfirmarClick
      end
      inherited BtnCancelar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnCancelarClick
      end
    end
  end
  object DataNFe: TDataSource
    DataSet = DmWorkCom.CdsPedidos
    Left = 480
    Top = 136
  end
end
