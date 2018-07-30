inherited FrmCadContabil: TFrmCadContabil
  Left = 208
  Top = 112
  Caption = 'Cadastro de Contabilidade'
  ClientHeight = 456
  ClientWidth = 638
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 496
    Height = 456
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 86
      Height = 13
      Caption = 'CONTABILIDADE'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 60
      Height = 13
      Caption = 'ENDERECO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 280
      Top = 96
      Width = 54
      Height = 13
      Caption = 'END_NUM'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 344
      Top = 96
      Width = 66
      Height = 13
      Caption = 'END_COMPL'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 136
      Width = 41
      Height = 13
      Caption = 'BAIRRO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 216
      Top = 136
      Width = 40
      Height = 13
      Caption = 'CIDADE'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 8
      Top = 176
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DbUF
    end
    object Label9: TLabel
      Left = 48
      Top = 176
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 192
      Top = 176
      Width = 85
      Height = 13
      Caption = 'COD_MUNICIPIO'
    end
    object Label11: TLabel
      Left = 8
      Top = 216
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 184
      Top = 216
      Width = 56
      Height = 13
      Caption = 'REGISTRO'
      FocusControl = DBEdit12
    end
    object Label13: TLabel
      Left = 8
      Top = 256
      Width = 61
      Height = 13
      Caption = 'CONTADOR'
      FocusControl = DBEdit13
    end
    object Label14: TLabel
      Left = 8
      Top = 296
      Width = 29
      Height = 13
      Caption = 'FONE'
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 120
      Top = 296
      Width = 20
      Height = 13
      Caption = 'FAX'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 232
      Top = 296
      Width = 87
      Height = 13
      Caption = 'CPF_CONTADOR'
      FocusControl = DBEdit16
    end
    object Label17: TLabel
      Left = 368
      Top = 296
      Width = 89
      Height = 13
      Caption = 'CRC_CONTADOR'
      FocusControl = DBEdit17
    end
    object Label18: TLabel
      Left = 8
      Top = 336
      Width = 32
      Height = 13
      Caption = 'EMAIL'
      FocusControl = DBEdit18
    end
    object Label19: TLabel
      Left = 8
      Top = 376
      Width = 24
      Height = 13
      Caption = 'SITE'
      FocusControl = DBEdit19
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 134
      Height = 21
      DataField = 'ID'
      DataSource = DataWork
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 72
      Width = 400
      Height = 21
      DataField = 'CONTABILIDADE'
      DataSource = DataWork
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 112
      Width = 265
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DataWork
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 280
      Top = 112
      Width = 57
      Height = 21
      DataField = 'END_NUM'
      DataSource = DataWork
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 112
      Width = 81
      Height = 21
      DataField = 'END_COMPL'
      DataSource = DataWork
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 152
      Width = 201
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DataWork
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 216
      Top = 152
      Width = 201
      Height = 21
      DataField = 'CIDADE'
      DataSource = DataWork
      TabOrder = 6
    end
    object DbUF: TDBEdit
      Left = 8
      Top = 192
      Width = 30
      Height = 21
      DataField = 'UF'
      DataSource = DataWork
      TabOrder = 7
      OnExit = DbUFExit
    end
    object DBEdit9: TDBEdit
      Left = 48
      Top = 192
      Width = 134
      Height = 21
      DataField = 'CEP'
      DataSource = DataWork
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 8
      Top = 232
      Width = 169
      Height = 21
      DataField = 'CNPJ'
      DataSource = DataWork
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 184
      Top = 232
      Width = 56
      Height = 21
      DataField = 'REGISTRO'
      DataSource = DataWork
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 8
      Top = 272
      Width = 400
      Height = 21
      DataField = 'CONTADOR'
      DataSource = DataWork
      TabOrder = 12
    end
    object DBEdit14: TDBEdit
      Left = 8
      Top = 312
      Width = 105
      Height = 21
      DataField = 'FONE'
      DataSource = DataWork
      TabOrder = 13
    end
    object DBEdit15: TDBEdit
      Left = 120
      Top = 312
      Width = 105
      Height = 21
      DataField = 'FAX'
      DataSource = DataWork
      TabOrder = 14
    end
    object DBEdit16: TDBEdit
      Left = 232
      Top = 312
      Width = 129
      Height = 21
      DataField = 'CPF_CONTADOR'
      DataSource = DataWork
      TabOrder = 15
    end
    object DBEdit17: TDBEdit
      Left = 368
      Top = 312
      Width = 105
      Height = 21
      DataField = 'CRC_CONTADOR'
      DataSource = DataWork
      TabOrder = 16
    end
    object DBEdit18: TDBEdit
      Left = 8
      Top = 353
      Width = 450
      Height = 21
      DataField = 'EMAIL'
      DataSource = DataWork
      TabOrder = 17
    end
    object DBEdit19: TDBEdit
      Left = 8
      Top = 393
      Width = 449
      Height = 21
      DataField = 'SITE'
      DataSource = DataWork
      TabOrder = 18
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 424
      Width = 472
      Height = 25
      DataSource = DataWork
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 19
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 192
      Top = 192
      Width = 273
      Height = 21
      DataField = 'COD_MUNICIPIO'
      DataSource = DataWork
      KeyField = 'COD_MUNICIPIO'
      ListField = 'MUNICIPIO'
      ListSource = DataCodCidade
      TabOrder = 9
    end
  end
  object Panel1: TPanel [1]
    Left = 496
    Top = 0
    Width = 142
    Height = 456
    Align = alRight
    TabOrder = 1
    inline FrameBotaoVertical1: TFrameBotaoVertical
      Left = 4
      Top = 6
      Width = 135
      Height = 182
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 6
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
    DataSet = DmWorkCom.CdsContador
    Left = 520
    Top = 208
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 584
    Top = 208
  end
  object DataCodCidade: TDataSource
    Left = 528
    Top = 280
  end
end
