inherited FrmCadTanques: TFrmCadTanques
  Left = 271
  Top = 192
  Caption = 'Cadastro de Tanques'
  ClientHeight = 265
  ClientWidth = 485
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 346
    Height = 265
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 92
      Height = 13
      Caption = 'N'#250'mero do Tanque'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Produto'
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 48
      Height = 13
      Caption = 'Descricao'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 168
      Top = 56
      Width = 57
      Height = 13
      Caption = 'Capacidade'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 57
      Height = 21
      DataField = 'ID'
      DataSource = DataWork
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 134
      Height = 21
      DataField = 'TANQUE_NUMERO'
      DataSource = DataWork
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 152
      Width = 300
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataWork
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 112
      Width = 302
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = DataWork
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = DataProduto
      TabOrder = 2
    end
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 224
      Width = 296
      Height = 25
      DataSource = DataWork
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 168
      Top = 72
      Width = 97
      Height = 21
      DataField = 'CAPACIDADE'
      DataSource = DataWork
      TabOrder = 5
    end
  end
  object Panel1: TPanel [1]
    Left = 346
    Top = 0
    Width = 139
    Height = 265
    Align = alRight
    TabOrder = 1
    inline FrameBotaoVertical1: TFrameBotaoVertical
      Left = 4
      Top = 5
      Width = 135
      Height = 182
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 5
      ExplicitHeight = 182
      inherited BtnIncluir: TBitBtn
        Action = ActIncluir
        Caption = 'F2 - &Incluir'
      end
      inherited BtnExcluir: TBitBtn
        Action = ActExcluir
        Caption = 'F3 - &Excluir'
      end
      inherited BtnConfirmar: TBitBtn
        Action = ActConfirmar
        Caption = 'F4 - &Confirmar'
      end
      inherited BtnCancelar: TBitBtn
        Action = ActCancelar
        Caption = 'F5 - C&ancelar'
      end
      inherited BtnPesquisar: TBitBtn
        Action = ActPesquisar
        Caption = 'F6 - &Pesquisar'
      end
      inherited BtnRelatorio: TBitBtn
        Action = ActRelatorio
        Caption = 'F7 - &Relatorio'
      end
      inherited BtnEncerrar: TBitBtn
        Action = ActEncerrar
        Caption = 'F10 - &Encerrar'
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmPosto.CdsTanques
    OnDataChange = DataWorkDataChange
    Left = 360
    Top = 200
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 424
    Top = 200
  end
  object DataProduto: TDataSource
    Left = 272
    Top = 184
  end
end
