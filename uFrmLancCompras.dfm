inherited FrmLancCompras: TFrmLancCompras
  Left = 315
  Top = 103
  Caption = 'Lan'#231'amento de Compras de Mercadorias'
  ClientHeight = 569
  ClientWidth = 780
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnShow = FormShow
  ExplicitTop = -137
  ExplicitWidth = 786
  ExplicitHeight = 594
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 780
    Height = 569
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Lan'#231'amento'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 541
        Align = alClient
        TabOrder = 0
        object GrpDadosFornecedor: TGroupBox
          Left = 8
          Top = 61
          Width = 478
          Height = 43
          Caption = ' Fornecedor* '
          TabOrder = 1
          object SpbConCliente: TSpeedButton
            Left = 415
            Top = 13
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Action = ActConsultaCliente
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
          object SpbCadCliente: TSpeedButton
            Left = 447
            Top = 13
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Action = ActCadCliente
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000001C82B5
              1A80B3177DB0157BAE1278AB0F75A80C72A50A70A3076DA0056B9E03699C0167
              9A0066990000000000002187BA66CCFF1F85B899FFFF6ED4FF6ED4FF6ED4FF6E
              D4FF3965C43965C46ED4FF6ED4FF3AA0D399FFFF006699000000248ABD66CCFF
              268CBF99FFFF7AE0FF7AE0FF7AE0FF7AE0FF1527AA0B13A176D8FB7AE0FF43A9
              DC99FFFF01679A000000278DC066CCFF2C92C599FFFF85EBFF85EBFF85EBFF39
              65C40F1BA4192CAB2B4CB985EBFF4DB3E699FFFF03699C000000298FC266CCFF
              3298CB99FFFF91F7FF91F7FF69B3E30B14A170BFE875C7EB0B13A075C7EB56BC
              EF99FFFF056B9E0000002C92C56ED4FF3399CC99FFFF99FFFF8CE9F60F1AA340
              6CC499FFFF99FFFF2E4EB81E33AD5FC5F899FFFF076DA00000002E94C77AE0FF
              2C92C5FFFFFFFFFFFFFFFFFFFFFFFFFAFAFDFFFFFFFFFFFFF5F6FB0D14A15599
              DCFFFFFF0A70A30000003096C985EBFF80E6FF2C92C52C92C52C92C52C92C52C
              92C52C92C5278DC02389BC1345AA0A15A01A80B31A80B30000003298CB91F7FF
              8EF4FF8EF4FF8EF4FF8EF4FF8EF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A17
              A0060B6B0000000000003399CCFFFFFF99FFFF99FFFF99FFFF99FFFFFFFFFF24
              8ABD2187BA1E84B71C82B51A80B31259AA09109E0203210000000000003399CC
              FFFFFFFFFFFFFFFFFFFFFFFF298FC20000000000000000000000000000000000
              0009109F080F950000000000000000003399CC3298CB3096C92E94C700000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
          end
          object DbIDFornecedor: TDBEdit
            Left = 8
            Top = 15
            Width = 65
            Height = 21
            DataField = 'IDFORNECEDOR'
            DataSource = DataWork
            TabOrder = 0
            OnExit = DbIDFornecedorExit
            OnKeyPress = DbIDKeyPress
          end
          object DbCliente: TDBEdit
            Left = 80
            Top = 15
            Width = 329
            Height = 21
            DataField = 'FORNECEDOR'
            DataSource = DataWork
            Enabled = False
            TabOrder = 1
          end
        end
        object GrpDadosCompra: TGroupBox
          Left = 8
          Top = 8
          Width = 478
          Height = 52
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 10
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object Label4: TLabel
            Left = 140
            Top = 10
            Width = 62
            Height = 13
            Caption = 'Data Compra'
          end
          object Label5: TLabel
            Left = 225
            Top = 10
            Width = 62
            Height = 13
            Caption = 'Hora Compra'
          end
          object Label6: TLabel
            Left = 308
            Top = 10
            Width = 65
            Height = 13
            Caption = 'Data Emiss'#227'o'
          end
          object Label7: TLabel
            Left = 392
            Top = 10
            Width = 65
            Height = 13
            Caption = 'Hora Emiss'#227'o'
          end
          object Label8: TLabel
            Left = 64
            Top = 8
            Width = 54
            Height = 13
            Caption = 'N'#250'mero NF'
          end
          object DbID: TDBEdit
            Left = 8
            Top = 23
            Width = 49
            Height = 21
            DataField = 'ID'
            DataSource = DataWork
            Enabled = False
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DbDataCad: TDBEdit
            Left = 140
            Top = 23
            Width = 80
            Height = 21
            DataField = 'DATA_COMPRA'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object DbHoraCad: TDBEdit
            Left = 224
            Top = 23
            Width = 80
            Height = 21
            DataField = 'HORA_COMPRA'
            DataSource = DataWork
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object DbDataEmissao: TDBEdit
            Left = 308
            Top = 23
            Width = 80
            Height = 21
            DataField = 'DATA_EMISSAO'
            DataSource = DataWork
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
          object DbHoraEmissao: TDBEdit
            Left = 392
            Top = 23
            Width = 80
            Height = 21
            DataField = 'HORA_EMISSAO'
            DataSource = DataWork
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
          object DbNotaFiscal: TDBEdit
            Left = 64
            Top = 23
            Width = 72
            Height = 21
            DataField = 'NOTA'
            DataSource = DataWork
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpValores: TGroupBox
          Left = 491
          Top = 8
          Width = 137
          Height = 224
          Caption = ' Valores '
          TabOrder = 5
          object Label9: TLabel
            Left = 8
            Top = 16
            Width = 84
            Height = 13
            Caption = 'Valor Produtos'
            FocusControl = DbValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 56
            Width = 71
            Height = 13
            Caption = 'Desconto (-)'
            FocusControl = DbDesconto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 96
            Width = 78
            Height = 13
            Caption = 'Acr'#233'scimo (+)'
            FocusControl = DbAcrescimo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 136
            Width = 116
            Height = 13
            Caption = 'Outras Despesas (+)'
            FocusControl = DbOutros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 176
            Width = 82
            Height = 13
            Caption = 'Valor Total (=)'
            FocusControl = DbTotal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbValor: TDBEdit
            Left = 8
            Top = 32
            Width = 112
            Height = 21
            DataField = 'VALOR'
            DataSource = DataWork
            Enabled = False
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DbDesconto: TDBEdit
            Left = 8
            Top = 72
            Width = 112
            Height = 21
            DataField = 'DESCONTO'
            DataSource = DataWork
            TabOrder = 1
            OnExit = DbDescontoExit
            OnKeyPress = DbIDKeyPress
          end
          object DbAcrescimo: TDBEdit
            Left = 8
            Top = 112
            Width = 112
            Height = 21
            DataField = 'ACRESCIMO'
            DataSource = DataWork
            TabOrder = 2
            OnExit = DbDescontoExit
            OnKeyPress = DbIDKeyPress
          end
          object DbOutros: TDBEdit
            Left = 8
            Top = 152
            Width = 112
            Height = 21
            DataField = 'OUTRAS_DESPESAS'
            DataSource = DataWork
            TabOrder = 3
            OnExit = DbDescontoExit
            OnKeyPress = DbIDKeyPress
          end
          object DbTotal: TDBEdit
            Left = 8
            Top = 192
            Width = 112
            Height = 21
            DataField = 'VALOR_TOTAL'
            DataSource = DataWork
            Enabled = False
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpDadosFinanceiros: TGroupBox
          Left = 8
          Top = 106
          Width = 356
          Height = 95
          TabOrder = 2
          object Label1: TLabel
            Left = 8
            Top = 10
            Width = 66
            Height = 13
            Caption = 'Classifica'#231#227'o*'
          end
          object Label2: TLabel
            Left = 8
            Top = 50
            Width = 105
            Height = 13
            Caption = 'Forma de Pagamento*'
          end
          object SpeedButton1: TSpeedButton
            Left = 329
            Top = 24
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000001C82B5
              1A80B3177DB0157BAE1278AB0F75A80C72A50A70A3076DA0056B9E03699C0167
              9A0066990000000000002187BA66CCFF1F85B899FFFF6ED4FF6ED4FF6ED4FF6E
              D4FF3965C43965C46ED4FF6ED4FF3AA0D399FFFF006699000000248ABD66CCFF
              268CBF99FFFF7AE0FF7AE0FF7AE0FF7AE0FF1527AA0B13A176D8FB7AE0FF43A9
              DC99FFFF01679A000000278DC066CCFF2C92C599FFFF85EBFF85EBFF85EBFF39
              65C40F1BA4192CAB2B4CB985EBFF4DB3E699FFFF03699C000000298FC266CCFF
              3298CB99FFFF91F7FF91F7FF69B3E30B14A170BFE875C7EB0B13A075C7EB56BC
              EF99FFFF056B9E0000002C92C56ED4FF3399CC99FFFF99FFFF8CE9F60F1AA340
              6CC499FFFF99FFFF2E4EB81E33AD5FC5F899FFFF076DA00000002E94C77AE0FF
              2C92C5FFFFFFFFFFFFFFFFFFFFFFFFFAFAFDFFFFFFFFFFFFF5F6FB0D14A15599
              DCFFFFFF0A70A30000003096C985EBFF80E6FF2C92C52C92C52C92C52C92C52C
              92C52C92C5278DC02389BC1345AA0A15A01A80B31A80B30000003298CB91F7FF
              8EF4FF8EF4FF8EF4FF8EF4FF8EF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A17
              A0060B6B0000000000003399CCFFFFFF99FFFF99FFFF99FFFF99FFFFFFFFFF24
              8ABD2187BA1E84B71C82B51A80B31259AA09109E0203210000000000003399CC
              FFFFFFFFFFFFFFFFFFFFFFFF298FC20000000000000000000000000000000000
              0009109F080F950000000000000000003399CC3298CB3096C92E94C700000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
          end
          object SpeedButton2: TSpeedButton
            Left = 329
            Top = 62
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000001C82B5
              1A80B3177DB0157BAE1278AB0F75A80C72A50A70A3076DA0056B9E03699C0167
              9A0066990000000000002187BA66CCFF1F85B899FFFF6ED4FF6ED4FF6ED4FF6E
              D4FF3965C43965C46ED4FF6ED4FF3AA0D399FFFF006699000000248ABD66CCFF
              268CBF99FFFF7AE0FF7AE0FF7AE0FF7AE0FF1527AA0B13A176D8FB7AE0FF43A9
              DC99FFFF01679A000000278DC066CCFF2C92C599FFFF85EBFF85EBFF85EBFF39
              65C40F1BA4192CAB2B4CB985EBFF4DB3E699FFFF03699C000000298FC266CCFF
              3298CB99FFFF91F7FF91F7FF69B3E30B14A170BFE875C7EB0B13A075C7EB56BC
              EF99FFFF056B9E0000002C92C56ED4FF3399CC99FFFF99FFFF8CE9F60F1AA340
              6CC499FFFF99FFFF2E4EB81E33AD5FC5F899FFFF076DA00000002E94C77AE0FF
              2C92C5FFFFFFFFFFFFFFFFFFFFFFFFFAFAFDFFFFFFFFFFFFF5F6FB0D14A15599
              DCFFFFFF0A70A30000003096C985EBFF80E6FF2C92C52C92C52C92C52C92C52C
              92C52C92C5278DC02389BC1345AA0A15A01A80B31A80B30000003298CB91F7FF
              8EF4FF8EF4FF8EF4FF8EF4FF8EF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A17
              A0060B6B0000000000003399CCFFFFFF99FFFF99FFFF99FFFF99FFFFFFFFFF24
              8ABD2187BA1E84B71C82B51A80B31259AA09109E0203210000000000003399CC
              FFFFFFFFFFFFFFFFFFFFFFFF298FC20000000000000000000000000000000000
              0009109F080F950000000000000000003399CC3298CB3096C92E94C700000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
          end
          object DbIdClassifica: TDBEdit
            Left = 8
            Top = 25
            Width = 65
            Height = 21
            DataField = 'ID_CLASSIFICACAO'
            DataSource = DataWork
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DbIdFormaPag: TDBEdit
            Left = 8
            Top = 64
            Width = 65
            Height = 21
            DataField = 'ID_FORMAPAG'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object ComboClassifica: TDBLookupComboBox
            Left = 80
            Top = 25
            Width = 247
            Height = 21
            DataField = 'ID_CLASSIFICACAO'
            DataSource = DataWork
            KeyField = 'ID'
            ListField = 'DESCRICAO'
            ListSource = DataClassifica
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
          object ComboFormaPag: TDBLookupComboBox
            Left = 80
            Top = 64
            Width = 247
            Height = 21
            DataField = 'ID_FORMAPAG'
            DataSource = DataWork
            KeyField = 'ID'
            ListField = 'DESCRICAO'
            ListSource = DataFormaPag
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpItens: TGroupBox
          Left = 2
          Top = 231
          Width = 768
          Height = 251
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object GriItens: TDBGrid
            Left = 2
            Top = 15
            Width = 764
            Height = 234
            Align = alClient
            DataSource = DataItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clRed
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'IDPRODUTO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Descricao'
                Width = 302
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Quant'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Alignment = taCenter
                Title.Caption = 'Desc'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACRESCIMO'
                Title.Alignment = taCenter
                Title.Caption = 'Acresc'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Total'
                Width = 82
                Visible = True
              end>
          end
        end
        object PnBotoes: TPanel
          Left = 633
          Top = 15
          Width = 137
          Height = 216
          Align = alRight
          TabOrder = 6
          inline Frame: TFrameBotaoVertical
            Left = 2
            Top = 5
            Width = 136
            Height = 182
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 5
            ExplicitWidth = 136
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
              Caption = 'F7 - &Relatorios'
            end
            inherited BtnEncerrar: TBitBtn
              Action = ActEncerrar
              Caption = 'F10 - &Encerrar'
            end
          end
          object BitBtn4: TBitBtn
            Left = 3
            Top = 187
            Width = 133
            Height = 23
            Action = ActConfirmaCompra
            Caption = '&Finalizar Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object RadioTipoDoc: TDBRadioGroup
          Left = 369
          Top = 106
          Width = 117
          Height = 95
          Caption = ' Tipo de Documento '
          DataField = 'TIPODOC'
          DataSource = DataWork
          Items.Strings = (
            '0 - Dinheiro'
            '1 - Cheque'
            '2 - Cart'#227'o'
            '3 - NP'
            '4 - Carne'
            '5 - Boleto'
            '6 - Outros')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
        end
        object Panel1: TPanel
          Left = 6
          Top = 203
          Width = 480
          Height = 29
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 7
          object BitBtn1: TBitBtn
            Left = 3
            Top = 3
            Width = 156
            Height = 23
            Action = ActIncluirItem
            Caption = 'Incluir Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 160
            Top = 3
            Width = 157
            Height = 23
            Action = ActEditarItem
            Caption = 'Editar Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object BitBtn3: TBitBtn
            Left = 319
            Top = 3
            Width = 157
            Height = 23
            Action = ActExcluirItem
            Caption = 'Excluir Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 482
          Width = 768
          Height = 57
          Align = alBottom
          Color = clBtnShadow
          ParentColor = False
          TabOrder = 8
          object Label15: TLabel
            Left = 7
            Top = 13
            Width = 52
            Height = 13
            Caption = 'Natureza'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 154
            Top = 13
            Width = 63
            Height = 13
            Caption = 'Base ICMS'
            FocusControl = DBEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 242
            Top = 13
            Width = 64
            Height = 13
            Caption = 'Valor ICMS'
            FocusControl = DBEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 330
            Top = 13
            Width = 49
            Height = 13
            Caption = 'Base ST'
            FocusControl = DBEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 418
            Top = 13
            Width = 50
            Height = 13
            Caption = 'Valor ST'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 506
            Top = 13
            Width = 54
            Height = 13
            Caption = 'Valor PIS'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 595
            Top = 13
            Width = 69
            Height = 13
            Caption = 'Valor Cofins'
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 680
            Top = 13
            Width = 50
            Height = 13
            Caption = 'Valor IPI'
            FocusControl = DBEdit9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit3: TDBEdit
            Left = 152
            Top = 26
            Width = 81
            Height = 21
            DataField = 'BASE_ICMS'
            DataSource = DataWork
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 240
            Top = 26
            Width = 81
            Height = 21
            DataField = 'VALOR_ICMS'
            DataSource = DataWork
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 328
            Top = 26
            Width = 81
            Height = 21
            DataField = 'BASE_ICMS_ST'
            DataSource = DataWork
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 416
            Top = 26
            Width = 81
            Height = 21
            DataField = 'VALOR_ICMS_ST'
            DataSource = DataWork
            TabOrder = 4
          end
          object DBEdit7: TDBEdit
            Left = 504
            Top = 26
            Width = 81
            Height = 21
            DataField = 'VALOR_PIS'
            DataSource = DataWork
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 593
            Top = 26
            Width = 81
            Height = 21
            DataField = 'VALOR_COFINS'
            DataSource = DataWork
            TabOrder = 6
          end
          object DBEdit9: TDBEdit
            Left = 678
            Top = 26
            Width = 81
            Height = 21
            DataField = 'VALOR_IPI'
            DataSource = DataWork
            TabOrder = 7
          end
          object ComboCFOP: TDBLookupComboBox
            Left = 5
            Top = 26
            Width = 140
            Height = 21
            DataField = 'NATOP'
            DataSource = DataWork
            DropDownWidth = 500
            KeyField = 'CFNOME'
            ListField = 'CFNOME'
            ListSource = DataCFOP
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contas a Pagar'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 388
        Align = alTop
        TabOrder = 0
        object GridContas: TDBGrid
          Left = 2
          Top = 15
          Width = 768
          Height = 371
          Align = alClient
          DataSource = DataCtaReceber
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnTitleClick = GridContasTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_LANC'
              Title.Alignment = taCenter
              Title.Caption = 'Data Lan'#231'.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMCONTA'
              Title.Alignment = taCenter
              Title.Caption = 'No. Documento'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIE'
              Title.Alignment = taCenter
              Title.Caption = 'Serie'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_VENC'
              Title.Alignment = taCenter
              Title.Caption = 'Data Venc.'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_QUIT'
              Title.Alignment = taCenter
              Title.Caption = 'Data Pagto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_CONTA'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Desconto'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ACRESCIMO'
              Title.Alignment = taCenter
              Title.Caption = 'Acrescimo'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_QUITATO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Pago'
              Width = 91
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 388
        Width = 772
        Height = 265
        Align = alTop
        Caption = ' Informa'#231#245'es da Nota Fiscal Eletronica '
        Color = clBtnShadow
        ParentColor = False
        TabOrder = 1
        object Label23: TLabel
          Left = 16
          Top = 24
          Width = 60
          Height = 13
          Caption = 'Clave NFe'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 16
          Top = 64
          Width = 37
          Height = 13
          Caption = 'Status'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 72
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Protocolo'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 16
          Top = 104
          Width = 41
          Height = 13
          Caption = 'Recibo'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 40
          Width = 600
          Height = 21
          DataField = 'CHAVE_NFE'
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 80
          Width = 43
          Height = 21
          DataField = 'STATUS_NFE'
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 72
          Top = 80
          Width = 545
          Height = 21
          DataField = 'PROTOCOLO_NFE'
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 120
          Width = 600
          Height = 21
          DataField = 'RECIBO_NFE'
          TabOrder = 3
        end
      end
    end
    object TbsTransp: TTabSheet
      Caption = 'Transportadora'
      ImageIndex = 2
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GrpTransportadora: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 48
        ExplicitTop = 32
        ExplicitWidth = 185
        ExplicitHeight = 105
        object Label14: TLabel
          Left = 16
          Top = 58
          Width = 27
          Height = 13
          Caption = 'CNPJ'
          FocusControl = DBEdit12
        end
        object Label27: TLabel
          Left = 286
          Top = 58
          Width = 87
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
          FocusControl = DBEdit13
        end
        object Label28: TLabel
          Left = 16
          Top = 104
          Width = 99
          Height = 13
          Caption = 'Nome transportadora'
          FocusControl = DBEdit14
        end
        object Label29: TLabel
          Left = 16
          Top = 144
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit15
        end
        object Label30: TLabel
          Left = 385
          Top = 144
          Width = 37
          Height = 13
          Caption = 'Numero'
          FocusControl = DBEdit16
        end
        object Label31: TLabel
          Left = 16
          Top = 192
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit17
        end
        object Label32: TLabel
          Left = 484
          Top = 144
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit18
        end
        object Label33: TLabel
          Left = 286
          Top = 192
          Width = 55
          Height = 13
          Caption = 'C'#243'd.Cidade'
          FocusControl = DBEdit19
        end
        object Label34: TLabel
          Left = 368
          Top = 192
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit20
        end
        object Label35: TLabel
          Left = 640
          Top = 192
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit21
        end
        object Label36: TLabel
          Left = 16
          Top = 240
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit22
        end
        object Label37: TLabel
          Left = 168
          Top = 240
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit23
        end
        object DBEdit12: TDBEdit
          Left = 16
          Top = 74
          Width = 264
          Height = 21
          DataField = 'TRANSP_CNPJ_CPF'
          DataSource = DataWork
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 286
          Top = 74
          Width = 264
          Height = 21
          DataField = 'TRANSP_INSC_RG'
          DataSource = DataWork
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 16
          Top = 120
          Width = 654
          Height = 21
          DataField = 'TRANSP_NOME'
          DataSource = DataWork
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 16
          Top = 160
          Width = 357
          Height = 21
          DataField = 'TRANSP_ENDERECO'
          DataSource = DataWork
          TabOrder = 3
        end
        object DBEdit16: TDBEdit
          Left = 385
          Top = 160
          Width = 84
          Height = 21
          DataField = 'TRANSP_NUM_END'
          DataSource = DataWork
          TabOrder = 4
        end
        object DBEdit17: TDBEdit
          Left = 16
          Top = 208
          Width = 264
          Height = 21
          DataField = 'TRANSP_BAIRRO_END'
          DataSource = DataWork
          TabOrder = 5
        end
        object DBEdit18: TDBEdit
          Left = 484
          Top = 160
          Width = 186
          Height = 21
          DataField = 'TRANSP_COMPLEMENTO'
          DataSource = DataWork
          TabOrder = 6
        end
        object DBEdit19: TDBEdit
          Left = 286
          Top = 208
          Width = 76
          Height = 21
          DataField = 'TRANSP_CODCIDADE'
          DataSource = DataWork
          TabOrder = 7
        end
        object DBEdit20: TDBEdit
          Left = 368
          Top = 208
          Width = 264
          Height = 21
          DataField = 'TRANSP_CIDADE_END'
          DataSource = DataWork
          TabOrder = 8
        end
        object DBEdit21: TDBEdit
          Left = 640
          Top = 208
          Width = 30
          Height = 21
          DataField = 'TRANSP_UF_END'
          DataSource = DataWork
          TabOrder = 9
        end
        object DBEdit22: TDBEdit
          Left = 16
          Top = 256
          Width = 134
          Height = 21
          DataField = 'TRANSP_CEP_END'
          DataSource = DataWork
          TabOrder = 10
        end
        object DBEdit23: TDBEdit
          Left = 168
          Top = 256
          Width = 160
          Height = 21
          DataField = 'TRANSP_TELEFONE'
          DataSource = DataWork
          TabOrder = 11
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 16
          Top = 14
          Width = 654
          Height = 41
          Caption = ' Tipo de frete '
          Columns = 4
          DataField = 'TIPO_FRETE'
          DataSource = DataWork
          Items.Strings = (
            'Por conta do emitente'
            'Por conta do destinat'#225'rio'
            'Por conta de terceiros'
            'Sem Frete')
          TabOrder = 12
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.CdsCompras
    Left = 104
    Top = 368
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 456
    Top = 384
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    inherited ActRelatorio: TAction
      Caption = 'F7 - &Relatorios'
    end
    object ActCadCliente: TAction
      Hint = 'Cadastro de Cliente'
      OnExecute = ActCadClienteExecute
    end
    object ActConsultaCliente: TAction
      Hint = 'Consultar Cliente'
      OnExecute = ActConsultaClienteExecute
    end
    object ActCadClass: TAction
      Hint = 'Cadastro de Classifica'#231#227'o'
      OnExecute = ActCadClassExecute
    end
    object ActCadFormaPag: TAction
      Hint = 'Cadastro de Forma de Pagamento'
      OnExecute = ActCadFormaPagExecute
    end
    object ActConfirmaCompra: TAction
      Caption = '&Finalizar Compra'
      Hint = 'Finalizar o Compra'
      ShortCut = 119
      OnExecute = ActConfirmaCompraExecute
    end
    object ActIncluirItem: TAction
      Caption = 'Incluir Item'
      ShortCut = 45
      OnExecute = ActIncluirItemExecute
    end
    object ActEditarItem: TAction
      Caption = 'Editar Item'
      ShortCut = 16453
      OnExecute = ActEditarItemExecute
    end
    object ActExcluirItem: TAction
      Caption = 'Excluir Item'
      ShortCut = 46
      OnExecute = ActExcluirItemExecute
    end
    object ActRetirarConfirmacao: TAction
      Caption = 'Retirar Confirmacao'
      OnExecute = ActRetirarConfirmacaoExecute
    end
    object ActImportarXML: TAction
      Caption = 'Importar arquivo XML NFe'
      OnExecute = ActImportarXMLExecute
    end
  end
  object DataItens: TDataSource
    Left = 180
    Top = 368
  end
  object DataFornecedor: TDataSource
    Left = 100
    Top = 424
  end
  object DataFormaPag: TDataSource
    DataSet = DmWorkCom.CdsFormaPag
    Left = 180
    Top = 424
  end
  object DataClassifica: TDataSource
    Left = 268
    Top = 376
  end
  object DataCtaReceber: TDataSource
    Left = 270
    Top = 426
  end
  object DataUF: TDataSource
    Left = 356
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Left = 462
    Top = 437
    object IncluirItem1: TMenuItem
      Action = ActIncluirItem
    end
    object EditarItem1: TMenuItem
      Action = ActEditarItem
    end
    object ExcluirItem1: TMenuItem
      Action = ActExcluirItem
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object F4Confirmar1: TMenuItem
      Action = ActConfirmaCompra
    end
    object LiberarCompraFechada1: TMenuItem
      Action = ActRetirarConfirmacao
    end
    object CancelarCompra1: TMenuItem
      Caption = 'Cancelar Compra'
      OnClick = CancelarCompra1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ImportararquivoXMLNFe1: TMenuItem
      Action = ActImportarXML
      Caption = 'Importar arquivo XML NF-e'
    end
    object ImportararquivoXMLCTe1: TMenuItem
      Caption = 'Importar arquivo XML CT-e'
      OnClick = ImportararquivoXMLCTe1Click
    end
  end
  object DataCST: TDataSource
    Left = 32
    Top = 368
  end
  object DataCFOP: TDataSource
    DataSet = DmWorkCom.CdsCFOP
    Left = 64
    Top = 408
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos de NFe|*.XML|Todos os arquivos|*.*'
    Left = 550
    Top = 383
  end
end
