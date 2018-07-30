inherited FrmLancPedidos: TFrmLancPedidos
  Left = 246
  Top = 90
  Caption = 'Lan'#231'amentos de Pedidos/Or'#231'amentos'
  ClientHeight = 597
  ClientWidth = 785
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitTop = -113
  ExplicitWidth = 791
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  object PgcPedido: TPageControl [0]
    Left = 0
    Top = 0
    Width = 785
    Height = 480
    ActivePage = TbsLancamento
    Align = alClient
    TabOrder = 0
    object TbsLancamento: TTabSheet
      Caption = 'Lan'#231'amento'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 452
        Align = alClient
        TabOrder = 0
        object Image2: TImage
          Left = 662
          Top = 15
          Width = 112
          Height = 114
        end
        object GrpDadosCliente: TGroupBox
          Left = 8
          Top = 15
          Width = 375
          Height = 114
          Caption = 'Identifica'#231#227'o do Cliente'
          TabOrder = 0
          object Label24: TLabel
            Left = 8
            Top = 17
            Width = 39
            Height = 13
            Caption = 'Cliente* '
          end
          object Label25: TLabel
            Left = 8
            Top = 63
            Width = 50
            Height = 13
            Caption = 'Vendedor*'
          end
          object DbIDCliente: TDBEdit
            Left = 8
            Top = 36
            Width = 46
            Height = 21
            DataField = 'IDCLIENTE'
            DataSource = DataWork
            TabOrder = 0
            OnExit = DbIDClienteExit
            OnKeyPress = DbIDKeyPress
          end
          object DbCliente: TDBEdit
            Left = 60
            Top = 36
            Width = 261
            Height = 21
            DataField = 'CLIENTE'
            DataSource = DataWork
            Enabled = False
            TabOrder = 2
          end
          object DbIDVendedor: TDBEdit
            Left = 8
            Top = 82
            Width = 46
            Height = 21
            DataField = 'ID_VENDEDOR'
            DataSource = DataWork
            TabOrder = 1
            OnExit = DbIDVendedorExit
            OnKeyPress = DbIDKeyPress
          end
          object ComboVendedor: TDBLookupComboBox
            Left = 61
            Top = 82
            Width = 307
            Height = 21
            DataField = 'ID_VENDEDOR'
            DataSource = DataWork
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = DataVendedor
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
          object SpbConCliente: TBitBtn
            Left = 324
            Top = 36
            Width = 22
            Height = 21
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
            TabOrder = 3
          end
          object SpbCadCliente: TBitBtn
            Left = 348
            Top = 36
            Width = 22
            Height = 21
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
            TabOrder = 4
          end
        end
        object GrpDadosPedido: TGroupBox
          Left = 389
          Top = 15
          Width = 267
          Height = 114
          Caption = 'Dados do Pedido'
          Enabled = False
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 63
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object Label6: TLabel
            Left = 181
            Top = 17
            Width = 65
            Height = 13
            Caption = 'Data Emiss'#227'o'
          end
          object Label7: TLabel
            Left = 181
            Top = 63
            Width = 65
            Height = 13
            Caption = 'Hora Emiss'#227'o'
          end
          object Label8: TLabel
            Left = 8
            Top = 17
            Width = 67
            Height = 13
            Caption = 'Pedido N'#186' *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 103
            Top = 17
            Width = 50
            Height = 13
            Caption = 'Num. DAV'
          end
          object Label5: TLabel
            Left = 103
            Top = 63
            Width = 42
            Height = 13
            Caption = 'Num PV.'
          end
          object DbID: TDBEdit
            Left = 8
            Top = 82
            Width = 89
            Height = 21
            DataField = 'ID'
            DataSource = DataWork
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object DbDataEmissao: TDBEdit
            Left = 181
            Top = 36
            Width = 80
            Height = 21
            DataField = 'DATA_ENTREGA'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object DbHoraEmissao: TDBEdit
            Left = 181
            Top = 82
            Width = 80
            Height = 21
            DataField = 'HORA_ENTREGA'
            DataSource = DataWork
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
          object DbPedido: TDBEdit
            Left = 8
            Top = 36
            Width = 89
            Height = 21
            DataField = 'PEDIDO_NUM'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit9: TDBEdit
            Left = 103
            Top = 36
            Width = 72
            Height = 21
            DataField = 'NUMDAV'
            DataSource = DataWork
            ReadOnly = True
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit10: TDBEdit
            Left = 103
            Top = 82
            Width = 72
            Height = 21
            DataField = 'NUMPV'
            DataSource = DataWork
            ReadOnly = True
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpItens: TGroupBox
          Left = 3
          Top = 135
          Width = 771
          Height = 247
          Caption = ' Itens do Pedido/Or'#231'amento '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object GriItens: TDBGrid
            Left = 2
            Top = 15
            Width = 767
            Height = 230
            Align = alClient
            DataSource = DataItens
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = PopupMenu2
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
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Descricao'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 309
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Quant'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Desc'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_TOTAL'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Valor Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CST'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CFOP'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASE_ICMS'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQ_ICMS'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_ICMS'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANCELADO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Canc.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clRed
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 64
                Visible = True
              end>
          end
        end
        object GrpLancItens: TGroupBox
          Left = 3
          Top = 385
          Width = 769
          Height = 64
          Caption = 'Pesquisa de Itens'
          TabOrder = 3
          object Label26: TLabel
            Left = 13
            Top = 18
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label27: TLabel
            Left = 150
            Top = 18
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label30: TLabel
            Left = 684
            Top = 18
            Width = 55
            Height = 13
            Caption = 'Quantidade'
          end
          object SpeedButton3: TSpeedButton
            Left = 122
            Top = 33
            Width = 22
            Height = 21
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object Label28: TLabel
            Left = 620
            Top = 18
            Width = 45
            Height = 13
            Caption = 'Desc(R$)'
          end
          object Label29: TLabel
            Left = 537
            Top = 20
            Width = 49
            Height = 13
            Caption = 'Valor Unit.'
          end
          object EdtCodigo: TMaskEdit
            Left = 14
            Top = 33
            Width = 102
            Height = 21
            MaxLength = 14
            TabOrder = 0
            Text = ''
            OnKeyPress = EdtCodigoKeyPress
          end
          object EdtDescricao: TMaskEdit
            Left = 150
            Top = 33
            Width = 382
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = ''
          end
          object EdtQuant: TMaskEdit
            Left = 686
            Top = 33
            Width = 77
            Height = 21
            TabOrder = 3
            Text = ''
            OnKeyPress = EdtQuantKeyPress
          end
          object EdtDesc: TMaskEdit
            Left = 620
            Top = 33
            Width = 60
            Height = 21
            TabOrder = 2
            Text = ''
            OnExit = EdtDescExit
            OnKeyPress = DbIDKeyPress
          end
          object EdtValorUnit: TMaskEdit
            Left = 537
            Top = 33
            Width = 79
            Height = 21
            ReadOnly = True
            TabOrder = 4
            Text = ''
            OnKeyPress = DbIDKeyPress
          end
        end
      end
    end
    object TbsPagamento: TTabSheet
      Caption = 'Pagamento'
      ImageIndex = 3
      object GrpValores: TGroupBox
        Left = 384
        Top = 8
        Width = 268
        Height = 217
        Caption = 'Finaliza'#231#227'o de Pagamentos'
        TabOrder = 1
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
          Left = 135
          Top = 16
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
          Left = 137
          Top = 62
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
          Top = 62
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
          Top = 108
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
        object Label22: TLabel
          Left = 135
          Top = 108
          Width = 87
          Height = 13
          Caption = 'Comiss'#227'o Paga'
          FocusControl = DbTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 8
          Top = 154
          Width = 98
          Height = 13
          Caption = 'Total + Comissao'
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
          Top = 35
          Width = 121
          Height = 21
          DataField = 'VALOR'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbDesconto: TDBEdit
          Left = 135
          Top = 35
          Width = 126
          Height = 21
          DataField = 'DESCONTO'
          DataSource = DataWork
          TabOrder = 1
          OnExit = DbDescontoExit
          OnKeyPress = DbIDKeyPress
        end
        object DbAcrescimo: TDBEdit
          Left = 135
          Top = 81
          Width = 126
          Height = 21
          DataField = 'ACRESCIMO'
          DataSource = DataWork
          TabOrder = 3
          OnExit = DbDescontoExit
          OnKeyPress = DbIDKeyPress
        end
        object DbOutros: TDBEdit
          Left = 8
          Top = 81
          Width = 121
          Height = 21
          DataField = 'OUTRAS_DESPESAS'
          DataSource = DataWork
          TabOrder = 2
          OnExit = DbDescontoExit
          OnKeyPress = DbIDKeyPress
        end
        object DbTotal: TDBEdit
          Left = 8
          Top = 127
          Width = 121
          Height = 21
          DataField = 'VALOR_TOTAL'
          DataSource = DataWork
          Enabled = False
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 135
          Top = 127
          Width = 126
          Height = 21
          DataField = 'COMISSAO'
          DataSource = DataComissao
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 173
          Width = 121
          Height = 21
          DataField = 'TOTALGERAL'
          DataSource = DataComissao
          TabOrder = 6
        end
      end
      object GrpDadosFinanceiros: TGroupBox
        Left = 4
        Top = 8
        Width = 374
        Height = 116
        Caption = 'Identifica'#231#227'o de Pagamento'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 66
          Height = 13
          Caption = 'Classifica'#231#227'o*'
        end
        object Label2: TLabel
          Left = 8
          Top = 62
          Width = 105
          Height = 13
          Caption = 'Forma de Pagamento*'
        end
        object DbIdClassifica: TDBEdit
          Left = 8
          Top = 35
          Width = 65
          Height = 21
          DataField = 'ID_CLASSIFICACAO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbIdFormaPag: TDBEdit
          Left = 8
          Top = 81
          Width = 65
          Height = 21
          DataField = 'ID_FORMAPAG'
          DataSource = DataWork
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object ComboClassifica: TDBLookupComboBox
          Left = 80
          Top = 35
          Width = 247
          Height = 21
          DataField = 'ID_CLASSIFICACAO'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DataClassifica
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object ComboFormaPag: TDBLookupComboBox
          Left = 80
          Top = 81
          Width = 247
          Height = 21
          DataField = 'ID_FORMAPAG'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DataFormaPag
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object SpeedButton1: TBitBtn
          Left = 329
          Top = 34
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Action = ActCadClass
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
          TabOrder = 0
        end
        object SpeedButton2: TBitBtn
          Left = 329
          Top = 80
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Action = ActCadFormaPag
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
          TabOrder = 3
        end
      end
      object RadioTipoDoc: TDBRadioGroup
        Left = 4
        Top = 130
        Width = 374
        Height = 95
        Caption = 'Forma de Pagamento'
        Columns = 3
        DataField = 'TIPODOC'
        DataSource = DataWork
        Items.Strings = (
          '&0 - Dinheiro'
          '&1 - Cheque'
          '&2 - Cart'#227'o'
          '&3 - NP'
          '&4 - Carne'
          '&5 - Boleto'
          '&6 - Outros')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
    end
    object TbsEndereco: TTabSheet
      Caption = 'Endere'#231'o de Entrega'
      ImageIndex = 1
      object GrpDadosEntrega: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 452
        Align = alClient
        TabOrder = 0
        object Label14: TLabel
          Left = 16
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit1
        end
        object Label15: TLabel
          Left = 328
          Top = 56
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit2
        end
        object Label16: TLabel
          Left = 16
          Top = 96
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit3
        end
        object Label17: TLabel
          Left = 16
          Top = 136
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit4
        end
        object Label18: TLabel
          Left = 16
          Top = 176
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit8
        end
        object Label19: TLabel
          Left = 16
          Top = 216
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label20: TLabel
          Left = 80
          Top = 216
          Width = 19
          Height = 13
          Caption = 'Cep'
          FocusControl = DBEdit15
        end
        object Label21: TLabel
          Left = 16
          Top = 13
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBNomeCli
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 72
          Width = 289
          Height = 21
          DataField = 'END_ENTREGA'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 328
          Top = 72
          Width = 57
          Height = 21
          DataField = 'NUM_END_ENTREGA'
          DataSource = DataWork
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 112
          Width = 177
          Height = 21
          DataField = 'COMPL_END_ENTREGA'
          DataSource = DataWork
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 152
          Width = 264
          Height = 21
          DataField = 'BAIRRO_END_ENTREGA'
          DataSource = DataWork
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 16
          Top = 192
          Width = 264
          Height = 21
          DataField = 'CID_END_ENTREGA'
          DataSource = DataWork
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit15: TDBEdit
          Left = 80
          Top = 232
          Width = 134
          Height = 21
          DataField = 'CEP_END_ENTREGA'
          DataSource = DataWork
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
        object DBNomeCli: TDBEdit
          Left = 16
          Top = 32
          Width = 393
          Height = 21
          DataField = 'CLIENTE'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object ComboUF: TDBLookupComboBox
          Left = 16
          Top = 232
          Width = 49
          Height = 21
          DataField = 'UF_END_ENTREGA'
          DataSource = DataWork
          KeyField = 'UF'
          ListField = 'UF'
          ListSource = DataUF
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object BitBtn1: TBitBtn
          Left = 16
          Top = 272
          Width = 201
          Height = 44
          Action = ActConfirmar
          Caption = 'F4 - &Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000232E0000232E00000000000000000000FFFFFFFDFDFD
            FDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC5C5C5
            939393999999A5A5A5B4B4B4BBBBBBC5C5C5D2D2D2E5E5E5EDEDEDF2F2F2F2F2
            F2F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7876357
            786253654C4D5A58555E5C5965727B6C6D6C6C6D6C6C6D6C7373737B7B7B8383
            838A8A8ACBCBCBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F4A05F27
            8D4522753827642D2A6236387AB3EA7AB3EA5AADD36699CD5B95AE6183A36773
            8F6665657B7B7BCBCBCBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE998E7A
            753827642D2A5C282A62363891D7FA84D2FA7ACFF973CCF969C9F95AC5F862B5
            F4749DAF63615E7B7B7BD2D2D2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5B5B1
            642D2A5C282A5C282A7B7B7B9CDBFB97D9FA8BD5FA84D2FA73CCF969C9F962B5
            F468A7E66691AA63615E8A8A8AD9D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1
            5C282A5C282A7B7B7BB3D3F2B3E3FCACE0FC9CDBFB91D7FA84D2FA7ED0F970BC
            F6599EE3599EE36183A35E5E5E838383DDDDDDFDFDFDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
            654C4D999999CBE1F6CBECFDC3E9FCBBE6FDACE0FCA3DDFC97D9FA8BD5FA79BF
            F6599EE3529CE3599EE3627C935E5C599F9F9FE3E3E3FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            84C5F8BADAFCECF9FEE5F6FED8F1FECBECFDB3E3FCB3E3FCACE0FC9CDBFB85C4
            F4529CE34593E04E98E2529CE3627C9363615E939393F0F0F0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            ADD9FB92CBF9FDFEFFF6FCFFE5F6FEE0F4FED3EBFDC3E9FCBBE6FDACE0FC89C8
            F84E98E23A8CDD4291DF4995E14E98E265727B63615EABABABF0F0F0FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F0F7FE62B5F4FDFEFFFEFFFFFAFDFFF2F9FFE5F6FED8F1FECBECFDA9D6F7529C
            E3ABCEF17AB3EA3A8CDD3E8FDE4593E04790D865727B666565A5A5A5F5F5F5FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FAFCFF70BCF6E1F0FEFFFFFFFFFFFFFDFEFFF5FAFFECF9FEB6D9FA529CE3A2CA
            F1F2F9FFE5F2FD68A7E6388BDD3A8CDD4291DF4790D86665656A6763BBBBBBF5
            F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFB7DDFBA7D1FAFFFFFFFFFFFFFFFFFFFAFDFFBADAFC3E8FDE7AB3EAD0E7
            FCE5F2FDF6FCFFEEF6FF5FA4E63589DC388BDD3E8FDE4687C76668736C6D6CB4
            B4B4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD8EBFD7FC3F8F6FCFFFAFDFFD9E9F894C1EE4E98E26EAEF6A2CDFAC1DE
            FCD0E7FCE5F2FDF5FAFFD9E9F85FA4E63589DC3589DC3A8CDD4687C763615E73
            7373CBCBCBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBFDFF62B5F49BCDF4A2CAF1ABCEF1D9E9F8D7EAFD98C7FA93C5FAA7D1
            FAB1D5FBCBE4FCD9EDFDF2F9FFE5F0FB4E98E23388DC3589DC388BDD4C7FB066
            65657B7B7BC5C5C5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDDEDFE70BCF6ADD9FBDEEEFDEEF6FFFAFDFFE1F0FE9DCAFA93C5
            FA9DCAFAB6D9FAC1DEFCD9EDFDE9F4FEC1DEFC4E98E23288DC3388DC388BDD4C
            7FB05E5E5E7B7B7BD9D8D8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F8FF70BCF689C8F8DAEDFBEEF6FFFAFDFFF2F9FF98C7
            FA8DC1F99DCAFAABD2FBC4E1FCCBE4FCE5F2FDD9E9F84995E13288DC3288DC35
            89DC5873955E5E5E8A8A8AD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFEDF6FE79BFF689C8F8D7EAFDEEF6FFFAFDFFE5F2
            FD98C7FA88BEF898C7FAABD2FBBADAFCD0E7FCE1F0FEABCEF14291DF3288DC32
            88DC3589DC58739563615E8A8A8AE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFA4D5FA70BCF6CBE4FCEEF6FFFAFD
            FFF2F9FF9DCAFA84BBF893C5FAA2CDFAB6D9FAC4E1FCDEEEFDB4D9F64291DF32
            88DC3288DC3388DC5873955E5E5E999999DDDDDDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFBBDCFC70BCF6C4E1FCEEF6
            FFFAFDFFEEF6FF9DCAFA83BAF78DC1F9A2CDFAB1D5FBC4E1FCD7EAFDA2CAF13E
            8FDE3288DC3288DC4687C76668736665659F9F9FEEEEEEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE6FD62B5F4B6D9
            FAE9F4FEFAFDFFFAFDFF9DCAFA7BB6F88DC1F998C7FAABD2FBBADAFCCBE4FC94
            C1EE3A8CDD3288DC517AA0A05F2778625363615EABABABEBEBEBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBEDFD62B5
            F4A9D6F7EEF6FFFAFDFFEEF6FF98C7FA78B5F588BEF898C7FAA7D1FABADAFCCB
            E4FC8CBDED3A8CDD876357B3671AA05F277862536C6D6CBBBBBBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFD
            FF88C6F792CBF9E1F0FEFAFDFFFAFDFFA7D1FA78B5F583BAF793C5FAA2CDFAB1
            D5FBBADAFCA79F94D09423C7851EB3671AA6601C5E5C59838383FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBFDFF79BFF679BFF6EEF6FFFAFDFFF5FAFFA2CDFA6EAEF67FB8F88DC1F99D
            CAFAB4B4B4CDAC59E2AB22D09423BE7813B3671A4E47486C6D6CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFFFFAAD7FB79BFF6D0E7FCFCFDFFFFFFFFA2CDFA6EAEF67AB3EA9B
            A0AEEFC980F5CE6AF3C63DEFBE2AD09423806422213B71666873FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFEFFFF9FD2FA70BCF6D7EAFDFAFDFFF2F9FFA5B5CFA7A5AED9
            C3B7F7D992F6D37DF2C752F3C63DD094234E4748213B71666873FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFE8F3FE6FA8E3BBBBBBD9C3B7DDDDDDFEFAF2F9
            ECD2F9E4B8F7DEA5F6D37DF2C75278625322376B213B7165727BFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEACDAC59F7DEA5FCF5E8FFFEFCFE
            FAF2F9ECD2F9E4B8F0CC878C806A213B71213B71213B7195989FFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBF5EBC86FF7DEA5FEFAF2FD
            FDFDEEE7E4BBBBBB5873952A4AA42A4AA427459367738FD9D8D8FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9EDF7D992CCB5ADA5
            A5A5627C933455BC2E56D32E56D32C4EB23F5898C0C8D2FCFCFCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCA2ACC33F
            58982A4AA42D52C52F5AE84366D78E9FD4E6E7EDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
            F0F0EAEDF0E6F1FBE6F1FBEEF5FCFDFDFDFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 8
        end
      end
    end
    object TbsContas: TTabSheet
      Caption = 'Contas a Receber'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 452
        Align = alClient
        TabOrder = 0
        object GridContas: TDBGrid
          Left = 2
          Top = 15
          Width = 773
          Height = 435
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMCONTA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_VENC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_QUIT'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_CONTA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESCONTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ACRESCIMO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_QUITATO'
              Width = 64
              Visible = True
            end>
        end
      end
    end
  end
  object grpButtons: TGroupBox [1]
    Left = 0
    Top = 544
    Width = 785
    Height = 53
    Align = alBottom
    TabOrder = 1
    inline FrameBotaoHorizontal1: TFrameBotaoHorizontal
      Left = 142
      Top = 8
      Width = 639
      Height = 43
      TabOrder = 0
      ExplicitLeft = 142
      ExplicitTop = 8
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
      end
      inherited BtnRelatorio: TBitBtn
        Action = ActRelatorio
        Caption = 'F7 - &Imprimir'
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 480
    Width = 785
    Height = 64
    Align = alBottom
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 783
      Height = 62
      Align = alClient
      TabOrder = 0
      object DbRadioConfirmado: TDBRadioGroup
        Left = 8
        Top = 8
        Width = 93
        Height = 41
        Caption = ' Confirmado '
        Columns = 2
        DataField = 'CONFIRMADA'
        DataSource = DataWork
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ReadOnly = True
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DbRadioEntregue: TDBRadioGroup
        Left = 104
        Top = 8
        Width = 93
        Height = 41
        Caption = ' Entregue '
        Columns = 2
        DataField = 'ENTREGUE'
        DataSource = DataWork
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DbRadioCancelado: TDBRadioGroup
        Left = 201
        Top = 8
        Width = 93
        Height = 41
        Caption = ' Cancelado '
        Columns = 2
        DataField = 'CANCELADO'
        DataSource = DataWork
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ReadOnly = True
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object GroupBox4: TGroupBox
        Left = 298
        Top = 8
        Width = 87
        Height = 41
        Caption = ' Cupom Fiscal '
        TabOrder = 3
        object DBEdit7: TDBEdit
          Left = 8
          Top = 15
          Width = 68
          Height = 21
          DataField = 'COO'
          DataSource = DataWork
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 391
        Top = 8
        Width = 157
        Height = 41
        Caption = 'Data/Hora Cadastro'
        TabOrder = 4
        object DbDataCad: TDBEdit
          Left = 7
          Top = 15
          Width = 70
          Height = 21
          DataField = 'DATA_PEDIDO'
          DataSource = DataWork
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbHoraCad: TDBEdit
          Left = 81
          Top = 15
          Width = 70
          Height = 21
          DataField = 'HORA_PEDIDO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
      end
      object BtnFinalizar: TBitBtn
        AlignWithMargins = True
        Left = 552
        Top = 12
        Width = 119
        Height = 37
        Action = ActConfirmaPedido
        Caption = 'F8 - Finalizar Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFF7D6D64
          867770988C86C4BCB9D0CAC8D9D4D2E2DFDDEDEBEBF4F2F1F9F8F8FDFCFCFFFE
          FEFFFFFFFFFFFFFFFFFFB2A9A97565607B716C59453A68564E73645C81726B9D
          928CC4BDBAD4D0CEE0DCDAEFEEECFBFAFA2B56FFFFFFFFFFFFFFBF7575CC6767
          785F5D9C99978A85827D77737E726B564238A499939D918C988B85D3CCC9EFED
          ECE2E7FF6482FFFFFFFFBF7777CC6767816767DCBCBCE2B5B5D1D1D1B1B1B1D2
          D1D19BABF7C1BCB9604B418D7C74EBE7E6E1E5FB2B56FFFFFFFFBF7979CC6767
          775E5EB07E7EBF5A5AB1B1B1F3F3F39BABF72450FFEDD7D7B9A3A2C5BCB8FCFC
          FB1645FF2B56FFFFFFFFBF7B7BCC6767836A6AB58282B14C4CD1D1D19BABF708
          39FF2450FF2450FF2450FF2450FF0134FF0134FF6482FFFFFFFFBF7D7DCC6767
          8A7272C79494A33E3E9BABF70134FF0134FF0134FF0134FF0134FF0134FF0134
          FF2450FFFFFFFFFFFFFFBF7F7FCC6767846565E4D7D7CEA1A1D1D1D19BABF724
          50FF2450FF8099FF8099FF8099FFDBE2FFFEFEFEFFFFFFFFFFFFBF8181CC6767
          A65A5A966464977F7F938C8CC1C1C19BABF70134FFF2D9D9C2A6A4BCB0ACE7E2
          E1F6F4F3FFFEFEFFFFFFBF8383CC6767935454A65A5AB96161CC6767B96161DA
          BFBF9BABF7E6B3B3854C49776159D3CBC8F5F3F3FFFEFEFFFFFFBF8585CC6767
          866767E3E3E3C3C3C3ABA4A4A48A8AA97D7DDAC8C8E1B1B1854C49776159D3CB
          C8F5F3F3FFFEFEFFFFFFBF8787CC6767866E6EC1C1C1C4C4C4BCBCBCC9C9C9DD
          DDDDC5C5C5A65A5A854C49776159D3CBC8F5F3F3FFFEFEFFFFFFBF8989CC6767
          866D6DBFBFBFC2C2C2B9B9B9C1C1C1BDBDBDBDBDBDA65A5A854C4978625AD4CC
          CAF5F3F3FFFEFEFFFFFFBF8B8BCC6767856C6CC2C2C2E9E9E9E7E7E7EBEBEBDE
          DEDEBBBBBBA65A5A864E4B7B665ED5CECBF6F4F4FFFEFEFFFFFFAD8787CC7575
          B59C9CBEBEBEBEBEBEBEBEBEC9C9C9DEDEDEBEBEBEA65A5A8A514E89756ED8D1
          CEF6F4F4FFFEFEFFFFFFFFFFFFFFFFFFE6E6E6E6E6E6FFFFFFDADADAFDFDFDD5
          D5D5E3D6D6B98787CDADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 5
      end
      object BtnRetornar: TBitBtn
        AlignWithMargins = True
        Left = 674
        Top = 12
        Width = 104
        Height = 37
        Action = ActRetirarFechamento
        Caption = 'Alterar Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
          B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
          0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
          10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
          B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
          20BE491BBD4014B7300AB21F63CE6DEEFAEFDFF5E128BC3609B21909B21909B3
          1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4255BCC66F7FDF8FF
          FFFF9ADFA011B42009B21909B21909B21909B81A089413045D090872102AB65B
          2CC56522BD4D5CCC69F6FCF7FDFEFD8EDB9509B21A09B21909B21909B21909B2
          1909B51A08AB17045D090F821C37C26C33C76C8ADDA8F4FCF6FFFFFFF9FDFAC7
          EED2C4EDCCBFEBC3BFEBC3C0EBC4C2ECC608B41909B31905650B138D2358CC83
          42C977C9EFD8FFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0AB41A09B319066D0D0F911D6FD2935FD38D44C977B7EACBFFFFFFFBFEFC9A
          E2B458CD795CCE765CCD765CCD735BCD7211B82B08B11905610A0F911D67CC83
          9BE5BA38C67032C36AAAE6C1FFFFFFE9F9EF6AD38E21BD4D1EBC491EBC471AB9
          3E10BA2908A31705610AFF00FF37B650BCEDD282DBA428C06331C268A4E4BDFF
          FFFFF7FDF945C86E20BB4A1DBA4118B73614C0300A8517FF00FFFF00FF37B650
          71D28CD2F4E180DAA336C46D31C36AAAE6C1BDECCF35C46924BE5623BC4D1FC1
          4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
          CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
          FF00FF66CD8166CD81ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
          57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E52C46F61
          CB805DC87D43B96424A342FF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.CdsPedidos
    Left = 872
    Top = 472
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 1024
    Top = 416
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    inherited ActRelatorio: TAction
      Caption = 'F7 - &Imprimir'
      OnExecute = ActRelatorioExecute
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
    object ActConfirmaPedido: TAction
      Caption = 'F8 - Finalizar Pedido'
      Hint = 'Finalizar o Pedido'
      ShortCut = 119
      OnExecute = ActConfirmaPedidoExecute
    end
    object ActIncluirItens: TAction
      Caption = 'Incluir Itens'
      ShortCut = 45
    end
    object ActEditarItens: TAction
      Caption = 'Alterar Item'
    end
    object ActExcluirItem: TAction
      Caption = 'Excluir Item'
      OnExecute = ActExcluirItemExecute
    end
    object ActRetirarFechamento: TAction
      Caption = 'Retornar Pedido Finalizado'
      OnExecute = ActRetirarFechamentoExecute
    end
  end
  object DataItens: TDataSource
    DataSet = DmWorkCom.CdsPedidoItens
    Left = 876
    Top = 376
  end
  object DataCliente: TDataSource
    Left = 876
    Top = 424
  end
  object DataVendedor: TDataSource
    Left = 876
    Top = 328
  end
  object DataFormaPag: TDataSource
    DataSet = DmWorkCom.CdsFormaPag
    Left = 940
    Top = 464
  end
  object DataClassifica: TDataSource
    DataSet = DmWorkCom.CdsPedidoClass
    Left = 1020
    Top = 464
  end
  object DataCtaReceber: TDataSource
    DataSet = DmWorkCom.CdsContasAux
    Left = 942
    Top = 370
  end
  object DataUF: TDataSource
    Left = 940
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 944
    Top = 325
    object F4Confirmar1: TMenuItem
      Action = ActConfirmaPedido
    end
    object LiberarPedidoFechado1: TMenuItem
      Action = ActRetirarFechamento
    end
    object CancelarPedido1: TMenuItem
      Caption = 'Cancelar Pedido'
      OnClick = CancelarPedido1Click
    end
    object AlterarNmerodopedido1: TMenuItem
      Caption = 'Alterar N'#250'mero do pedido'
      OnClick = AlterarNmerodopedido1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ImprimirPedido1: TMenuItem
      Action = ActRelatorio
      Caption = 'F7 - &Imprimir Pedido'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object VerProdutosCadastrados1: TMenuItem
      Caption = 'Ver Produtos Cadastrados'
      ShortCut = 16496
      OnClick = VerProdutosCadastrados1Click
    end
    object AlterarDatadoPedido1: TMenuItem
      Caption = 'Alterar Data do Pedido'
      OnClick = AlterarDatadoPedido1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CadastrarProdutos1: TMenuItem
      Caption = 'Cadastrar Produtos'
      OnClick = CadastrarProdutos1Click
    end
  end
  object CdsComissao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1022
    Top = 323
    object CdsComissaoCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
    end
    object CdsComissaoTOTALGERAL: TCurrencyField
      FieldName = 'TOTALGERAL'
    end
  end
  object DataComissao: TDataSource
    DataSet = CdsComissao
    Left = 1022
    Top = 371
  end
  object PopupMenu2: TPopupMenu
    Left = 351
    Top = 247
    object ExcluirItem2: TMenuItem
      Action = ActExcluirItem
      ShortCut = 46
    end
    object CancelaritemdopedidoDAV1: TMenuItem
      Caption = 'Cancelar item do pedido DAV'
      OnClick = CancelaritemdopedidoDAV1Click
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42480.740310219900000000
    ReportOptions.LastChange = 42620.705817731480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 487
    Top = 239
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
      end
      item
        DataSet = frxDBPedido
        DataSetName = 'frxDBPedido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 257.008040000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 0.220470000000000000
          Top = 1.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 5.795300000000000000
          Width = 706.772110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'N'#195'O '#201' DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO RECIBO E COMO GARANTI' +
              'A DE MERCADORIA - N'#195'O COMPROVA PAGAMENTO')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 23.795300000000000000
          Width = 718.110700000000000000
          Height = 71.811070000000000000
        end
        object Shape5: TfrxShapeView
          Left = 0.220470000000000000
          Top = 95.858380000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
        end
        object frxDBEmpresaRAZAO_SOCIAL: TfrxMemoView
          Left = 140.779530000000000000
          Top = 30.283550000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO_SOCIAL"]')
        end
        object frxDBEmpresaCNPJ_CPF: TfrxMemoView
          Left = 547.866420000000000000
          Top = 29.283550000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ_CPF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."CNPJ_CPF"]')
        end
        object Memo5: TfrxMemoView
          Left = 6.338590000000000000
          Top = 101.858380000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dados do Cliente:')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 0.338590000000000000
          Top = 126.196970000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape7: TfrxShapeView
          Top = 202.551330000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
        end
        object frxDBPedidoCLIENTE: TfrxMemoView
          Left = 7.559060000000000000
          Top = 134.196970000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Cliente: [frxDBPedido."CLIENTE"]')
        end
        object frxDBPedidoCNPJCPF: TfrxMemoView
          Left = 468.661720000000000000
          Top = 134.196970000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'CPF/CNPJ: [frxDBPedido."CNPJCPF"]')
        end
        object frxDBPedidoEND_ENTREGA: TfrxMemoView
          Left = 7.559060000000000000
          Top = 153.653680000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Endre'#231'o: [frxDBPedido."END_ENTREGA"]')
        end
        object frxDBPedidoNUM_END_ENTREGA: TfrxMemoView
          Left = 370.393940000000000000
          Top = 153.653680000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'N'#186': [frxDBPedido."NUM_END_ENTREGA"]')
        end
        object frxDBPedidoCOMPL_END_ENTREGA: TfrxMemoView
          Left = 472.441250000000000000
          Top = 153.653680000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Compl: [frxDBPedido."COMPL_END_ENTREGA"]')
        end
        object frxDBPedidoBAIRRO_END_ENTREGA: TfrxMemoView
          Left = 7.559060000000000000
          Top = 173.330860000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Bairro: [frxDBPedido."BAIRRO_END_ENTREGA"]')
        end
        object frxDBPedidoCID_END_ENTREGA: TfrxMemoView
          Left = 340.157700000000000000
          Top = 173.551330000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Cidade: [frxDBPedido."CID_END_ENTREGA"]')
        end
        object frxDBPedidoUF_END_ENTREGA: TfrxMemoView
          Left = 502.677490000000000000
          Top = 173.551330000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'UF: [frxDBPedido."UF_END_ENTREGA"]')
        end
        object frxDBPedidoCEP_END_ENTREGA: TfrxMemoView
          Left = 578.268090000000000000
          Top = 173.551330000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'CEP: [frxDBPedido."CEP_END_ENTREGA"]')
        end
        object frxDBPedidoNUMDAV: TfrxMemoView
          Left = 7.559060000000000000
          Top = 209.787570000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Doc. N'#186': [frxDBPedido."NUMDAV"]')
        end
        object frxDBPedidoDATA_PEDIDO: TfrxMemoView
          Left = 181.417440000000000000
          Top = 209.787570000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Data: [frxDBPedido."DATA_PEDIDO"]')
        end
        object frxDBPedidoHORA_PEDIDO: TfrxMemoView
          Left = 336.378170000000000000
          Top = 209.787570000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Memo.UTF8W = (
            'Hora: [frxDBPedido."HORA_PEDIDO"]')
        end
        object Memo6: TfrxMemoView
          Left = 589.842920000000000000
          Top = 209.787570000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Memo.UTF8W = (
            'COO: __________')
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 237.023810000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 90.708720000000000000
          Top = 237.023810000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 374.173470000000000000
          Top = 237.023810000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 453.543600000000000000
          Top = 237.023810000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 548.031850000000000000
          Top = 237.023810000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 634.961040000000000000
          Top = 237.023810000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = -0.220470000000000000
          Top = 24.456710000000000000
          Width = 136.063080000000000000
          Height = 71.811070000000000000
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 34.236240000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
          Picture.Data = {
            07544269746D617046850100424D468501000000000036000000280000002C01
            000053000000010020000000000010850100C40E0000C40E0000000000000000
            0000FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFFE2EDF9FFDDE9F8FFDFEAF8FFDFEAF8FFDFEAF8FFDFEA
            F8FFDFEAF8FFDFEAF8FFDFEAF8FFDFEAF8FFDFEAF8FFDFEAF8FFDFEAF8FFDFEA
            F8FFDFEAF8FFDBE8F8FFEEF4FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF3D7FDBFF105D
            D8FF1863D8FF1763D8FF1763D8FF1763D8FF1763D8FF1763D8FF1763D8FF1763
            D8FF1763D8FF1763D8FF1763D8FF1763D8FF1762D9FF0859D6FF83B0E8FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4D88E0FF276C
            DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF1F68DDFF90B6ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9CBCEFF8F9294FF50555BFF1D2228FF0005
            09FF000000FF000000FF000000FF00050AFF252B30FF5D6168FF9EA0A2FFEEEF
            F2FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B8BAFF7C7F
            83FF3A3F44FF080E13FF000000FF000000FF000000FF000106FF191F24FF5257
            5BFF909395FFD0D2D5FFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4D88E0FF276C
            DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF1F68DDFF90B6ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF1F3F4FF93979AFF1A1F23FF070C
            0DFF030909FF0A100FFF111516FF141818FF161A19FF161816FF151612FF1214
            11FF0E0F0CFF070908FF020808FF090E10FF454B4FFFD6D9DDFFFFFFFFFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF9F9
            FBFF8C9196FF161B1EFF04090AFF05090AFF0D1213FF141819FF161919FF1619
            17FF141613FF131411FF0F110DFF080B0AFF030607FF060A0DFF2A2E31FFAAAD
            B2FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFA5A8
            ACFF111619FF000102FF111718FF161A1AFF151815FF14140EFF131207FF1413
            0AFF181C1EFF1C2939FF1D3044FF1D3047FF1C2B3EFF1A2025FF14130BFF120F
            06FF070600FF000000FF6A6E71FFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFFC3C6C8FF16181BFF000204FF111517FF161B1BFF1517
            13FF14130BFF131007FF161712FF1A232EFF1D3045FF1E3147FF1C2D42FF1921
            29FF161510FF131005FF0B0B03FF000000FF26292CFFD7DADCFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4D88E0FF276C
            DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF1F68DDFF90B6ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF6E7277FF000000FF14191AFF161B1BFF13130DFF1410
            04FF1C2B40FF254C87FF2D6ACBFF307AF1FF3181FEFF307DFCFF307DFAFF307D
            FAFF307EFBFF3180FDFF317DF6FF2C6AC8FF254C88FF1B2938FF000000FF0D0F
            0EFFEBEBECFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF65686DFF000000FF1319
            1AFF161A1BFF14140FFF151106FF1D324CFF265397FF2E73DDFF317DFAFF3081
            FDFF307DFBFF307CF9FF307EFBFF3180FEFF317EF9FF2E70D9FF275398FF1F34
            51FF0E0C02FF000000FF777C7EFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFECFCFDFFC9F8FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8
            FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8FBFFCFF8
            FBFFCDF8FCFFCFF8FAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF5F6F8FF161B1DFF1419
            1BFF151510FF171915FF213B61FF2E71DCFF2F78EEFF2E77EDFF2E74E3FF2E72
            E0FF2D70DCFF2D71DCFF2E71DDFF2E71DDFF2E71DDFF2D70DDFF2E72DEFF2D73
            E7FF2F77ECFF2F78F0FF2D68C4FF15273DFF020000FFDDDDDDFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFF3A3D40FF020506FF171B1DFF151714FF15150FFF1E3759FF2E75E0FF2F77
            F0FF2E76EAFF2E72E4FF2D71DDFF2E70DCFF2E70DDFF2C70DEFF2B6FDDFF2D6F
            DFFF2E71DDFF2E72E4FF2F77E9FF2F77F0FF2F75E2FF214069FF000000FF4A4A
            47FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFAAF5FAFF00E6F5FF0BE8
            F6FF0BE8F6FF0BE8F6FF0BE8F6FF0BE8F6FF0BE8F6FF0BE8F6FF0BE8F6FF0BE8
            F6FF0BE8F6FF0BE8F6FF0BE8F6FF0BE8F6FF06E8F6FF0CE8F4FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4D88E0FF276C
            DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF1F68DDFF90B6ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFBDBEBFFF03090BFF141511FF1C2939FF2C6ACAFF2F7AF8FF2E74
            E2FF2E72DFFF2E71DEFF2D71DFFF2E71DEFF2E71DEFF2C70DEFF266BDEFF2268
            DDFF2268DEFF286CDEFF2E70DFFF2E72DDFF2D71DEFF2E71DEFF2E75E8FF317C
            F6FF1D4B91FF191814FFF0F0EFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFF54555AFF000303FF161B1EFF13120EFF191F
            23FF2B65BDFF307CF7FF2E73E2FF2E71DEFF2E71DEFF2E71DDFF2B6FDFFF1F67
            DDFF1863DAFF1B66D6FF226CD9FF1863D6FF1A63DDFF236ADDFF2E71DFFF2E70
            DEFF2E73E1FF307CF7FF2E6ED2FF020F1FFF5A5651FFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFAFF7FBFF00E7F6FF18EAF7FF17EAF7FF17EAF7FF17EAF7FF17EA
            F7FF17EAF7FF17EAF7FF17EBF8FF17EAF7FF17EAF7FF17EAF7FF17EAF7FF18EA
            F7FF13EAF6FF17E8F5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF898E91FF000404FF1513
            0CFF3182FFFF2D72E7FF2D71DCFF2E71DEFF2E72DEFF2E71DFFF2E72DEFF2D71
            DDFF1962DCFF1B67DAFF5993E4FF75A8E9FF6BA0E6FF4083E0FF0E5CD8FF276C
            DCFF2E71DDFF2E72DEFF2E71DEFF2E71DEFF307AF4FF1C5DBFFF393D41FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6C6F74FF0000
            00FF181D1FFF131007FF1D3045FF3280FEFF2E75E8FF2E71DDFF2E72DEFF2E72
            DDFF2E71DDFF2067DDFF216CDCFF88B3EAFFE4F4FAFFFFFFFFFFFFFFFFFFFFFF
            FFFFC6DFF6FF679CE5FF0E5CD8FF2B6EDFFF2E71DFFF2D71DCFF2E73E4FF3382
            FFFF05295AFF68655DFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB1F7FAFF00E8F7FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF13EBF8FF18E8F5FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4D88E0FF276C
            DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF1F68DDFF90B6ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFF474C51FF080902FF223F65FF2F78F0FF2D71DDFF2E71DEFF2E71
            DEFF2E72DFFF2E71DEFF266BE0FF1E68DBFF87B5EAFFFFFFFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDAECF9FF4182E0FF2269DFFF2E70DEFF2E72DDFF2E72
            DFFF2E71DDFF2F75E9FF145ACAFFA7ACADFFFFFFFFFFFCFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFADB0B3FF000304FF171B1DFF131108FF223E66FF317DF6FF2E71
            E0FF2E71DEFF2E72DFFF2E72DEFF2E71DEFF1A62DCFF5894E3FFF3F9FCFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDBF3FF226B
            DBFF2A6EDFFF2E71DFFF2E71DEFF2D70DEFF307BF5FF0E3D84FFADA89FFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFB1F7FAFF00E8F7FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF13EBF8FF18E8F5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF141B1FFF100F07FF2857
            A2FF2E75E9FF2E71DDFF2E71DEFF2E72DFFF2E71DEFF276CDEFF2670D9FFC6DE
            F5FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFF
            FFFF4481D3FF2870E7FF2E72DDFF2E72DFFF2E72DFFF2E71DEFF2A70E3FF3375
            D2FFFFFFFCFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF0A0F12FF101517FF1414
            0EFF1E314CFF307BF3FF2E72E0FF2E71DEFF2E72DEFF2E72DEFF2E72DEFF2067
            DDFF4C8CDFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFDFF
            FFFFFEFFFFFFFDFFFFFFFFFFFFFFCAE0F4FF1462DBFF2E71DFFF2E71DEFF2E71
            DFFF2E71DDFF2B76EFFF1D4784FFFFFFFBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB1F7FAFF00E8F7FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF13EBF8FF18E8F5FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4D88E0FF276C
            DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF1F68DDFF90B6ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF000000FF141712FF2D6BCEFF2E73E2FF2E71DEFF2E72DFFF2E70
            DEFF286DDDFF1B69DAFFF0FAFBFFFFFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFEFEFFFFFFFFFFA29E96FF1559C1FF2F74E5FF2E72
            DDFF2E72DFFF2E72DFFF2E72DEFF1762DCFF7EAEE7FFFFFFFFFFFEFFFFFFFFFF
            FFFF7F8487FF000203FF161816FF171A1AFF3281FCFF2E72E1FF2E71DEFF2E71
            DFFF2E72DEFF2E72DFFF286CDDFF3076DEFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FEFF5475A6FF2571E8FF2E71DEFF2E72DEFF2E71DFFF2E71DFFF1A68E5FF7B9F
            C9FFFFFFFFFFFDFEFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFB1F7FAFF00E8F7FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF13EBF8FF18E8F5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4D88E0FF276CDEFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF1F68DDFF90B6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFEFFFFFF000000FF181D1FFF3079
            EDFF2D70DFFF2E72DDFF2E70DFFF2C6FDFFF1C67D9FFD7EAF7FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEAEAE5FF001339FF3079EFFF2E70DFFF2E72DEFF2E72DFFF2E72DEFF2D71
            DEFF1E67DCFFD6E7F7FFFFFFFFFFEFEFF0FF101719FF141919FF15150EFF2C67
            C5FF2E74E7FF2D72DEFF2E71DFFF2E72DFFF2E72DDFF2D71DDFF1661DBFFD2E6
            F7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFA29A8BFF195BC2FF2E74E5FF2E72
            DEFF2E72DFFF2E72DEFF2D70E1FF1E69DCFFD2E5F7FFFFFFFEFFFCFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB1F7FAFF00E8F7FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF13EBF8FF18E8F5FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF4A86DFFF246A
            DDFF2B6FDFFF2B6FDEFF2B6FDEFF2B6FDEFF2B6FDEFF2B6FDEFF2B6FDEFF2B6F
            DEFF2B6FDEFF2B6FDEFF2B6FDEFF2B6FDFFF2B6FDDFF1C65DDFF8EB5ECFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFDEE2E5FF000000FF1A2531FF317FFCFF2D71DEFF2E71DEFF2E71DEFF1761
            DAFF99C4EBFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF000000FF2E76E5FF2E71
            E1FF2E72DDFF2E72DFFF2E72DFFF2E72DFFF1F67DBFF5F9AE5FFFFFFFFFF959A
            9EFF000001FF15120BFF213F69FF307CF6FF2D70DFFF2E72DEFF2E72DFFF2E72
            DFFF2E72DEFF256ADFFF5E97E1FFFFFFFFFFFFFEFDFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFDFF021C3FFF2F78F2FF2E71DDFF2E72DFFF2E72DFFF2E72DDFF2268
            DEFF4686DEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFB1F7FAFF00E8F7FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EB
            F8FF13EBF8FF18E8F5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF4E8ADDFF1F6ADCFF2670DBFF266FDBFF266FDBFF266F
            DBFF266FDBFF266FDBFF266FDBFF266FDBFF266FDBFF266FDBFF266FDBFF2670
            DBFF276FDAFF1865DAFF8CB6EAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFBDC1C8FF000000FF203753FF2F7C
            F7FF2E71DDFF2E72DEFF256BDDFF4D89E1FFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFF000000FF285CAAFF2E76E9FF2E71DEFF2E72DFFF2E72DFFF2E72
            DFFF2D71DFFF0E5CD7FFFFFFFFFF1E2122FF101415FF161712FF2F75E8FF2E72
            E1FF2E72DDFF2E72DFFF2E72DFFF2E72DFFF2F72DFFF0756D7FFE6F5FCFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF25292BFF2668CEFF2E72
            E3FF2E72DEFF2E72DFFF2E72DFFF2E72DDFF1762DCFFB6D3F1FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB1F7FAFF00E8F7FF19EB
            F8FF19EBF8FF19EBF8FF19EBF8FF18EBF8FF19EAF7FF19EAF7FF19EAF7FF19EA
            F7FF19EBF8FF18EBF8FF18EBF8FF19EAF7FF13EBF8FF18E8F5FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFADB1B5FF000000FF244476FF2F7AF1FF2E71DEFF2E71DEFF0C5BD7FFEAF6
            FBFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF000000FF244574FF2F79
            F3FF2E71DDFF2E72DFFF2E72DFFF2E72DFFF2E70DEFF246DE3FF7299C9FF1314
            0FFF13120DFF23467AFF2F79EEFF2E71DDFF2E71DEFF2E72DFFF2E72DFFF2E72
            DFFF276CDDFF397FDEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFF
            FFFFFFFFFFFF746F69FF144289FF2F76EBFF2E71DDFF2E72DFFF2E72DFFF2E71
            DDFF266ADFFF397FDFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFB1F7FAFF00E8F7FF19EBF8FF19EBF8FF18EBF8FF18EAF7FF18EA
            F7FF18EAF6FF17EAF8FF18EAF7FF18EAF7FF17EAF8FF17EAF7FF18EAF7FF19EA
            F6FF14E9F7FF17E8F5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFEFEFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF9EA1A5FF000000FF254F8AFF2F78
            EEFF2E71DEFF2269DBFF639CE6FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEDEFF3FF000000FF20395CFF307BF4FF2D71DCFF2E72DFFF2E72DFFF2E72
            DFFF2E70DEFF2E77ECFF1D447CFF12120DFF130F01FF2F74E0FF2E74E1FF2E71
            DFFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF1A64DBFF9FC1EDFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFAEACABFF061932FF307D
            FAFF2D71DDFF2E72DFFF2E72DFFF2D71DFFF286EDEFF0356D8FFD2E5F7FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFEFEFFFDFD
            FDFFFFFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFCFDFDFFEAED
            F0FFD2D6DCFFC9CED5FFC7CBD3FFCCD1D8FFDEE2E6FFF7F9FAFFFFFFFFFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFEFFFFFFFFFFFFFFFDFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFEFEFFFDFEFEFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFF4F6F7FFD8DB
            E0FFCCD0D7FFC5CAD1FFC9CED5FFD3D7DDFFE5E8EBFFFDFEFEFFFFFFFFFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFDFEFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFEFFFFFFFEFEFFB3F9FDFF00E8F7FF19EB
            F8FF19EBF8FF16EBF8FF13ECF8FF10ECF9FF10ECF9FF0FEDFAFF0EEDFBFF0EED
            F9FF0EEDFAFF10EDF9FF14EBF8FF17EAF8FF14E9F6FF17E8F6FFFFFFFFFFFEFF
            FFFFFEFFFFFFFDFEFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFEFFFBFCFCFFFAFAFBFFFBFC
            FDFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFFFDFDFEFFE3E6EAFFD1D5DBFFC8CCD4FFC7CBD2FFCED1
            D8FFD9DDE2FFF5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFFFFFFFFFFDFDFEFFE9ECEFFFD3D6DDFFC9CFD6FFC7CBD2FFCCD1D8FFDDE1
            E5FFF8F8FAFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF95989CFF000000FF2859A4FF2E76EAFF2D71DDFF1C66DBFFD6E8F5FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFACB1B4FF000000FF203658FF317A
            F7FF2D71DDFF2E72DFFF2E72DFFF2E72DFFF2E71DEFF307BF4FF1C2A3CFF1412
            0BFF1C2B3EFF307FFEFF2D70DEFF2E72DEFF2E72DFFF2E72DFFF2E72DEFF2C70
            DFFF256CDBFFDBEBF8FFFFFFFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFC7C8C8FF080806FF307AF2FF2E72DEFF2E72DFFF2E72DFFF1F69
            E0FF89A7CBFFC3C4C1FFAEB8C4FFB9BEC5FFB8BEC8FFB9BEC8FFBAC0C8FFBAC1
            C9FFBAC0C9FFBAC1C9FFBAC1C9FFBAC1C9FFBAC0C9FFB9BFC8FFB7BEC7FFB7BE
            C7FFB6BDC6FFB4BBC4FFB3B9C3FFA9B2BCFFDBDFE5FFFFFFFFFFFDFFFFFFFFFF
            FFFFF8F8FAFFC5CBD3FFADB2BEFFACB3BBFFB4BBC5FFBDC2CCFFC2C8D2FFC3CA
            D4FFBDC3CFFFB4BBC5FFC4CBD3FFEFF1F4FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFCCD0D9FFA9AF
            BBFFB4BAC3FFB6BDC6FFB8BEC8FFB8BFC8FFBAC0C8FFB9C0C9FFB8BFC7FFB6BD
            C6FFB4BBC4FFAFB7C0FFB3BAC3FFFDFEFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFD3D7DDFFB4BBC3FFA8AFB9FFAFB8C3FFB9C0CAFFC0C7D1FFC3CAD4FFC1C8
            D2FFBAC1CAFFB3BAC5FFC8CCD3FFEAECEFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFCBD1D8FFA9B0BAFFB4BB
            C4FFB7BDC6FFB8BFC8FFB9BFC8FFBAC0C8FFB8BFC8FFB8BFC7FFB5BBC5FFB2BA
            C2FFB7AFBCFF91DCE4FF05EEFCFF18EAF7FF18EBF8FF0AEFFCFFA0BEC8FFC6B5
            BDFFB3BCC5FFA9BEC6FFA6BFC7FFAABCC5FFAFBCC5FFBFB8C0FFADBAC4FF04F3
            FFFF14E9F7FF17E8F6FFFFFFFFFFFFFFFFFFC5CBD2FFABB2BFFFB7BDC6FFB9BF
            C8FFB8BFC8FFBAC0C8FFB9BFC8FFB8BEC7FFB7BDC6FFB3BAC4FFAFB6C0FFB0B6
            C0FFB0B7C1FFB4BBC5FFB8BEC7FFB9BFC8FFBAC0C9FFBAC0C9FFB5BCC5FFB0B7
            C0FFADB4BFFFABB3BDFFACB3BEFFADB4BFFFAFB6C0FFB4BAC5FFBEC4CDFFCED3
            D9FFE2E6E8FFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFECEEF1FFC2C7CFFFA9B0BBFFAEB4
            BEFFB6BCC6FFBDC4CDFFC3C9D4FFC3C9D3FFBEC6CFFFB4BBC5FFBAC0CBFFD4D9
            DFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFFFFFFFFF9FAFBFFC8CED4FFABB3BDFFADB2BCFFB4BB
            C5FFBCC2CBFFC2C9D1FFC4CAD3FFBDC4CEFFB4BBC5FFC6CBD4FFEEEFF2FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF868A8EFF000000FF295EB2FF2E75
            E6FF266BDDFF4686E0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF52565AFF080902FF213E6BFF2F7BF1FF2D71DEFF2E72DFFF2E72DFFF2E72
            DEFF2E70DFFF307CF5FF140F04FF131109FF28569DFF2E75EBFF2E71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E71DFFF296EDDFF3B7CE0FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE0E2E4FF141411FF2965
            C2FF2E74E4FF2E72DEFF2E72DFFF246CE0FF5F91D4FFA9B5C7FFADB4BFFFB3B9
            C4FFB7BCC7FFB9BEC9FFBAC0CBFFBCC2CBFFBDC2CDFFBCC1CCFFBCC1CCFFBCC1
            CCFFBDC2CDFFBCC1CCFFBBC1CBFFBBC0CBFFBAC0CAFFB9BEC9FFB9BEC8FFB2B9
            C3FFB7BDC5FFFDFEFFFFFFFFFFFFF2F4F6FFA9B0BBFFB2B9C2FFC3CBD4FFB5BC
            C7FF90969FFF6C7179FF51565DFF474B52FF51585CFF6D747BFF989DA6FFB3BA
            C6FFE1E4EBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFFE0E3E8FFC0C7CFFFADB5C0FFB4BAC4FFB7BCC6FFB9BE
            C9FFBABFCAFFBCC1CAFFBBC0CBFFBAC0CBFFBBC0CAFFC1C6D1FFCCCFD7FFECEF
            F2FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE9EAEEFFB0B8C1FFAEB5BFFFBFC4CEFFC1C9D2FF9EA3
            ACFF787F87FF575C63FF464C50FF494F55FF5A5F67FF818790FF9CA2AEFFB6BE
            CAFFD0D5DDFFFBFCFDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFE0E4E8FFBDC3CEFFADB2BDFFB4BAC4FFB7BDC7FFBABFC9FFBAC0
            CAFFBCC0CBFFBBC1CBFFBABFC9FFBEC3CDFFC7C6CEFF9DE5EAFF09EBF7FF19EC
            F9FF18EAF7FF0EEEFAFF6BCEDBFFA0C3C9FFB2B3BCFFB8BAC4FFBEBFC8FFC1C1
            CCFFBEC0C9FFADC3CDFF7ACDD6FF0DECF5FF17EDF9FF17E8F6FFFFFFFFFFFFFF
            FFFFDBDEE3FFBDC4CBFFADB4C0FFB5BAC4FFBABEC8FFBABFCAFFBBC1CCFFBCC1
            CBFFBAC0CAFFBBBFCAFFC3C8D1FFC8CDD6FFB7BEC8FFB0B6C0FFB5BAC5FFB7BC
            C7FFBABFCAFFBBC1CBFFBCC2CCFFB9BFC9FFB2B9C2FFAAB1B9FFA3A9B3FFA0A7
            B0FFA1A7B1FFA6ACB6FFAFB3BEFFBBC0CAFFC0C7D2FFB8BFCAFFD5DAE0FFFBFC
            FCFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFC9CE
            D5FFAAB0BAFFB5BCC5FFC7CED7FFABB4BEFF8B929CFF666D74FF4B5056FF474C
            52FF4F555AFF6D747CFF8F949EFFAAB2BCFFC1C8D3FFE9EBEFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8F9F9FFA7AE
            B9FFB3B9C2FFC3CBD3FFB5BDC7FF9198A2FF6D747CFF51565DFF474C52FF4F56
            5BFF6D747CFF959BA4FFB2B9C4FFE0E4EAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF0F2F5FF1F1B11FF2761BBFF2E73E6FF1560D9FFB1CDF2FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFEEEFF1FF191D21FF110D04FF25508CFF2F77
            EEFF2E71DDFF2E72DFFF2E72DFFF2E72DEFF2E73E4FF2D6ED4FF110B00FF1619
            19FF2C6BCDFF2D72E3FF2E70DFFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2068
            DBFF6EA3E7FFFFFFFFFFFBFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF7F6F9FF1F1F1AFF24549CFF2E75E8FF2E72DEFF2E72DFFF2E72
            DFFF2571E9FF1D4C93FF181710FF1E2326FF212528FF23272AFF23282AFF2529
            2CFF252A2DFF252A2DFF252A2DFF252A2DFF252A2DFF252A2DFF252A2DFF242A
            2CFF23282BFF22272AFF202628FF1E2226FF111719FF474A51FFFFFFFFFFD7DB
            E0FFAFB6BFFFBCC2CDFF585F66FF1A1E21FF050A0BFF070B0CFF06090BFF0002
            03FF000203FF020607FF0A0D0EFF22282BFF767D87FFF0F3F9FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFB8BB
            BDFF000104FF1B2022FF202527FF212729FF23282BFF24282CFF24282BFF2228
            2BFF23272AFF292E30FF25292BFF080A0CFFCACED2FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE0E3E7FFADB3BDFFB7BD
            C6FFC5CAD5FF7F868EFF272D30FF0A0E10FF050A0AFF090D0EFF010505FF0000
            02FF000100FF030707FF0E1316FF23282BFF7D858EFFC2CAD4FFFCFDFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFB7BABEFF0000
            01FF1F2325FF212529FF22282AFF23282BFF24292BFF24282BFF222729FF252A
            2DFF2D2F32FF1D1618FF1F5056FF18FFFFFF19E9F7FF18EAF7FF0EFFFFFF1970
            78FF180A0BFF1E2426FF212629FF23282BFF23282AFF162C2FFF0C292CFF1D11
            14FF1AE3ECFF17ECF8FFFFFFFFFFFDFFFFFFFFFFFFFFA3A4A5FF04090CFF1F25
            27FF222529FF23282BFF24292BFF24282BFF22282AFF22272AFF2B2E31FF2529
            2AFF161B1EFF15191CFF1F2327FF212628FF23282AFF24282CFF25292CFF2127
            29FF1C2224FF161A1CFF111618FF101517FF111517FF14191CFF1B2023FF2328
            2CFF40454AFF777E85FFAFB6C2FFC2C9D2FFEFF2F5FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFEFEFEFFBBC1CAFFADB3BDFFC1C8D2FFAFB5BEFF4B5157FF1318
            1AFF060A0BFF080B0DFF050909FF000303FF000101FF000303FF080B0DFF151B
            1DFF4C5257FFA4ACB8FFE3E7EEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFD9DDE2FFB0B5BFFFBCC2CDFF5D636AFF181E20FF060B
            0CFF060B0AFF060A0BFF000203FF000203FF030607FF090D0FFF1F2426FF777F
            88FFE9ECF3FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF4787E4FF286D
            DEFF256FDCFFE7F0FAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF8F93
            96FF000203FF130D00FF2D69C9FF2E74E4FF2E71DFFF2E72DFFF2E72DFFF2E71
            DEFF2E76EAFF295BA6FF100C00FF19222CFF307AF0FF2E72DEFF2E72DEFF2E72
            DFFF2E72DFFF2E72DFFF2E71DEFF145FDBFFB3D1F2FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF2A2A25FF1E42
            77FF2F77ECFF2E72DEFF2E72DFFF2E71DEFF2E74E7FF285CABFF171C1BFF0B06
            00FF000302FF131819FF131819FF131818FF131819FF131819FF131819FF1318
            18FF090E0EFF000203FF000000FF000000FF000001FF030808FF0E1313FF151A
            1BFF14191AFF000000FFFFFFFFFFC0C4CDFFCAD2DEFF070B0DFF060B0BFF151A
            1AFF161C1CFF000101FF151A1FFF6D7174FF5C6265FF02070CFF090F0EFF1318
            19FF000000FF42494FFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFD1D4D5FF202428FF030A0DFF000000FF1419
            1AFF131819FF131819FF131819FF131919FF141919FF000000FF00070AFF2428
            2CFFE3E5E8FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFE9EBEFFFA5ADB8FFBEC5CFFFB8BFCBFF22272AFF000304FF121616FF171C
            1DFF05090BFF000000FF51565AFF6D7275FF575D61FF000206FF020708FF1319
            18FF000203FF1F2529FFA4ADB8FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFD0D4D7FF161B20FF000000FF0A0E0EFF14181AFF1318
            19FF131819FF131819FF14191AFF0B0F11FF000000FF15161BFF1D7B82FF11FD
            FFFF12EAF7FF12EAF7FF12F9FFFF1D9198FF182125FF0C0000FF111516FF1318
            19FF141919FF10080AFF130000FF1E3439FF12EAF5FF12EAF8FFFFFFFFFFFDFF
            FFFFFFFFFFFFBABBBEFF161B1EFF000000FF141819FF131819FF131819FF1318
            19FF141919FF131819FF000000FF060B10FF4D5356FF20262AFF000000FF0D10
            11FF14191AFF131819FF131819FF141919FF14191AFF161B1BFF0E1214FF0000
            00FF000000FF000000FF000000FF020708FF0B0F11FF040808FF030809FF484D
            53FFA6ACB9FFF3F5FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5BCC5FFB0B6BFFFD2D8
            E2FF686D76FF03070AFF090F0FFF161B1BFF121818FF000000FF272E31FF6569
            6CFF6C7174FF272D30FF000000FF101515FF0A0E0FFF020607FF525962FFF8FB
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC2C8CFFFC6CC
            D9FF101518FF040908FF151A1AFF161B1CFF000202FF141A1DFF6C6E72FF6766
            69FF0A090DFF0A0C0CFF14181AFF000000FF3B4248FFFCFDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF3C7EDCFF0E5ADBFF4788DFFFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFAFCFEFF010609FF131615FF181E21FF2F78ECFF2E70
            E0FF2E72DDFF2E72DFFF2E72DFFF2D71DEFF2F78F0FF24497EFF120D00FF2039
            5EFF307CF5FF2D71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E71DFFF1561
            D8FFE4EFFAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF373834FF183356FF2F78EFFF2E72DEFF2E72DFFF2E72
            DEFF2E71DDFF2E75E8FF2976F3FF589DF9FFA39F9CFF070C0EFF161B1CFF171C
            1DFF171C1DFF171C1DFF161B1CFF090E0FFF515558FF8E9297FFA6A9AFFFAAAC
            B2FF9FA3A7FF767B7EFF2F3437FF010606FF181C1EFF000000FFD3D4D7FFC8CC
            D6FF8F96A0FF000000FF181D1EFF151B1AFF000507FF989CA1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF3D4248FF0A0E0FFF181D1EFF000405FF44474BFFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA5AAB4FF04090AFF161B1CFF171C1DFF171C1DFF171A
            1CFF020608FFBCC0C4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFF2F4F5FFACB4BEFFC1C7D1FF959CA6FF080B
            0DFF0F1416FF171B1CFF171C1DFF000304FF676A6FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6F7478FF000405FF171C1CFF111516FF000000FF989D
            A5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFF2F5F9FF3A4046FF0E1213FF171C1CFF171C1DFF171B1CFF0F1315FF282C
            31FFFFFFFFFFC9FFFFFF1DF7FFFF30ECF7FF31EBF7FF30EBF7FF30EBF7FF30F6
            FFFF2FFFFFFF4BD4DBFF140F11FF15191AFF110F10FF2E5F64FF3BFFFFFF2FFF
            FFFF2DECF9FF33E9F5FFFFFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFE4E9F0FFB2BB
            C7FF000101FF171C1CFF171C1DFF171C1DFF161B1CFF000000FFCBCED1FFFFFF
            FFFFFFFFFFFFFFFFFFFFE7EBF2FF272E32FF111616FF171C1DFF171C1DFF171C
            1DFF171B1DFF050B0CFF34393CFFC1C4C8FFFFFFFFFFFFFFFFFFD9DDE0FF7377
            7BFF13181AFF070C0DFF151A1BFF0D1112FF000304FF60656FFFEBF7FDFFD1FF
            FFFFD1F9FCFFD2FAFDFFD2FAFDFFD2FAFDFFD2FAFDFFD2FAFDFFD3FAFCFFD2FE
            FFFFC7CDD4FFAFB5BFFFC3CAD4FF43484FFF000405FF151A1AFF181D1EFF0B0F
            10FF1A1F21FFCACED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D7D9FF151A
            1EFF111415FF161C1CFF040709FF293035FFEFF2F7FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFC1C7D0FF8B959EFF040809FF171C1DFF15191BFF0206
            07FF8F9498FFFFFFFFFFFFFFFFFFE1FFFFFFEBFFFFFF3F4E53FF0C0C0DFF171D
            1EFF030607FF3C3B40FFE3FFFFFFD2FBFDFFD2FAFDFFD2FAFDFFD2FAFDFFD2FA
            FDFFD2FAFDFFD2FAFCFFCDF9FBFFF8FDFEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFDAE9F8FF68A0
            E7FFDBEAF9FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF494E52FF0A0E
            0FFF14140FFF214271FF2F77EDFF2E71DEFF2E72DEFF2E72DFFF2E72DFFF2D71
            DEFF307BF2FF213D68FF110B00FF264F8DFF2F78EEFF2E71DDFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2C6FDFFF2670DBFFEFF5FCFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF3D403CFF1526
            3EFF3079F0FF2E72DFFF2E72DFFF2E72DFFF2E71DEFF2E72DEFF2C6FDEFF2771
            DEFFF3F6F6FF212528FF121717FF171C1DFF171C1DFF171C1DFF000102FF989D
            A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5053
            59FF080C0DFF060A0CFF888C8DFFD5DBE3FF5D636BFF0B0F0EFF171C1DFF0000
            00FFB6B9BDFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE5E8F0FF1218
            1CFF14191AFF171C1DFF000203FFA1A4A6FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFCFD4DFFF2B2F
            34FF111617FF171C1DFF171C1DFF141718FF0C1215FFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFBFC5
            CCFFB6BCC5FFA7AEB8FF0F1315FF111616FF171B1CFF171B1DFF000204FF7A7E
            81FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF6A6E
            72FF040909FF171C1DFF151A1BFF000003FFB8BCC1FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF4F6F8FF989EA9FF000304FF171C
            1CFF171C1DFF161B1CFF000203FFA2A4A9FFFFFFFFFFF9FEFFFFF9FDFEFFFAFD
            FEFFFBFDFEFFFAFDFEFFFAFDFEFFFAFDFEFFFAFDFEFFFFFFFFFF696D75FF0509
            0BFF060A0BFF737D81FFFFFFFFFFFAFEFEFFFAFEFEFFFAFDFEFFFEFEFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFBBC2C9FFB7BEC9FF000000FF171D1DFF171C1DFF171C
            1DFF060B0CFF686B70FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFEFF2F6FF777E
            86FF080D0DFF171C1DFF171C1DFF171C1DFF111516FF202428FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEDF0FF42474BFF050809FF171C
            1CFF161B1CFF040506FF485357FF33F4FFFF0BEBF8FF10E8F5FF10E8F5FF10E8
            F5FF10E8F5FF10E9F6FF08EBF9FF2CE0ECFFBAB2BFFFCAD1DAFF4A5056FF0409
            09FF171C1DFF161B1CFF131818FF13181BFFE3E5E6FFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFF8FBFEFF000002FF14191AFF171C1DFF050A
            0AFF3A4044FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFF9FAFBFFC2C9D1FF656B
            73FF0B0F0FFF171C1DFF000000FFAEB2B6FFFFFFFFFFFFFFFFFFE4FBFDFF16E9
            F6FF09F1FEFF5EE0EAFF2E1F24FF121819FF171C1DFF0B0102FF1A9CA3FF10F6
            FFFF10E8F5FF10E8F5FF10E8F5FF10E8F5FF10E8F5FF11E8F5FF00E7F5FFD3F8
            FAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFCFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF8F9398FF000000FF161B1BFF140F04FF2F76E4FF2E73E2FF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2D71DEFF317CF3FF1E3654FF100800FF2B63
            BBFF2E75E6FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF296DDEFF4081
            E0FFFBFDFDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF434643FF111C25FF307AF3FF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2D70DFFF1F69DFFFC8D4E3FF44484BFF0D1112FF171C
            1DFF171C1DFF151A1AFF070D10FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF13181BFF080D0EFF51555AFFD1D8
            E2FF3F4549FF101515FF020708FF6C6F73FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFF6F9FCFF5D626AFF080D0CFF171C1DFF121718FF060C
            11FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFC9CFD8FF42464DFF0F1314FF171C1DFF171C1DFF0E11
            12FF32383BFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EBEDFFADB4BEFFCED4DFFF111619FF101415FF171B
            1CFF171C1DFF0A0F10FF2F3438FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF050B0FFF121718FF171B1DFF1217
            18FF050A0DFFF5F5F7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFECEFF0FFABB2BEFF000406FF171B1CFF171C1DFF171B1CFF000003FFC1C2
            C4FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFBCC1CAFF090E11FF0E1214FF393D3FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFCFFFFFFFEFFFFFFFFFFFFFFF6F7F8FFBDC4CDFF7E84
            8CFF04090AFF171C1DFF171C1DFF151A1CFF060C0EFFC2C4C7FFFFFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE9EDF0FF8F96A2FF06090AFF171C1DFF171C1DFF171C
            1DFF03090AFF919497FFFFFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFF323D41FF0E1010FF161B1DFF161C1EFF0C0304FF3553
            59FF19FFFFFF17E8F6FF18E9F7FF17E9F6FF17E9F6FF16EAF7FF06EFFBFF9FBE
            C7FFC9C4CFFF788089FF020506FF171B1DFF171C1DFF181D1EFF000000FFD9DD
            E0FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFF8F979BFF020608FF171C1CFF171C1DFF000305FF787B81FFFFFFFFFFFEFF
            FFFFFFFFFFFFF4F6F7FFC1C7D0FF484C52FF0E1213FF050A0BFF676C71FFFFFF
            FFFFFFFFFFFFFFFFFFFFE5FCFDFF19EAF7FF0CEAF8FF55EDF8FF7D6B73FF070C
            0CFF171C1DFF151618FF1A171AFF1AF8FFFF17EBF9FF17E9F6FF17E9F6FF17E9
            F6FF17E9F6FF18E9F7FF00E7F5FFD4F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFE
            FEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF8A8D90FF000000FF171C1EFF1310
            06FF254D8AFF307AF0FF2D70DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2D71
            DFFF307AEFFF1D314CFF120C00FF2D6FD2FF2E73E2FF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF266BDEFF5591E3FFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF454848FF0E12
            15FF307CF3FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2D71DEFF216A
            E0FFAEC3DAFF525657FF0B0F11FF171C1DFF171C1DFF101516FF313638FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFA0A6AEFF000000FF292F32FFC3C9D4FF30363AFF0C1112FF202327FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFE2E6EAFF939B
            A4FF000504FF171C1DFF181D1EFF000000FFBEC1C6FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC9CFD9FF494F
            54FF0D1111FF171A1CFF171C1DFF0C1010FF40464AFFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFBFC4CCFFC0C7
            D1FF595E66FF060A0AFF171C1DFF171C1DFF161B1BFF090C0EFFD6D8DAFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFF899098FF060B0BFF171A1DFF171C1DFF080C0EFF474C50FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFEDEFF1FFAFB7C1FF030809FF171A
            1BFF171C1DFF171B1CFF000405FFC2C4C5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF4F7FAFF292F
            34FF0E1214FF1A1F21FFF0F2F5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFE4E6EAFFBCC2CEFF494E52FF0E1213FF171C1CFF171C1DFF1216
            18FF161B1DFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8ECEEFF99A0
            ABFF030908FF171C1DFF171C1DFF161B1CFF070C0EFFBABCC0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6CF6FDFF0F0D
            11FF14171AFF171C1BFF171B1CFF120000FF239CA1FF17FBFFFF1AE9F6FF18EB
            F8FF18EBF8FF12ECFAFF37DFEBFFC3BAC1FFBEC5CFFF000002FF151A1BFF171C
            1DFF171C1DFF070C0DFF545A5EFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFF5F7FDFF1E2327FF121717FF171C
            1DFF171C1DFF000000FFECEDEEFFFFFFFFFFFFFFFFFFF2F2F5FFBDC3CCFF3238
            3CFF0C1112FF121719FFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFE6FCFDFF1CEA
            F6FF0AEDFBFF5CDCE6FFB0A2AEFF000203FF171D1DFF161D1DFF150000FF22B1
            BBFF16F6FFFF17EAF7FF18EBF8FF18EBF8FF18EBF8FF18EBF8FF00E8F6FFD6F8
            FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF8A8D
            92FF000103FF14181BFF14130EFF1D2E45FF2F7AEEFF2E70E0FF2E71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2F79EDFF1C2E46FF151106FF2E72
            DCFF2E73E1FF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF246ADDFF699E
            E4FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF494C4FFF0C0D0BFF307BF1FF2E71E0FF2E72DEFF2E72
            DFFF2E72DFFF2E72DEFF2D71DEFF226BDFFFABC1D9FF55585CFF0B1010FF171C
            1DFF171C1DFF0E1314FF42474AFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF292D31FF0F1416FFB6BC
            C7FF272D30FF000000FFA5A9AEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFFC8CED5FFA1A7B2FF020708FF171C1DFF171C1DFF080E
            0DFF676A6DFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFC9CFD8FF4B5157FF0D1111FF171B1CFF171C1DFF0B0F
            10FF444A4EFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFDFEFFFFACB3BCFFACB4BDFF0D1315FF15191AFF171C1DFF171C
            1DFF0D1212FF3E4347FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFD5DAE2FF151B1EFF141719FF171C
            1DFF171C1CFF000000FFDBDDE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB0B8C3FF03090AFF171A1BFF171C1DFF171B1BFF000507FFC3C5
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFF666D74FF070B0CFF060B0DFFC0C1C3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFD4D8DEFFB4BCC6FF272C
            2FFF131718FF171C1CFF171C1DFF0A0D10FF4C5256FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9BA3AEFF040808FF171C1DFF171C1DFF161B
            1CFF080D0EFFCDCFD3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFEFFFF4BFFFFFF517C85FF0C0909FF171C1CFF171C1CFF1618
            18FF1A0D10FF1FEDF7FF17EEFBFF19EAF7FF18EBF8FF0AEEFCFF79CCD3FFCCC6
            D0FF545A61FF090E0DFF171C1DFF171C1DFF161B1CFF080D0FFFCBCED0FFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFF6C747CFF040908FF171C1DFF171A1CFF0B0E11FF494E51FFFFFF
            FFFFFFFFFFFFEFF1F4FFB7BEC9FF252A2DFF000000FF9EA2A5FFFFFFFFFFFDFF
            FFFFFEFFFFFFFFFFFFFFE5FCFDFF1CEAF6FF04EFFDFF87CCD4FFB9B4BEFF0000
            00FF181D1EFF161C1DFF150C0EFF1F6265FF18FFFFFF18EAF7FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF00E8F6FFD6F8FAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFF5D6165FF000000FF171C1EFF131410FF181B1BFF2F77
            E9FF2E73E3FF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2F78EFFF1C2E47FF161610FF2E74E0FF2E72E0FF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF236ADCFF75A3E8FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF464949FF0C0B
            04FF3079F1FF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2D71DEFF226B
            E0FFAAC2D8FF575A5DFF0B0E10FF171C1DFF171C1DFF0D1213FF4A4F52FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFF84898DFF000000FFC9CDD3FF24282DFF12171AFFF6F6F8FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFB0B8C0FF9BA1
            ADFF000404FF171C1DFF171C1DFF0E1314FF42464AFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464B50FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFDFE1E5FFBEC4CFFF6269
            6FFF050A0AFF171C1DFF171C1DFF181D1EFF000000FFC1C4C9FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFF9FBFFFF3E4449FF0D1212FF171C1DFF171C1CFF0B1012FF515457FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03080AFF171A
            1BFF171C1DFF171B1BFF000508FFC4C6C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC1C6
            CFFF000000FF010606FF929499FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFBCC2CBFFA9B2BDFF0A0F11FF161B1CFF171C1DFF181D1DFF0000
            00FFACAEB3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE7EAEEFF9DA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF080D0FFFD7D9DCFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF48F3FEFF56D5
            E1FF29191BFF131919FF171C1DFF171C1DFF140707FF206C72FF1AFFFFFF18E9
            F7FF17EBF8FF06F1FDFFB4BAC5FFB7B9C2FF111617FF15191AFF171C1DFF171C
            1CFF111617FF282C2EFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB4B9C2FF000606FF171C
            1DFF171C1DFF161B1CFF000507FFDFE0E1FFFFFFFFFFFDFFFFFFE3E5EAFF1E23
            25FF121719FFECEDEEFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE6FCFDFF19EA
            F7FF0AEDF9FFC4BCC7FFA3A8B4FF000201FF171C1EFF161B1CFF151516FF1C38
            3CFF1CFFFFFF19EAF6FF18EBF8FF19EBF8FF19EBF8FF19EBF8FF00E8F6FFD6F8
            FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFD0D4D8FF0A1015FF05090BFF171C
            1EFF14140DFF192025FF3078E8FF2E73E5FF2E72DDFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2D71DEFF307AF0FF1C304AFF151917FF2E75
            E4FF2E72E0FF2E72DDFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2067DCFF83AE
            ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF434748FF0C0B02FF307AEDFF2E71DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2D71DFFF226BE1FFAAC2D8FF575A5CFF0B0F10FF171C
            1DFF171C1DFF0D1213FF4E5254FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE0E3E7FFF7F7
            F8FF02070AFF54585DFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFC9CDD5FFC1C7D0FF686C74FF070C0BFF171C1DFF171C1DFF1116
            17FF33383AFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFC7CCD3FFC2C7D3FF14181AFF14191AFF171C1DFF171C1DFF1419
            1AFF12171AFFF4F4F5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF6F7F9FF7E8690FF020606FF171C
            1DFF171C1DFF151A1AFF0A0F14FFE1E3E5FFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF171A1BFF000708FFC4C6
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFEFFF1F2F4FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFEFF2F9FF12181DFF0A0E0FFF373B40FFFFFF
            FFFFFAFBFBFFFBFBFCFFFBFBFCFFFBFCFCFFF6F6F7FFB2BAC4FF868D96FF0005
            05FF171C1DFF171C1DFF161B1CFF04090CFFE4E5E6FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDADDE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF4DEFFAFF37F5FFFF5F555BFF0C1010FF171B1DFF171C
            1DFF16191BFF1A1718FF1EDFE8FF18EEFAFF14EBF9FF22E6F2FFD6BEC6FF797E
            88FF010405FF161B1CFF171C1DFF171C1DFF000607FF858A8DFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFC6CBD5FF21272AFF141719FF171C1DFF171C1DFF020608FF6F73
            78FFFFFFFFFFFFFFFFFFFDFDFDFF000205FF484D50FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFEFFE5FCFDFF0AEFFCFF72CCD2FFCFC6D0FF6D757BFF070B
            0BFF171C1DFF171C1DFF161718FF1B2D30FF1EF4FFFF17EBF9FF18EBF8FF19EB
            F8FF19EBF8FF19EBF8FF00E8F6FFD6F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF7D82
            85FF000204FF111516FF161A1CFF131008FF1B2A3EFF2E73DDFF2E74E7FF2D71
            DDFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2D71
            DEFF317BF3FF1E3655FF161918FF2E74E4FF2E72DFFF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF1E65DDFF8FB8EBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF3D4143FF0D0C
            03FF307AECFF2E72DFFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2D71DFFF226B
            E1FFAAC2D8FF575A5CFF0B0F10FF171C1DFF171C1DFF0D1213FF4D5254FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB3B9C3FFECEFF1FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF94989AFFDBDCDFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE2E5E9FFACB3BDFFC5CAD6FF2329
            2CFF131718FF171C1DFF171C1DFF111617FF323639FFFEFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFEFEFFC1C8D0FF999FA9FF0C11
            11FF161B1CFF171C1DFF171C1DFF0E1314FF474B4FFFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF7F8F9FFA6AEB8FF000404FF171C1DFF171C1DFF171C1DFF000000FFAEB2
            B6FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF171A1BFF000708FFC4C6C7FFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEFF0F2FFA6AEB8FFF2F4F7FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFF4A5058FF090E0FFF010606FFCFD5E1FFB6BCC4FFB5BAC4FFB5BBC4FFB5BB
            C4FFB0B6C0FFC9CFD8FF50565CFF0B0F10FF171C1DFF171C1DFF101516FF3237
            3AFFFEFEFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF50EFF9FF1BEF
            FCFF949EA6FF000202FF171C1DFF171C1DFF171C1CFF150405FF209BA4FF16F8
            FFFF0FEDFBFF40DCE5FFDFCAD6FF343A40FF0E1314FF171C1DFF171C1DFF171B
            1CFF000000FFD8DADEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFD7DBE2FF3E4349FF0F14
            15FF171C1DFF171C1DFF121718FF181D20FFFFFFFFFFFFFFFFFFFFFFFFFF969A
            9DFFD7D9DBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFEFFDFFFFFFF47DB
            E7FFC2B5BEFFC1C7D2FF2D3235FF111617FF171C1DFF171B1DFF161718FF1A2C
            2FFF1CF3FFFF18ECF9FF18EBF8FF19EBF8FF19EBF8FF19EBF8FF00E8F6FFD6F8
            FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFF33373CFF000102FF161B1BFF161919FF120C00FF213C
            61FF307BF4FF2E73E5FF2D71DDFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2D71DEFF3079F2FF203D6BFF161613FF2D74
            E4FF2E71E0FF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF1D65DCFF94BD
            EAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF333739FF0F0F07FF3079EFFF2E71E0FF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2D71DFFF226BE1FFAAC2D8FF575A5CFF0B0F10FF171C
            1DFF171C1DFF0D1213FF4D5254FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF98A1ADFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE2E5
            E9FFABB1BDFFC4C9D2FF7F868FFF070B0DFF171C1CFF171C1DFF171C1DFF0F15
            15FF393D40FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF7F8F9FFBEC5CFFF70757CFF070C0DFF171C1DFF171C1DFF171C1DFF070C
            0EFF73777BFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFAFBFCFFB5BEC8FF0C1115FF161B
            1AFF171C1DFF171C1DFF080D0EFF595D61FFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF171A1BFF000708FFC4C6
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE6E9ECFFA7AEB9FFFEFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF848B95FF090E0FFF020807FF9EA1
            AEFFD6DDE9FFCFD5E0FFCFD5E1FFCFD6E1FFD1D8E2FFCBD2DFFF1C2123FF1419
            18FF171C1DFF171C1DFF0A0F10FF616669FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF51EFF9FF09ECF8FFADCCD6FF060606FF17191DFF171C
            1DFF171C1CFF151012FF223E42FF16FFFFFF09EEFCFF6BD1DAFFCCC2CDFF1117
            19FF141A1AFF171C1DFF171C1DFF141819FF0C1215FFEFF0F0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFE0E4EBFF555C63FF0C1111FF171C1DFF171C1DFF161B1CFF080D
            0FFFE2E3E6FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE1E5EAFFB3B4BDFFC6C9D2FF858D95FF04080AFF171C
            1DFF171C1DFF171B1CFF161617FF1B3234FF1DFAFFFF18EAF7FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF00E8F6FFD6F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFDCDEE1FF080C0FFF0A0F10FF161B
            1DFF14120CFF181D1FFF2B63B6FF307DFBFF2E71DFFF2E72DDFF2E72DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E71
            DEFF2B74ECFF28538FFF110F05FF2E74E2FF2E71DFFF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF1D64DCFF96BEE8FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFDFFFFFF25292CFF1112
            0EFF307AF0FF2E71DEFF2E72DDFF2E72DFFF2E72DFFF2E72DFFF2D71DFFF226B
            E1FFAAC2D8FF575A5CFF0B0F10FF171C1DFF171C1DFF0D1213FF4D5254FFFFFF
            FFFFFFFFFFFFFEFFFFFFFFFFFFFFE9EBEEFFBCC3CFFF40464DFF84888CFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFFCED2D9FFA7AEB9FFC0C5CEFFACB5BFFF000000FF151B
            1BFF171C1DFF171C1DFF171C1DFF0B1011FF585C5FFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF3F4F6FFC0C6D0FF444B50FF0D11
            11FF171C1DFF171C1DFF171C1DFF000404FFABAEB1FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFEFFFFBCC3CCFF21262AFF141918FF171C1DFF171C1DFF121618FF191F
            21FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF171A1BFF000708FFC5C7C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFCCD0D7FFBDC7D2FF000000FF828589FFFFFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFD5DBE2FF0D1013FF15191AFF020807FF000203FF000304FF000304FF0002
            04FF000204FF000101FF121718FF171C1CFF171C1DFF181C1EFF000000FFBFC2
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF51EFFAFF04EB
            F9FFA4D1DCFF2A292DFF121516FF171C1DFF171B1CFF151A1CFF180001FF20FF
            FFFF09F0FDFF81CFD7FFA7A1ACFF0D1213FF161B1CFF171C1DFF171C1DFF1116
            17FF35393DFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE5E9EEFF6F757EFF080C
            0EFF171C1CFF171C1DFF161C1CFF05090BFFA3A6A9FFFFFFFFFFFEFFFFFFFDFF
            FFFFFDFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFCED2D9FFAAB0BAFFBFC4
            CDFFAAB3BEFF020607FF151A1AFF171C1DFF171C1DFF171B1CFF141012FF1F4F
            52FF1AFFFFFF17EAF7FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF00E8F6FFD6F8
            FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFD6D8
            DCFF141A1DFF0D1112FF171C1CFF131109FF1E324DFF2F75E4FF2E75ECFF2D71
            DDFF2E72DEFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DEFF2E72DEFF2C71DDFF2973E4FFB0C2D3FF000000FF2F72
            DFFF2E72E1FF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF1D65DDFF92BC
            EAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFEBEDEFFF1A1E20FF15191AFF307BF4FF2E71DEFF2E72DEFF2E72
            DFFF2E72DFFF2E72DEFF2D71DEFF226BE1FFAAC2D9FF575A5CFF0B0F10FF171C
            1DFF171C1DFF0D1213FF4F5356FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9CC
            D4FFC3CAD4FF000001FF616468FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFF0F2F4FFB9C0C9FFADB3BDFFC4CA
            D3FF9EA6B0FF101417FF131719FF171C1CFF171C1DFF171C1DFF171C1DFF0002
            02FF999CA1FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF1F2F4FFC0C7D2FF252B2FFF121415FF171C1DFF171C1DFF171C1DFF0000
            00FFDADDE2FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC0C6D0FF2E3337FF1217
            17FF171C1DFF171C1DFF151A1AFF0E1315FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF161B1BFF010608FFC2C4
            C6FFFFFFFFFFFAFBFCFFFBFBFCFFEDEFF2FFB4BAC4FFAEB7C1FF000000FF9A9C
            A0FFFFFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFF9FCFFFF2E3539FF0F1214FF181D
            1DFF0C1011FF060C0CFF070C0CFF090E0DFF0C1111FF171C1DFF171C1DFF171C
            1DFF171C1DFF171B1DFF000000FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF52EFF9FF02EDFAFF95D3DEFF4A454AFF0E1212FF171C
            1DFF171C1CFF151A1CFF160405FF22D4DEFF0DF4FFFF8DCFD5FF8C8993FF0A0F
            10FF161B1CFF171C1DFF171C1DFF0D1213FF525559FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFE6EAEFFF7F858FFF060B0BFF171C1DFF171C1DFF171C1DFF0307
            0AFF898C8EFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFDFDFFFFFFFFFFFFF1F3
            F5FFBBC2CAFFADB3BDFFC3C8D1FFA6AFB8FF0F1217FF121716FF171C1DFF171C
            1DFF171C1DFF151B1CFF150303FF22929BFF16FBFFFF18EAF7FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF00E8F6FFD6F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFF0C1013FF0B1011FF161C1DFF130D00FF2346
            77FF317FFAFF2E72E3FF2E71DEFF2E71DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF2E71DDFF1A62
            DEFF6EA5E9FFFFFFFFFF000000FF2E70D6FF2E72E3FF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF1F67DCFF8CB6ECFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFD3D5D6FF0E100FFF1921
            29FF307AF2FF2E72DEFF2E72DEFF2E72DFFF2E72DFFF2E72DDFF2D70DFFF226A
            DFFFAAC1D9FF575A5CFF0B0F10FF171C1DFF171C1DFF0F1414FF42464BFFD5DA
            E1FFCCD1D7FFCBD0D6FFC0C4CDFFB3B9C2FFAEB4BFFF000203FF75797EFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFEBED
            F0FFA9B0BBFFB3B9C3FFD3DAE4FF798088FF080C0EFF121616FF171C1CFF171C
            1DFF171C1DFF171C1DFF171C1DFF000000FFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF0F1F3FFC2C8D3FF111519FF1418
            19FF171C1DFF171C1DFF171D1DFF000000FFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFC1C8D1FF353A3FFF111616FF171C1DFF171C1DFF151A1BFF0B10
            11FFE5E8EAFFFFFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF151A1CFF050A0BFF9AA1A9FFBCC1CCFFB7BCC6FFB4BAC4FFADB4
            BEFFC3C8D3FF878D97FF000000FFA6A9ADFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF6F757EFF030708FF0B1010FF51555BFF707479FF6E7377FF6569
            70FF4E545DFF0F1313FF171B1CFF171C1DFF171C1DFF0F1414FF252A2FFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF52EEF9FF01ED
            FBFF8ED4DEFF5E595FFF0C1111FF171C1DFF171C1CFF161B1CFF150708FF1EAF
            B4FF0DF9FFFF95CED9FF7A787FFF090E0EFF171C1DFF171C1DFF171C1DFF0B0F
            10FF626667FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE6EAEEFF8C929DFF0509
            09FF161B1CFF171C1DFF171C1DFF060C0BFF71747AFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFEEF0F2FFABB3BDFFB3B8C2FFD4D9E4FF7E858EFF080D
            0FFF121617FF171C1CFF171C1DFF171C1DFF171C1DFF151B1CFF180000FF1EE7
            EFFF18EFFCFF19EAF7FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF00E8F6FFD6F8
            FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF282F32FF0B10
            10FF171B1BFF130E02FF295EAEFF317BF9FF2D71DFFF2D71DEFF2E72DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E71DFFF2E71DEFF286DE0FF2B75D9FFFFFFFFFFFFFFFFFF130F06FF265E
            B3FF2E75E7FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2168DCFF7BA9
            E9FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFBCBDBFFF000000FF1C3148FF3079EFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E71DEFF2D71DEFF216ADFFFACC2D8FF57595CFF0B0F10FF171C
            1DFF171C1DFF101515FF3B4044FFCFD5E1FFC4CAD3FFC3C9D3FFC6CCD6FFD4DB
            E6FF636A72FF000000FF7E8387FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE3E6E9FFA6AEB8FFBEC5CDFFB8BEC8FF343A3FFF0001
            01FF161B1BFF171C1DFF171C1DFF171C1DFF171C1DFF171B1DFF05090BFF6267
            6AFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF0F1F4FFC2C9D5FF04070BFF161A1BFF171C1DFF171C1DFF171C1DFF0000
            00FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC2C8D3FF3B4246FF1014
            15FF171C1DFF171C1DFF161B1CFF080C10FFCCCED0FFFFFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF161B1CFF060B0BFF8289
            92FFBBC2CDFFB4BAC4FFB5BAC5FFB6BDC6FFA2ACB4FF212629FF000000FFAAAD
            B2FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB1B8C1FF060A0CFF0000
            00FFF6F7F7FFFFFFFFFFFFFFFFFFE3E6ECFFDFE6F0FF13181DFF141919FF171C
            1DFF171C1DFF020608FF868B8EFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF52EFF9FF01EDFAFF8ED3DDFF6D686FFF0A0E10FF171C
            1DFF171C1DFF171C1DFF150B0AFF1F9093FF0DFEFFFF96CFDBFF6D6C71FF0A0E
            0FFF171C1DFF171C1DFF171C1DFF070B0DFF787C80FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFE3E7EBFF949CA6FF030707FF171B1DFF171C1DFF171C1DFF0A0F
            0FFF565A5DFFFFFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFE9EBEDFFA4ACB7FFBCC2
            CCFFBBC1CEFF343A3FFF000202FF161B1CFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF140D0EFF216064FF19FCFFFF17EBF8FF19EBF8FF19EBF8FF19EB
            F8FF19EBF8FF19EBF8FF00E8F6FFD6F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF828689FF000103FF16191BFF14120AFF28569EFF2F7AF2FF2D71
            DDFF2E71DEFF2C70DEFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E70DFFF2E71DEFF2B6FDDFF1561D9FFD2E8
            F7FFFFFFFFFFFFFFFFFF5F5C58FF18407EFF2F78EEFF2E71DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF236ADCFF72A3E6FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF8F9397FF000000FF213A
            60FF2F78EFFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF2D71DEFF2069
            DFFFC3D0DDFF53585BFF0B0F10FF171C1DFF171C1DFF151A1BFF151B1CFF4B52
            58FF4D535AFF4C5358FF4B5259FF383E43FF0D1213FF020706FF808589FFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF2F3F5FFAFB6C0FFBEC3
            CCFFA4ABB5FF1A1F21FF0A0F10FF171B1CFF171C1DFF171C1DFF171C1DFF171C
            1DFF161B1CFF111617FF0F1215FFF1F3F5FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF2F3F5FFC4CBD7FF000104FF171C
            1CFF171C1DFF171C1DFF171B1DFF000000FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFCFDFDFFC1C8D0FF3D4348FF0F1415FF171C1DFF171C1DFF161B1CFF080D
            0EFFC3C5C8FFFFFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF161B1CFF151A1BFF131819FF181D1FFF171C1EFF171C1EFF171C
            1EFF101516FF121616FF000000FFADB1B5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFDEE3E9FF21272BFF000000FF9FA4A9FFFFFFFFFFFFFFFFFFBBC1
            CAFFB8C1CDFF000000FF171C1DFF171C1DFF161B1CFF070C0EFFBCBEBFFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF52EFF8FF01ED
            FBFF95D2D9FF706E76FF0A0E0FFF171C1DFF171C1DFF171C1DFF160C0CFF1F82
            88FF0BFEFFFF8CD4DCFF6C656CFF090E0FFF171C1DFF171C1DFF171C1DFF040A
            0AFF8A8E92FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFDEE1E7FF979FA9FF0307
            07FF171B1DFF171C1DFF171C1DFF0C1111FF4D5256FFFFFFFFFFFEFFFFFFFFFF
            FFFFF3F4F6FFB0B7BFFFBCC3CCFFA7ACB8FF1E2225FF0A0F0FFF171C1DFF171C
            1DFF171C1DFF171C1DFF171B1DFF161B1DFF151618FF19080AFF20EDF7FF18EE
            FBFF18EAF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF19EBF8FF00E8F6FFD6F8
            FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFE3E5E6FF080C0EFF161B1CFF120F
            02FF254981FF307DF9FF2D70DFFF2E72DDFF2E72DEFF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E71DFFF2E71
            DEFF2D6FE0FF115ED8FFA2C3EDFFFFFFFFFFFEFFFFFFFFFFFFFFA1A09CFF0D26
            4AFF307CF6FF2D71DDFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF256BDEFF6299
            E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFF494F53FF070600FF244980FF2F77ECFF2E71DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2C6FDEFF246DDBFFE0E6E5FF50555BFF0B0F10FF171C
            1DFF171C1DFF171C1DFF151A1BFF0A0F0EFF090E0CFF090C0DFF090D0EFF0F13
            14FF171D1DFF030808FF83878BFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFBBC0CAFFB7BDC6FFBAC2CEFF020607FF101514FF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1CFF151B1BFF000000FFB2B6B9FFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF6F6F7FFC8CEDAFF000306FF171B1BFF171C1DFF171C1DFF171C1CFF0000
            00FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8F8FAFFC0C5D0FF3B4146FF1014
            15FF171C1DFF171C1DFF161B1BFF070E0EFFC0C2C4FFFFFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF171C1DFF171C1DFF0F14
            15FF080D0DFF080D0DFF080D0DFF080D0EFF0E1314FF181D1EFF000000FFB1B4
            B7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF444B53FF0207
            07FF464C4FFFFFFFFFFFF9FAFAFFBCC3CCFF868E97FF020505FF171C1DFF171C
            1DFF14191AFF13181AFFF8FAFEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFF52EFF8FF02EDFAFFA0CED7FF6E6D75FF0A0F0FFF171C
            1DFF171C1DFF171C1DFF160D0DFF1F7C84FF09FEFFFF80D9E2FF6B666DFF0A0F
            10FF171C1DFF171C1DFF171C1DFF040908FF939499FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFD7DBE1FF969DA7FF030807FF171B1DFF171C1DFF171C1DFF0C10
            12FF484D52FFFFFFFFFFFEFFFFFFFFFFFFFFBFC5CDFFB4BBC5FFB9BECBFF0C0F
            12FF0E1313FF171C1DFF171C1DFF171C1DFF171C1DFF171C1CFF171C1DFF151A
            1AFF170000FF23ACAFFF17FCFFFF18EAF7FF18EBF8FF18EBF8FF18EBF8FF18EB
            F8FF18EBF8FF18EBF8FF00E8F6FFD6F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFF4B5155FF060A0BFF13120CFF20385BFF307CF8FF2E71DEFF2E71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DEFF2E71DFFF2B6FDDFF0E5DD9FFAECCF1FFFFFFFFFFFCFF
            FFFFFEFFFFFFFFFFFFFFFBFBFBFF0E1725FF2E78EDFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF276CDEFF4B89E2FFFFFFFEFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF000307FF12120BFF285A
            A5FF2E76E8FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF266CDDFF468A
            E4FFEFEBE5FF4D545BFF0B0F10FF171C1DFF171C1DFF171C1DFF0C1112FF191E
            21FF1C2024FF1A2023FF1B2123FF060B0EFF0C0F11FF030909FF81858AFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF0F1F4FFA8AFBAFFBFC5CFFF1418
            1BFF121717FF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1CFF0F14
            15FF000000FFC1C4C7FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFCFCFFCFD5DFFF070C0EFF1519
            1AFF171C1DFF171C1DFF171B1DFF000000FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEFF1F4FFBBC2CCFF353B3FFF111616FF171C1DFF171C1DFF161B1BFF090D
            0FFFCBCCCEFFFFFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF161B1CFF0C1112FF424749FF6C6F72FF686C6EFF686C6FFF6A6D
            70FF41454AFF0B0F0FFF000100FFACAFB3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF9FA4B0FF000000FF1D2023FFFFFFFFFFE8E9EEFFBDC5
            CFFF4B5359FF0D1213FF171C1DFF171C1DFF0D1212FF3D4246FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFFFFFFFFFFFFFF4DEFF8FF03EB
            F7FFAFCAD4FF676A70FF0A0F10FF171C1DFF171C1DFF171C1DFF160C0CFF1C84
            8AFF0BFCFFFF56E2ECFF7F6D74FF080E0EFF171C1DFF171C1DFF171C1DFF0407
            08FF909598FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCDD2D9FF8F949EFF0508
            0AFF171B1DFF171C1DFF171C1DFF0A0F10FF54585BFFFFFFFFFFFFFFFFFFEEEF
            F2FFAAB2BBFFC2CAD5FF15191DFF101415FF171C1CFF171C1DFF171C1DFF171C
            1DFF171C1DFF161C1DFF121315FF140000FF20B4BAFF13FFFFFF16E7F5FF16E8
            F6FF15E9F6FF15E9F5FF15E9F6FF15E9F5FF15E9F6FF16E9F6FF00E7F5FFD3F8
            FAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFF8F8FCFF000000FF161819FF161611FF307A
            EEFF2E71E4FF2E72DDFF2E71DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DEFF2E72DFFF256ADCFF1C66
            DBFFB7D4F2FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF4D4F
            52FF1F5DBEFF2E74E3FF2E71DFFF2E72DFFF2E72DFFF2E72DFFF2B6EDDFF3277
            DDFFF3F9FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFD4D7DCFF000101FF151510FF2D6BCCFF2E73E4FF2E72DEFF2E72DFFF2E72
            DFFF2E72DFFF2E72DEFF1C64DCFF8CB9F1FFE6E5E1FF4E545BFF0B0F10FF171C
            1DFF171C1DFF0F1415FF414449FFF7F8F9FFF5F5F6FFF3F4F4FFF4F5F5FFF4F5
            F6FF323840FF000001FF7F8387FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFCBCED6FFC3C9D3FF585E65FF050A0AFF171C1DFF171C1DFF171C1DFF171C
            1DFF171B1DFF171D1EFF040909FF1E2226FFCBCED1FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFD8DDE5FF181D21FF131617FF171C1DFF171C1DFF171C1DFF0000
            00FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFFB6BDC7FF2C3136FF1318
            17FF171C1DFF171C1DFF151A1BFF0A0F11FFDEDFE3FFFFFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF161B1CFF000406FFCBCC
            CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF414851FF000000FFA9AC
            AFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFDCE0E9FF0000
            03FF090E10FFCCCECFFFDBDFE5FFB5BCC7FF2A3033FF131718FF171C1DFF171C
            1DFF000203FF979CA0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFCFEFEFFFFFEFEFF5FEFF8FF25E7F2FFBCC8CFFF595D64FF0C1011FF171C
            1DFF171C1DFF171C1DFF120A0BFF299599FF20FAFFFF43ECF6FF8E7B85FF090E
            0EFF171C1DFF171C1DFF171C1DFF040A09FF898C90FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFC5CBD4FF81868FFF060A0BFF171B1DFF171C1DFF171C1DFF080D
            0CFF686D72FFFFFFFFFFFFFFFFFFCFD3D9FFC0C6D0FF5E666DFF050809FF171C
            1DFF171C1CFF171C1DFF171C1DFF171A1DFF181D1DFF06090BFF1B1B1FFF2FCE
            D2FF22FCFFFF26E9F5FF25EAF6FF25EAF6FF25EBF6FF25EAF6FF25EAF6FF25EB
            F6FF25EAF6FF25EAF6FF0FE8F5FFD7F9FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF8B8E
            92FF04080AFF14120AFF26518EFF2F77EEFF2E71DEFF2E72DDFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DEFF2E71E0FF1A64DCFF2E75DCFFD7EAF7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFC4BFB7FF08377CFF2F76EBFF2D71DEFF2E72
            DFFF2E72DFFF2E72DEFF2D70DFFF1967D8FFEBF2FBFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF7E7F82FF070A0BFF151715FF317C
            F5FF2D72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E71DFFF1764DAFFC7DE
            F7FFD9DCE1FF4E545BFF0B0F10FF171C1DFF171C1DFF0D1213FF4E5356FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E96A1FF000000FF797D82FFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFEFEFFBFC4CCFFB1B8C1FF111516FF1518
            1AFF171C1DFF171C1DFF171C1DFF171C1CFF14181AFF000000FF5B6064FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE5E8EFFF303539FF1014
            13FF171C1DFF171C1DFF171C1DFF000000FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFDEE2E7FFB2B8C4FF1D2024FF14191AFF171C1DFF171C1DFF151A1BFF0C11
            13FFF8F9FDFFFFFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF161A1BFF000608FFC5C7C8FFFFFFFFFFFDFFFFFFFDFFFFFFFEFF
            FFFFFFFFFFFFA6AEB7FF000000FFA3A5A9FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFF8FCFFFF2A3135FF000000FFA2A5A7FFCDD2DAFFACB2
            BCFF0D1213FF161B1BFF171C1DFF171C1DFF000000FFDDDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFF4F1
            F2FFBDC1CCFF454B50FF0D1213FF171C1DFF171C1DFF171C1DFF010607FFBDBA
            BBFFFFFFFFFFFFFFFFFF898E98FF0B1011FF161B1CFF171C1DFF171C1DFF070C
            0DFF76797DFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFDFEFFC2C8D2FF6D747CFF090E
            0EFF171A1DFF171C1DFF171C1DFF030709FF85888BFFFFFFFFFFFFFFFFFFC0C5
            CEFFB0B7C3FF151A1CFF151A1BFF171C1BFF171C1DFF171C1DFF171C1DFF1419
            1AFF000000FF55595DFFF8FDFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFF
            FEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFF3C4144FF0D1110FF181D21FF317DF8FF2E72
            DEFF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DEFF2E72DEFF2E72DFFF296DDEFF115DD9FF73A6E6FFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFF3E4B5BFF2A78F8FF2E71DCFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF125D
            DCFFC1DAF5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFF22282CFF0F0E0AFF1F3552FF2F7DF9FF2E70DEFF2E72DFFF2E72DFFF2E72
            DFFF2E72DEFF2A6EDEFF3578DEFFF5FCFEFFD5D9DFFF4E545BFF0B0F10FF171C
            1DFF171C1DFF0D1213FF4D5254FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFF000304FF686D72FFFFFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFF9F9
            FAFFBEC4CFFF747B82FF060B0CFF171B1DFF171C1DFF171C1DFF171C1DFF0B11
            11FF0C1113FFBEC1C5FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFF525962FF090E0EFF171C1DFF171C1DFF181D1DFF0000
            00FFFBFDFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFC7CCD3FFB0B6C1FF080C0EFF161B
            1CFF171C1DFF171C1DFF121717FF191D21FFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEDEEF1FFB1B8C3FF03090BFF171A1BFF171C1DFF171A1BFF000708FFC4C6
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF000000FF8C8E
            93FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF676E
            76FF000405FF393D43FFD4DBE5FF888D97FF000403FF171C1CFF171C1DFF1217
            18FF262B2FFFF7F8FAFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFD6D9DFFFBEC4CEFF232A2DFF121615FF171C
            1DFF171C1DFF171C1DFF000000FFF7F9FCFFFFFFFFFFFFFFFFFFC2C8D0FF0B11
            12FF161B1CFF171C1CFF171C1DFF0B1012FF626466FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFEDEFF1FFBDC4CFFF52575FFF0D1212FF171C1DFF171C1DFF161C1CFF050A
            0BFFA3A5A8FFFFFFFFFFFDFDFDFFBBC1CCFF7B838CFF040908FF171C1CFF171C
            1DFF171C1DFF171C1DFF0C1012FF050B0EFFBDC0C4FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF4F4F4FF0A0F
            14FF110E06FF254D88FF2F78F0FF2D71DDFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DFFF2E72DFFF2E72DEFF2E71DEFF2E70DFFF2E72DEFF1F66DBFF2D73
            DBFFBEDAF3FFFFFFFFFFFFFFFFFFFCFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFC6C0B7FF0A50B8FF2F73E4FF2E72
            DEFF2E72DFFF2E72DFFF2E72DEFF1E65DCFF76A7E9FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFC7C9CDFF000000FF141105FF28589FFF2E75
            EAFF2E72DEFF2E72DFFF2E72DFFF2E72DFFF2E72DEFF2268DEFF689EE4FFFFFF
            FFFFD1D7DFFF4E545BFF0B0F10FF171C1DFF171C1DFF0D1213FF4D5254FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF1A1D21FF686A6EFFFFFF
            FFFFFFFFFFFFFEFFFFFFFFFFFFFFF7F8F9FFC4CBD5FF444A50FF0C1111FF171C
            1DFF171C1DFF171C1DFF101416FF1A2023FFE4E5E7FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFEFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF8A8F99FF080D
            0EFF161B1CFF171C1DFF171C1DFF000000FFD2D5D9FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFB2B8C3FF9CA4ADFF000304FF171C1DFF171C1DFF171C1DFF0A0F0FFF4F54
            58FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFEDEEF1FFB1B8C3FF03090BFF171A
            1BFF171C1DFF171A1BFF000708FFC4C6C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFF373B3FFFB6B9BBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFA8AEB9FF0B0F11FF000102FFDAE3F0FF4D52
            57FF0C1011FF171C1CFF171C1DFF0B1011FF595D61FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB5BB
            C4FFBDC4D0FF030809FF161A1BFF171C1DFF171C1DFF131719FF090E12FFFFFF
            FFFFFEFFFFFFFFFFFFFFF6FAFEFF1B2024FF121618FF171C1CFF171C1DFF0D12
            13FF4D5154FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFDDE1E6FFB8BFC9FF383D41FF1015
            16FF171C1DFF171C1DFF161B1CFF090D0FFFD9DBDFFFFFFFFFFFFCFCFDFFC1C9
            D3FF494F55FF0B1010FF171C1DFF171C1DFF171C1DFF0E1315FF1B2124FFDCDD
            DFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE7E7E9FF000000FF161610FF2D6DCFFF2E72E3FF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DDFF2E70
            DFFF2D6FE0FF155FDCFF4E8DE1FFF4F9FBFFFFFFFFFFFCFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF4369A2FF236BE0FF2E72DFFF2E72DFFF2E72DEFF2E70E0FF296E
            DDFF3B7EDFFFFFFFFFFFFEFEFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF4245
            4AFF0C0F11FF161916FF2D6DD4FF2E73E2FF2E72DEFF2E72DFFF2E72DFFF2E72
            DFFF2F71DFFF0856D6FFDDEFFAFFFFFFFFFFCFD7DFFF4E545BFF0B0F10FF171C
            1DFF171C1DFF0D1213FF4D5254FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFEEEEF0FFE4E7EAFFB7BEC7FFFBFBFCFFFEFFFFFFFFFFFFFFF8F8
            FAFFCCD2DCFF242B2FFF101516FF171C1DFF171C1DFF161B1CFF000000FFF2F3
            F5FFFFFFFFFFFDFFFFFFFEFFFFFFFDFEFFFFFFFFFFFFC9CDD4FFD2D6DCFFFFFF
            FFFFFEFEFEFFBEC3CBFFE1E4E7FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE3E6EAFFB9C0
            C9FFFEFDFDFFFFFFFFFFD6DAE0FF060C0DFF161B1CFF171C1DFF171C1DFF0206
            06FF9DA0A3FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFF1F3F4FFB8BEC9FF707780FF050A0AFF171C
            1DFF171C1DFF171D1EFF000000FFA9ADB0FFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFECEEF0FFB1B8C3FF03090BFF171A1BFF171C1DFF171A1BFF000708FFC4C6
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFC3CA
            D2FFF0F1F3FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFEAED
            F4FF12181BFF000304FFA3ADB8FF23282BFF131719FF171C1BFF171C1CFF0003
            04FF9EA1A5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEEFF9CA4AFFF030808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE8EAEDFFB7BDC7FF949BA5FF000303FF171C1DFF171C
            1DFF171B1CFF04090AFF676B71FFFFFFFFFFFDFFFFFFFEFFFFFFFFFFFFFF545A
            62FF070A0BFF171C1DFF171B1DFF121516FF2C3235FFFBFCFCFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFBEC3CDFFB7BDC8FF181E20FF15191AFF171C1DFF171C1DFF131819FF1013
            16FFFFFFFFFFFFFFFFFFFCFCFDFFC9D1DCFF292F33FF101516FF171C1DFF171C
            1DFF151B1BFF000000FFDEDFE2FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFCBD0D7FFCFD3DAFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFBABDC0FF0000
            00FF1D2B3EFF2F77EBFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DDFF2E70DFFF2E71DEFF2B6EDFFF1664D9FF98C2EAFFFFFFFFFFFFFF
            FFFFFEFFFFFFFBFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFECF3F2FF1D66D8FF2C70
            DFFF2E71DEFF2E72DFFF2E72DEFF2D70DEFF206BDAFFCFE3F5FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFFB5B7BBFF000406FF141412FF1F3654FF307AEFFF2E71
            DEFF2E71DFFF2E72DFFF2E72DFFF2E72DEFF256ADFFF498BE0FFFFFFFFFFFFFF
            FFFFD1D6DFFF4E555BFF0B0F10FF171C1DFF171C1DFF0D1213FF4D5254FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCFD3DAFFB1B8
            C2FFFFFFFFFFFFFFFFFFFEFFFFFFFDFCFCFFD5DBE4FF191E22FF131818FF171C
            1DFF171C1DFF020809FF8E9195FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFA0A7B3FFD4DAE0FFFFFFFFFFFFFFFFFFB7BEC7FFC8CFD7FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFC6CBD2FFB6BEC7FFFFFFFFFFFFFFFFFFFFFFFFFF3A40
            46FF0C1011FF171B1DFF171C1DFF0A0F10FF62676AFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC9CD
            D4FFC6CDD7FF32373BFF101415FF171C1DFF171C1DFF151A1AFF0B1014FFE3E4
            E5FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFECEDF0FFB1B8C3FF03090BFF171A
            1BFF171C1DFF171A1BFF000708FFC4C6C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFDCDFE3FFAAB2BDFFFFFFFFFFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF4C525BFF060A09FF31353BFF191E
            20FF161B1DFF171C1BFF181D1DFF000000FFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE6E8ECFF9DA4
            AFFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFB8BEC7FFC4CB
            D5FF44484CFF0D1213FF171C1DFF171C1DFF161A1BFF03080AFFCACCCEFFFFFF
            FFFFFDFFFFFFFEFFFFFFFFFFFFFFC8CCD0FF000002FF171C1DFF171C1DFF151A
            1BFF000307FFEDEDEDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFBFCFCFFAEB5BFFFA1A7B2FF000202FF171C
            1DFF171C1DFF171C1DFF020807FF72767BFFFFFFFFFFFEFFFFFFFEFEFEFFD4DB
            E5FF1E2327FF121617FF171C1DFF171C1DFF060A0BFF85898EFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFA9B0BAFFCFD5DDFFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF9DA1A7FF000000FF213E66FF307BF2FF2D71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E71DFFF2E72DDFF2B6DE1FF1965
            D7FFC8E1F7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFF8DB8EAFF1861DAFF2E71E0FF2E72DEFF2E72DEFF2E72
            DFFF1D66DCFF7CAEE9FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF0D1115FF1015
            16FF130C00FF2B66BFFF2E75E7FF2E71DEFF2E72DFFF2E72DFFF2E72DEFF2D71
            DFFF1963DAFFC0DBF4FFFFFFFFFFFFFFFFFFCFD5DEFF4E555CFF0B0F10FF171C
            1DFF171C1DFF0D1213FF4D5254FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFEFEFFBCC3CBFFABB2BEFF181D21FFC3C4C6FFFFFFFFFFFFFF
            FFFFDFE3EBFF20272BFF111616FF171C1DFF151A1AFF12181AFFE9EBEDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFDCDFE3FFBAC1CBFF6D737CFF3137
            3AFFFFFFFFFFD4DAE0FF40464CFF575A5EFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFCACFD8FF4B5158FF0D1211FF171B1CFF171C1DFF0B0F
            10FF464C51FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFEFEFFC0C6CEFF9A9F
            AAFF171B1EFFD4D5D7FFFFFFFFFFBEC0C5FF000103FF171C1CFF171C1DFF1217
            17FF2B3134FFFDFDFEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFF6F8F9FFB1B7C1FFADB5BFFF151A1BFF15191BFF171C
            1DFF171C1DFF0C1012FF4C4F53FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFECEDF0FFB0B7C3FF04090BFF171A1BFF171C1DFF171A1BFF000708FFC4C6
            C7FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCBD1D8FFACB4
            BFFF1D2125FF979A9EFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF959CA4FF000304FF131819FF161B1BFF161B1CFF171C1DFF121717FF1218
            1EFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFE5E8ECFF9DA3AFFF040808FF171C1DFF171C1DFF161B
            1CFF090D0FFFDBDEE0FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFF
            FFFFFFFFFFFFD3D6DCFFB0B7C0FFACB2BCFF111518FF151A1BFF171C1DFF171C
            1DFF0D1213FF383D41FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFF363A3FFF0F1415FF171C1DFF181D1EFF000000FFB2B6B9FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCCD1
            D7FFC3C9D4FF585E65FF0A0E0EFF171C1DFF171C1DFF161B1CFF000507FFD5D6
            D7FFFFFFFFFFFEFFFFFFFFFFFFFFE4E9F1FF24292DFF101516FF171C1DFF161B
            1BFF050B0CFFF0F2F5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFDEE2
            E6FFBAC1CBFF767B82FF353A3EFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF91959AFF0000
            00FF285395FF2E78EDFF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E72DFFF2E72
            DFFF2E72DEFF2D70DFFF145FD9FFBFDBF4FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFCFFFFFF2F77
            DCFF296DDEFF2E72DEFF2E72DFFF2E72DFFF2D70DFFF115FD7FFF9F5EAFFFFFF
            FFFFFCFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFFFFFFFFF505559FF070A0CFF151614FF1A2530FF307CF7FF2E71DDFF2E72
            DFFF2E72DFFF2E72DFFF2E71DFFF2168DCFF4788DFFFFFFFFFFFFFFFFFFFFFFF
            FFFFCDD3DDFF4E555AFF0B1010FF171C1DFF171C1DFF0D1213FF4D5254FFFFFF
            FFFFFFFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFFFFFFFFECEFF0FFB3BAC4FF8289
            92FF000000FFB4B6B9FFFFFFFFFFFFFFFFFFF8FBFFFF2E373CFF0F1313FF171C
            1DFF131819FF222629FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFEFFFFFFFF
            FFFFB9BFC8FFC3CAD4FF21262AFF000306FFFFFFFFFFE9ECF2FF3C4349FF0D12
            15FFEEEFF1FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFCACFD8FF4B51
            58FF0D1211FF171B1CFF171C1DFF0B0F10FF464C51FFFFFFFFFFFDFFFFFFFDFF
            FFFFFFFFFFFFF2F3F4FFB6BDC7FF757B83FF000000FFC2C5C6FFFFFFFFFFFFFF
            FFFF363A3EFF0F1313FF171C1DFF171C1DFF000000FFE3E5E7FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC9CDD4FFBABF
            CAFF7A8188FF070C0CFF171B1DFF171C1DFF181D1EFF000000FFD0D4D7FFFFFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFEAECEFFFAFB7C1FF040A0AFF171A
            1BFF171C1DFF171A1BFF000708FFC4C6C7FFFFFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFFB4BBC4FF9FA7AFFF000000FF7B7F82FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFC7CDD4FF111619FF14191BFF171C
            1DFF171C1DFF171C1DFF050A0AFF6C7176FFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFE0E3E8FF9AA2
            ACFF030808FF171C1DFF171C1DFF161B1CFF090D0FFFDBDEE0FFFFFFFFFFFEFF
            FFFFFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFD8DCE0FFACB2BBFFCED5DEFF4B52
            59FF090C0DFF171C1CFF171C1DFF171C1DFF000000FFD0D3D4FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFC4C7CAFF000000FF181C1EFF171B
            1CFF0C1011FF454B4DFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFFFFFFFFF5F7F8FFADB4BEFFC0C4D1FF1C2124FF141919FF171C
            1DFF171C1DFF0D1313FF3E4245FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFF8FC
            FFFF373F44FF0D1212FF171C1DFF131819FF15191DFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFB8BFC7FFC0C5D1FF292D31FF0A0F13FFFAFA
            FCFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF95999FFF000000FF2C62B2FF2E76E9FF2E71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF2E72DEFF2E72DEFF1662DBFF98BFEDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFFC2C5C7FFE8E9EBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFDAEBF7FF0757D7FF2E71DFFF2E72DFFF2E72
            DFFF2E71DDFF2A75EDFF1D4073FFD8D2CBFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF51565BFF000000FF161A1CFF1410
            06FF2B67C3FF2E75E5FF2E72DFFF2E71DFFF2E72DEFF2E72DEFF2C6FDEFF1E69
            DCFFEDF5FBFFFFFFFFFFFFFFFFFFFFFFFFFFC2C9D3FF4C5259FF0B1011FF171C
            1DFF171C1DFF0D1213FF4E5354FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFCFDFEFFB2B8C3FFC7CDD6FF3D4449FF010508FFC6C8CBFFFFFFFFFFFEFF
            FFFFFFFFFFFF696E77FF050A0AFF171C1DFF131819FF232829FFFFFFFFFFFEFF
            FFFFFDFFFFFFFEFFFFFFFFFFFFFFD6DADFFFB0B6C1FF9CA3ACFF070B0BFF1218
            1DFFFFFFFFFFFAFCFFFF6D737CFF000000FFA9ACAEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFCBD0D8FF4B5158FF0D1211FF171A1CFF171C1DFF0B0F
            0FFF474D51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCC1CBFFC1C8D2FF4248
            4DFF000405FFC4C5C8FFFFFFFFFFFFFFFFFFE2E4E8FF000000FF171C1DFF171C
            1DFF080E0EFF4F5258FFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFD5D9DFFFADB3BDFFD3DAE5FF0D1115FF131819FF171C1DFF171C
            1DFF070C0EFF44494EFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFE2E6EAFFAEB6C1FF030809FF171A1BFF171C1DFF171B1BFF000608FFC6C8
            C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D5DAFFBAC0CBFF737C
            83FF000000FF85898CFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFF3F6FBFF363B42FF101315FF171C1DFF171C1DFF161B1CFF03090AFFB3B4
            B7FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFFCED3D9FF9CA2ACFF040809FF171C1DFF171C1DFF161B
            1CFF090D0FFFDCDFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9FAFFC5CB
            D2FFAAB1BBFFC3CBD4FF879099FF010605FF171B1CFF171C1DFF171C1DFF0106
            07FF62676CFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF41464AFF070C0EFF171B1CFF151B1CFF090D10FFDCDEE0FFFFFF
            FFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFEFEFFB3BAC3FFBFC4
            CEFF7A8188FF060B0BFF171C1DFF171C1CFF171C1DFF000000FFE4E6E8FFFFFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF737982FF010707FF171C1DFF1318
            19FF151B1DFFFFFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFDADEE3FFB1B5
            C0FFA2A9B2FF050A0AFF1D2226FFFDFDFEFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFACB0B5FF0000
            00FF2D69C7FF2E75E5FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E70DFFF2E72
            DEFF256ADEFF4F8DE0FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF989A9EFF000000FF0006
            09FFF4F5F4FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF89B7EBFF1862DAFF2E71DEFF2E72DEFF2E71DEFF2D71E0FF2870E2FF0915
            25FF7E7F7CFFE9EAECFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F9FFC5C7CAFF171B
            1FFF070C0DFF171B1DFF131007FF23436FFF2F7CF4FF2E71DEFF2E71DEFF2E71
            DEFF2E71DEFF2E71DEFF0F5DD9FFB0CEF0FFFFFFFFFFFFFFFFFFFDFDFEFFDADE
            E2FFC1C8D3FF43494FFF0D1212FF171C1DFF171C1DFF0E1314FF494D51FFF6F8
            FBFFECEFF2FFECEEF2FFE7EAEDFFD1D5DCFFAEB5C0FFB7BDC6FFBFC5CFFF0001
            02FF0E1215FFD0D3D5FFFFFFFFFFFEFFFFFFFFFFFFFFCFD1D6FF070C0EFF161B
            1AFF14191BFF141A1BFFEFF0F4FFFFFFFFFFFFFFFFFFFFFFFFFFDDE0E5FFADB3
            BDFFCFD5E0FF3A3E44FF06090AFF262C2EFFFFFFFFFFFFFFFFFF8C929EFF0105
            06FF191E21FFE7EDF3FFEBEDF1FFECEEF1FFECEFF2FFE8EAEEFFC2C8D2FF4C53
            59FF0D1111FF171B1CFF171C1DFF0C1011FF42484DFFFFFFFFFFECEEF2FFE6E8
            EBFFBAC0C9FFB2B8C2FFC5CCD6FF070A0BFF040A0BFFC0C1C4FFFFFFFFFFFEFF
            FFFFFFFFFFFF797C82FF010505FF171C1DFF16191CFF070A0DFFADB3BBFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFD7DBE1FFACB1BCFFC3CAD4FF6C73
            7CFF06090AFF171C1DFF171C1DFF121718FF080E11FFE9EBEEFFFFFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBEC4CCFFB0B7C1FF000505FF161B
            1CFF171C1DFF161A1CFF020608FFB9BCBFFFF4F6F9FFEBEEF1FFECEDF1FFDFE2
            E7FFBBC1C9FFAEB4BEFFD1D6E2FF2C3034FF000405FF898D90FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFDFFFFFF6C747CFF05090AFF171C
            1DFF171C1DFF14191AFF13171AFFE9EBEDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFF5F6F7FFE3E5E9FFB9BFC9FF939A
            A3FF060A0AFF171C1DFF171C1DFF161B1CFF0A0D10FFCDD1D5FFF7F8F9FFEFF0
            F2FFE1E5E8FFC0C6CFFFB0B6BFFFB1B7C1FFC7CDD7FF9199A2FF040809FF151A
            1BFF171C1DFF171C1DFF070B0CFF262B30FFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFECEEF0FF0D1115FF1116
            16FF171C1DFF0B1010FF33393EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF5F7F8FFB3B9C3FFB4BAC4FFC6CDD7FF0A0E10FF131619FF171C1CFF171C
            1CFF010507FF74767BFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFD4D7D8FF0A0F11FF16191BFF161A1AFF060A0DFFF7F9FCFFFFFFFFFFFFFF
            FFFFFFFFFFFFDFE3E8FFADB4BEFFCBD2DBFF424950FF050A0BFF2B2F35FFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFD3D5D9FF000000FF2F6CCCFF2E75E5FF2E71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E71DFFF2E71DEFF0E5BD8FFD5EBF7FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF343A3DFF0C1113FF000000FFFCF8F2FFFFFFFFFFFCFEFEFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF5F99E4FF1761DBFF2F72
            DFFF2E72DEFF2E72DEFF2E76E8FF2B69CDFF000000FF0F1112FF393D40FF4D53
            55FF464B4EFF252A2EFF000002FF111518FF161A1BFF131109FF1E2F47FF3079
            EFFF2E71DFFF2E71DEFF2E72DFFF2E71DFFF2E72DEFF1761DBFF78A8E7FFFFFF
            FFFFFFFFFFFFD1D5DBFFB4BBC4FFABB2BBFFD2DCE5FF282E32FF111617FF171C
            1DFF171C1DFF101515FF393E43FFBEC5D0FFB3B9C3FFB1B9C3FFB2B9C3FFB8BC
            C7FFC1C6D0FFC6CED8FF3D4349FF0B0F0FFF13181AFFDFE0E3FFFFFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF414549FF080D0DFF171C1CFF060D0CFF7B828AFFDCE0
            E7FFD1D4DAFFC3C7CFFFABB2BCFFC1C7D0FF9CA1ACFF000202FF0E1012FF3D43
            47FFFFFFFFFFFFFFFFFFADB5C0FF020707FF080C0DFF636A74FFC4CAD5FFB3BA
            C5FFB2B8C3FFB2BAC4FFC7CDD7FF51555EFF0C1212FF171C1DFF171C1DFF0F11
            13FF333A3FFFCAD1DCFFB0B8C2FFB3BAC4FFBAC0CBFFCDD4DEFF60676EFF060A
            0AFF02080AFFB8BABBFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF3A4044FF0106
            07FF181C1DFF101515FF12161AFFCBD4DEFFCED3DAFFD1D5DBFFCCCFD6FFB9BF
            C7FFACB3BCFFC3CAD3FF9FA7B1FF060A0CFF161B1BFF171C1DFF161B1CFF0000
            00FFAFB1B5FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF7F9FAFFC5CAD1FFB3BA
            C3FFB6BCC5FFA4ACB5FF000203FF171C1DFF171C1DFF161B1CFF05090BFF959C
            A5FFB8BFC9FFB1B8C3FFB1B9C3FFB4BAC5FFBCC2CBFFCBD0DAFF8A8F9AFF070C
            0CFF060A0BFF8B9093FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFE6EAEFFF000000FF181E1DFF171B1DFF0F1315FF2B3032FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF7F8
            F9FFA4ACB8FFACB2BDFFC6CCD6FF7A8088FF090D0EFF171C1DFF171C1DFF161B
            1CFF0B1010FF969EA9FFB9C0CAFFAFB6C1FFB2B9C2FFBAC1CAFFC3C9D3FFC8CE
            DAFF5F656DFF070B0CFF14191AFF171C1DFF171C1DFF010707FF272B30FFFCFD
            FFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFB7B9BCFF000000FF15191BFF181D1EFF000101FF7C83
            8DFFD1D7E1FFCFD3DAFFD1D4DAFFC4C8D0FFAEB4BEFFB5BBC4FFC8CFD8FF4147
            4DFF0B0F0FFF171C1DFF181D1DFF040909FF2F3439FFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF494D52FF070C0DFF171C
            1DFF090D0EFF747B84FFDBE0E6FFD1D4DAFFC2C7CFFFACB3BDFFBFC5CFFF99A1
            ABFF06090AFF0E1114FF3F4347FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF0F0F1FF0000
            00FF2C69C5FF2E75E5FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2E71DFFF276C
            DEFF4184DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF6F7FBFF060B0DFF141614FF101D
            2EFF86B2E8FFD9EBF9FFFFFFFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFF68A0E4FF105BD8FF2E71DFFF2E72DDFF2E71DEFF2E76
            E9FF3075E1FF161B1CFF0D0900FF0C0F0CFF0D1110FF131616FF161919FF1416
            12FF120C00FF203858FF317FFCFF2E71E1FF2E72DFFF2E72DFFF2E71DEFF2D70
            DFFF105DD9FF71A5E5FFFFFFFFFFFDFFFFFFFFFFFFFFBAC1C8FFC0C6D0FFDBE3
            ECFF9298A4FF080C0EFF161B1CFF171C1DFF171C1DFF14191AFF1D2324FF8A91
            9AFF899199FF8B8F98FF8A9099FF868E96FF6A7077FF181E21FF090C0DFF1519
            1BFF191D1FFFEEF0F1FFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF5F7F9FF0408
            0AFF121717FF15191BFF000406FFA3ABB6FFCAD0DBFFC2C8D1FFD0D8E1FF9AA0
            AAFF080C0EFF15191BFF090D0DFF60666BFFFFFFFFFFFDFEFEFFCCD3DEFF060B
            0CFF14191BFF000303FF454B51FF818991FF8B9099FF8B9098FF9096A0FF2D32
            36FF121717FF171C1DFF171C1DFF141719FF1A1F21FF969BA5FF8A8F98FF8A90
            98FF858C94FF40474CFF05080AFF181C1DFF000506FFB1B4B6FFFFFFFFFFFDFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFF45494FFF000000FF171B1CFF0F1312FF1C20
            25FFA1A8B3FFCBD2DDFFC0C7D1FFC6CAD4FFD3D9E5FF7F878FFF060A0DFF1419
            1AFF171C1DFF101516FF000000FFBCBEC1FFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF2F3F4FFAEB5C0FFCCD2DBFFDDE4EEFF4F555BFF0A0F0FFF171C
            1DFF171C1DFF161B1CFF0B100FFF575D63FF9197A0FF8A8F98FF8B8F98FF8B90
            98FF7B838BFF474B53FF000403FF161B1CFF050A0BFF909397FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF000000FF0A0F
            10FF181D1EFF030608FF777C81FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFBFCFDFFD3D7DCFFC6CDD7FF929AA4FF1D22
            26FF141819FF171C1DFF171C1DFF171C1DFF0E1314FF3E4449FF9DA3ABFFA3A8
            B1FF979FA8FF7D848DFF50565CFF080D0EFF080C0CFF161B1CFF14191AFF0B10
            10FF000000FF5D6167FFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFC9CA
            CCFF000000FF0E1414FF181C1DFF000506FF646C73FFC5CCD8FFC4CBD4FFC2C7
            D1FFCDD4DCFFBAC0CCFF393E43FF030607FF181C1DFF171B1DFF000001FF3338
            3CFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFEFFFFFF030408FF101416FF161B1BFF040709FF99A0AAFFCBD2
            DDFFC2C8D2FFCED5DFFFA3ABB6FF060B0CFF14181AFF0B0E11FF5B6163FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFAFBFDFF1F1A11FF265AAAFF2E76E9FF2E71DEFF2E72
            DFFF2E72DFFF2E72DFFF2E72DFFF1F66DCFF8CB6EBFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF8E9194FF05090CFF130E03FF3074DFFF1763E3FF3D80DDFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF7BAB
            E9FF1763DAFF296CE0FF2E72DEFF2E71DDFF2E74E5FF3079EFFF265292FF1B28
            39FF171D20FF161B1BFF181E23FF1D3049FF2A63B8FF2F7AF3FF2E72DFFF2E71
            DDFF2E72DFFF2E72DDFF286CDEFF1462D8FF93BBECFFFFFFFFFFFFFFFFFFFDFF
            FFFFFEFFFFFFFFFFFFFFA3A7ABFF121719FF090D0EFF151A1BFF161B1BFF151A
            1BFF151A1AFF151A1BFF121717FF090E0DFF090D0DFF080D0DFF080E0DFF080D
            0EFF080D0DFF121717FF161B1CFF121618FF1D2224FFFCFEFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFD8DADEFF010406FF080D0DFF14191AFF080D
            0DFF383E43FF606770FF383E42FF090D0FFF141719FF171C1DFF000001FF8588
            8BFFFFFFFFFFFFFEFFFFDEE3ECFF161D20FF131618FF171C1DFF0C1112FF080D
            0EFF090E0EFF080E0DFF080D0EFF101515FF151A1AFF151A1BFF151A1BFF151A
            1BFF111617FF080D0DFF090E0DFF090E0DFF080D0DFF0C1111FF161A1BFF171C
            1DFF000306FF979C9FFFFFFFFFFFFDFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFF
            FFFF73787CFF04090BFF080D0DFF111616FF0A0D0FFF2C3136FF5D636BFF565C
            63FF21272AFF080C0DFF151A1BFF141A1AFF000304FF1E2126FFC7C9CBFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF6E72
            78FF111619FF0C1011FF161B1CFF151A1AFF151A1BFF151A1AFF151A1BFF0C11
            11FF090E0EFF090D0DFF080E0DFF080D0DFF080D0DFF0C1110FF161A1BFF161B
            1CFF040A0AFF909498FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFF2F4F7FF3F4348FF04090AFF000000FFC8CBCEFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFF000001FF000202FF0C1011FF131818FF14191AFF161B1CFF161B
            1CFF161B1BFF0F1414FF0B1010FF0C1012FF0C0F11FF090E0FFF0A0E0EFF0E12
            13FF060B0CFF000304FF0F1417FF484D51FFD9DCDDFFFFFFFFFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFD1D4D7FF272C2FFF000202FF1317
            18FF0A0E0FFF121719FF4F555CFF5D656CFF41474CFF090B0EFF0E1314FF171C
            1CFF090D0FFF010508FF61666CFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFD5D6DAFF0C0F
            13FF060A0BFF141A19FF090D0EFF363A3FFF61686FFF3A4146FF090E0FFF1318
            18FF171C1DFF000304FF787B7DFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF5655
            4EFF1B4686FF2F77EEFF2D71DEFF2E72DFFF2E72DFFF2E72DFFF2E71DFFF1E67
            DCFFB0CDF1FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF262B30FF0E110FFF171A1AFF3281
            FFFF266BDCFF4285E2FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFB8D5F2FF206AD9FF1E65DDFF2B6F
            DFFF2E72DDFF2E71E0FF2F78EEFF3079F0FF2C70D9FF2D6DD1FF2D70DDFF307C
            F3FF2E75E8FF2E71DEFF2E72DEFF2E71DFFF2A6FDDFF1A64DBFF256EDBFFC0DA
            F4FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF5C5F64FF0000
            00FF000204FF000305FF000609FF04090CFF050B0EFF040A0EFF050A0EFF040A
            0EFF050A0EFF050A0EFF050A0EFF040A0EFF04090CFF01070AFF000407FF0000
            00FF1B1D1FFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFE6E9EBFF3E4448FF000000FF040A0BFF010506FF000102FF020709FF070C
            0DFF050A0BFF000002FF262C32FFD1D3D4FFFFFFFFFFFEFFFFFFFFFFFFFF3A42
            46FF030608FF000304FF000507FF040A0DFF050A0EFF050A0EFF040A0DFF050A
            0EFF050A0EFF050A0EFF050A0EFF050A0EFF050B0EFF040A0EFF050A0EFF050A
            0EFF050A0EFF040A0DFF01070AFF000405FF000000FF75797DFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFCFD1D3FF474C52FF0000
            00FF03090AFF010707FF000202FF000304FF050A0AFF060B0CFF010506FF0004
            07FF898E90FFF8F8FBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFBFCFDFF0C0E12FF000000FF000304FF000506FF0208
            0BFF050A0EFF050A0EFF050A0EFF050A0EFF050A0DFF040A0EFF050A0EFF050A
            0EFF050A0EFF03080BFF000508FF000204FF000000FF868A8EFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFF
            FFFF313639FF000000FFE9EBEBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF5A5E65FF383D41FF2329
            2EFF12191CFF070E11FF000305FF000203FF000305FF000405FF000304FF0003
            04FF000204FF000103FF060C0FFF242B30FF646A6CFFABAFB2FFDFE0E2FFFFFF
            FFFFFFFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFEFFFFFF95999CFF02070AFF010405FF04090AFF000202FF0002
            02FF010607FF070C0DFF040A0BFF000000FF3C4247FFC5C7CAFFFFFFFFFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFEFFFFFFFFFFFFE4E6E9FF464C50FF000000FF040A0BFF0105
            07FF000102FF020607FF070B0DFF04090BFF000102FF20252AFFCFD2D5FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFB0B0B0FF062249FF317BF4FF2D71DEFF2E72
            DFFF2E72DFFF2E72DFFF2D71DEFF1F67DDFFC3DEF6FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFBDC0
            C4FF000000FF15130BFF24497AFF2F77F2FF2569DEFF498CE3FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFFFFFFFF7BACE7FF216CDBFF1763DEFF286EE3FF2A6EDDFF2C70
            DEFF2E72E1FF2E72E1FF2E73E0FF2D70DEFF2C70DDFF296EDEFF2268DEFF105D
            DBFF236FDBFF98BDECFFFFFFFFFFFFFFFFFFFEFEFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFECEEF1FF8285
            88FF666A6DFF53585CFF595D62FF717476FF919398FFFAFBFDFFFFFFFFFFFFFF
            FFFFFEFFFFFFFDFFFFFFFFFFFFFF585C5FFF33383CFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF626669FF1C2227FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFFF8F9FCFF999B9FFF6F7274FF565A5FFF5357
            5CFF616569FF7E7F81FFBFC2C6FFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFAFAFCFF74777CFFFFFFFFFFFFFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFEFFFFFBFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFC3C7CAFF7E8082FF606669FF51565BFF575C5EFF6F7274FF95999DFFF2F4
            F7FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFFFFFFFFFEAEDF1FF878A8CFF676A6EFF52565CFF585D61FF6F7374FF9395
            9AFFF4F4F7FFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFF0B1B2DFF2B72E4FF2E72DFFF2E72DEFF2E72DFFF2E72DFFF2D71DFFF1E67
            DCFFBCD7F4FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFFFF252A2EFF111516FF161614FF2C6ACBFF2E74
            E3FF2369DDFF5694E3FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFEFFFFFFFFFEFFFFFFFFFFFFFF
            FFFF96B6D3FF4882D5FF5194F7FF2E76E4FF1C68DAFF1964DAFF1864DAFF1E68
            DAFF2A6FDFFF397CDEFF669BE5FFBDD7F2FFFFFFFFFFFFFFFFFFFFFFFEFFFAFE
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFEFFFFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFCFC
            FCFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFEFFFFFDFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFF969696FF1355B9FF2E72E3FF2E72
            DDFF2E72DFFF2E72DFFF2E72DEFF1D66DCFFA4C4EFFFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF797C80FF0004
            07FF141512FF1D3049FF307BF1FF2E71DEFF2269DCFF639BE2FFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFEFFFFFFFFFFFFFFFFFF3B3A36FF1F1C16FF626966FFCEDC
            EAFFD8ECFFFFD3E6FFFFC8DCF6FFCFE1F5FFE0ECF9FFFCFFFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFDFEFEFFFDFEFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFEFFFFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFFFFFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFF
            FFFFFCFEFFFFFDFEFEFFFDFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
            FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
            FEFFFFFFFEFFFFFFFEFFFEFFFDFFFDFFFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFF6FF3662A3FF286FE7FF2E71DEFF2E72DFFF2E72DFFF2E72DFFF2168
            DBFF77AAEBFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFFFF
            FFFFFFFFFFFFB3B7BDFF000000FF171B1DFF130C00FF2D6ACDFF2E74E6FF2E72
            DEFF1F66DCFF77A9E9FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFF56595EFF000000FF080700FF000000FF4E5051FFB9B9B8FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF4F6FAFF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FFDBDCDEFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFEFFFFFFFFFF4C53D1FF0008
            C2FF0A13C5FF0A13C5FF0A13C5FF0A13C5FF0A13C5FF0A13C5FF0A13C5FF0A13
            C5FF0A13C5FF0A13C5FF0A13C5FF0A13C5FF0A13C5FF0002C2FF6E73D7FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFDCEAF4FF1462D9FF2D70
            DEFF2E72DFFF2E72DFFF2E72DEFF2D71E0FF175FCFFFB7B4AEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA2A7FF000000FF14191CFF1412
            0BFF213E63FF2F78F1FF2E71DDFF2E72DFFF1A64DBFF92BCEFFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF484D50FF1B3F73FF1C28
            37FF090500FF000200FF0B1214FF989C9FFFECECEEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF191E1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF161B1BFF0C1316FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6067DAFF2128CEFF2B32D1FF2B32D0FF2B32D0FF2B32
            D0FF2B32D0FF2B32D0FF2B32D0FF2B32D0FF2B32D0FF2B32D0FF2B32D0FF2B32
            D0FF2C33D0FF1B22CDFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6B9FE5FF2067DCFF2E72DEFF2E72DFFF2E72DEFF2E70
            DEFF2D7AF4FF0D2850FF3F3C37FFB4B8BDFFEEF0F3FFF4F7FAFFB7BABFFF393D
            40FF010607FF161B1CFF151515FF171916FF3079EDFF2E72E2FF2E71DEFF2E72
            DFFF1761D9FFABCBF1FFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFD3E7FDFF1E6EEEFF2F77ECFF2A5FAEFF1C2C40FF100F06FF0000
            00FF15191BFF606467FFF2F4F6FFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8FAFDFF000000FF181D
            1EFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF151A1BFF0C1216FFE1E3E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6066DAFF2027
            CEFF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF1B22CCFF7F84DCFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFEFFFEFF1361
            D6FF2A6EDFFF2E72DFFF2E72DFFF2E71DEFF2E72DEFF2F77EBFF131D25FF0000
            00FF000000FF000000FF000000FF0F1315FF161A1BFF13140FFF161610FF2D6D
            CFFF2E74E8FF2E70DEFF2E72DEFF2E72DFFF1A64DBFFBED4F4FFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFAFEFEFF4989DDFF1963
            DCFF2F75EAFF317EFCFF2E6ED2FF223F64FF13110AFF040100FF000000FF4D52
            55FFF5F7F8FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF181D1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF151A1BFF0C1216FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6066DAFF2027CEFF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF1B22CCFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFFFFFFFFC6DFF6FF1763DAFF2C70DFFF2E71DFFF2E72
            DFFF2D71DEFF2E73E2FF3078EEFF1F3552FF15130BFF151209FF14160EFF1414
            0BFF131006FF1C2939FF2E72DCFF2E75EAFF2E71DDFF2E72DEFF2E72DFFF2D71
            DEFF226CDDFFD0E3F5FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFFFFFFFEFF5190DEFF1B63DBFF2E70DEFF2D74E4FF2F77
            F1FF3079ECFF26508FFF19222AFF000000FF414240FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8FAFDFF000000FF181D
            1EFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF151A1BFF0C1216FFE1E3E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6066DAFF2027
            CEFF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF1B22CCFF7F84DDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFA6CCF0FF105ED9FF2C6EDEFF2E72DEFF2E72DEFF2D71DEFF2E73E1FF2F7B
            F0FF2B66C3FF254C86FF213D61FF234371FF2A5FAEFF3078EDFF2E74E5FF2E70
            DEFF2E72DFFF2E72DFFF2E72DFFF2B70DEFF2F74DDFFEAF5FAFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFFFFFFFFFFFEFFFFFF
            FFFF4286DEFF1E65DDFF2F71DFFF2E71DEFF2E72E1FF2E78F1FF2E76E7FF265B
            A8FF122337FFFFFFFFFFFFFFFFFFFCFFFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF181D1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF151A1BFF0C1216FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6066DAFF2027CEFF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF1B22CCFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFEFEFFFFFFFFFFC5DFF5FF1061D8FF1F65
            DCFF2D71DEFF2E72DFFF2E72DDFF2E70DFFF2E74E4FF2F77EEFF307AF5FF2F79
            F1FF2E74E6FF2E72DEFF2E71DEFF2E72DDFF2E71DDFF2E72DEFF2C70DFFF2168
            DEFF387ADCFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFEFF4D8DDFFF1862D9FF2F72
            DFFF2E71DEFF2E71DDFF2E72DFFF2F75E9FF2372F3FF5693E1FFFCFDFDFFFDFF
            FEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8FAFDFF000000FF181D
            1EFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF151A1BFF0C1216FFE1E3E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6066DAFF2027
            CEFF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF1B22CCFF7F84DDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFE
            FEFFFDFEFEFFFFFFFFFFF4FAFDFF69A0E4FF1A64DCFF1D65DBFF2A6EDEFF2D71
            DEFF2D70DFFF2E71DEFF2E71DDFF2E71DFFF2E71DFFF2E71DEFF2D71DEFF2C6F
            DFFF276CDDFF1762DAFF216BDCFF508DE0FFAACAF0FFFFFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFF5B96E1FF1A62DBFF2E71DFFF2E71DEFF2E72DEFF2E71
            DEFF2F73DDFF105CDAFF90B9EBFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF181D1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF151A1BFF0C1216FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6066DAFF2027CEFF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF1B22CCFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF
            FFFFDDECF8FF74A7E9FF2B71DBFF1F68DCFF1F67DDFF1C65DBFF1D65DBFF1D66
            DCFF1D66DCFF1E65DDFF1F68DDFF2069DBFF3B80DDFF9DC1F1FFE1ECFAFFFFFF
            FFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF498B
            DEFF1D65DBFF2E72DFFF2E72DDFF2E71DEFF2E72DEFF1E65DCFF73A9E8FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8FAFDFF000000FF181D
            1EFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF151A1BFF0C1216FFE1E3E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6066DAFF2027
            CEFF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF1B22CCFF7F84DDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBED
            F8FFB2CFEEFF9EBFEBFF92BBEDFF92BBEEFF9ABEEAFFABC8EDFFCAE1F4FFFBFF
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFCFFFFFFFFFFFFFFFFFFFFFF5492DFFF1761DBFF2F72DFFF2E71
            DEFF2E72DEFF125ED9FFB4D0F1FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF181D1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF151A1BFF0C1216FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6066DAFF2027CEFF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF1B22CCFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFF609AE2FF1863D9FF2E71DFFF2B6FDFFF2870DAFFE8F3FBFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8FAFDFF000000FF181D
            1EFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF151A1BFF0C1216FFE1E3E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6066DAFF2027
            CEFF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF1B22CCFF7F84DDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFF
            FFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFFFFFFFFFFFFFFFFFFFFFF5192E1FF1861
            DBFF1660DBFF72A6E5FFFFFFFFFFFCFEFDFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF181D1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF151A1BFF0C1216FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6066DAFF2027CEFF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF1B22CCFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFEFFFFFFFFFF81B0E8FF4284DFFFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8FAFDFF000000FF181D
            1EFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF151A1BFF0C1216FFE1E3E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF6066DAFF2027
            CEFF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF1B22CCFF7F84DDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF8FAFDFF000000FF181D1EFF171C1DFF171C1DFF171C1DFF171C
            1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C1DFF171C
            1DFF151A1BFF0C1216FFE1E3E3FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF6066DAFF2027CEFF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32D1FF2B32
            D1FF2B32D1FF1B22CCFF7F84DDFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFEFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFF8F9FDFF000000FF171C
            1CFF151A1BFF151A1BFF151A1BFF151A1BFF151A1BFF151A1BFF151A1BFF151A
            1BFF151A1BFF151A1BFF151A1BFF151A1BFF141919FF0B1114FFE1E2E3FFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF5F66DBFF1F26
            CEFF2A31D1FF2A30D1FF2A30D1FF2A30D1FF2A30D1FF2A30D1FF2A30D1FF2A30
            D1FF2A30D1FF2A30D1FF2A30D1FF2A30D1FF2A31D1FF1921CDFF7E83DDFFFFFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFFFFFFFFF4F6FAFF000000FF000609FF000409FF000408FF000408FF0004
            08FF000409FF000408FF000408FF000408FF000408FF000409FF000408FF0004
            09FF000306FF000003FFDCDEDFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFFFFFFFF5259D0FF0711C1FF131CC4FF111BC4FF111BC4FF121B
            C4FF111BC3FF121BC4FF121BC4FF121BC4FF121BC4FF111BC4FF121BC4FF111B
            C4FF121CC4FF020BC0FF7379D6FFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFDFFFEFFFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFDFEFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFEFFFEFFFFFFFDFEFDFFFDFEFFFFFDFEFFFFFDFEFFFFFDFEFFFFFDFE
            FFFFFDFEFFFFFDFEFFFFFDFEFFFFFDFEFFFFFDFEFFFFFDFEFFFFFDFEFFFFFDFE
            FFFFFDFEFFFFFDFFFFFFFDFFFFFFFCFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFEFEFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
            FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBEmpresaENDERECO: TfrxMemoView
          Left = 139.842610000000000000
          Top = 49.692950000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."ENDERECO"]')
        end
        object frxDBEmpresaNUMERO: TfrxMemoView
          Left = 389.291590000000000000
          Top = 49.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NUMERO"]')
        end
        object frxDBEmpresaBAIRRO: TfrxMemoView
          Left = 487.559370000000000000
          Top = 49.692950000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."BAIRRO"]')
        end
        object frxDBEmpresaCIDADE: TfrxMemoView
          Left = 139.842610000000000000
          Top = 70.149660000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]')
        end
        object frxDBEmpresaUF: TfrxMemoView
          Left = 345.953000000000000000
          Top = 70.149660000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."UF"]')
        end
        object frxDBEmpresaCEP: TfrxMemoView
          Left = 382.527830000000000000
          Top = 70.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."CEP"]')
        end
        object frxDBEmpresaTELEFONE: TfrxMemoView
          Left = 472.134200000000000000
          Top = 70.149660000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            'Telefone: [frxDBEmpresa."TELEFONE"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object frxDBItensIDPRODUTO: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'IDPRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBItens."IDPRODUTO"]')
          ParentFont = False
        end
        object frxDBItensDESCRICAO: TfrxMemoView
          Left = 90.708720000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO"]')
          ParentFont = False
        end
        object frxDBItensQUANTIDADE: TfrxMemoView
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBItens."QUANTIDADE"]')
          ParentFont = False
        end
        object frxDBItensVALOR: TfrxMemoView
          Left = 461.102660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBItens."VALOR"]')
          ParentFont = False
        end
        object frxDBItensDESCONTO: TfrxMemoView
          Left = 548.031850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBItens."DESCONTO"]')
          ParentFont = False
        end
        object frxDBItensVALOR_TOTAL: TfrxMemoView
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOTAL'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBItens."VALOR_TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        object frxDBPedidoVALOR: TfrxMemoView
          Left = 402.834880000000000000
          Top = 1.779530000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Produtos: [frxDBPedido."VALOR"]')
          ParentFont = False
        end
        object frxDBPedidoDESCONTO: TfrxMemoView
          Left = 438.055350000000000000
          Top = 20.236240000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto: [frxDBPedido."DESCONTO"]')
          ParentFont = False
        end
        object frxDBPedidoACRESCIMO: TfrxMemoView
          Left = 431.834880000000000000
          Top = 36.133890000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Acrescimo: [frxDBPedido."ACRESCIMO"]')
          ParentFont = False
        end
        object frxDBPedidoVALOR_TOTAL: TfrxMemoView
          Left = 426.055350000000000000
          Top = 54.590600000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total: [frxDBPedido."VALOR_TOTAL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 702.992580000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #201' vedada a autentica'#231#227'o deste documento')
          ParentFont = False
        end
      end
    end
  end
  object frxDBPedido: TfrxDBDataset
    UserName = 'frxDBPedido'
    CloseDataSource = False
    DataSet = DmWorkCom.CdsPedidos
    BCDToCurrency = False
    Left = 575
    Top = 239
  end
  object frxDBItens: TfrxDBDataset
    UserName = 'frxDBItens'
    CloseDataSource = False
    DataSet = DmWorkCom.CdsPedidoItens
    BCDToCurrency = False
    Left = 655
    Top = 247
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = DmWorkCom.CdsEmpresa
    BCDToCurrency = False
    Left = 583
    Top = 311
  end
end
