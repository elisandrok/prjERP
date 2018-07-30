inherited FrmCadTransporta: TFrmCadTransporta
  Left = 239
  Top = 164
  Caption = 'FrmCadTransporta'
  ClientWidth = 646
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 24
    Width = 53
    Height = 13
    Caption = 'COD_PAIS'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 64
    Width = 24
    Height = 13
    Caption = 'PAIS'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 104
    Width = 19
    Height = 13
    Caption = 'DDI'
    FocusControl = DBEdit3
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 376
    Width = 646
    Height = 68
    Align = alBottom
    TabOrder = 0
    inline FrameBotaoHorizontal1: TFrameBotaoHorizontal
      Left = 4
      Top = 4
      Width = 637
      Height = 63
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 637
      ExplicitHeight = 63
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 24
    Top = 40
    Width = 56
    Height = 21
    DataField = 'COD_PAIS'
    DataSource = DataWork
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 24
    Top = 80
    Width = 394
    Height = 21
    DataField = 'PAIS'
    DataSource = DataWork
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 24
    Top = 120
    Width = 43
    Height = 21
    DataField = 'DDI'
    DataSource = DataWork
    TabOrder = 3
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.CdsPais
    Left = 128
    Top = 160
  end
end
