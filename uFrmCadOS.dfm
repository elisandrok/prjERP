inherited FrmCadOS: TFrmCadOS
  Left = 118
  Top = 141
  Caption = 'Lan'#231'amento de Ordem de Servi'#231'o'
  ClientHeight = 476
  ClientWidth = 647
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 653
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  object PnCadOS: TPanel [0]
    Left = 0
    Top = 0
    Width = 647
    Height = 476
    Align = alClient
    TabOrder = 0
    object StatusBar1: TStatusBar
      Left = 1
      Top = 456
      Width = 645
      Height = 19
      Panels = <
        item
          Text = 'Cadastro de Ordem de Servi'#231'o'
          Width = 500
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 391
      Width = 645
      Height = 65
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 1
      inline FrameBotaoHorizontal1: TFrameBotaoHorizontal
        Left = 2
        Top = 2
        Width = 637
        Height = 63
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 637
        ExplicitHeight = 63
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
        inherited BtnEncerrar: TBitBtn
          Action = ActEncerrar
          Caption = 'F10 - &Encerrar'
          TabOrder = 6
        end
        inherited BtnRelatorio: TBitBtn
          Action = ActRelatorio
          Caption = 'F7 - &Relatorio'
          TabOrder = 5
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 645
      Height = 390
      Align = alClient
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 641
        Height = 373
        ActivePage = TabSheet1
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados Principais'
          object GrupoDados: TGroupBox
            Left = 8
            Top = 0
            Width = 593
            Height = 289
            TabOrder = 0
            object Bevel1: TBevel
              Left = 8
              Top = 147
              Width = 573
              Height = 130
            end
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 11
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
            end
            object Label3: TLabel
              Left = 8
              Top = 56
              Width = 57
              Height = 13
              Caption = 'C'#243'd. Cliente'
              FocusControl = DbIdCliente
            end
            object Label10: TLabel
              Left = 8
              Top = 99
              Width = 66
              Height = 13
              Caption = 'Data de Inicio'
              FocusControl = dbedtDATA_INICIO
            end
            object Label12: TLabel
              Left = 112
              Top = 99
              Width = 64
              Height = 13
              Caption = 'Data Termino'
              FocusControl = dbedtDATA_FIM
            end
            object Label4: TLabel
              Left = 112
              Top = 56
              Width = 78
              Height = 13
              Caption = 'Nome do Cliente'
              FocusControl = DBEdit4
            end
            object Label2: TLabel
              Left = 112
              Top = 8
              Width = 94
              Height = 13
              Caption = 'Numero de Controle'
              FocusControl = DbNControle
            end
            object Label5: TLabel
              Left = 385
              Top = 8
              Width = 85
              Height = 13
              Caption = 'Data Lan'#231'amento'
              FocusControl = DBEdit5
            end
            object Label6: TLabel
              Left = 489
              Top = 8
              Width = 81
              Height = 13
              Caption = 'Hora lan'#231'amento'
              FocusControl = DBEdit6
            end
            object Label14: TLabel
              Left = 424
              Top = 99
              Width = 64
              Height = 13
              Caption = 'Tempo Gasto'
              FocusControl = dbedtTEMPO_GASTO
            end
            object Label13: TLabel
              Left = 320
              Top = 99
              Width = 64
              Height = 13
              Caption = 'Hora Termino'
              FocusControl = dbedtHORA_FIM
            end
            object Label11: TLabel
              Left = 216
              Top = 99
              Width = 51
              Height = 13
              Caption = 'Hora Inicio'
              FocusControl = dbedtHORA_INICIO
            end
            object Label20: TLabel
              Left = 192
              Top = 156
              Width = 75
              Height = 13
              Caption = 'Forma de Pagto'
            end
            object Label15: TLabel
              Left = 16
              Top = 158
              Width = 57
              Height = 13
              Caption = 'Valor da OS'
              FocusControl = DBEdit12
            end
            object Label16: TLabel
              Left = 16
              Top = 183
              Width = 46
              Height = 13
              Caption = 'Desconto'
              FocusControl = DBEdit13
            end
            object Label17: TLabel
              Left = 16
              Top = 206
              Width = 49
              Height = 13
              Caption = 'Acrescimo'
              FocusControl = DBEdit14
            end
            object Label18: TLabel
              Left = 16
              Top = 229
              Width = 69
              Height = 13
              Caption = 'Outros Valores'
              FocusControl = DBEdit15
            end
            object Label19: TLabel
              Left = 16
              Top = 254
              Width = 52
              Height = 13
              Caption = 'Valor Pago'
              FocusControl = DBEdit16
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 24
              Width = 97
              Height = 21
              DataField = 'ID'
              DataSource = DataWork
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBEdit1KeyPress
            end
            object DbIdCliente: TDBEdit
              Left = 8
              Top = 72
              Width = 97
              Height = 21
              DataField = 'ID_CONTATO'
              DataSource = DataWork
              TabOrder = 4
              OnExit = DbIdClienteExit
              OnKeyPress = DBEdit1KeyPress
            end
            object dbedtDATA_INICIO: TDBEdit
              Left = 8
              Top = 115
              Width = 90
              Height = 21
              DataField = 'DATA_INICIO'
              DataSource = DataWork
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
              OnKeyPress = DBEdit1KeyPress
            end
            object dbedtDATA_FIM: TDBEdit
              Left = 112
              Top = 115
              Width = 90
              Height = 21
              DataField = 'DATA_FIM'
              DataSource = DataWork
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit4: TDBEdit
              Left = 112
              Top = 72
              Width = 473
              Height = 21
              DataField = 'CONTATO'
              DataSource = DataWork
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              OnKeyPress = DBEdit1KeyPress
            end
            object DbNControle: TDBEdit
              Left = 112
              Top = 24
              Width = 265
              Height = 21
              DataField = 'N_CONTROLE'
              DataSource = DataWork
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit5: TDBEdit
              Left = 385
              Top = 24
              Width = 97
              Height = 21
              DataField = 'DATA_OS'
              DataSource = DataWork
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit6: TDBEdit
              Left = 489
              Top = 24
              Width = 97
              Height = 21
              DataField = 'HORA_OS'
              DataSource = DataWork
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnKeyPress = DBEdit1KeyPress
            end
            object dbedtTEMPO_GASTO: TDBEdit
              Left = 424
              Top = 115
              Width = 90
              Height = 21
              DataField = 'TEMPO_GASTO'
              DataSource = DataWork
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              OnKeyPress = DBEdit1KeyPress
            end
            object dbedtHORA_FIM: TDBEdit
              Left = 320
              Top = 115
              Width = 90
              Height = 21
              DataField = 'HORA_FIM'
              DataSource = DataWork
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              OnKeyPress = DBEdit1KeyPress
            end
            object dbedtHORA_INICIO: TDBEdit
              Left = 216
              Top = 115
              Width = 90
              Height = 21
              DataField = 'HORA_INICIO'
              DataSource = DataWork
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              OnKeyPress = DBEdit1KeyPress
            end
            object ComboFormaPag: TDBLookupComboBox
              Left = 192
              Top = 171
              Width = 209
              Height = 21
              DataField = 'FORMAPAGTO'
              DataSource = DataWork
              KeyField = 'ID'
              ListField = 'DESCRICAO'
              ListSource = DataFormaPagto
              TabOrder = 13
              OnKeyPress = DBEdit1KeyPress
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 192
              Top = 199
              Width = 209
              Height = 73
              Caption = ' Documento '
              Columns = 2
              DataField = 'DOCUMENTO'
              DataSource = DataWork
              Items.Strings = (
                '0 - Dinheiro'
                '1 - Cheque'
                '2 - Cart'#227'o'
                '3 - NP'
                '4 - Carne'
                '5 - Boleto'
                '6 - Outros')
              TabOrder = 15
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6')
            end
            object DbRadioStatus: TDBRadioGroup
              Left = 410
              Top = 153
              Width = 163
              Height = 119
              Caption = ' Status da oS '
              DataField = 'STATUS'
              DataSource = DataWork
              Items.Strings = (
                '0 - Lan'#231'ada'
                '1 - Aguardando aprova'#231#227'o'
                '2 - N'#227'o Aprovada'
                '3 - Aguardando Pe'#231'a'
                '4 - Em Execu'#231#227'o'
                '5 - Conclu'#237'da')
              TabOrder = 11
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5')
            end
            object DBEdit16: TDBEdit
              Left = 88
              Top = 251
              Width = 95
              Height = 21
              DataField = 'VALOR_PAGO'
              DataSource = DataWork
              TabOrder = 18
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit15: TDBEdit
              Left = 88
              Top = 227
              Width = 95
              Height = 21
              DataField = 'OUTROS'
              DataSource = DataWork
              TabOrder = 17
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit14: TDBEdit
              Left = 88
              Top = 203
              Width = 95
              Height = 21
              DataField = 'ACRESCIMO'
              DataSource = DataWork
              TabOrder = 16
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit13: TDBEdit
              Left = 88
              Top = 179
              Width = 95
              Height = 21
              DataField = 'DESCONTO'
              DataSource = DataWork
              TabOrder = 14
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit12: TDBEdit
              Left = 88
              Top = 155
              Width = 95
              Height = 21
              DataField = 'VALOR_COBRADO'
              DataSource = DataWork
              TabOrder = 12
              OnKeyPress = DBEdit1KeyPress
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 308
            Width = 633
            Height = 37
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 1
            object BitBtn2: TBitBtn
              Left = 253
              Top = 5
              Width = 120
              Height = 27
              Action = ActFecharOS
              Caption = 'Fechar OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object BitBtn3: TBitBtn
              Left = 380
              Top = 5
              Width = 120
              Height = 27
              Action = ActLiberarOS
              Caption = 'Liberar OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object BitBtn1: TBitBtn
              Left = 5
              Top = 5
              Width = 241
              Height = 27
              Cursor = crHandPoint
              Action = ActLancHoras
              Caption = 'F8 - Lan'#231'ar Horas Trabalhadas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object BitBtn4: TBitBtn
              Left = 507
              Top = 5
              Width = 120
              Height = 27
              Action = ActEmitirNFSe
              Caption = 'Emitir NFS-e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Endere'#231'o do Cliente'
          ImageIndex = 1
          object Label21: TLabel
            Left = 8
            Top = 8
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit17
          end
          object Label22: TLabel
            Left = 8
            Top = 48
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
            FocusControl = DBEdit18
          end
          object Label23: TLabel
            Left = 72
            Top = 48
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit19
          end
          object Label24: TLabel
            Left = 184
            Top = 48
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit20
          end
          object Label25: TLabel
            Left = 8
            Top = 88
            Width = 33
            Height = 13
            Caption = 'Cidade'
            FocusControl = DBEdit21
          end
          object Label26: TLabel
            Left = 232
            Top = 88
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label27: TLabel
            Left = 8
            Top = 128
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit23
          end
          object Label28: TLabel
            Left = 136
            Top = 128
            Width = 32
            Height = 13
            Caption = 'Celular'
            FocusControl = DBEdit24
          end
          object Label29: TLabel
            Left = 8
            Top = 168
            Width = 58
            Height = 13
            Caption = 'CNPJ / CPF'
            FocusControl = DBEdit25
          end
          object Label30: TLabel
            Left = 296
            Top = 88
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit26
          end
          object Label31: TLabel
            Left = 208
            Top = 168
            Width = 117
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual /  RG'
            FocusControl = DBEdit27
          end
          object DBEdit17: TDBEdit
            Left = 8
            Top = 24
            Width = 394
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DataWork
            TabOrder = 0
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit18: TDBEdit
            Left = 8
            Top = 64
            Width = 57
            Height = 21
            DataField = 'NUMERO'
            DataSource = DataWork
            TabOrder = 1
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 72
            Top = 64
            Width = 105
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit20: TDBEdit
            Left = 184
            Top = 64
            Width = 217
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DataWork
            TabOrder = 3
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit21: TDBEdit
            Left = 8
            Top = 104
            Width = 209
            Height = 21
            DataField = 'CIDADE'
            DataSource = DataWork
            TabOrder = 4
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit23: TDBEdit
            Left = 8
            Top = 144
            Width = 113
            Height = 21
            DataField = 'TELEFONE'
            DataSource = DataWork
            TabOrder = 7
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit24: TDBEdit
            Left = 136
            Top = 144
            Width = 113
            Height = 21
            DataField = 'CELULAR'
            DataSource = DataWork
            TabOrder = 8
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit25: TDBEdit
            Left = 8
            Top = 184
            Width = 185
            Height = 21
            DataField = 'CNPJCPF'
            DataSource = DataWork
            TabOrder = 9
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit26: TDBEdit
            Left = 296
            Top = 104
            Width = 105
            Height = 21
            DataField = 'CEP'
            DataSource = DataWork
            TabOrder = 6
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit27: TDBEdit
            Left = 208
            Top = 184
            Width = 193
            Height = 21
            DataField = 'INSCRICAORG'
            DataSource = DataWork
            TabOrder = 10
            OnKeyPress = DBEdit1KeyPress
          end
          object ComboUF: TDBLookupComboBox
            Left = 232
            Top = 104
            Width = 49
            Height = 21
            DataField = 'UF'
            DataSource = DataWork
            KeyField = 'UF'
            ListField = 'UF'
            ListSource = DataUF
            TabOrder = 5
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Informa'#231#245'es do Servi'#231'o'
          ImageIndex = 2
          object Label7: TLabel
            Left = 8
            Top = 2
            Width = 154
            Height = 13
            Caption = 'Problema reclamado pelo Cliente'
            FocusControl = DBMemo1
          end
          object Label8: TLabel
            Left = 8
            Top = 113
            Width = 165
            Height = 13
            Caption = 'Problema constatado pelo T'#233'cnico'
            FocusControl = DBMemo2
          end
          object Label9: TLabel
            Left = 8
            Top = 224
            Width = 146
            Height = 13
            Caption = 'Servi'#231'o realizado pelo T'#233'cnico'
            FocusControl = DBMemo3
          end
          object DBMemo1: TDBMemo
            Left = 8
            Top = 18
            Width = 601
            Height = 92
            DataField = 'RECLAMADO'
            DataSource = DataWork
            TabOrder = 0
          end
          object DBMemo2: TDBMemo
            Left = 8
            Top = 129
            Width = 601
            Height = 92
            DataField = 'CONSTATADO'
            DataSource = DataWork
            TabOrder = 1
          end
          object DBMemo3: TDBMemo
            Left = 8
            Top = 240
            Width = 601
            Height = 92
            DataField = 'REALIZADO'
            DataSource = DataWork
            TabOrder = 2
          end
        end
        object TbsDados: TTabSheet
          Caption = 'Dados'
          ImageIndex = 3
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 633
            Height = 345
            Align = alClient
            TabOrder = 0
            object MemoDados: TMemo
              Left = 2
              Top = 15
              Width = 629
              Height = 328
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TbsResposta: TTabSheet
          Caption = 'Resposta'
          ImageIndex = 4
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 633
            Height = 345
            Align = alClient
            TabOrder = 0
            object MemoResp: TMemo
              Left = 2
              Top = 15
              Width = 629
              Height = 328
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TbsXMLResp: TTabSheet
          Caption = 'XML Resposta'
          ImageIndex = 5
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 633
            Height = 345
            Align = alClient
            TabOrder = 0
            object WBResposta: TWebBrowser
              Left = 2
              Top = 15
              Width = 629
              Height = 328
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 547
              ExplicitHeight = 291
              ControlData = {
                4C00000002410000E62100000000000000000000000000000000000000000000
                000000004C000000000000000000000001000000E0D057007335CF11AE690800
                2B2E126208000000000000004C0000000114020000000000C000000000000046
                8000000000000000000000000000000000000000000000000000000000000000
                00000000000000000100000000000000000000000000000000000000}
            end
          end
        end
      end
    end
  end
  inherited DataWork: TDataSource
    OnDataChange = DataWorkDataChange
    Left = 584
    Top = 136
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 584
    Top = 64
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    inherited ActRelatorio: TAction
      OnExecute = ActRelatorioExecute
    end
    object ActLancHoras: TAction
      Category = 'Botoes'
      Caption = 'F8 - Lan'#231'ar Horas Trabalhadas'
      ShortCut = 119
      OnExecute = ActLancHorasExecute
    end
    object ActConsultaCliente: TAction
      Category = 'Outras'
      Caption = 'ActConsultaCliente'
      OnExecute = ActConsultaClienteExecute
    end
    object ActFecharOS: TAction
      Category = 'Botoes'
      Caption = 'Fechar OS'
      OnExecute = ActFecharOSExecute
    end
    object ActLiberarOS: TAction
      Category = 'Botoes'
      Caption = 'Liberar OS'
      OnExecute = ActLiberarOSExecute
    end
    object ActEmitirNFSe: TAction
      Category = 'Botoes'
      Caption = 'Emitir NFS-e'
      OnExecute = ActEmitirNFSeExecute
    end
  end
  object ImageList1: TImageList
    Left = 416
    Top = 296
    Bitmap = {
      494C01011E002100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA00B9A69E00C39F7A00CFAA8400CDA7
      8200BE997500A6886A00DFDFDE00000000000000000000000000000000000000
      0000CCCCC900C3C2BB00BDBCB500C9C8C100CDCBC300D4D2C900B9B9B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6ACA200C7A17B00E9CBC600D4AE8800DEB89200DAB4
      8F00CEA98400BF997300977C6500F4F4F4000000000000000000E8E8E700C6C5
      BE00D6D4CD00EAE7DE00F3F1E900C8C1B5000000000000000000DDDEDC00D2D0
      C600E8E8E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900E9E9E900E7E8
      E700E8E8E800F3F3F300C59D7700D4AE8800E5D0C900D9B38D00E8C29C00E3BF
      9B00D6B49200C19B75009D857100ECECEC0000000000E8E8E700C6C5BD00D6D3
      CA00ACA39100E6E3D900EFEDE500F8F6F000FFFEFB0000000000CFCAC2000000
      0000CCCBC300E8E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000589C7B00529E7800539E7800509C
      760094A696004B946F00C59F7500E0BA9500D4C6BE00E4C4A600EAC49F00E8C8
      A800DBBD9C00C29C7600C6BDB6000000000000000000BFBEB700D7D4CC00D3D0
      C500D8D5CB00E1DED400EAE8DF00F3F1EA00FBFAF500FFFFFD00000000000000
      000000000000B8B8B10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067B28F0065B18B0065B18B005EAA
      8400C6C6B7005FAA84007D9C7400EDC9A700979695008C9AA800E1BB9500E1BC
      9800D4B18E00BA926D00EFEFEF00FEFEFE00C9C9C400DDDBD300BBB6A800D3D0
      C400D5D2C800DCD8CE00E5E2D900EDEBE200F6F3EC00FCFAF600FFFFFD000000
      0000CAC5BB00DDDDDA00B3B3B300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084C7A90073BF990070BC960069B3
      8D00CDDDC40065B18B00589E7B00A1A887006779890030567C003E628300C9A4
      8100CDA98700EBEBEB00F2F2F200FDFDFD00BAB9B300E2DFD700DDDAD100D8D6
      CD00D4D0C500D8D5CA00DEDCD100E3DFD600EEECE300F5F3EC00FAF9F400FEFD
      FA00FFFFFD0000000000A1A29D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FCCB00079C39F0070BC9600769E
      B700708DA30050917000579D7B00476C89003A608600395E83002D537900DFDD
      D800FBFBFB00FDFDFD00FDFDFD0000000000C4C1BB00E4E2DB00E4E2DB00DDDA
      D100D8D5CB00D4D1C600D9D6CB00B5AC9C00E6E4DB00ECEAE100F2F0E800F7F5
      EE00FAF8F300FCFBF700BABAB300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000081C7A500539473006288
      AE00587F9B003D755800DFEAE400547AA000547AA000486E9400365B80000000
      000000000000000000000000000000000000CBC5BC00B5AFA100E6E5DE00E6E4
      DE00DDDAD200D8D5CC00B0A7980063502E00B7AEA000BAB1A300BCB4A600C0B7
      AA00E7E3DB00C2BAAB00BDBCB600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E6E800366176006D93
      B9006C92B80039607800E7EBED006F95BB006E94BA005C82A800496D9200595E
      620000000000000000000000000000000000C0BBB400E9E7E000E8E7E000E8E6
      E000E8E6E000E6E5DF00DAD8CF00AFA59700D7D4C900DBD7CD00DFDDD300E4E1
      D700E7E4DB00E9E7DE00B1B1AB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049809500527D97008FB5
      DB0087ADD3005A7F9F00D6DBE10094B6D90087ACD100698FB500465666003B3D
      3E0000000000000000000000000000000000B3B3AE00E8E5DC00EAE8E100E9E8
      E200E8E7E100E8E6E100E7E6E100CCC6BF00E3E1DC00DDDAD200DAD8CE00DBD8
      CE00DDDAD000E0DED500ACACA700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000558FA50091B6DB00AED4
      F3009AC0E6007599BC00000000009DC1E50095B7DA007094B90044494E003E3E
      3E0000000000000000000000000000000000CBCBC400D1C4B600BCB7A900EAE9
      E200EAE8E200E8E7E100E7E5DF00C8C1BA00E3E1DB00E0DED700DFDCD500DCD9
      D100A39C8900D0CEC600BFBFBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064A1B50093BBD800CBED
      F7009FC4E9006E91B60000000000808080007A7A7A0067676700555555004040
      400000000000000000000000000000000000FCFCFC00BDBBB500E4DDD400EDEA
      E400EAE8E200E8E7E100E7E5DF00C4BCB400E2E0DA00E0DED700DDDBD300D9D7
      CE00D7D5CC00BDBDB60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098C4D10067A7B8004881
      950077A2C10053779400F3F3F300F8F8F8009C9C9C006D6D6D007D7D7D00FCFC
      FC000000000000000000000000000000000000000000E9E8E400C5C0BA00E2DC
      D200B8B2A300EAE8E100E8E6DF00C0B8AE00E3E1DA00E1DED600BCB7A900DBD8
      D000C1C0B900E7E7E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5DEEB0095CE
      DC007EBFCE0065A8B9007E9CA800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E300C1BF
      B800CFC1B100E7E3DA00EAE8E000B1AA9A00E5E2DA00E1DFD700D4CDC300C0BF
      B800E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFC
      FC00F6F9FA000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00CBCBC400B7B6B100BDB7AF00C5BDB200C3BEB500C1C0B900C7C6C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBBBB00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F0F001212
      12001E5095001F5297002052980020539800205398001F5297001F5095001E4E
      92001B498C001322450000000000000000000000000000000000000000000000
      000000000001000000060000000F000000110000000A00000002000000010000
      0004000000040000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000575757000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D1F490013161B000909
      0900262626002053990021549A0021559B0021549B0020549A0022579E002155
      9C00205398001E50940000000000000000000000000000000000000000010000
      0007000000140000002918181838C2C2C2C2000000330000001F7171718C7676
      76CB000000260000001700000007000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000046464600C1BD9D00A5A5
      A500000000000000000000000000AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000011326B002359A1004141
      41000B0B0B0035353500EEEEEE00F6F6F600F7F7F700F6F6F600E7E7E700245C
      A500235AA10021569D000B1F4E00000000000000000100000008000000170000
      002EA5A5A57DE0E0E0FFE2E2E2FFF9F9F9FF6C6C6CFF0B0B0BFF2C2C2CFF7D7D
      7DFF7D7D7DFF7D7D7DFF6464645E000000020000000000000000000000000000
      000000000000000000000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F1C8006352
      3500898989000E16220005080C0035527D00020203000000000004060A000000
      000000000000E9E9E900000000000000000000000000133875002660A900AAB6
      C800525252000D0D0D00FBFBFB00F1F1F100F8F8F800F8F8F800ECECEC00E3E3
      E3002660AA00255DA50008205600000000000000000500000024D3D3D3D9DFDF
      DFFFE1E1E1FFE4E4E4FFE8E8E8FFE8E8E8FF616161FF1F1F1FFF141414FF0F0F
      0FFF0C0C0CFF0C0C0CFD03030325000000010000000000000000000000000000
      0000000000000000000000CCFF00000000000000000000FFFF00000000000000
      000000000000000000000000000000000000000000000000000093754300B18D
      510015120C006CA6FB005E91DB0071B0FF00517EBE006EABFF0070ACFF006DA8
      FE006196E2002B436500DEDEDE00000000000000000017407F002966B100ADBA
      CC00F0F0F000E5E5E500BCBBBA00FBFBFB00F8F8F800F8F8F800F8F8F800E6E6
      E6002865AF002863AD000B275F000000000000000005DDDDDDF7E1E1E1FFE3E3
      E3FFE7E7E7FFEAEAEAFFFEFEFEFFEEAB64FF2C2C2CFF272727FF2C2C2CFF6161
      61FF2E2E2EFF141414FF101010FFB2B2B23F0000000000000000000000000000
      0000000000000099CC0000CCFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000020406002F4A7000C59D
      5A00A1804A0068A0F2006197E400669EED005C8ED600598ACE005D8FD9004972
      AD0074B2FF0074B2FF000000000000000000000000001A4789002C6CB900B0BE
      D000F8F8F800DBDBDB00F0F0F000BCBBBA00FBFBFB00F9F9F900F9F9F900F8F8
      F800507DB5002A69B5000E2E68000000000000000001E2E2E2FFE5E5E5FFE9E9
      E9FFECECECFFF5F5F5FF7F8FEFFF424242FF3D3D3DFF383838FF323232FF2D2D
      2DFF282828FF242424FF999999FFD9D9D9090000000000000000000000000000
      00000099CC0000CCFF000000000000FFFF0000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000DDFFFF00639B
      E900C89F5C00735C3500527FC00074B2FF005D90D90070ACFF0074B2FF006AA3
      F60067A0EE0073B1FE000000000000000000000000001F4F92002F72C100B2C1
      D400F5F5F500ECECEC00E6E6E600F0F0F000BCBBBA00D5D5D500F9F9F900F9F9
      F9005483BC002D6FBD00113470000000000000000000E8E8E8FFEBEBEBFFF6F6
      F6FFE3E3E3FFD1D1D1FF858585FF7E7E7EFF4E4E4EFF484848FF434343FF3E3E
      3EFF383838FF505050FFCFCFCFE9000000000000000000000000000000000000
      00000099CC0000CCFF000000000000000000000000000000000000FFFF0000FF
      FF000000000000000000000000000000000000000000000000006FACFF0074B2
      FF00B8945800AE8A50005D8FD9006DA2E50071AEFF0074B2FF0074B2FF006AA4
      F60072AFFD005E91DB00A2A2A200000000000000000025599A003177C700B5C5
      D800F9F9F900F9F9F900F9F9F900E1E1E100CFCFCF00C7C6C600F9F9F900F9F9
      F9005788C3003074C300143A78000000000000000000EEEEEEEFE0E0E0FFE6E6
      E6FFA1A1A1FF9C9C9CFF979797FF909090FF5E5E5EFF595959FF545454FF4E4E
      4EFFBBBBBBFFD3D3D3E500000000000000000000000000000000000000000000
      00000099CC0000CCFF0000CCFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000000076B6
      FF0069A2F500C8A05C0068A0F2006BA6FA00639BE90072B0FF0070ACFF005A8D
      D40000000000A2A2A2000000000000000000000000002B62A200367DCC00B7C8
      DC00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9005A8EC9003278C9001741800000000000000000000000000000000000C3C3
      C3C5F6F6F6FFF0F0F0FFA4A4A4FF9F9F9FFF9B9B9BFF676767FF6A6A6AFFD9D9
      D9FFD9D9D9210000000000000000000000000000000000000000000000000000
      00000099CC0000CCFF0000CCFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000314C
      730070ACFF0075B1F900AE8A50006DA2E5006BA4F8006DA8F900000000000000
      00000000000000000000000000000000000000000000316AAA003C85D000B9CB
      DF00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9005E93CE00377FCD001A478800000000000000000000000000969696B5F8F8
      F8FFF4F4F4FFF2F2F2FFF1F1F1FFF4F4F4FF939393F1DBDBDBFFD9D9D94B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000099CC0000CCFF0000CCFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A0000000000C8A05C008C6E400000000000E6E6E600000000000000
      000000000000000000000000000000000000000000003670AF00438DD400BCCE
      E200F4F4F400E7E7E700E9E9E900E9E9E900E9E9E900E8E8E800E7E7E700F9F9
      F9004589D0003D86D0001D4D90000000000000000000000000008989898EF8F8
      F8FFF7F7F7FFF5F5F5FFF4F4F4FFF5F5F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000099CC0000CCFF0000CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000057452700C0985700362A180000000000000000000000
      0000000000000000000000000000000000000000000022579D004994D7004D99
      DA00FCFCFC00107C530015875A0016875A0015875A001586590027816000ECEC
      EC004995D800438DD40000000000000000000000000000000000E4E4E496FBFB
      FBFFFAFAFAFFF8F8F8FFF8F8F8FF8A8A8A6C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2004B3C22008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000A1CBEC0055A2
      DE005BA9E200209B670023A16B0030AB760045B6840053BD8E0056BD8F0056A3
      DF004F9CDB005789C00000000000000000000000000000000002FEFEFEFFFDFD
      FDFFFCFCFCFFFBFBFBFFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002967
      B2002A68B50069BF990038B07B004CBA8A005EC396006DCAA00068BC97002966
      B1002864AE0000000000000000000000000000000000000000000000000B0000
      0017B5B5B554F4F4F4CB0000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000044B68400A5DDC300AEE1C9004DB98A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000002000000010000000100000000000000000000
      000000000000000000000000000000000000FCFEFF00FFFDFF00FFFFFC00FFFF
      FA00FFFFFF0000000000FFFFFB00FDFFFF0000000000FEFFFA00FCFFFC00FCFF
      FF00FEFEFC00FEFFFA00FCFFFE00FFFCFF000000000000000000000000000000
      00000000000000000000BCBCBC000000000000000000D9D9D900000000000000
      0000000000000000000000000000000000000000000000000000E7E0DD00DAD1
      CD00E5DFDA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000A00000011000000120000000F0000000C000000070000
      0003000000010000000000000000000000001625000056D9340027E5220019E4
      230020DC1F002BE521003AD146000000160000003F000000430000003300FFF5
      FF00FDFFF900FFFAFD00F7F5FB00FCFFFD000000000000000000000000000000
      0000B3B3B3004D4D4D00353535005B56570052444500B2A6A6004E4E4E007070
      7000000000000000000000000000000000000000000000000000DDD6C7009C96
      8300665E570070665F00887E7700A1958F00BAAEA800CCC3BF00D7D2CF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000F0000001A0000001A0000001A0000001A0000001A0000
      001500000008000000010000000000000000FFFEF600002600004AD83F0044CD
      5300001A0000001F0000000C00001F299B00262FA4000000310000061800000B
      1400000B0D00000A0300FDFFFB00F8FFF8000000000000000000ECECEC004343
      4300EAEAEA00EEEEEE00B0B0B000B3AEAF00796D6D00807E7E00D2D2D200F4F2
      F2005F5F5F0066666600000000000000000000000000DAD4CD00D4CEB100D6E7
      BC00EAFCD500F0FFDC00F6FFE200FBFCEC00F3EFE400B9B2A90088807900857C
      7800ECE8E7000000000000000000000000000000000000000000000000000000
      00000000000006009651090BB1FF0E21DDFF0F28EAFF0E26DCA60000001A0000
      001A00000013000000020000000000000000F7FCFA00FAFBF200000C0000E7FF
      F100FFFFFB00CABEB800B2B8BF00657A95006BECFF0027F2FD0019F4FE001EFC
      FF0021F7F80074F7F400FFFCFE00F4FFFB000000000079797900C3C3C300F6F6
      F600EEEEEE00E6E6E600AAAAAA00B0B0B0006F6D6D005F5F5F007E7E7E009D9D
      9D00C5C5C500FBFBFB00A0A0A0000000000000000000E3DCD300F7F3D000EAFF
      D300EFFFD500F7FFD900EFF9D500D2E1C500B7CCAC00CBDCC100EDF9E3008282
      7600E3DEDB000000000000000000000000000000000000000000000000000600
      A0240705A8FF122BEBFF112AEAFF0F28EAFF0F28EAFF0F28EAFF0F28EAFF0F28
      EAFF00000003000000000000000000000000F9FEFD00FFFFF70009000400FFFC
      FF0006010200FFFFFB00FFFFFC0000030C000005070000050B0000060A00000C
      0A0000070400E3FFFF00FFFBFF00FFFCFF0000000000D0D0D000F6F6F600EEEE
      EE00E6E6E600757575007A7A7A00A2A2A200B0B0B000B5B5B500B7B7B7009090
      90003333330078777900B2B2B2000000000000000000E3DBD400FFFCDB00F0FF
      D700FCFAD700D4BC9800CCCF9D00BBD0A900CDE5C300E5FDDD00F2FFEB008083
      7400E4DFDC0000000000000000000000000000000000000000000700A7120802
      AAFF1832ECFF1630ECFF4458EFFF1125E0D10B11C2F41B2BD8FF6979F2FF0F28
      EAFF0F28EAFF000000000000000000000000FDFEFF0000010000000400000000
      0400F4FEFF00FBFFFF00FFFEFF0000020000BBBFB400BCC1BF00C2BDBF00BEBC
      BB0002060000FFFFFE00FFFAFF00F9F5FF0000000000CBCBCB00E5E5E5007676
      7600CECECE00D6D6D6009E9E9E00A4A4A4008383830074747400A7A7A700B8BD
      BB0081988900657F6D00B2B2B2000000000000000000E3DBD400FFFAE000EFF6
      D300F1ECD3009A6F5C00CC9F7400DAC39100F6FBD400EEFFE800F2FFED008282
      7600E4DFDC0000000000000000000000000000000000000000000700AEFF203B
      EEFF1E38EDFF1C36EDFC000000000000000000000000000000000700AEFF6373
      F2FF1029EAFF0F28EAB400000000000000000200000003010700000200000005
      0400FFFFF900FEFEF200FAFEFF0003050500CAC4C500BEBCBC00C3BCBF00C2BD
      BF00C3C6BD0000060000FFFFF900F8FFFF000000000077777700E6E6E600DFDF
      DF00D6D6D600DEDEDE00E2E2E200EAEAEA00DADADA00B5B5B500B0B0B0009797
      97005F656000747C7500B4B2B2000000000000000000E3DBD400ECDFC500BFD5
      AB00C2D3B100F7E9D200BB795600F8B97500F4CF9B00FFFFE400F7FFF3008081
      7700E3E0DC0000000000000000000000000000000000000000000700B6FF3750
      F0FF253FEEFF0000000000000000000000000000000000000000000000000700
      B6FF142EEBFF132CEBFF0000000000000000020000000100050000040000FFFF
      FF00FFFDFE00FCFDFB00F9F9FF00FFFDFE0000010600C1BCBE00BAC5C300D2C4
      C800BBC1C600BEBEC400FFFDFE00F4FFF70000000000E6E6E600DEDEDE00D6D6
      D600CFCFCF00D1D1D100EFEFEF00E9E9E900BDBDBD00BBBBBB00E0E0E000E1E1
      E100CDCDCD0089898900C5C5C5000000000000000000E3DBD400D4CDB200D2EA
      C200E2F9D300F1FBD700C5A06800B8661400FCB76E00E5C29600FBFAE6007D7F
      7300E3E0DC00000000000000000000000000000000000800BD6F3940DAFF5D72
      F3FF2C47F0FF0000000000000000000000000000000000000000000000000800
      BDFC1932EAFF1832ECFF00000000000000000101010004030500000200000000
      0000FFFDFE00FFFFFF00FFFEFF0004000000C2BDBF001E090C0002000000C5BD
      BE00BDBFC000C2B8BE00FFFEFF00F3FFFD00000000008D8D8D00D5D5D500D6D6
      D600B2B0B000D1D1D100F2F2F200EFEFEF00EDEDED00EBEBEB00E6E6E600DBDB
      DB00ABABAB0060606000000000000000000000000000E3DBD400E8E1C600E5FD
      D500EEFFE100F1FFE400FFFFDB00BE7D3200BD661000EBA35D00BB966A00857C
      6800DEDAD500000000000000000000000000000000000800C2634B50DEFF697E
      F5FF334FF1F00000000000000000000000000000000000000000000000000800
      C2BD1A2AE1FF1E38EDFF00000000000000000404040001010100040404000101
      010000000000FCFCFC00FFFFFF000000000000000000C2C4C400B8BEBD00C1BF
      BF00C5C0C100BFC5C400BCBCBC00000100000000000000000000D7D7D700EAEA
      EA00EAEAEA00ABABAB00B9B9B900ADADAD00908D8F00A1A1A100E1E1E100B6B6
      B6007D7D7D0000000000000000000000000000000000E1DBD400FFFEE500F1FF
      E200F5FFE800F9FFED00F4F9E400FCE6C200C47A3200B7611500BF7747007F5A
      3E00A89B930000000000000000000000000000000000000000000800C5FF7489
      F6FF5A73F5FF00000000000000000902C6D0304CF16300000000000000000800
      C5FF2641EFFF243FEEFF0000000000000000FFFFFF0003030300020202000303
      03000000000000000000010101000500000016030600BFBFBF0000050400BABF
      BE00D1BEC10051000C0000000000FAFFFF00000000000000000000000000C2B3
      B100E0B8A600F3C8B700FFE8D800FFEBDF00E5D5CE00D9D4D3006B6B6B00EBEB
      EB000000000000000000000000000000000000000000E2DAD300FFFDE700EBF9
      DD00E2EFD700D8E5CF00BDD2B900BBCCB100D8CCA800E4A27F00BF774800C187
      5300674C4200C8BDB900000000000000000000000000000000000800C3FF7389
      F8FF7B8FF7FF3E5CF4480800C3FF3A56F3FF3754F2FF000000000800C3150A04
      C5FF2D49F0FF2B46F0FC0000000000000000FFFFFF00FCFCFC00000000000000
      000000000000000000000202020000020200000100000000000000010000C3BD
      BE00C8C6C600C5B8BA00FBF5F600FFFEFF00000000000000000000000000B19A
      9200FFD9B900FFD9B900FDDAB900FBD9BB00F2D4BB0078665F00000000000909
      090000010000000000008B8B8B000000000000000000E3DAD600FFF2E200D6E5
      CA00C9DCC100BCD3B700B8D4B700B8D3B900D5E7D000FFF7D700BD803E00AD62
      1600855B3100806A5F00E3DEDB00000000000000000000000000000000000800
      BCFF8699F8FF8D9FF9FF0800BCFF798EF7FF4C67F5FF0800BC661D25D4FF687E
      F5FF6077F5FF000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00050505000000000000020100000403000E00020006040400C6C0
      C100BDC2C100BFBABB000B000200FDFFFF00000000000000000000000000B097
      8D00FFE4C900FFE4C900FFE4C900FFE4C900FDE2CD009C8B88001C1C1C000000
      0000000000000000000000000000FAFBF90000000000E2DCD700D3CCB800BBD3
      B500B9D3B500D2E8D000E6FEE600E6FEE600EFFFF100F4FFED00FFFFDD00B479
      2A00B8722F00BE9D8E00D9D2CF00000000000000000000000000000000000700
      B2090904B4FFA2B2FAFF0700B2FF8397F8FF5670F6FF0700B2FF788DF7FFB4BF
      FBFF00000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC00FCFCFC00000101000001000013080A00060001000000
      0000000100000200000002000000F6FFFF000000000000000000FFFFFC00F2DA
      CE00FFEBD900FEEAD800FFEBD900FFEBD900ECDBCE00E9E1E10000000000C0C0
      C000000000000000000000000000ACACAC0000000000E5DAD600FFFBF300F3FF
      F900FCFFF800F2FFFF00FDFFFB00F6FFFE00FBFFFB00FBFFFB00FBFDF100957C
      5A00A4743A00B1998100F3EFEE00000000000000000000000000000000000000
      0000000000000600A86F585ED6FF8B9FFAFF4A69F6994561F1834764F5420000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FFFFFF00FFFFFF00FCFEFE000004030002000000080606000001
      00000001000000000000FBFFFF00F7FFFE000000000000000000BCAFAD00FFF4
      EB00FEF4EA00FFF5EB00FFF5EB00FFF5E9009A8C8600000000001C1C1C000000
      0000000000000000000000000000FAFAFA0000000000ECDEDF00D8BDC000838C
      9600E7CFD1008E97A400AD969A00CEE1EE0070616500E6FFFF00848C93008B8C
      8A00F0E5D700FEF8F10000000000000000000000000000000000000000000000
      0000000000000500AF7D2E3BCEFF97A9FBFF0000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8F8F800FFFFFF00FFFFFF00F8FAFA00FAFFFF00FFFAFB00F6F6F600FFFE
      FF00FAFFFF00FFFCFF00FFFFFF00F9F7F7000000000000000000F3E1E000FFFC
      FA00FFFDF900FFFDFA00FFFDF900FFFCFA00FCF4F40000000000000000000908
      0A0000000000000000008B8B8B0000000000000000000000000090B6C2007AAC
      C20089B4C7006D9DAF008FB1C80058859A0089A5BD0059849900708DA200919B
      A200F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFCFC00FAFAFA00F8F8
      F800F5F5F500F1F1F100EEEEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F7FF00E8F4
      FF00E8F4FF00EAF3FF00E8F4FF00E8F4FF00E8F3FF00E8F2FF00E6F2FF00E6F3
      FF00ECF4FF00F4FBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E3DF00E9E5E200E6E2DF00E8E2
      DF00EBE3DF00EAE2DF00EBE2DF00EAE2DF00EAE2DF00EAE2DF00EAE2DF00E1CD
      C800DAABA200ECC8C300ECC9C400000000000000000000000000000000000000
      0000EBA9AA00CE6D6F00D0737200D7858400CD8F8F00B68C8D00AF9D9E000000
      00000000000000000000000000000000000000000000F3FAFF001532A5001938
      AB00213CAE00223EAD00203EAF001C3BAE00193BB2001539B5001033B2000A31
      B1000A2CA8000F257D00FBFEFF0000000000000000000000000000000000EAF3
      FF00E8F3FF00E8F3FF00E8F3FF00E6F3FF00E6F2FF00E6F2FF00E4F2FF00E6F2
      FF00EFF7FF0000000000000000000000000000000000F6E7E500E1BABC00D6A4
      A200E0BCBE00DFBCBE00D8ADB000E0C0C200CF9A9600D5A7A000D4A7A300D4AA
      A500BC7C7B00D5AEA300ECC9C40000000000000000000000000000000000D246
      4700E5353400F04A4B00FF6A6900FF8D8D00FFABAB00FEBCBD00EEBCBC00B494
      9500B8B3B20000000000000000000000000000000000DFEEFF001D43DD002C4F
      DF003256E000385BDB003F5ED1003F5FCA00395ECC002653D800164AE400083E
      E3000538DC000A2EB000F6FBFF000000000000000000000000005969AE001D3C
      B7002745BB002A46BC002745BB002244BC001F43BF00183FC000133BC3000D34
      BE00112E9A00EFF7FF00000000000000000000000000F5E6E400E2B7B000D697
      8A00EDDDE000D9A39500E5CBCC00E0BEB700DCB5AD00E4C6BC00E4CBC000E4CB
      C100E5CDC400E9D2CB00E5CFC800FAFAFA000000000000000000C4242200C012
      120063131200A17D7D00DE484700FA686800F68A8900CE989800B4B0AF00F7CB
      CC00C4A2A200B8B3B200000000000000000000000000DDEFFF00274CE2003559
      E3004261E200889DEE00E3F1FF00ECF6FF00E8F5FF00CDE6FF002E59D2000D46
      E900063BDF000A30B400F6FBFF00000000000000000000000000304AA800284D
      DF003357E1003A5CDE004260CF004B65C3003F5FC8002553DD001148E700093E
      E2000B35BE00E6F1FF00000000000000000000000000F6E7E400F0E0E100E4C1
      C100F0E0E300EFE3E400E6CECD00F2E8E900E6CDCB00F3EAEB00F4EBEF00F5EF
      F200F3EBEF00EDDCDD0000000000E3E3E30000000000A51F1F00860B09000017
      170057F0F1008AF7F50096555400FB616200D7777700092B2B0066F2F1009CB6
      B600F7CBCA00B6949500D8D6D6000000000000000000DDEFFF003256E4004362
      E3005970D400EAF3FF005D73C5004369DF003D66DA0091A6E400DFF0FF00184A
      E2000C40E0001035B500F6FBFF000000000000000000000000003750AE003558
      E4004A68DF008EA1EC00E4F2FF00C7DBFF00D1E5FF00CFE4FF002F58D2000F45
      E6000E38C000E4F2FF00000000000000000000000000F6E8E400E2B2A200D694
      7B00F0E3E400D6997D00E9D3D000E0BAAA00D39E8A00F4ECEF00CF977D00F7F1
      F200D5A89800EEDEDE0000000000E3E3E300C77A78008C0A0B005062630023C7
      C60016F5F70044FEFE009AC6C500DB5959007745450034C3C10022FCFC0075FB
      FB00A0B5B600EABCBB00B09E9D000000000000000000DFF0FF003F60E5005770
      D800E6F3FF005673DB00496AE500D6ECFF004F6CC7002959E7004262C3007A94
      E1001647DF00193BB600F8FBFF000000000000000000000000004156B1004464
      E3007288E000DCE9FF005973CD005570CB004A6AC9007492E900CAE0FF00204E
      DC001941C200E6F2FF00000000000000000000000000F7E8E400F3E6E400E8C9
      C400F1E6E500F4EAE900EBD6D100F5EBE900E9D2CF00F7F1F300F6F1F200F9F2
      F400F8F2F300EFDFDE0000000000E3E3E3009E24240082000000000101001191
      900004C6C6001DF1F1006DF9F80051474700002220000FEBEB0008F3F50022E8
      E70073D5D500D2AAAB00B68D8B000000000000000000E1F0FF004969E8006277
      D300EDF6FF00526EE4004969E600DAEEFF00506BC1002956E7002855DC00DBEA
      FF001F4BDE001D3FB600F8FBFF000000000000000000000000004B60B500546F
      DE00CBDBFF007D8CD400526DDB00D6ECFF004C68C600355CD600CDE3FF003559
      C5001F45C100E5F2FF00000000000000000000000000F7E9E400E7BCA700DB9E
      7E00F5EAE900DCA58000ECD8D100E4C2AE00D8A88E00F7F1F300D5A27F00FCF9
      FA00DAB39C00F1E4E10000000000E3E3E300B11F1F00A5020300610101000002
      02001680810005C2C30022F6F70040EBED0033F7F70009FAF9001DE0DE002E7E
      7F00523E3D00F8AAAB00CD908E000000000000000000E3F0FF00516DE900677B
      D200EFF7FF00546CE6004966E600DCEEFF004E69BF002854E500244FE200E8F5
      FF00234FDE002241B400F8FBFF000000000000000000000000005166B8006076
      DF00DFEEFF00667AC800506CD800DCEEFF004B65BF002F56D600BFD6FF003F5C
      BE00284AC200E8F3FF00000000000000000000000000F7E9E400F6EBE900ECD1
      C700F6ECE900F6ECE900EEDBD500F8F1F200ECD8D300F9F3F300FCF9FA00FDFB
      FB00FCF9FB00F2E6E20000000000E3E3E300B11B1A00B1010100A80201007901
      01001E0202001E8C8C0006EEEF000DFEFF000FFFFF0030F2F20002272500B050
      5000E9676700FF8D8D00D88685000000000000000000E3F1FF005A76EC006A81
      D700EDF4FF00546DE1004767E600DCEEFF004D65BD002851E3003254CF00C0CE
      FF002A50DE002543B400F8FBFF000000000000000000000000005B6DBA00677E
      E400AFBFFF00A9B5EB004F6AD900CFE7FF00425FC8003A58C900E1F0FF003957
      CE002E4CC200E8F3FF00000000000000000000000000F8EAE400EAC2A800DFA5
      7E00F7EDE900DFAB8100EFDDD700E7C7B000DCAF8F00FCF9FA00D8AA8000FFFE
      FE00DEBB9F00F3E8E30000000000E4E4E400AE282800AB010000B10101009606
      050013080A0011AAAB0002F3F40002F8F80008F4F4002BFBFB007CCECF00AE49
      4700F0464400FF6A6B00D27574000000000000000000E3F1FF006983EF006E87
      E500A7B6F50097A6EE00566DDA004F67D1004560D2003E5CCD00E4F1FF003B58
      CB002E52DC002A47B400F8FBFF000000000000000000000000006273BC00718A
      EC007387DC00E8F2FF00A7B4E8005C6FC0006C7FCA00D8E6FF007F94E6003253
      DE00304DC000E8F4FF00000000000000000000000000F8EAE400F0D8C000E8C3
      A600F0D9C500F8F1F200F1DFD900FAF4F300F1E0D800FDFAFB00FFFFFE000000
      000000000000F4E9E40000000000E4E4E400B04244009C060600810505000505
      050039E5E50011F7F80007F9F8000CDADB000EBBBD000FDDDE003FFCFB0096EC
      EC0077474600F14B4A00CD706F000000000000000000E4F1FF00748DEF00768F
      EB007186E100ECF5FF00D3E1FF00586CCB006178D400E8F2FF00AABAFF003154
      E0003153DC002A47B400F6FCFF000000000000000000000000006C7CBF00889D
      F2007A90E8007186DB00ACBDFF00DFEEFF00CADAFF006C81DC004261DA003658
      E1002F4CBF00E8F4FF00000000000000000000000000F9EBE400EAC5A500E4B4
      9000E9C6AA00DDA17100EACBBA00E3BA9B00D9A67E00F3E3DA00D4A17100F2E3
      DA00D8AE8B00EDDBD10000000000E4E4E400A8626200831C1A004132300027AB
      AB000BE2E30006FAFA001BEAE80000161600000405000FA1A10012E2E2003AED
      EE0086969500DA3C3C00EAAAAA000000000000000000E6F2FF00889CF4008BA0
      F1007990EC007587DA00A4B0E600F1F7FF00E6EFFF00687BCC004967DE003B5E
      E4003254DD002642B100F8FBFF000000000000000000000000007684BF0098AE
      FC00839AF000738BEF006D85E9006980E300657EE4005976E9004C6CE900395C
      E2002A46BC00EAF4FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E400000000009A484700290D0D001763
      620004B0B00016DCDB003A9B9E006A080800540201001C58580012A6A6003F89
      890082181700CB4C4B00000000000000000000000000EDF6FF00879EFA008DA3
      F5007891EF006A84EE00657EEC005E79EB005B78EB005471EA004C6CE9003B5E
      E4002C50DA00203DAA00FBFCFF00000000000000000000000000E8EFFF007282
      BD006578BC005F72BD00586CB9005A6BBA005467B8004D62B4004B60B5004056
      AE006173B4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E40000000000B88887008F474700210F
      0E001B646200309C9D0030070500B00202009802020035000000423838007410
      1000C037350000000000000000000000000000000000FBFDFF007B8AC2006072
      B9005769B6005265B6004F64B5004F64B6004B5FB400465AB100445AB2003C53
      AF00364DA300ABB9EA00FFFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF6EF00FBF5EF00FBF6EF00FBF5
      EF00FBF5EF00FBF5F000FBF5EF00FAF5EF00FAF5EF00F9F4EE00FAF4EF00FAF4
      F000F9F4EF00F9F3EF00F8F3EF00E0E0E0000000000000000000B68887009451
      50004B252500390D0C0089050500B2040400B00404009C0808009E1F1E00B036
      3600000000000000000000000000000000000000000000000000FAFCFF00F6FA
      FF00F6FAFF00F6FAFF00F6FAFF00F6FAFF00F6FAFF00F6FAFF00F6FAFF00F4FA
      FF00F6FAFF00FAFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DA913D00D9914100D8924500D794
      4C00DCA36500E0B18200E9C9A900E6C5A400DCB08400D3A06F00D19F7000D7AD
      8600D3A88300D5AE8D00D9B59900D5D5D500000000000000000000000000F0D1
      D200985F6000AD535200BF454500C53D3E00C7414100B5414000C87E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00F8FEFF00FBFEFF00FFFD
      FF00FFFDFE00ECFBFD00000A0B00000F150000091100EFFCFF00FFF8FF00FAFF
      FF00FDFFFF00F1FFFF00FFFFFF00F6FFFE000000000000000000000000000000
      00000000000000000000219E6900219E6900229E6900229F6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700EAE5E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00B1B2B1008F908F0092929200F0F0
      F00000000000000000000000000000000000FFFFFB00F8FFFF00F8FFFF00FAFF
      FF00FFFFFF005384860020F7EE0022FFFD002BFDF30008837F00F0FDFF00F8FF
      FF00FFFEFF00FFFDFF00FFFEFF00FBFFFE000000000000000000000000000000
      00001C9463001A916000198E5F00188C5D00178A5C0015875A00178A5C0024A3
      6C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FAFA00E2E2E0009FA5D700B58D7100B2B6DF00E7E7
      E700EBECEC00EFEEED0000000000000000000000000000000000000000000000
      0000E7E7E700A9AAA8009DA09D00ACAEAC00B8BAB8007D7D7D009D9D9D00A5A5
      A500D7D7D700000000000000000000000000FDFFF900F3FFFC00F8FFFF00FFFE
      FF00F2FAFA004F888A0025FEF90004FFFC0016FFF50000827A0000090700FAFC
      FC00FFFFFE00FFFFFF00FFFDFF00FAFFFF000000000000000000000000001F9A
      66001F9A670022A06A001C946200F4F4F4001A8F5F00188C5D0017895C001587
      5A0026A66E000000000000000000000000000000000000000000DADBE800D8D7
      D600C2AD9E009BA2DE00D8D9D900D9D9D900DADADA00DCDCDC00E7E7E700EAEA
      EA00DDDDDD00D1D3E300000000000000000000000000E1E1E1009E9F9E009193
      8F00A4A7A300A1A4A000A3A7A200B7B9B700C5CCC5009E9E9E00979797008D8D
      8D009A9A9A00ECEDED000000000000000000F6FFFF00FDFDFF00FFFBFF00FFFE
      FF00FDFFFE00E2FFFF0028798000107A85001E7F89003E747B0000090900F5FF
      FE00FFFFFE00FDFFFF00FFFEFF00FBFFFF00000000000000000024A36C00229F
      690027A7700048AC8200F4F4F400F5F5F500DAE9E3001B916100198E5F00188B
      5D0014845800000000000000000000000000F8F9F800E3E0DE00E5E5E400D6D6
      D600D6D6D600D8D8D800D9D9D900DBDBDB00DCDCDC00E8E8E800EAEAEA00DDDD
      DD00E0E0E000C3C6E0000000000000000000B6B8B6009FA19F00989A9800979A
      96009B9E9A00959693009CA6A900B0AEA800C1C2C100D1D2D100BDBDBE00DCDC
      DD00EDEDED00F9F9F9000000000000000000FFFDFF00FFFBFF00FFFBFF00FDFF
      FF00FBFFFE002D7C73006CEDE80027F5F0003EF6F600007F7E00E1FFFF00FBF9
      F900F6FFFE00FAFFFF00FDFFFF00FFFEFF00000000000000000025A56D003AB1
      7D0034AE790022A06A00219E6900209C68006FBC9C00BFDDD1001C9462001A90
      6000188C5D0038B07B00000000000000000000000000CFCFD200E5E5E500E8E8
      E800E8E8E800E3E3E300DCDCDC00DEDEDE00E9E9E900EAEAEA00DFDFDF00E1E1
      E100E3E3E300D0BEB1000000000000000000C2C4C2008E7E7400A09F9E00A7A9
      A600EFF0EE00EAEAEB00ABABAB00C5C5C500DCD1CC00F2D7CD00F1EEEB000000
      000000000000000000000000000000000000F4FFFB00FAFFFF00FAFFFF00FAFF
      FF00EBFCF90026807B005CF8F80005FFFF000FFEFB0000847E002F7C7900FFFA
      FB00FFFEFF00FFFEFF00FFFEFF00F8FFFF0000000000000000002AA9720047B8
      860042B5820025A46D0024A26C004AB08400F5F5F5003BA779001E9865001D95
      63001B9261002E9F7000000000000000000000000000C2AEA100D0D0D000D0D0
      D000D9D9D900E9E9E900E9E9E900EAEAEA00EAEAEA00DFDFDF00E2E2E200E4E4
      E400E6E6E600E9E9E800FCFCFC0000000000000000009C9D9C00B1B3B200BCBE
      BD00D5D6D800AAABAF00AFB0B100D5D6D500F2B49B00F1AD9100ECBAA4000000
      000000000000000000000000000000000000FFFFF900FFFFFC00FFFEFF00FAFF
      FF00EDF2F3003B7B7C003FF5F50003FFFF0006F9FB000089850014797700FDFE
      FF00FFFEFF00FFFEFF00FAFFFF00F8FFFF00000000000000000037B07B0054BE
      8F004EBB8B0029A87100F5F5F5008DCDB10023A26C0022A06A00219D68001F9A
      66001D96640031A07200000000000000000000000000BBBFE000D1D1D100D2D2
      D200D2D2D200D4D4D400D4D4D400E1E1E100E0E0E000E2E2E200E4E4E400E7E7
      E700E9E9E900EBEBEC00E9E7E6000000000000000000E8997900F67A4700E19C
      7E00C7C8C700C0C1C100CCCDCC00DCA89300E7815600DA774F00E78054000000
      000000000000000000000000000000000000FFFEFF00F6FFFF00FFFDFF00FFFF
      FF00FBFFFE00E7FFFF0092FFFF0027FFFF0005FEFF0025FFFC00127A7900F6F9
      FE00FAFFFF00FFFFFF00FFFFFF00FDFFFF00000000000000000044B6840061C4
      98005AC1930041B38100F5F5F50028A8710025A66E0024A46D0023A16B00219E
      69001E97640057BF9100000000000000000000000000D7D9ED00D2D2D200D4D4
      D400D5D5D500D5D5D500D6D6D600D1D1D100BEBEBE00E7E7E700E8E8E800EAEA
      EA00ECECEC00EEEEEE00DCD2CB000000000000000000F5EFEC00ED7F5000EA81
      5500E7865D00E48A6300E8835800E8865C00E58B6500D57C5900D86D4300E9D2
      C70000000000000000000000000000000000FDFEFF00EDFFFF00F1FFFE00FFFB
      F800FDFFFE00F3FCFF00E1FFFF008FFFFF0026FDFC0002FDF6003AFBF8000006
      0B00FFFEFF00F9FEFD00FDFFFF00FBFDFF00000000000000000055BE8F004CBA
      8A0066C79B0042B582005FBE9400F6F6F600C4E3D60026A76F0025A56E0023A2
      6C00289A6B0000000000000000000000000000000000F5F0ED00D4D4D400D5D5
      D500D6D6D600D6D6D600D0D0D000A8A8A800ABABAB00AEAEAE00B0B0B000D6D6
      D600F0F0F000F1F1F1007C87EF00000000000000000000000000ED9B7800DE92
      7600D7886B00E2855F00DC886700D7876900DC8C6D00D58F7500DB967C00EFA6
      880000000000000000000000000000000000FFFFFF00F4FDFF00B3FFFF003CF5
      F10054FAFB0000070E00FDFDFF00D4FFFF0056F9FB0000FFFC000FFFFF0035EE
      EC0000090D00F5F9FA00F5FDFC00FEF9FB000000000000000000000000005AC1
      93005EC3960068C89D0047B78600A7D2BF0039B07C0031AC770028A871002EA4
      7200000000000000000000000000000000000000000000000000C7C9D800D6D6
      D600D7D7D700CFCFCF00ABABAB00AEAEAE00B0B0B000B4B4B400B7B7B700B9B9
      B900BEBEBE00C7C7C700CBCBCB00000000000000000000000000F1DAD000F0AC
      8F00F0B9A200EAB59F00D99E8900DBA28D00F1C0A600F7E8CF00EAA28400E890
      6C00F5F4F300000000000000000000000000FFFFF900F6FFFF009BFFFF0000FC
      FF0013FBFF00007A7E0000070400E1FFFF004DEEF20000FFFE0001FDFF0027FE
      FF00277B810000050400FFFFFC00FFFFFB000000000000000000000000000000
      000064C69A0059C0920052BD8E009BAFA60059AF89003CB27E0065C59A000000
      0000000000000000000000000000000000000000000000000000D3CDC800D7D7
      D700CECECE00ADADAD00B0B0B000B3B3B300BFBFBF00C9C9C900CCCCCC00CCCC
      CC00CCCCCC00C9C9C900D3D3D30000000000000000000000000000000000F3BC
      A600E4B4A300E0AB9700E2B19E00DAA69300E2A58C00E8B9A600DFA89300DD9B
      8200E7C2B100000000000000000000000000FCFFFA00E6FFFF0096FFFF0001FF
      FC0003FEFC0027FEFB0000847F0000100D000EF5F30000F7F80004FFFF0023FF
      FF00177B7F0000060400FAFFFC00FBFFFB000000000000000000000000000000
      00000000000079D0A90065BD960074AF950082AA98007FD3AC00000000000000
      0000000000000000000000000000000000000000000000000000D5CBC300CACA
      CA00C4C4C400CDCDCD00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00C7C7C700CBCBCB000000000000000000000000000000000000000000F5DC
      D100F5D4C800F2D5CA00E4BDAE00E1BAAC00E4B8A700EFBFAC00F0B19600F0AA
      8C00F0A78900000000000000000000000000FFFDFF00F6FDFF00217B7C0031F7
      F3000DFFFF000BFBFF0010F8FE0017F6FE0000FCFF0002FFFF000EFFFE0048F1
      EE003373740000090300FDFFFF00FAFFFF000000000000000000000000000000
      0000000000000000000084AF9C0070BA9900B4B4B40000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00D0D0D000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00C5C5
      C500CCCCCC00000000000000000000000000000000000000000000000000F9F6
      F500FAE0D600F9DDD100F8D8CA00F7D1C100F6CCBA00F4C4B000F4C1AB00F4C6
      B300E8CBBD00F4F2F1000000000000000000FAFFFF00FFFBFD00E1FFFF00A1FF
      FF0022F9F60000FFFC0003FFFF0008FFFF0000FEFD0017FFF80073F4F100A0BF
      C200A4C3C2002B817700FFFCFF00FFF7FF000000000000000000000000000000
      00000000000086D6B1005AC093006AC99E0046B7860091DBB900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECECEC00CDCDCD00CACACA00CBCBCB00CCCCCC00CCCCCC00C3C3C300CBCB
      CB00000000000000000000000000000000000000000000000000000000000000
      0000FCEAE200F3E4DD00EEE6E200F0EEED00F6F6F50000000000000000000000
      000000000000000000000000000000000000FBFFF600FFFFF900FFFEFD00ECFF
      FF00ACFFFF00AAFFFF00BDFFFF00CDFFFF00C5FEFF00D6FDFF00AFBFC500B1BF
      BE004F726E00F1FFFF00FBFFFF00FFFBFE000000000000000000000000000000
      0000000000008DDAB70075CEA60073CDA5005BC1940063C59900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D7D700BFBFBF00BEBEBE00CFCFCF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00F9FEFF00FAFFFF00FFFE
      FF00ECFFFF00456C6E0096C5C3009DCCC900CBFDF900D8FFFF008EC7BF004772
      6F00F6FCFF00FEF7FA00FDFFFE00FFFFFB000000000000000000000000000000
      000000000000000000009CE1C1009AE0BF0083D5AF007CD2AB00A0E3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEB4
      B40083757600786C6C009C949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000002000000080000000D0000000D0000000A00000007000000040000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABA3A300AEA6A700D9CE
      D000D8CACB00D4BFBE00C0A4A400775F5F00726A6A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006698CC000032660000008800000088000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000040000001A0000001A0000001A0000001A0000001A000000180000
      000E000000040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAD2D200E6E0E100E8E6E600E1DF
      DF00DDD3D300D6C0C200A48C8C00B9959500A0828100ACA8A700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA000000DC00653232006532320000008800777777000000
      8800000088000000000000220000000000000000000000000000000000000000
      0000000000010000000700000010000000180000001A0000001A0000001A0000
      001A0000000D0000000100000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E6E6E60000000000E6DFD600B3967800A78D
      6F00A29B8A00CDCDCD00FDFDFD0000000000BDB3B300F0EEEE00F6F6F600EBEC
      EA00E2D7D900EDCDCE00AD858600C3979600CAA09B00734C3D00897669000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA0000008800777777006532
      3200777777000054000000440000000000000000000000000000000000000000
      000006009E7806009EFF1435F0FF5281FCFF5493FEFF629DFEFF3A5DF6FF0E25
      D95700000004000000000000000000000000000000000000000000000000E3E3
      E300B9B3B300E4DEDB00EADFD300E0CEB900968E8A00F5D6B800E0C7AC00EDD4
      BA00E6C9AB00D6C4A900EAEAEA00FEFEFE0000000000F3E5E600C4A8A800FDE8
      E700D5B9B900CB959500B9767500CF8F8B00C57F6E00C36A4F00BF6D5400763A
      240079655A00000000000000000000000000000000000000DC000000DC00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA0000008800000088007777
      7700653232000000000000540000000000000000000000000000000000000600
      A4FF0D17C9FF405CF3FF1E4CF6FF2661FAFF2D77FDFF3182FEFF2E7BFEFF2F70
      FCFF112AEAF9000000000000000000000000D2D1D100C6C1C100EEEBEB00A5A5
      A50074747400A8A6A4008E857F0046363200FFF0E300EDDAC500DBDBDB00F2F2
      F200FFEEDF00CEBBA700F7F7F700000000000000000000000000C68E6500FFD7
      8F00D09B8000B36D6E00BB696400935B42007A3D0B00A33C0F00B34D2300BE5D
      3B009C543C00785D53000000000000000000000000000000DC00AAAAAA00AAAA
      AA0065323200AAAAAA000000DC000000DC00AAAAAA0000008800000088000000
      88000000880077777700000000000000000000000000000000000700ABEA0D10
      BFFF2C46EFFF1D3FF1FF2A59F6FFCDDAFCFF3882FDFF327FFDFF2D71FDFF235B
      FAFF1D48F6FF0F28EA990000000000000000EDE8E800DDD6D600A29FA0005A56
      56004A434200493D3B004738350055474300F4E3D400A0897600ADACAC00EDED
      ED00F2E1D100D1C0A900FFFEFE00000000000000000000000000D8975200F1A9
      3D00C38D6400D09D9300EBA877008F633E00624E14009B480400A63F00009936
      0200A7542E007F4D39009C928B000000000000000000AAAAAA00AAAAAA00AAAA
      AA0077777700AAAAAA000000DC00000000004444440000005400000088000000
      88000000880000008800777777000000000000000000000000000700B2FF3851
      F0FF213EEDFF2342F1FFD6E1FFFFD6E1FFFF4C8FD4FF346FFBFF2D67FAFFA3C5
      FEFF2D6FFCFF4960F2FF00000000000000000000000000000000D3CECE006760
      600066605F00675F5F003D3C3C004B4A4900EADDD0009E887700BA5E3500F6F1
      ED00FFF6EF00DECEBF00000000000000000000000000D3BBA900E4AA5F00DFAA
      710041264E0092707B00F7B95300EFB25400D5AB580080561100B9530000A549
      020086571F0084684500694B3A000000000000000000AAAAAA000000DC00AAAA
      AA000000DC000000DC0022222200444444002222220044444400000054006532
      320077777700000088007777770000000000000000000700B9C31A25D6FF2843
      EFFF2843EFFF2745F0FFD6E0FFFFDCE5FFFFDCE5FFFF4E9BFCFFDCE5FFFFDCE5
      FFFF696FADFF1634EDFF132CEB1E00000000000000000000000000000000F8F8
      F80083706800A3584100BB3D1500C13F1200DDD6D000E1DAD300DCD3CA00F4EB
      E200EFE2D400EFEBE600000000000000000000000000DCC1AC00E6B577004E2B
      2700D5B4A4003E243B00F9C76D00FFC45A00F3B15200B5691700B66E03005565
      000036610A005A662A006648250000000000000000000000DC00000088000000
      DC000000DC000000DC0011111100444444002222220044444400000000000000
      880077777700777777007777770000000000000000000800BFFF5F75F4FF2F4B
      F1FF2C48F0FF2C4AF0FF2C4BF1FFE3EAFFFFE3EAFFFFE3EAFFFFE3EAFFFF5559
      9CFF1F3DEEFF1B35EDFF1731EC8D000000000000000000000000000000000000
      0000B3402200B3412500B83D1E00C2401E00D76A4800D1CBC500DAD3CE00D7CC
      BF00D2C8BA0000000000000000000000000000000000E5CAB500F8C97500F3CD
      8C00F2D29100755C5800E5C5A800FFCF7000F2AE5500DA7F1600A07D00001978
      0000096C00003864110066552200000000000000000000000000444444000000
      88000000DC000000000011111100444444004444440022222200444444000000
      540000008800000088000000000000000000000000000800C3FF96A5F7FF6A7F
      F5FF3350F2FF314FF1FF314FF1FFBBCEFDFFEAF0FFFFEAF0FFFF2A2D7DFF2543
      F0FF233EEEFF1F3AEDFF1D37ED84000000000000000000000000000000000000
      0000BB5A4100BF573E00C54F3200D1543400E6917700EC997C00E2A99000CAB8
      AE000000000000000000000000000000000000000000D0B69800FED67D00FFE0
      8D00FEE59D00E2CEB5008D7D9C00FFD88900DEA05400ED971D00CD8F0100497D
      0000127801002A6300005F602200000000000000000044444400222222004444
      4400000088001111110022222200222222004444440022222200444444004444
      440000005400000000000000000000000000000000000800C5FF9EAEF9FF758A
      F6FF516AF4FF3855F2FFF1F5FFFFF1F5FFFFF1F5FFFFF1F5FFFFF1F5FFFF3961
      F5FF2843EFFF2641EFFF233EEE12000000000000000000000000000000000000
      0000BF827300C45A4200D6624600E7694A00F4B9A600F2B59D00F1B59800DCB5
      A00000000000000000000000000000000000CCC8C300C3B08F00FDDF8E00FFEB
      A300FFF4B400F5ECCB002D234100F4D7B000C4915300FFBD4C00DA9C0E006087
      0000137E0000166A010060682B00000000000000000044444400222222004444
      4400444444000000000022222200111111004444440044444400222222004444
      440000000000000000000000000000000000000000000800C2876880F7FF7E93
      F8FF7C90F7FFF7FAFFFFF7FAFFFFA4A6C9FF3852E6FFF7FAFFFFF7FAFFFF6878
      C0FF2F4BF1FF2C48F0FF00000000000000000000000000000000000000000000
      0000CCABA300CD675200E1755E00F2866D00F7D3C500F5CAB800F3C4B000E1AD
      910000000000000000000000000000000000B9B7B600B3AAA100A8978200C0AF
      9500ECDCBF00FFF7DA00EFE1C500F8E1AF00BFA26F00D4D56E00CFA925009691
      06003A7D00001F6B0500C0B89300000000000000000000000000444444002222
      2200444444002222220044444400222222002222220044444400000000000000
      0000000000000000000000000000000000000000000000000000100EC3FFC1CB
      FCFF8498F9FF99A5EBFF5C5D9AFF415EF4FF3F5CF4FF3D5AF3FFFBFBFDFF3948
      ABFF3652F2FF3350F2AE00000000000000000000000000000000000000000000
      0000DDD9D800CD776600DA9C8F00E0C0BA00E2DEDC00EFF0F000F6F6F6000000
      00000000000000000000000000000000000000000000EDEBEB00CBC7C600CCC6
      BF00DAD5BC00D2CEB500BBA69700AA8A7700B3B38B0061C964007DAA2B00CD8B
      04009D7602007F893D0000000000000000000000000000000000000000002222
      2200444444004444440022222200444444000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000700B14E90A4
      FAFF92A5FAFF8A9DF9FF879BF9FF8497F9FF667FF7FF4361F5FF415EF4FF3F5C
      F4FF3D5AF3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CC58C00A1DA9D00A8D39A007FD58D003ACA610054AB2C00CE80
      0800C7954D000000000000000000000000000000000000000000000000004444
      4400222222004444440000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000600
      A74E9EAFFBFFCAD3FDFF8EA2FAFF8B9FFAFF899DF9FF869AF9FF8397F9FF4F6B
      F5FC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFE6BA00A9C8890088B2640086B15A0095B26900FFE4
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003648D7949DAFFBFFE3E8FEFFD2DAFDFF647FF8FF4C6BF70F0000
      000000000000000000000000000000000000FDFDFD00FDFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9BB7004041740023245C00282955004B4A5E00A1A1A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE00C5B2AA0091837D006A6A
      6A008E8E8E00505050008D817B0099837D0097847C0097847C0094847D007D7B
      7A007B7B7B005F5B5A00D4C8C2000000000087635700654C4D005E5C59006C6D
      6C006C6D6C007B7B7B008A8A8A00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F9E
      C800080A62000A0A7600050676000405750006067000090A6C00000043001A17
      3000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000D5CFCF00FDFDFD0000000000FEFFFF00AFACAB00000000000000
      0000000000000000000000000000000000009D725D00F1BBA400B1A19A00E3E3
      E300D9D6D200E1E1E1007A696000F6C5AF00F6C7AC00F7C5AE00E8C2B000E8E6
      E500EBEBEB00ADA6A300D7A49000DACEC800998E7A00642D2A006236380084D2
      FA0073CCF9005AC5F800749DAF007B7B7B00FCFCFC0000000000000000000000
      000000000000000000000000000000000000000000000000000056579B000807
      7F000000880000008F00000090000000900000008C000000860003017C000C0B
      6B0000002000A0A0A00000000000000000000000000000000000000000000000
      000000000000E7DEDE00F5F4F500F6F6F600DACDCC00F6F6F600F7F7F700EEEE
      EE0000000000000000000000000000000000E8A58600ECBDA700D7D6D8008F89
      8400ECC7B100D6D1CE00B7B0AD00EDC7AF00F2C7AC00F4C7AC00AC958600E4E4
      E400E7E7E700D3D3D300CC9F8A00A6938B00E1E1E1005C282A00B3D3F200ACE0
      FC0091D7FA007ED0F900599EE3006183A30083838300FDFDFD00000000000000
      000000000000000000000000000000000000000000007776BA0003048A000202
      920002038F0000019F000000A2000000A00000029D0002019300040585000000
      82000C0B72000000250000000000000000000000000000000000000000000000
      0000F9F9F900ECECEC00D2CCCC00D9D6D600E1E0E000E4E3E400E7E7E700D3D0
      D000F4F5F500000000000000000000000000E8A07E00E9B89E00D5D5D500D9D7
      D6008E888300DFDDDD00C1BBB600EDC3A600F3C3A100F6C3A300A08C7B00DBDB
      DB00E0E0E000C9C9C900D29E8700A8938B0000000000BADAFC00E5F6FE00CBEC
      FD00B3E3FC009CDBFB00529CE3004E98E200627C930093939300000000000000
      0000000000000000000000000000000000000000000008079300040498003534
      9000EFF0FF00080A8E000001AD000002AE000305A0004E4FA700EFF0FF000808
      7E00000087000B0B690040404E00000000000000000000000000000000000000
      0000E8E8E800DFDFDF00C9BAB800B9A8A700CFC1BE00D1C3BC00CBBFB300E2D8
      D500F2F2F200FCFCFC000000000000000000E2946F00E7AE8F00CDCFD000DEDE
      DE00DCDEDE00DEDEDE00BCB6B100EABA9800F3BA9300F3B99500EEBA9600A397
      9100D1D1D100A7867200E9A28000AA9489000000000062B5F400FEFFFF00F2F9
      FF00D8F1FE00A9D6F700ABCEF1003A8CDD004593E00065727B00A5A5A5000000
      00000000000000000000000000000000000038398F000102A600090A9A00B4B3
      DD00FFFEFF00EFF0FF00080995000405A9005152AD00F9FAFF00FAFAFF007475
      CD0001019B000706840000002D000000000000000000FEFFFF00FDFDFC00ECE4
      E200D1C3BD00D7CCC500E3DAD200DFD6CD00DAD1C700D7CDC300D2C9BC00E3D8
      D400F6F6F600F8F8F8000000000000000000DB896000E3A38000CBC8CA00D9D9
      D900DADADA00DADBD900B9B0AC00E9B08900F0B18500F2B18500F0B08700A08F
      8600C6C4C300AE7F6000E6977000AA94890000000000B7DDFB00000000000000
      0000BADAFC007AB3EA00E5F2FD00EEF6FF003589DC003E8FDE0066687300B4B4
      B400000000000000000000000000000000000D0C91000404B4000304B8001010
      9200AFB0CA00FDFEFF00F1F2FF006161AF00F7F8FF00FDFEFF006263A7000708
      A6000102AA000303970007076500B2B2B20000000000E7E4E400F7F0E900F2EC
      E500EEE8E100EAE4DD00E9E2D900E4DDD400E2D9CF00DDD4CA00D9CFC500E2D8
      D300FAFAFA00FDFDFD000000000000000000D67D5100DE966E00C3C2C400D7D5
      D500D5D5D500D5D5D500B6ACA500E5A67A00EFA57500EFA57500E5A47E009189
      9000B4BBCC00916D6300D8886300AC93890000000000FBFDFF009BCDF400ABCE
      F100D7EAFD0093C5FA00B1D5FB00D9EDFD00E5F0FB003388DC00388BDD006665
      6500C5C5C5000000000000000000000000000A0CAE000607C3000607CD000505
      C70010119700C8C8E600FDFFFF00FBFBFF00FBFCFF007474C0000809B1000303
      C1000102B6000101A7000F0F8300A4A5A90000000000FDFDFC00FBF6EF00FCF6
      EF00F7F2EB00F2EDE600EEE8E100EBE4DD00E8E0D700E2DBD200DFD6CC00E4DA
      D40000000000000000000000000000000000D0734600DB8C6100BDBDBD00D1D1
      D100D1D2D000D1D1D100B1A7A000E19D6E00EE9E6700E09A75005874B50092C1
      F9008FC3F8008CBBF30037376700A4918C000000000000000000F1F8FF0089C8
      F800EEF6FF00F2F9FF008DC1F900ABD2FB00CBE4FC00D9E9F8003288DC003589
      DC005E5E5E00D2D2D20000000000000000000D0DBF000C0BCF000D0DDB000403
      D5000708BE005857A100FFFFFC00FFFFFE00F5F5FF00141496000001C7000406
      C9000506C2000303B30014159500A6A5AE0000000000FCFAF900FFFEF400FFFF
      F600FEFEF500FBF8F200F5F3EB00F1EEE600EEE8E100EAE3DA00E5DED500E4DA
      D50000000000000000000000000000000000CD693900CA825A00BEC0C100CECE
      CE00CECECE00D0CECE00B8B2AD00C4845B00ED965D007B6A8F007BC3FF0083CC
      FF0081CDFE0081CDFE0078AFF20081819100000000000000000000000000FDFF
      FF0070BCF600EEF6FF00F2F9FF0084BBF800A2CDFA00C4E1FC00B4D9F6003288
      DC003388DC005E5E5E00DDDDDD00000000001616C6001514E0001214EB000707
      D1004748B800F8F8FF0000000000F7F9FF00FDFEFF00EDEEFF000C0CAC000606
      D4000908CC000806BD0014149600BEBDC10000000000FBFAF800FEFEFB00FFFF
      FE00FEFFFE00FFFFFC00FEFDF900FAF9F400F6F4EC00F2EFE700EEEAE100E4DC
      D50000000000000000000000000000000000C0633600A68E8200C8CACA00CDCD
      CD00CFCDCD00CDCDCD00C7C7C700907E7300DE8E590064618F0055B7FF0059BC
      FF0059BDFE0059BDFE005BA7F3007C8092000000000000000000000000000000
      00000000000062B5F400E9F4FE00FAFDFF007BB6F80098C7FA00BADAFC0094C1
      EE003288DC00A05F270063615E00EBEBEB002224BE001F1FEF002525ED005756
      CA00F8F8FF00FDFDFF006E6FBF001415A100B8B9D500FDFEFF00EDECFF001213
      B7000C0DD9000D0DBF000C0D7F000000000000000000FAF9F600FBFCFA00FCFA
      F900FAF8F700F8F6F500F7F5F400F5F3F200F5F1EC00F1EEE700EEECE200E7DD
      D50000000000000000000000000000000000A5644500C5C3C300CFCFCF00DADA
      DA00DADADA00D3D3D300CCCCCC00BDBDBD007C4E2F005D6192002CA7FD002EAB
      FF002EACFE002FACFF003796ED007A8093000000000000000000000000000000
      0000000000000000000088C6F700E1F0FE00FAFDFF0078B5F50093C5FA00B1D5
      FB00A79F9400C7851E00A6601C00838383004748B600302EFC003A3AE600BDBE
      F000FDFFFF005B5CB4000A0AD4000202DE001112A800AAABC700FAFAFF006362
      E0001315E5001919C1004C4D97000000000000000000FBF9F500FCFCFC00FCFA
      F900FBF9F800F9F7F600F8F6F500F7F5F400F5F3F200F4F1ED00F2EFE900EBE5
      DD0000000000000000000000000000000000AE8D7D00E8E8E800E6E8E800E6E6
      E600E2E4E400E7E7E700E8E7E900E7E7E700827266005B68A0001499FB000C9D
      FF000C9EFE000C9EFD001F87EC007A7F94000000000000000000000000000000
      0000000000000000000000000000AAD7FB00D0E7FC00000000006EAEF6009BA0
      AE00F5CE6A00EFBE2A008064220066687300000000003936E9004C4CFC005D5D
      D3005657AF002022DB00090CF1000707EF001012E9002D2DC7004B4DB300302F
      E9002023E9002020AA00F3F3FF000000000000000000FBF9F500FCFCFC00FBFB
      FB00FCFAF900F9F9F900F7F8F600F8F6F500F6F5F300F4F3F100F3F0EC00F3EC
      E50000000000000000000000000000000000BFA49600E8EAEA00ECECEC009891
      8E00EDD5C300DEDBD700ECECEC00EBEBEB00887E77007884B4009AD6FF006CCC
      FF00179AF1000A99FA001783E9007A7F94000000000000000000000000000000
      000000000000000000000000000000000000E8F3FE00BBBBBB00DDDDDD00F9EC
      D200F7DEA500F2C7520022376B0065727B00000000009594F0004648FA006E6D
      FF008182FC007273FF005657FB004A48F8004E4EFE005656FF004C4DF5003839
      FF002D2ED600CDCDFF00000000000000000000000000FCFAF400FEFDFC00F0ED
      ED00DFD6D500D4C5C300CFBCB800D0BCB700E1D1C900E7DAD200E2D4CE00D3C8
      C100B0ACAB00000000000000000000000000BC988800EDEDED00ECECEC007F71
      6B00F8DAC700B4AEA900EFEFEF00EBEBEB0093877D007C89B700AEDCFE00ADDE
      FE00A8DEFF009ADDFF009DD3FF007D7F91000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFBF500F7DEA500FDFD
      FD00BBBBBB002A4AA40027459300D9D8D80000000000000000009091EB005355
      F0007C7CFF009A9BFF00A1A1FF009594FF007E7FFF006667FF004A4BFF003A39
      D500D8D7FF00000000000000000000000000FFFFFE00DCCAC400D9C7C200D2C0
      BA00D7C7C100E4DBD5007B747100EEEAE900FAF8F80000000000000000000000
      000000000000000000000000000000000000EABFAA00ECE8E700EFEFEF008074
      6E00F7DCCE00B3ACA900F1F1F100D9D4D300F3DCCD00ACB0D900B9DDFF00BCE3
      FF00BBE3FF00BBE3FF00BBD4FF00C0C0CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC003F58
      98002D52C5004366D700E6E7ED00000000000000000000000000000000000000
      00005A5ABE006D6EE8007F7FFF007C7CFF006767F7005150D6007979D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFAFB00FEFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFF3EC00E0BCAC00D2BCB100E7C1
      AF00FFD5BF00B69B8D00C6B3AB00FCD4C100FFD6BF00FDD4C50073698700A1AA
      D6009EABD7008C99C700746F8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFB00FFFCFC00FFFDFC00FFFB
      FE00FFFCFC00FFFCFC00FFFDFC00FFFCFC00FFFCFC00FFFCFC00FFFCFC00FFFC
      FE00FFFEFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000291B00005E3F00005E3F00005E3F00005E3F00004830000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B3BABD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005E3F00F5F5
      F500F6F6F600F6F6F600F7F7F700F6F6F600F6F6F600F5F5F5009B6A5200B266
      3300AD5F3000000000000000000000000000C4B2AB00FADBCC00FAD7C900FAD5
      C700F8D4C400F8D1C200F8D0BE00FACFBE00F7CDBA00F7CCB900F7CBBA00AB89
      8300FFFFFF00FFFFFF00FFFEFF00FFFFFF000000000000000000000000000000
      0000005E3F00005E3F00005E3F00005E3F00005E3F00005E3F00005E3F00005E
      3F0000382500000000000000000000000000000000000000000000000000388B
      C3003484B9008293A00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000005E3F00005E3F00F7F7
      F700DCDCDC00DDDDDD00DDDDDD00DEDEDE00DEDEDE00DDDDDD00A56E5100B56B
      3900B3683600005E3F000000000000000000C5B4AB00FFE1C800DA9A6300CE94
      6300C28C6300BF885D00BD825500BA7E5000B7794900B4744400FFD1A900AE8A
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000005E3F000363
      420004654400056745000D6648009EB5AD009EB6AE0027735A00046644000466
      440003644300005E3F0000000000000000000000000000000000000000003697
      D90085A2BD004682B00035688800000000000000000000000000000000000000
      000000000000000000000000000000000000005E3F00005E3F00005E3F00F9F9
      F900F9F9F900FAFAFA00FBFBFB00FAFAFA00A1562B00A4582D00AA5F3100BA72
      3F00B8703E00A4572B00A255290000000000C9B7B000FFE5C900EAA66500FFE5
      AF00FFE2B300FFE0B100B88F6E005B524400FFD6B500FFD7A700FFD4A800AE8A
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000076C4800086E
      4A0005684500DEDEDE00E3E3E300E4E4E400E5E5E5002C2C2C00E3E3E3000D66
      4900086F4A00076C4800000000000000000000000000000000005D8FAD003F99
      D900FFECD500FFD6BD007990A6004582AE00456981008EA1AE00000000000000
      000000000000000000000000000000000000016040000364430004654400FAFA
      FA00FBFBFB00FCFCFC00FCFCFC00FCFCFC00BE794700C4814F00C7885500CB8D
      5A00C7875500C4824F00BE7846009B4B2300CBBBB400FFE7D400FFEBBD00FFE9
      BD00FFE6BA00FFE3B800FFE0BA00B39D8400F1CCAA00B0764500FFD4B600AE89
      8100FFFFFF00FEFEFE00FFFFFF00FFFFFF0000000000005E3F000C764F000C75
      4E00E4E4E400DBDBDB00DFDFDF00E2E2E200E2E2E200E1E1E1008AA6E400E7E7
      E700046644000D774F0005694600000000000000000000000000469DD500628A
      A700FCE0C800E6AF9400EEBFA300FAD0BD00BAB4AF006C7D90003D7196008A99
      A2000000000000000000000000000000000006694600076C4800086C4900FBFB
      FB00FCFCFC00FDFDFD00FDFDFD00FDFDFD00CF936100D3996600D49C6900D49B
      6800D39A6700D0946200CB8D5B00A6572A00CFBFB800FFECD700EAB58200FFEA
      C900FFE5D000FFE2CE00FFDFCB00FEDDC900D3AF9700FFD9B400A16A3F00B48B
      7C00FFFFFF00FDFFFF00FFFFFF00FFFFFE000000000019845A0012815600A3BB
      B300DADADA00E0E0E000E6E6E600EAEAEA00EBEBEB0095B1EC0093AFE900DEDE
      DE00E3E3E30012815600107E5400000000000000000000000000696A7F00FFD4
      BF00FFDECA00FFE3CC00FBDCC300FFE0C300FFD9B900FFD7B500FCD3BC004D7F
      A300587689000000000000000000000000000A724C000B734D000B744E000D76
      4F00E1EFE900FEFEFE00FEFEFE00FEFEFE00FDFDFD00FCFCFC00B28F6700DBAA
      7C00DBAB7D00086E4A000000000000000000D0C3BB00FFF0E000E5BA9300DEB5
      9400D6B09200D2AB8B00D2A78600D1A38100CB9D7B00A4795800FFDFBD00CCA2
      7F00FFFFEA00FFFFFF00FFFFFF00FFFFFF000000000015875A00178A5C00DBDB
      DB00DDDDDD00E5E5E500ECECEC0080B6A2003A9170009FBAF100EAEAEA00E2E2
      E200DDDDDD001586590015885A00005E3F00000000004482AA00DA9F8B00FFF7
      E600DEB29B00F5C9B200FBCCB100FFE1C700FEDABC00F5C4A400E6AD8D00E0A8
      8F009A9DA200487EA70033688900B0B9BD00117E540016895B0016885B001687
      5A0013825700107D5300107C5300107C5300107B53000F7B520099875D00E1B7
      9000E2BB96000C754E000000000000000000D1C6BE00FFF3E300F3C29400E9BE
      9700E1B99600DEB49100DDB18C00DAAC8300D8A77F00D5A27A00C7987200FFE6
      CA00E2BC9900FFFFEE00FFFEFF00FFFFFF00000000001A9060001C946200B3B3
      B3004A4A4A000A54F200145CF3002EAA740026A46E00F5F5F500EDEDED00A0A0
      A0005B5B5B00188C5D001A916000016141000000000061A4E300D3A39F00FFF1
      E200FBE2CE00FFEAD800FFE7D300FFE1CC00FFDEC400F9CAAF00FFE2C600FFDF
      C700FFE0C700FFE7D200457B8200C1D1DD0015855900198F5F00198E5E00188D
      5E00188C5D00178A5C0016895B00148559001383570013825700128156001280
      5500117E5400107C53000000000000000000D4C9C100FFF8E700F9C89600FFF8
      D100FFF4D300FFF2D000FFEFCD00FFEDCA00FFEBC400FFE9C000FFE5C300B28B
      7D00CEB19C00E9E7FB003B4F8900FFFFFF00000000001F996600209C6800F8F8
      F800E1E1E100E7E7E700EFEFEF00B5DDCC005CB4A100F5F5F500EDEDED00E5E5
      E500F8F8F8001E9965001F9A6600086D4900000000001B50C500EBDFFD00EABF
      AE00F4CCB900FBD1BA00FFECD800FCE0C800FFDFC500FFE1C800FFD1B600FFD2
      BA00FDE4D000FAEDCD00237A5E0000000000188C5D001C9462001C9362001B92
      61001B9160001A906000198E5F00188D5E00188B5D0016895B0016885B001586
      5A0014855900138357000000000000000000DACFC700FFF8F400FFF9E900FFF6
      E900FFF3E600FFF2E500FFF0E100FFEEDE00FFEAD900FFE8D700FFE4D400A989
      8300FFFFFC00504B6000A5B2D800FFFFFF000000000048B3840024A46D009BC0
      B100FBFBFB00FCFCFC00F0F0F000F1F1F1009BBBF500EFEFEF00F9F9F900FAFA
      FA00E2E2E20024A46D0023A16B00000000004F83AB0088A0F200FFF6ED00FCE9
      DC00FFFAED00FFEFE200FFEDDD00FFE8D600F0CAB200FFDCC800FDE0CB00FFED
      DD00FFEDDE0098B5A50059899B00000000001B9161001F9966001E9865001E97
      6500CFE3DC00F0F0F000DEDEDE00E7E9E700F0F5F000EAEEEA0014855900198D
      5E00188C5D00178A5C000000000000000000DCD3CA00FFFBFA00FFFAF700FFF9
      F400FFF6F200FFF3ED00FFF1EB00FFEFE800FFECE400FFEAE200FFE7DD00A48A
      8400FFFFFF00FFFDFF00FBFEFF00FFFFFF0000000000188D5E0031AC770037AF
      7B00E0E0E000FDFDFD00FEFEFE00FEFEFE00A9C7FB00FDFDFD00FCFCFC00F5F5
      F500289F6C0032AD770051AF8700000000006DC9FC008DA4BE00D3B8AE00FFED
      DE00DDBBAB00FFDBC900F7E3D200F6DECC00FFE1CD00DEB39E00E4C0B000FFEC
      DE00F8E9E0005B9FCA00000000000000000024976800219E6900219D6800209C
      6800FCFCFC00F0F0F000DEDEDE00E7E9E700066A470094BCAC00C7C8C7001B92
      62001B9261001A9060000000000000000000DFD6CD00FEFEFE00FEFCFB00FFFA
      F900FFFAF500FFF7F300FFF5F100FFF3ED00FFF2EA00FFEEE700FFEBE300A489
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000007ED2AC004EBA
      8B0043B48200DADADA00F9F9F900BEBEBE007E859000FEFEFE00DDDDDD0037A9
      78004FBB8B0050BB8C000000000000000000ACD3E9006CB4DC0093B4C800DBE3
      EA00F7FCFB00FEF5F100FEF0E400FFEEDE00FBD6C200FFE0CD00FFF1E400FFF7
      EF00F3F8F9005389AA000000000000000000228F630024A26C0023A16B0023A1
      6B00FCFCFC00F0F0F000DEDEDE00E7E9E7000F7C53007CB59E00C7C8C7001C95
      63001E9865001D9764000000000000000000E3DAD100FFFFFF00FEFEFE00FEFC
      FC00FFFCFB00FFFAF700FEF7F400FFF6F200FFF5EA00F0BEA000EDAD8E00B68B
      7C00FFFFFF00FFFFFF00FDFFFF00FFFFFF000000000000000000000000008CD9
      B50068C79D006DCAA00042B482008AC5AC009ECBB70049B385006ECAA00069C8
      9D0062C4990025A56E000000000000000000000000000000000000000000648F
      AA00609ABD0066A9D00064A6CF003F7B9F00E2E1E300FAE6DB00F1E1DA00FFFC
      F80090A5B4007795A60000000000000000000F7B520026A66E0025A56E0025A5
      6D00FCFCFC00F0F0F000DEDEDE00E7E9E700188D5E009BC9B500C7C8C7001F99
      66001E97650040AE7F000000000000000000E7DED500FFFFFF00FFFFFF00FFFF
      FF00FFFEFE00FFFDFC00FFFBFA00FFFAF700FFFAEB00ECB47900D0935100FFFF
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000A9E7CA0080D3AD0083D4AF0085D5B00085D5B10083D5AF0080D3AD00BFF2
      D90048B887000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F98B80087B6D500A6BCC800C9D4
      DC0091C8E700000000000000000000000000000000001F9263003AB17D0029A9
      7100FCFCFC00F0F0F000DEDEDE00E7E9E700F0F5F000EAEEEA00C7C8C700219E
      690076CBA500178A5C000000000000000000EBE2D900FDFFFF00FCFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FFFCFB00FFFDF100F2D2A900FFFFEC00FFFF
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000077CFA70085D5B000AEEACD00AEEACD0090DBB80075CEA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000023A2
      6B000000000000000000000000000000000000000000000000000000000022A0
      6A0000000000000000000000000000000000DAD0C600E1D5C900DBD2C500DACE
      C200D6CABE00D2C6BC00CEC2B800CABEB400C7BBAF00FFFFF600FFFFFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFC7FFFF00000000FE01F01F00000000
      FC00C0C70000000080008053000000000001803B000000000000001100000000
      00000005000000000001000100000000801F000100000000800F000100000000
      800F000100000000820F000100000000820F000300000000800F800300000000
      C1FFC00700000000E7FFE01F00000000FFFFFFFF9FFFFFFFFFFFFFFFC003F003
      FFFF9FFF8003C000FFFF8EFF80010000FDFFC00380010000FDBFC00180010000
      F81F800180010000F25F800180018001F3CFC00180018003F00FC0038001E007
      F01FE01F8001C01FF81FF03F8001C0FFFC7FFC7F8003C0FFFFFFFC7FC00381FF
      FFFFFFFFE007C1FFFFFFFFFFFC3FFFFFF87F0480FDBFC7FFF0070000F00FC01F
      F0030000C0038007F803000080018007E007000080018007C007000080018007
      C3C3000080018007C7E300008001800787E300008003800787E30000C0078007
      C6630000E00F8003C0430000E0218001E0070000E0088001E00F0000C0048001
      F81F0000C0408003F8FF0000C061C007FFFFFFFFFC01FFFFC003FFFF0001F01F
      8001E0078001E0078001C0038000C0038001C003800280018001C00380020001
      8001C003800200018001C003800200018001C003800200018001C00380020001
      8001C003801A00018001C003800200018001C003FFFE80038001C007FFFE8007
      8001FFFF0000C00FC003FFFF0000E01FFFFF0000FC3FFFE7FE0F0000F00FFC03
      F0070000E007C00380030000C007000300030000C0038003001F0000C0038001
      801F0000C0038001801F0000C0038001800F0000C0078001C00F0000E00FC001
      C0070000F01FC001E0070000F83FC003E0070000FC7FE007E0030000F83FF00F
      F07F0000F83FFE1FFFFF0000FC1FFFBFFFFFE1FFFFFFF00FFFFF807FFE1FF007
      FFFF003FF805F003FC81001FE001F007E00080078005E0070001C0038003C003
      0001C0018101C003C003800180018001E003800180218001F0078001C4038001
      F00F800180078001F00F0001840F8003F00F0001C03FC003F01F8003E0FFC007
      FFFFF807E3FFE00FFFFFFC0FFFFFF81F1FFFF81FFFFF000100FFE007F93F0000
      007FC003F80F0000003F8003F0070000803F8001F0030000801F000180030000
      B00F00008003000080070000800F0000C0030000800F0000E0010200800F0000
      F8000001800F0000FC000001800F0000FE408001800F0000FF00800380070000
      FF80C007007F0000FFC1F01FFCFF0001FFFFFFFFFFFF0000F81FF7FFC0070000
      F007E3FF80030000C003E1FF00010000C003C03F000000008001C00F00000000
      8001C00700030000800080000003000080008000000300008000800100030000
      80010001000300008001000300030000C003000300030000E003E00300030000
      F007FF0780030000F81FFFFFE00F000000000000000000000000000000000000
      000000000000}
  end
  object DataFormaPagto: TDataSource
    DataSet = DmWorkCom.CdsFormaPag
    Left = 592
    Top = 248
  end
  object DataUF: TDataSource
    Left = 592
    Top = 192
  end
  object DataHoras: TDataSource
    DataSet = DmWorkCom.CdsOSHoras
    Left = 592
    Top = 304
  end
end
