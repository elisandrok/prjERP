inherited FrmCadCheques: TFrmCadCheques
  Left = 176
  Top = 181
  Caption = 'Cadastro de Cheques'
  ClientHeight = 408
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 542
    Height = 408
    Align = alClient
    TabOrder = 0
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 542
    Height = 408
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DbID
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 32
      Height = 13
      Caption = 'Cliente'
      FocusControl = DbIDCliente
    end
    object Label6: TLabel
      Left = 8
      Top = 128
      Width = 56
      Height = 13
      Caption = 'N'#250'm. Conta'
      FocusControl = DbNumConta
    end
    object Label7: TLabel
      Left = 112
      Top = 128
      Width = 65
      Height = 13
      Caption = 'N'#250'm. Cheque'
      FocusControl = DbNumCheque
    end
    object Label8: TLabel
      Left = 216
      Top = 128
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
      FocusControl = DbAgencia
    end
    object Label9: TLabel
      Left = 8
      Top = 168
      Width = 41
      Height = 13
      Caption = 'Emitente'
      FocusControl = DbEmitente
    end
    object Label10: TLabel
      Left = 8
      Top = 208
      Width = 99
      Height = 13
      Caption = 'Docomento Emitente'
      FocusControl = DbDocEmitente
    end
    object Label11: TLabel
      Left = 8
      Top = 248
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DbValor
    end
    object Label12: TLabel
      Left = 136
      Top = 248
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
      FocusControl = DbDataEmiss
    end
    object Label13: TLabel
      Left = 256
      Top = 248
      Width = 45
      Height = 13
      Caption = 'Bom para'
      FocusControl = DbBomPara
    end
    object Label15: TLabel
      Left = 96
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Data Cadastro'
      FocusControl = DbDataCad
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object SpeedButton1: TSpeedButton
      Left = 416
      Top = 64
      Width = 23
      Height = 22
      Action = ActClientes
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000000000000000
        0000000000000000005C534E0000000000000000000000005C534E0000000000
        00000000000000000000000000000000000000878280878280F3E1D7F4E3D9F4
        E3DAF3E2D8F3E1D7B8A89F5C534E5C534E000000000000000000000000000000
        B8AAA4F4E3D8F8FAFBE4E2E2CFB1A2D4AB96DDC6BBECF1F0F6F3F2F2E1D6574F
        4B5C534E000000000000000000B8AAA4F5EAE2F4FFFFCF9A80B74C15B9643CD9
        AF9AC05823B95624D5AF9FF7FFFFF4E2D9413A375C534E000000000000F2E1D7
        F8FFFFC77D58BB450CC64E13C2A495FFFFFFD9926FC14A0FB8450BCE9A80F8FF
        FFF2E0D6000000000000B8AAA4FAFAF9D8A890BD480DCD622ECD6029CB6B3AD8
        8E68CA5E29CC622DC95D29B94710E0C9BDF6EDE880736D5C534EF3E0D7F8FAFB
        C56232CA5C26CE6733CB5B23CA8969F7E7DFD06B38CA5A23CD6531C3531BC778
        50F8FCFDDAC8BF020202F3E1D8F2DED6C5561ECE6632CC6531CC5A21C28669FF
        FFFFE8AD91C44A0FCC622DCB5F28C35E2BF3F2F1F1DFD5030303F2E1D9F3D8CA
        CD5B22CF6632CC642FCC602BC4551FCFB5A8FFFFFFE09C7AC7531ACD602BC65E
        29F5F1EDEFDED4040404F1E0D7FBEDE6DB6A32D36833CA5E28C95821C95419C1
        4B10E2D0C6FFFFFFD0703FCD5A20CE6A38FCFBFBEEDDD3272727F0DFD6FFFFFF
        F5986AE2662AC88B6DF0EAE3D77E51BD3000D79C7EFFFFFFDA8C65D15314E29A
        76FEFDFECDBBB15C534E000000F6F1EFFFEADBFF8A49DE875CEEFFFFFEFCFDE7
        B9A1FAFFFFF3F9FEE0723CE67035FFF3EEF4E7E05C534E000000000000F1DED4
        FFFFFFFFE9CEFFB270ECAF87ECE2DFEBF0F4F1E4E0F6A478FE8C4DFFDECAFDFF
        FFF0DDD2000000000000000000000000F0DFD6FFFFFFFFFFFBFFF3C6FEDDA8FC
        CF98FFC991FFD4A9FFFEF8FCFFFFF1DFD4000000000000000000000000000000
        000000F1DCD3F5E8E4FDFCFDFFFFFFFFFFFFFFFFFFFCFBFDF3E6E0F1DDD20000
        00000000000000000000000000000000000000000000000000F1DCD1EFDBD0EF
        DBD1EFDCD1F1DBD0000000000000000000000000000000000000}
    end
    object DbID: TDBEdit
      Left = 8
      Top = 24
      Width = 73
      Height = 21
      DataField = 'ID'
      DataSource = DataWork
      Enabled = False
      TabOrder = 0
      OnKeyPress = DbIDKeyPress
    end
    object DbIDCliente: TDBEdit
      Left = 8
      Top = 64
      Width = 73
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = DataWork
      TabOrder = 2
      OnExit = DbIDClienteExit
      OnKeyPress = DbIDKeyPress
    end
    object DbNumConta: TDBEdit
      Left = 8
      Top = 144
      Width = 89
      Height = 21
      DataField = 'NUM_CONTA'
      DataSource = DataWork
      TabOrder = 4
      OnKeyPress = DbIDKeyPress
    end
    object DbNumCheque: TDBEdit
      Left = 112
      Top = 144
      Width = 89
      Height = 21
      DataField = 'NUM_CHEQUE'
      DataSource = DataWork
      TabOrder = 5
      OnKeyPress = DbIDKeyPress
    end
    object DbAgencia: TDBEdit
      Left = 216
      Top = 144
      Width = 89
      Height = 21
      DataField = 'AGENCIA'
      DataSource = DataWork
      TabOrder = 6
      OnKeyPress = DbIDKeyPress
    end
    object DbEmitente: TDBEdit
      Left = 8
      Top = 184
      Width = 464
      Height = 21
      DataField = 'EMITENTE'
      DataSource = DataWork
      TabOrder = 7
      OnKeyPress = DbIDKeyPress
    end
    object DbDocEmitente: TDBEdit
      Left = 8
      Top = 224
      Width = 264
      Height = 21
      DataField = 'CNPJ_CPF_EMITENTE'
      DataSource = DataWork
      TabOrder = 8
      OnKeyPress = DbIDKeyPress
    end
    object DbValor: TDBEdit
      Left = 8
      Top = 264
      Width = 113
      Height = 21
      DataField = 'VALOR'
      DataSource = DataWork
      TabOrder = 9
      OnKeyPress = DbIDKeyPress
    end
    object DbDataEmiss: TDBEdit
      Left = 136
      Top = 264
      Width = 97
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = DataWork
      TabOrder = 10
      OnKeyPress = DbIDKeyPress
    end
    object DbBomPara: TDBEdit
      Left = 256
      Top = 264
      Width = 97
      Height = 21
      DataField = 'BOM_PARA'
      DataSource = DataWork
      TabOrder = 11
      OnKeyPress = DbIDKeyPress
    end
    object DbDataCad: TDBEdit
      Left = 96
      Top = 24
      Width = 97
      Height = 21
      DataField = 'DATA_CAD'
      DataSource = DataWork
      Enabled = False
      TabOrder = 1
      OnKeyPress = DbIDKeyPress
    end
    object RadioStatus: TDBRadioGroup
      Left = 8
      Top = 288
      Width = 265
      Height = 67
      Caption = ' Status '
      Columns = 2
      DataField = 'STATUS'
      DataSource = DataWork
      Items.Strings = (
        '0 - A Depositar'
        '1 - Depositado'
        '2 - Pre-Datado'
        '3 - Compensado'
        '4 - Devolvido')
      TabOrder = 12
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4')
    end
    object ComboBanco: TComboBox
      Left = 8
      Top = 104
      Width = 353
      Height = 21
      TabOrder = 3
      OnEnter = ComboBancoEnter
      OnExit = ComboBancoExit
      OnKeyPress = DbIDKeyPress
    end
    object DbCliente: TDBEdit
      Left = 96
      Top = 64
      Width = 313
      Height = 21
      DataField = 'CLIENTE'
      DataSource = DataWork
      Enabled = False
      TabOrder = 13
    end
  end
  object Panel1: TPanel [2]
    Left = 542
    Top = 0
    Width = 138
    Height = 408
    Align = alRight
    TabOrder = 2
    inline Frame: TFrameBotaoVertical
      Left = 2
      Top = 2
      Width = 135
      Height = 182
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
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
    DataSet = DmWorkCom.CdsCheques
    Left = 552
    Top = 216
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 616
    Top = 216
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    object ActClientes: TAction
      Category = 'Botoes'
      OnExecute = ActClientesExecute
    end
  end
  object DataCliente: TDataSource
    Left = 566
    Top = 280
  end
end
