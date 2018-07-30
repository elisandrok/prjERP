inherited FrmCadPDV: TFrmCadPDV
  Left = 347
  Top = 118
  Caption = 'Cadastro de Ponto de Vendas'
  ClientHeight = 352
  ClientWidth = 588
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 448
    Top = 0
    Width = 140
    Height = 352
    Align = alRight
    TabOrder = 0
    inline FrameBotaoVertical1: TFrameBotaoVertical
      Left = 3
      Top = 4
      Width = 135
      Height = 182
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 4
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
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 448
    Height = 352
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 41
      Height = 13
      Caption = 'N'#186' Caixa'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 104
      Width = 79
      Height = 13
      Caption = 'N'#186' Serial da ECF'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 144
      Width = 46
      Height = 13
      Caption = 'Letra Add'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 88
      Top = 144
      Width = 73
      Height = 13
      Caption = 'Modelo do ECF'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 329
      Top = 144
      Width = 59
      Height = 13
      Caption = 'Tipo do ECF'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 24
      Top = 187
      Width = 68
      Height = 13
      Caption = 'Marca do ECF'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 24
      Top = 227
      Width = 65
      Height = 13
      Caption = 'Vers'#227'o do SB'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 174
      Top = 227
      Width = 40
      Height = 13
      Caption = 'Data SB'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 313
      Top = 228
      Width = 40
      Height = 13
      Caption = 'Hora SB'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 24
      Top = 267
      Width = 90
      Height = 13
      Caption = 'Empresa vinculada'
      FocusControl = DBEdit8
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 45
      Height = 21
      DataField = 'CAIXA'
      DataSource = DataWork
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 80
      Width = 400
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataWork
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 120
      Width = 264
      Height = 21
      DataField = 'SERIAL_ECF'
      DataSource = DataWork
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
    object DBCheckBox1: TDBCheckBox
      Left = 90
      Top = 41
      Width = 55
      Height = 17
      Caption = 'Ativo'
      DataField = 'ATIVO'
      DataSource = DataWork
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ValueChecked = 'T'
      ValueUnchecked = 'F'
      OnKeyPress = DBEdit1KeyPress
    end
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 316
      Width = 408
      Height = 25
      DataSource = DataWork
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 160
      Width = 49
      Height = 21
      DataField = 'LETRA_ADD'
      DataSource = DataWork
      TabOrder = 5
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 160
      Width = 228
      Height = 21
      DataField = 'MODELO_ECF'
      DataSource = DataWork
      TabOrder = 6
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 329
      Top = 160
      Width = 95
      Height = 21
      DataField = 'TIPO_ECF'
      DataSource = DataWork
      TabOrder = 7
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 24
      Top = 203
      Width = 249
      Height = 21
      DataField = 'MARCA_ECF'
      DataSource = DataWork
      TabOrder = 8
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 24
      Top = 243
      Width = 134
      Height = 21
      DataField = 'VERSAO_ECF'
      DataSource = DataWork
      TabOrder = 9
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 174
      Top = 243
      Width = 119
      Height = 21
      DataField = 'DATA_SB'
      DataSource = DataWork
      TabOrder = 10
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 313
      Top = 244
      Width = 119
      Height = 21
      DataField = 'HORA_SB'
      DataSource = DataWork
      TabOrder = 11
      OnKeyPress = DBEdit1KeyPress
    end
    object ComboEmpresa: TDBLookupComboBox
      Left = 25
      Top = 282
      Width = 408
      Height = 21
      DataField = 'IDEMPRESA'
      DataSource = DataWork
      KeyField = 'ID'
      ListField = 'RAZAO_SOCIAL'
      ListSource = DataEmpresa
      TabOrder = 12
      OnKeyPress = DBEdit1KeyPress
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.CdsPDV
    Left = 280
    Top = 32
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 344
    Top = 32
  end
  object DataEmpresa: TDataSource
    DataSet = DmWorkCom.CdsEmpresa
    Left = 192
    Top = 32
  end
end
