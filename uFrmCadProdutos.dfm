inherited FrmCadProdutos: TFrmCadProdutos
  Left = 293
  Top = 110
  BorderStyle = bsSizeable
  Caption = 'Cadastro de Produtos'
  ClientHeight = 582
  ClientWidth = 820
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 836
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 820
    Height = 582
    ActivePage = TbsAliquota
    Align = alClient
    TabOrder = 0
    object TbsGeral: TTabSheet
      Caption = 'Dados do produto'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 1
        Width = 809
        Height = 504
        TabOrder = 0
        object Label1: TLabel
          Left = 578
          Top = 14
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 112
          Top = 14
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DbDescricao
        end
        object Label3: TLabel
          Left = 412
          Top = 51
          Width = 52
          Height = 13
          Caption = 'Referencia'
          FocusControl = DbReferencia
        end
        object Label4: TLabel
          Left = 3
          Top = 14
          Width = 34
          Height = 13
          Caption = 'EAN13'
          FocusControl = DbEan13
        end
        object Label5: TLabel
          Left = 421
          Top = 96
          Width = 36
          Height = 13
          Caption = 'DUN14'
          FocusControl = DbDum14
        end
        object Label6: TLabel
          Left = 5
          Top = 51
          Width = 29
          Height = 13
          Caption = 'Grupo'
        end
        object Label10: TLabel
          Left = 652
          Top = 14
          Width = 40
          Height = 13
          Caption = 'Unidade'
        end
        object Label11: TLabel
          Left = 718
          Top = 14
          Width = 55
          Height = 13
          Caption = 'Embalagem'
          FocusControl = DbQuantCx
        end
        object Label7: TLabel
          Left = 197
          Top = 51
          Width = 56
          Height = 13
          Caption = 'Sub-Grupos'
        end
        object Label21: TLabel
          Left = 5
          Top = 95
          Width = 49
          Height = 13
          Caption = 'C'#243'd. NCM'
        end
        object Label22: TLabel
          Left = 95
          Top = 95
          Width = 42
          Height = 13
          Caption = 'Exce'#231#227'o'
        end
        object ImgProduto: TImage
          Left = 618
          Top = 102
          Width = 183
          Height = 136
          Stretch = True
        end
        object Label20: TLabel
          Left = 154
          Top = 97
          Width = 28
          Height = 13
          Caption = 'CEST'
        end
        object Label33: TLabel
          Left = 256
          Top = 97
          Width = 38
          Height = 13
          Caption = 'CST Pis'
        end
        object Label34: TLabel
          Left = 340
          Top = 97
          Width = 53
          Height = 13
          Caption = 'CST Cofins'
        end
        object DbID: TDBEdit
          Left = 578
          Top = 28
          Width = 68
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DbDescricao: TDBEdit
          Left = 112
          Top = 28
          Width = 460
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbReferencia: TDBEdit
          Left = 412
          Top = 70
          Width = 389
          Height = 21
          DataField = 'REFERENCIA'
          DataSource = DataWork
          TabOrder = 8
          OnKeyPress = DbIDKeyPress
        end
        object DbEan13: TDBEdit
          Left = 5
          Top = 28
          Width = 101
          Height = 21
          DataField = 'EAN13'
          DataSource = DataWork
          TabOrder = 0
          OnExit = DbEan13Exit
          OnKeyPress = DbIDKeyPress
        end
        object DbDum14: TDBEdit
          Left = 421
          Top = 115
          Width = 153
          Height = 21
          DataField = 'DUN14'
          TabOrder = 9
          OnExit = DbDum14Exit
          OnKeyPress = DbIDKeyPress
        end
        object ComboUnidade: TDBComboBox
          Left = 652
          Top = 28
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UNIDADE'
          DataSource = DataWork
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object ComboGrupo: TDBLookupComboBox
          Left = 5
          Top = 70
          Width = 155
          Height = 21
          DataField = 'GRUPO'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DataGrupo
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object ComboSubGrupo1: TDBLookupComboBox
          Left = 197
          Top = 70
          Width = 209
          Height = 21
          DataField = 'SUBGRUPO'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DataSubGrupo1
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
        object DbQuantCx: TDBEdit
          Left = 718
          Top = 28
          Width = 83
          Height = 21
          DataField = 'QUANT_CAIXA'
          DataSource = DataWork
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DbRadioTipoProd: TDBRadioGroup
          Left = 3
          Top = 142
          Width = 144
          Height = 35
          Caption = ' Tipo de Produto '
          Columns = 2
          DataField = 'TIPOPROD'
          DataSource = DataWork
          Items.Strings = (
            ' Normal'
            'Composto')
          TabOrder = 12
          Values.Strings = (
            '0'
            '1')
          OnChange = DbRadioTipoProdChange
        end
        object GrpDados: TGroupBox
          Left = 5
          Top = 392
          Width = 365
          Height = 106
          Caption = ' Tributa'#231#227'o '
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          object Label13: TLabel
            Left = 184
            Top = 20
            Width = 60
            Height = 13
            Caption = 'Aliq. ICMS'
            FocusControl = DbIcms
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 75
            Width = 46
            Height = 13
            Caption = 'Aliq. IPI'
            FocusControl = DbIpi
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 9
            Top = 20
            Width = 47
            Height = 13
            Caption = 'Aliq. Pis'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 9
            Top = 48
            Width = 65
            Height = 13
            Caption = 'Aliq. Cofins'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 185
            Top = 48
            Width = 27
            Height = 13
            Caption = 'MVA'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 185
            Top = 75
            Width = 60
            Height = 13
            Caption = 'Red. Base'
            FocusControl = DbReducaoBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbIcms: TDBEdit
            Left = 251
            Top = 17
            Width = 93
            Height = 21
            DataField = 'ALIQUOTA_ICMS'
            DataSource = DataWork
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
          object DbIpi: TDBEdit
            Left = 75
            Top = 72
            Width = 93
            Height = 21
            DataField = 'ALIQUOTA_IPI'
            DataSource = DataWork
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit3: TDBEdit
            Left = 75
            Top = 17
            Width = 93
            Height = 21
            DataField = 'ALIQUOTA_PIS'
            DataSource = DataWork
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit4: TDBEdit
            Left = 75
            Top = 45
            Width = 93
            Height = 21
            DataField = 'ALIQUOTA_COFINS'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit5: TDBEdit
            Left = 251
            Top = 45
            Width = 93
            Height = 21
            DataField = 'MVA'
            DataSource = DataWork
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object DbReducaoBase: TDBEdit
            Left = 250
            Top = 72
            Width = 95
            Height = 21
            DataField = 'REDUCAO_BASE'
            DataSource = DataWork
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpComissao: TGroupBox
          Left = 5
          Top = 177
          Width = 248
          Height = 93
          Caption = ' Faixa de Comiss'#227'o '
          TabOrder = 15
          object GridComissao: TDBGrid
            Left = 3
            Top = 13
            Width = 241
            Height = 76
            DataSource = DataComissao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyPress = GridComissaoKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'FAIXA_INI'
                Title.Alignment = taCenter
                Title.Caption = 'Minimo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FAIXA_FIM'
                Title.Alignment = taCenter
                Title.Caption = 'M'#225'ximo'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMISSAO'
                Title.Alignment = taCenter
                Title.Caption = 'Comiss'#227'o'
                Width = 51
                Visible = True
              end>
          end
        end
        object GroupBox3: TGroupBox
          Left = 5
          Top = 275
          Width = 339
          Height = 113
          Caption = ' Valores '
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
          object Label17: TLabel
            Left = 171
            Top = 74
            Width = 63
            Height = 13
            Caption = 'R$ Compra'
            FocusControl = DbPrecoCompra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 171
            Top = 47
            Width = 46
            Height = 13
            Caption = '% Lucro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 171
            Top = 20
            Width = 57
            Height = 13
            Caption = 'R$ Venda'
            FocusControl = DbPrecoVenda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 12
            Top = 20
            Width = 60
            Height = 13
            Caption = 'Desc.m'#225'x.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 12
            Top = 47
            Width = 54
            Height = 13
            Caption = 'Comiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 12
            Top = 74
            Width = 47
            Height = 13
            Caption = 'Estoque'
            FocusControl = DbEstoque
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbPrecoCompra: TDBEdit
            Left = 240
            Top = 71
            Width = 87
            Height = 21
            DataField = 'PRECO_COMPRA'
            DataSource = DataWork
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
          object DbMargem: TDBEdit
            Left = 240
            Top = 44
            Width = 87
            Height = 21
            DataField = 'MARGEM_LUCRO'
            DataSource = DataWork
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object DbPrecoVenda: TDBEdit
            Left = 240
            Top = 17
            Width = 87
            Height = 21
            DataField = 'PRECO_VENDA'
            DataSource = DataWork
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
          object DbDesconto: TDBEdit
            Left = 78
            Top = 17
            Width = 87
            Height = 21
            DataField = 'PERC_DESC'
            DataSource = DataWork
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DbComissao: TDBEdit
            Left = 78
            Top = 44
            Width = 87
            Height = 21
            DataField = 'PERC_COM'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object DbEstoque: TDBEdit
            Left = 78
            Top = 71
            Width = 87
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = DataEstoque
            Enabled = False
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
        end
        object DBEdit1: TDBEdit
          Left = 95
          Top = 114
          Width = 42
          Height = 21
          DataField = 'EXCECAO_NCM'
          DataSource = DataWork
          Enabled = False
          TabOrder = 11
          OnKeyPress = DbIDKeyPress
        end
        object RadioTribucacao: TDBRadioGroup
          Left = 521
          Top = 392
          Width = 280
          Height = 106
          Caption = ' Tipo de Tributa'#231#227'o '
          Columns = 2
          DataField = 'TRIBUTACAO'
          DataSource = DataWork
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            '0 - Isento'
            '1 - Sub. Tribut'#225'ria'
            '2 - Tributado'
            '3 - N'#227'o Tributado'
            '4 - Servi'#231'o')
          ParentFont = False
          TabOrder = 22
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object GroupBox4: TGroupBox
          Left = 376
          Top = 394
          Width = 139
          Height = 107
          Caption = ' Tributa'#231#227'o Interna '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          object Label15: TLabel
            Left = 3
            Top = 83
            Width = 52
            Height = 13
            Caption = #205'ndice(A)'
            FocusControl = DbInficeA
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 3
            Top = 62
            Width = 33
            Height = 13
            Caption = 'CFOP'
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 3
            Top = 19
            Width = 25
            Height = 13
            Caption = 'CST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 3
            Top = 38
            Width = 43
            Height = 13
            Caption = 'CSOSN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbInficeA: TDBEdit
            Left = 61
            Top = 79
            Width = 69
            Height = 21
            DataField = 'INDICEA'
            DataSource = DataWork
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit8: TDBEdit
            Left = 61
            Top = 58
            Width = 69
            Height = 21
            DataField = 'CFOP_INTERNO'
            DataSource = DataWork
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 61
            Top = 15
            Width = 73
            Height = 21
            DataField = 'CST_INTERNO'
            DataSource = DataWork
            DropDownWidth = 500
            KeyField = 'CODIGO'
            ListField = 'CODIGO;DESCRICAO'
            ListSource = DataCST
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DBLookupComboBox8: TDBLookupComboBox
            Left = 61
            Top = 37
            Width = 73
            Height = 21
            DataField = 'CSOSN_INTERNO'
            DataSource = DataWork
            DropDownWidth = 500
            KeyField = 'CODIGO'
            ListField = 'CODIGO;DESCRICAO'
            ListSource = DataCSOSN
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpAtivoPermanente: TGroupBox
          Left = 259
          Top = 142
          Width = 156
          Height = 128
          Caption = ' Ativo Permanente '
          TabOrder = 14
          object Label35: TLabel
            Left = 8
            Top = 19
            Width = 37
            Height = 13
            Caption = 'Produto'
            FocusControl = DBEdit11
          end
          object Label36: TLabel
            Left = 8
            Top = 65
            Width = 48
            Height = 13
            Caption = 'Finalidade'
          end
          object Label37: TLabel
            Left = 64
            Top = 19
            Width = 37
            Height = 13
            Caption = 'Vida '#250'til'
            FocusControl = DBEdit13
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 38
            Width = 48
            Height = 21
            DataField = 'IDPRODPRINCIPAL'
            DataSource = DataWork
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit13: TDBEdit
            Left = 64
            Top = 38
            Width = 48
            Height = 21
            DataField = 'VIDAUTIL_MESES'
            DataSource = DataWork
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
          object MemoFinalidade: TMemo
            Left = 8
            Top = 84
            Width = 140
            Height = 27
            MaxLength = 250
            TabOrder = 2
            OnExit = MemoFinalidadeExit
          end
        end
        object DbCodNCM: TDBEdit
          Left = 5
          Top = 114
          Width = 78
          Height = 21
          DataField = 'CODIGO_NCM'
          DataSource = DataWork
          TabOrder = 10
          OnExit = DbCodNCMExit
          OnKeyPress = DbIDKeyPress
        end
        object GroupBox5: TGroupBox
          Left = 350
          Top = 275
          Width = 451
          Height = 114
          Caption = 'Outras Op'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          object DbChAtivo: TDBCheckBox
            Left = 9
            Top = 19
            Width = 100
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
            TabOrder = 0
            ValueChecked = 'T'
            ValueUnchecked = 'F'
            OnKeyPress = DbIDKeyPress
          end
          object DBCheckBox1: TDBCheckBox
            Left = 132
            Top = 42
            Width = 100
            Height = 17
            Caption = 'Fracionada'
            DataField = 'FRACIONADO'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 132
            Top = 65
            Width = 145
            Height = 17
            Caption = 'Mudar Descri'#231#227'o Ped.'
            DataField = 'EDITA_DESC_PED'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 9
            Top = 65
            Width = 100
            Height = 17
            Caption = 'Combust'#237'vel'
            DataField = 'COMBUSTIVEL'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 132
            Top = 88
            Width = 145
            Height = 17
            Caption = 'Produ'#231#227'o Propria'
            DataField = 'IPPT'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            ValueChecked = 'P'
            ValueUnchecked = 'T'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 9
            Top = 42
            Width = 114
            Height = 17
            Caption = 'Arredondamento'
            DataField = 'IAT'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'A'
            ValueUnchecked = 'T'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 283
            Top = 42
            Width = 145
            Height = 17
            Caption = 'Bens de Consumo'
            DataField = 'BENS_CONSUMO'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 283
            Top = 19
            Width = 161
            Height = 17
            Caption = 'Tipo Prod. Componente'
            DataField = 'PROD_COMPONENTE'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DbChEstoque: TDBCheckBox
            Left = 132
            Top = 19
            Width = 145
            Height = 17
            Caption = 'Controlar Estoque'
            DataField = 'CONTROLAR_ESTOQUE'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 9
            Top = 88
            Width = 114
            Height = 17
            Caption = 'Pes'#225'vel'
            DataField = 'PESAVEL'
            DataSource = DataWork
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object BtnImagem: TButton
          Left = 618
          Top = 244
          Width = 183
          Height = 25
          Caption = 'Imagem do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnClick = BtnImagemClick
        end
        object BitBtn1: TBitBtn
          Left = 450
          Top = 244
          Width = 163
          Height = 25
          Action = ActFornecedor
          Caption = 'F8 - Fornecedores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object SpBtnGrupo: TBitBtn
          Left = 166
          Top = 70
          Width = 25
          Height = 21
          Action = ActGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 6
          TabStop = False
        end
        object SpBtnComposicao: TBitBtn
          Left = 151
          Top = 148
          Width = 100
          Height = 26
          Action = ActProdComposto
          Caption = 'Composi'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000000000000000
            5959595959595959595959595959595959595959595959595959595959595959
            595959595959590000000000001C82B51A80B3177DB0157BAE1278AB0F75A80C
            72A50A70A3076DA0056B9E03699C01679A0066995959595959592187BA66CCFF
            1F85B899FFFF6ED4FF6ED4FF6ED4FF6ED4FF6ED4FF6ED4FF6ED4FF6ED4FF3AA0
            D399FFFF006699595959248ABD66CCFF268CBF99FFFF7AE0FF55B6DE55B6DE55
            B6DE55B6DE55B6DE55B6DE55B6DE43A9DC99FFFF01679A595959278DC066CCFF
            2C92C599FFFF65A3BF65A3BF65A3BF65A3BF65A3BF65A3BF65A3BF65A3BF65A3
            BF65A3BF03699C595959298FC266CCFF3298CB99FFFF65A3BFFFFFFFFFFFFFE6
            F0F3E6F0F3E6F0F3E6F0F3E6F0F3E6F0F365A3BF056B9E5959592C92C56ED4FF
            3399CC99FFFF65A3BFFFFFFFFFC87BFFC87BFFC87BFFC87BFFC87BFFC87BE6F0
            F365A3BF076DA05959592E94C77AE0FF278DC0FFFFFFC8D3D6FCFAFBF4E0C2F4
            E0C2F4E0C2F4E0C2F4E0C2F4E0C2E6F0F3C8D3D60A70A35959593096C985EBFF
            278DC0278DC0278DC0278DC0278DC0278DC02C92C5278DC02389BC1F85B81B81
            B41A80B31A80B30000003298CB91F7FF8EF4FF8EF4FF9C9FA0FCFAFBA68A65B3
            C3FFB3C3FF6986FF416BF8A68A65FCFAFB6D7A805959590000003399CCFFFFFF
            99FFFF99FFFFA2A4A5FCFAFBA68A65FFFFFFFFFFFF6986FF6986FFA68A65FCFA
            FB6D7A805959590000000000003399CCFFFFFFFFFFFFA9A9A9FCFAFBA68A658B
            A1F0FFFFFFB3C3FF8BA1F0A68A65FCFAFB717D83595959000000000000000000
            3399CC3298CBAFAFAEFCFAFBFFA518A68A65A68A65A68A65A68A65FFA518FCFA
            FB768186595959000000000000000000000000000000B5B3B2FCFAFBFF9E05FF
            9E05EA9210EA9210FF9E05FF9E05FCFAFB7C858A595959000000000000000000
            000000000000BAB7B5FCFAFBFCFAFBFCFAFBFCFAFBFCFAFBFCFAFBFCFAFBFCFA
            FB828B8F595959000000000000000000000000000000BEBAB8BAB7B5B5B3B2AF
            AFAEA9A9A9A2A4A59C9FA0969A9C8F9598899093000000000000}
          ParentFont = False
          TabOrder = 13
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 148
          Top = 114
          Width = 94
          Height = 21
          DataField = 'COD_CEST'
          DataSource = DataWork
          DropDownWidth = 400
          KeyField = 'CEST'
          ListField = 'CEST;DESCRICAO'
          ListSource = DataCest
          TabOrder = 23
        end
        object GroupBox6: TGroupBox
          Left = 421
          Top = 142
          Width = 189
          Height = 46
          Caption = ' Cor do produto '
          TabOrder = 24
          object SpeedButton1: TSpeedButton
            Left = 160
            Top = 16
            Width = 23
            Height = 22
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
              0000000000000000000003333333333333003838888833883830383888881188
              B830383888831138B830383888818818B830383888138831B830383FFFFFFFF1
              7F3038833333333313303888888FFFFF11003F8888F33333310003FFFF300000
              0110003333000000000000000000000000000000000000000000}
            OnClick = SpeedButton1Click
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 8
            Top = 17
            Width = 145
            Height = 21
            DataField = 'ID_COR'
            DataSource = DataWork
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = DataProdCor
            TabOrder = 0
          end
        end
        object GroupBox7: TGroupBox
          Left = 421
          Top = 194
          Width = 189
          Height = 46
          Caption = ' Tamanho do produt '
          TabOrder = 25
          object SpeedButton2: TSpeedButton
            Left = 160
            Top = 15
            Width = 23
            Height = 22
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
              0000000000000000000003333333333333003838888833883830383888881188
              B830383888831138B830383888818818B830383888138831B830383FFFFFFFF1
              7F3038833333333313303888888FFFFF11003F8888F33333310003FFFF300000
              0110003333000000000000000000000000000000000000000000}
            OnClick = SpeedButton2Click
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 9
            Top = 16
            Width = 56
            Height = 21
            DataField = 'ID_TAMANHO'
            DataSource = DataWork
            DropDownWidth = 150
            KeyField = 'ID'
            ListField = 'NUMERO;METRAGEM'
            ListSource = DataProdTamanho
            TabOrder = 0
          end
          object DBEdit9: TDBEdit
            Left = 69
            Top = 16
            Width = 82
            Height = 21
            DataField = 'METRAGEM'
            DataSource = DataProdTamanho
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 511
        Width = 819
        Height = 42
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 485
          Top = 0
          Width = 159
          Height = 35
          Action = ActConfirmar
          Caption = 'F4 - &Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB8D2C9FF9DC0B5FFFFFFFFFFFBFBFBFFFBFBFBFFFBFB
            FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFFFFFFFF84B1
            A3FF81AFA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF217358FF00431FFF4A8C76FFFFFFFFFFF7F7F7FFF8F8F8FFF8F8
            F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFFFFFFFFF4D8C
            77FF004B28FF004926FFBFD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF458A73FF005130FF005636FF54927EFFFFFFFFFFE2E2E2FFDDDDDDFFDEDE
            DEFFDFDFDFFFDEDEDEFFDFDFDFFFDFDFDFFFDEDEDEFFDCDCDCFFFFFCFFFF5492
            7EFF005636FF005C3DFF004623FFFBFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFF004421FF005D3EFF005636FF55937DFFFFFFFFFFFDFDFDFFFDFDFDFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFFFFFFFFFF5491
            7EFF005636FF005E3FFF005434FF5E9A87FFFFFFFFFFFFFFFFFFFFFFFFFFCBDE
            D7FF004F2DFF005E3FFF005936FF56957FFFFFFFFFFFE4E4E4FFE4E4E4FFE5E5
            E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE1E1E1FFFFFFFFFF5593
            7EFF005635FF005D3EFF005838FF2A795EFFFFFFFFFFFFFFFFFFFFFFFFFFCFE0
            DBFF005631FF036543FF005E3BFF599883FFFFFFFFFFF8F8F8FFF8F8F8FFF7F7
            F7FFF9F9F9FFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFFFFFFFFF5796
            81FF005B39FF016140FF005B3AFF317F64FFFFFFFFFFFFFFFFFFFFFFFFFFD0E1
            DCFF005B35FF066947FF00643FFF599C83FFFFFFFFFFEFEFEFFFEFEFEFFFF0F0
            F0FFF0F0F0FFF0F0F0FFF1F1F1FFEFEFEFFFF0F0F0FFEEEEEEFFFFFFFFFF579A
            82FF00613DFF046644FF00603EFF328266FFFFFFFFFFFFFFFFFFFFFFFFFFD0E2
            DCFF006039FF086F49FF076F4AFF00663EFFF9FCFBFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FDFAFF0067
            40FF056B47FF076C48FF006541FF348668FFFFFFFFFFFFFFFFFFFFFFFFFFD1E3
            DDFF00643AFF0A724CFF0A734CFF08724BFF006A3EFF51A283FF66AF91FF64AE
            91FF64AE91FF64AE91FF64AE91FF64AC90FF64AE91FF5CA689FF00683DFF0771
            4AFF0A724CFF09714AFF016A44FF37896AFFFFFFFFFFFFFFFFFFFFFFFFFFCFE2
            DCFF02804DFF16895BFF15885BFF148658FF128256FF087A4DFF03754AFF0273
            48FF027348FF037449FF037349FF027349FF027248FF037349FF0C784FFF0D78
            50FF0C774EFF0C764EFF037048FF378C6DFFFFFFFFFFFFFFFFFFFFFFFFFFD0E3
            DCFF03834EFF178B5DFF178B5CFF178B5CFF168A5BFF17895CFF158A5AFF1688
            5AFF148458FF128055FF117F54FF117F55FF117F54FF107E53FF107E54FF0F7D
            52FF0F7C52FF0E7B52FF07754BFF3A8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFD0E3
            DDFF058650FF19905FFF198E5FFF198E5EFF188E5EFF188D5DFF178B5DFF178B
            5CFF168A5CFF168A5CFF15875AFF138458FF138358FF138357FF128257FF1282
            56FF128156FF117F55FF097A4EFF3B9271FFFFFFFFFFFFFFFFFFFFFFFFFFD1E4
            DDFF068A54FF1B9362FF1B9361FF1B9161FF1A9160FF17905EFF0A8A55FF0989
            54FF098855FF098753FF078553FF078452FF068350FF0E8556FF15875AFF1586
            59FF148559FF138457FF0C7F52FF3D9473FFFFFFFFFFFFFFFFFFFFFFFFFFD1E5
            DDFF088E56FF1D9764FF1D9663FF1C9663FF189460FF1B8A5FFF9FC6B8FFA0C4
            B7FF96BBADFF98BEAFFFA1C7B7FFB0D3C4FFA9CCBDFF429575FF098754FF178B
            5CFF16895CFF16885AFF0E8455FF409776FFFFFFFFFFFFFFFFFFFFFFFFFFD1E5
            DEFF0A9258FF1F9A66FF1F9A66FF1D9965FF098854FFFFFFFFFFFFFEFFFFF5F0
            F2FFE8E2E4FFEDE9E9FFF0F1EEFF6EA390FFD5E1DAFFFFF4F9FF3D9171FF138E
            5CFF198F5FFF188E5DFF108958FF449A78FFFFFFFFFFFFFFFFFFFFFFFFFFD4E6
            E0FF0C955BFF219E68FF209C68FF1A9A63FF4BAA83FFFFFFFFFFF6F6F6FFEBEB
            EBFFDEDEDEFFEFEBEBFF6CA490FF00552DFF227B5BFFFDF2F4FF84AD9CFF0E8D
            59FF1B9361FF1A9161FF138E5BFF469D7BFFFFFFFFFFFFFFFFFFFFFFFFFFD2E4
            DFFF109B5FFF22A06AFF22A06AFF1B9D66FF48AA81FFFFFFFFFFF6F6F6FFEBEB
            EBFFDEDEDEFFEFEAEBFF7BB29CFF006D41FF388F6EFFFCF0F2FF87AF9EFF0E90
            5AFF1D9563FF1D9764FF14915DFF4DA381FFFFFFFFFFFFFFFFFFFFFFFFFFD7E4
            DFFF139960FF23A36BFF24A36CFF1CA068FF49AE83FFFFFFFFFFF6F6F6FFEBEB
            EBFFDEDEDEFFEEEAEAFF7DB79FFF007A4AFF3B9873FFFBEFF2FF86B19FFF1093
            5DFF1B9562FF1F9A66FF14965FFF67AF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF2E966CFF22A96DFF21A36BFF1EA368FF4BB186FFFFFFFFFFF6F6F6FFEBEB
            EBFFDEDEDEFFECE8E8FF88C1A9FF007C43FF43A37BFFF9EDF0FF87B2A0FF1296
            5FFF1C9763FF159560FF2CA270FFB9D5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE6F0ECFF249B69FF43B784FF18A166FF48B284FFFFFFFFFFF8F8F8FFEBEB
            EBFFDDDDDDFFE0E2E0FFFBF7F5FFCCE7D9FFFBFAF6FFE7E4E3FF83AF9CFF0794
            58FF27A06DFF4FB68AFF5FAD8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF2F7F5FF6ABA98FF5BBD92FF7CC9A6FFEEE5E9FFE3E3E3FFE3E3
            E3FFE3E3E3FFE3E3E3FFE4E3E4FFE8E6E7FFE5E4E4FFE9E5E6FFB4D6C6FF66C4
            9BFF62BD96FF9CCEBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn5: TBitBtn
          Left = 650
          Top = 0
          Width = 159
          Height = 35
          Action = ActCancelar
          Caption = 'F5 - C&ancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000FFFFF8FFFFFF
            FAFFFFF9FAFFFFFBFFFFF9F7FFFFF0EFFFFFACACDAFF555791FF25276EFF191B
            69FF151262FF19175DFF343162FF777892FFD4D5D9FFFFFFFBFFFFFFFEFFFDFD
            FDFFFFFFFFFFFFFFFFFFFFFFF5FFFFFFFCFFFFFBFFFFF6F3FFFFD0CCF6FF3734
            6CFF0B0A4EFF060757FF0A0B65FF000160FF09086AFF090760FF07054BFF0302
            34FF0B0C28FF8C8C98FFF3F4F8FFFFFFFFFFFBFBFBFFFCFCFCFFF6FFF8FFF4FF
            FFFFF3F6FFFF9492CEFF0C045BFF0A056EFF090679FF060781FF000383FF0608
            8CFF000083FF050280FF080475FF130F6FFF06024DFF000029FF515060FFFDFD
            FDFFFFFFFFFFFFFFFFFFF1FFFEFFEEF9FFFF969AD5FF0B0962FF0F0A73FF0904
            7DFF070489FF020391FF000196FF00019AFF01029AFF040291FF090582FF0903
            72FF0E0972FF0E0B5BFF000025FF5F5F6FFFFCFCFFFFFDFFFFFFF8F6FFFFD6D5
            FFFF0F0D6DFF0E0C7DFF07086AFF35379DFF03047EFF070894FF0005A2FF0004
            A6FF00039BFF05078BFF1F1B82FF211A7BFF090477FF0A0774FF0C0B5BFF0000
            2AFFABAEBDFFFBFFFFFFF3EDFFFF46428EFF090681FF090888FF393C97FFE0E4
            FFFF9899F4FF08097BFF030796FF05099EFF070B8FFF12127CFFCECAFFFFEDE8
            FFFF2A2598FF080482FF0B0875FF00004DFF353658FFF0F2FCFFB6B5FFFF1212
            76FF080892FF17169CFF9091E7FFEDEEFFFFF0F0FFFF9695D5FF0D0D79FF110F
            86FF22207AFFB3B0EEFFF4F1FFFFF3EDFFFF9D97FFFF080187FF090583FF0F0D
            71FF000036FFC3C2E2FF7377E7FF00027FFF090BA6FF06079DFF0A0C78FF9B9A
            E2FFF4F3FFFFF3F2FFFF908DD5FF11115FFFCDCAFFFFF4F2FFFFF6F5FFFF918F
            CBFF0E0B7FFF070495FF070594FF100E85FF05024AFF8582B4FF353DCDFF0007
            A1FF0A0FBEFF050AB9FF0A0DACFF151591FF9695D9FFF2F1FFFFF2F4FFFFE4E7
            FFFFF4F6FFFFEFF0FFFF8D90DBFF080A7AFF0A0EA2FF0204A8FF0205A3FF090B
            8FFF030258FF6665A3FF151AC3FF0206B8FF0307C4FF0305C7FF0507C4FF1112
            AAFF242478FFCECFF5FFF8FCFFFFFAFEFFFFF6F9FFFFB1B5E6FF13167EFF070D
            9CFF050AB3FF0309BAFF0004B0FF080A98FF090A65FF6263A7FF0F0DC5FF100E
            CCFF100CD7FF1510DDFF0B09CDFF090AA8FF21227CFFB6B8E0FFF8FBFFFFFDFF
            FFFFF6F8FFFF8A8BC3FF0B0D83FF0C0FADFF070BBEFF080AC6FF0407BDFF0509
            9EFF0C0E6DFF6568ACFF2827DBFF1310CAFF1A14DFFF1E17DEFF100EBCFF1718
            9EFFA6A9F4FFF1F3FFFFF8F6FFFFF3F0FFFFF6F5FFFFEDEEFFFF8789EFFF080B
            96FF080AB6FF0C0EC7FF0708C4FF0C0EA9FF0C0E6DFF787DBCFF4C53F0FF181B
            C4FF2722E1FF2923D4FF231E9FFFB7B7FFFFEEF1FFFFEFF0FFFF9F94E4FF3E31
            85FFB7B3EEFFECEDFFFFECEFFFFF9193EBFF0B0F9EFF1315C7FF0D0CC8FF1412
            B2FF10116CFFB4B8F2FF8086FFFF2429BAFF3532E6FF3B34DBFF9A96FFFFE4E5
            FFFFECF0FFFF898AD4FF1D1296FF2115A3FF25218BFF8989D5FFEFF0FFFFEAE9
            FFFF7B7EFFFF1010BCFF1B17CAFF1D1AACFF363787FFE4EAFFFFC4C5FFFF3C3C
            B0FF3C38DEFF4945EAFF5E61CAFFE1E6FFFF8187EAFF0A0F93FF0F0FC7FF0A09
            CFFF1212BEFF100E96FF9691ECFFB9B4FFFF504DDFFF2523C9FF2622BEFF0806
            7EFF9798D2FFF3F8FFFFEDEFFFFF8586D7FF3F3BCAFF5A57F0FF6263D5FF484D
            B4FF3C44BDFF2E35CCFF1217D7FF0D12DFFF1417D7FF2A2BCFFF403DB8FF3F3A
            B3FF3431CDFF3A38D8FF302CADFF5351AAFFF3F4FFFFF7FBFFFFF2FAFFFFE7EC
            FFFF5A59C0FF544FD2FF736FF0FF827FFDFF797BF7FF686BF1FF5256F1FF3C41
            E4FF4850F1FF494EE9FF5354EAFF5353EDFF4647EFFF2E30C4FF383797FFDADB
            FFFFF8FAFFFFFDFFFFFFF7FFFFFFF2F7FFFFDDDCFFFF6460BFFF5853C6FF7E7B
            F6FF9292FFFF9497FFFF8F93FFFF8288FFFF7B81FFFF7377FFFF5D5FF9FF4F50
            E6FF3B3DCBFF4648B8FFD7DAFFFFF3F4FFFFFDFDFFFFFFFFFCFFFBFCFFFFFBFB
            FFFFFBF6FFFFE1DDFFFF8D8CD6FF6063BEFF6F71D7FF8E90FFFF9497FFFF9294
            FFFF7E7BFFFF6E6BF7FF5355D7FF4D50BDFF7779C7FFEBEFFFFFF2F5FFFFFBFB
            FFFFFEFAFFFFFFFDFFFFFEFDFFFFFFFDFFFFFFFAFFFFFBF6FFFFEDEFFFFFBDC2
            FFFF989CFBFF7275E1FF686BDEFF6968E6FF6760E9FF736DF4FF908FFFFFC0C4
            FFFFEFF2FFFFF8FAFFFFFAFCFFFFFDFDFFFFFFFCFFFFFFFBFFFF}
          ParentFont = False
          TabOrder = 1
        end
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 256
        Top = 118
        Width = 68
        Height = 21
        DataField = 'CST_PIS'
        DataSource = DataWork
        DropDownWidth = 400
        KeyField = 'COD_CST_PIS_COFINS'
        ListField = 'COD_CST_PIS_COFINS;DESCRICAO'
        ListSource = DataCSTPis
        TabOrder = 2
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 339
        Top = 116
        Width = 68
        Height = 21
        DataField = 'CST_COFINS'
        DataSource = DataWork
        DropDownWidth = 400
        KeyField = 'COD_CST_PIS_COFINS'
        ListField = 'COD_CST_PIS_COFINS;DESCRICAO'
        ListSource = DataCSTCofins
        TabOrder = 3
      end
    end
    object TbsAliquota: TTabSheet
      Caption = 'Aliquotas para NFe e NFCe'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 812
        Height = 554
        Align = alClient
        TabOrder = 0
        object PnCadAliquota: TPanel
          Left = 2
          Top = 293
          Width = 463
          Height = 84
          Color = clBtnShadow
          TabOrder = 0
          object Label23: TLabel
            Left = 8
            Top = 5
            Width = 17
            Height = 13
            Caption = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 60
            Top = 5
            Width = 25
            Height = 13
            Caption = 'CST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 214
            Top = 5
            Width = 33
            Height = 13
            Caption = 'CFOP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 293
            Top = 5
            Width = 47
            Height = 13
            Caption = 'Aliquota'
            FocusControl = DBEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 370
            Top = 5
            Width = 52
            Height = 13
            Caption = 'Redu'#231#227'o'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 6
            Top = 93
            Width = 276
            Height = 10
            Shape = bsTopLine
          end
          object Label38: TLabel
            Left = 137
            Top = 5
            Width = 43
            Height = 13
            Caption = 'CSOSN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit6: TDBEdit
            Left = 293
            Top = 19
            Width = 71
            Height = 21
            DataField = 'ALIQUOTA'
            DataSource = DataProdAliq
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
          object DBEdit7: TDBEdit
            Left = 370
            Top = 19
            Width = 87
            Height = 21
            DataField = 'REDUCAO_BASE'
            DataSource = DataProdAliq
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
          object ComboUF: TDBLookupComboBox
            Left = 8
            Top = 19
            Width = 46
            Height = 21
            DataField = 'UF'
            DataSource = DataProdAliq
            KeyField = 'UF'
            ListField = 'UF'
            ListSource = DataUF
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object ComboCST: TDBLookupComboBox
            Left = 58
            Top = 19
            Width = 73
            Height = 21
            DataField = 'CST'
            DataSource = DataProdAliq
            DropDownWidth = 500
            KeyField = 'CODIGO'
            ListField = 'CODIGO;DESCRICAO'
            ListSource = DataCST
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
          object ComboCFOP: TDBLookupComboBox
            Left = 214
            Top = 19
            Width = 73
            Height = 21
            DataField = 'CFOP'
            DataSource = DataProdAliq
            DropDownWidth = 500
            KeyField = 'CFCOD'
            ListField = 'CFCOD;CFNOME'
            ListSource = DataCFOP
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object btnConfirmaAliq: TBitBtn
            Left = 177
            Top = 46
            Width = 137
            Height = 31
            Caption = 'Confirmar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000330B0000330B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF69473169473169473169473169
              4731694731694731694731694731694731694731694731694731694731694731
              6947316947313C511CFF00FFFF00FFFF00FFFF00FFFF00FF00900072D28A0060
              0000600000600000600000600000600000600000600000600000600000600000
              6000006000006000006000006000006000694731FF00FFFF00FFFF00FFFF00FF
              009000FFFFFF41C15E3CBE5837BB5032B84A2EB5432AB23D25AF3620AC2F1BA9
              2716A62011A2190CA012089D0C039905009800009800006000694731FF00FFFF
              00FFFF00FFFF00FF009000FFFFFF45C46441C15E3BBE5737BB5032B84A2EB543
              2AB23D25AF361FAC2E1BA92716A62011A2190CA012089D0C0299040098000060
              00694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF4CC86E46C56641C15E3C
              BE5838BB5229A63C178A212BB33E26B03720AC2F1BA92817A62112A31A0DA013
              089D0C039905006000694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF51CB
              754CC86E47C56743C26131AC48FFFFFF046706188B232CB44026B03721AC301C
              AA2917A72212A31B0DA013089D0C006000694731FF00FFFF00FFFF00FFFF00FF
              009000FFFFFF55CE7B51CB754CC86D39B052FFFFFFFFFFFFFFFFFF046706188A
              222CB44027B13922AD321DAB2B19A72414A41C0EA115006000694731FF00FFFF
              00FFFF00FFFF00FF009000FFFFFF57CF7F55CE7B40B55CFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF046706188A222CB44027B13922AD321DAB2B18A72314A41C0060
              00694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF58D08045B865FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF046706188A222CB44027B13922AD32
              1DAA2A18A723006000694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF58D0
              80FFFFFFFFFFFFFFFFFFFFFFFF3DB357FFFFFFFFFFFFFFFFFFFFFFFF04670618
              8A222CB44027B13921AD311DAA2A006000694731FF00FFFF00FFFF00FFFF00FF
              009000FFFFFF58D08058D080FFFFFFFFFFFF44B86452CC774EC971FFFFFFFFFF
              FFFFFFFFFFFFFF046706188B232DB44128B13A22AD32006000694731FF00FFFF
              00FFFF00FFFF00FF009000FFFFFF58D08058D08058D08058D08058D08056CF7D
              52CC774EC971FFFFFFFFFFFFFFFFFFFFFFFF056707198B242DB54229B13B0060
              00694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF58D08058D08058D08058
              D08058D08058D08056CF7D52CC774EC970FFFFFFFFFFFFFFFFFFFFFFFF056707
              198B242DB543006000694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF58D0
              8058D08058D08058D08058D08058D08058D08056CF7D52CC774EC970FFFFFFFF
              FFFFFFFFFFFFFFFF046707198B24006000694731FF00FFFF00FFFF00FFFF00FF
              009000FFFFFF58D08058D08058D08058D08058D08058D08058D08058D08056CF
              7D52CC774EC970FFFFFFFFFFFFFFFFFFFFFFFF2BA840006000694731FF00FFFF
              00FFFF00FFFF00FF009000FFFFFF58D08058D08058D08058D08058D08058D080
              58D08058D08057CF7F56CF7D52CC774EC970FFFFFFFFFFFF32AC493BBD560060
              00694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF58D08058D08058D08058
              D08058D08058D08058D08058D08058D08058D08057CF7E54CE7A50CB744CC86D
              46C46640C15D006000694731FF00FFFF00FFFF00FFFF00FF009000FFFFFF58D0
              8058D08058D08058D08058D08058D08058D08058D08058D08058D08058D08057
              CF7E54CE7A50CB744BC86C47C566006000694731FF00FFFF00FFFF00FFFF00FF
              009000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76D48F694731FF00FFFF
              00FFFF00FFFF00FFFF00FF009000009000009000009000009000009000009000
              0090000090000090000090000090000090000090000090000090000090000090
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            TabOrder = 6
            OnClick = btnConfirmaAliqClick
          end
          object BitBtn3: TBitBtn
            Left = 320
            Top = 46
            Width = 137
            Height = 31
            Caption = 'Cancelar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FF000085000085FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000850209A8040AA43D43ACFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF000085000CB0000BAF0009AB000085FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF000085000085FF00FF0000850F22C8000FB6000DB3000B
              AF010AAA000085FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF00008508089B07079A0000853D43AC2B4DFC
              081CC6000FB7000DB3000BAF040CA73D43ACFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF3D43AC00008501019700009804059900
              00852C40D42D50FF2242F00012BC000FB7000DB3000BAF000085FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000850A0B9C0000980000
              980303982332C8FF00FF3D43AC2848F32D50FE1730DB0011BB000FB7000DB301
              0CAF000085FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3D43AC000085010197
              0000980000980202982332C8FF00FFFF00FFFF00FF4956C93353FB3D5CFB0B20
              C80011BB000FB7000EB4010BAD000085FF00FFFF00FFFF00FFFF00FF0000850B
              0C9B0000980000980000980202992332C8FF00FFFF00FFFF00FFFF00FFFF00FF
              3140CC4C68FE4059EE0115C00012BB0010B8000EB4030DAB000085FF00FF3D43
              AC00008501039C00009A0000980000980101972332C8FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF3747D2627AFD2B41DA0014BF0012BC0010B8000EB4
              0A12AA0000850E13A60006A50004A100029D00009A0101972332C8FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B48CC6C80F70F25CA00
              14C00012BC0010B8000EB4010CAE000AAD0008A90006A50004A101039D2332C8
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF3843C25063E50117C40014C00012BC0010B8000EB5000CB1000AAD0008A901
              07A42332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF3842BD0B21C90016C40014C00012BC0010B8000E
              B5000CB1010BAC2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF404ABD0018C90018C80016C4
              0014C00012BD0010B9000EB5191EABFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2332C8011CCE00
              1BD0001ACC0018C80016C40014C00012BD0010B9010DB02332C8FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2332
              C8011ED1001FD8001ED4001CD0001ACC0018C80016C50014C10012BD0010B903
              0FB02332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF2332C8021FD30024E00022DC0020D8001ED4001CD01D37DD293ED70E28
              D50015C20013BD0011BA0711AF2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF2332C80421D50028E70026E40024E00022DC0323DA314EED
              4B5EE62332C82332C81733DF0218C50013BE0011BA0A14AF2332C8FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF2332C80927D5002CEF002AEC0028E80026E40E
              31E64360F84A5EE62332C8FF00FFFF00FF2332C81A34DD0820CC0013BE0011BA
              0812AF2332C8FF00FFFF00FFFF00FFFF00FF2332C8112BD2002FF7002EF4002C
              F0002AEC1E42F24C69FD4B5EE72332C8FF00FFFF00FFFF00FFFF00FF2235D223
              32C81730D70013BE0011BA030FB02332C8FF00FFFF00FFFF00FF2332C80127E3
              0030F8002FF70532F52F52FA4F6BFE4B5FE72332C8FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF2332C82B40D9091CC40011BA020FB22332C8FF00FFFF
              00FFFF00FF2332C8002BEE103CF93B5CFE4F6CFE4B61E82332C8FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2235D22332C82235CE0012
              BB010FB32332C8FF00FFFF00FFFF00FF2332C83046E04965FB4A5FE82332C8FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF2332C83240CB0D1FC1010DAF2332C8FF00FFFF00FFFF00FF2332C82332
              C82332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF2332C82332C82332C8FF00FF}
            ParentFont = False
            TabOrder = 7
            OnClick = BitBtn3Click
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 137
            Top = 19
            Width = 73
            Height = 21
            DataField = 'CSOSN'
            DataSource = DataProdAliq
            DropDownWidth = 500
            KeyField = 'CODIGO'
            ListField = 'CODIGO;DESCRICAO'
            ListSource = DataCSOSN
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
        end
        object GridAliquota: TDBGrid
          Left = 2
          Top = 15
          Width = 463
          Height = 272
          DataSource = DataProdAliq
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu2
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = GridAliquotaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'UF'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CST'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOP'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTA'
              Title.Alignment = taCenter
              Title.Caption = 'Aliquota'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REDUCAO_BASE'
              Title.Alignment = taCenter
              Title.Caption = 'Redu'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CSOSN'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end>
        end
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmProdutos.CdsProdutos
    OnDataChange = DataWorkDataChange
    Left = 904
    Top = 104
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 1040
    Top = 160
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    object ActProdComposto: TAction
      Caption = 'Composto'
      OnExecute = ActProdCompostoExecute
    end
    object ActGrupo: TAction
      Hint = 'Cadastrar Grupo'
      OnExecute = ActGrupoExecute
    end
    object ActClassifica: TAction
      Hint = 'Cadastrar Classifica'#231#227'o'
    end
    object ActFornecedor: TAction
      Caption = 'F8 - Fornecedores'
      ShortCut = 119
      OnExecute = ActFornecedorExecute
    end
    object ActGerarDadosEstoque: TAction
      Caption = 'Gerar Dados do Estoque'
      ShortCut = 49227
      OnExecute = ActGerarDadosEstoqueExecute
    end
  end
  object DataGrupo: TDataSource
    Left = 1011
    Top = 104
  end
  object DataSubGrupo1: TDataSource
    Left = 995
    Top = 40
  end
  object DataSubGrupo2: TDataSource
    Left = 854
    Top = 256
  end
  object DataComissao: TDataSource
    DataSet = DmWorkCom.CdsTabelaComissao
    Left = 1012
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 972
    Top = 168
    object AcertarEstoqueManual1: TMenuItem
      Caption = 'Acertar Estoque Manual'
      ShortCut = 49223
      OnClick = AcertarEstoqueManual1Click
    end
    object GerarDadosdoEstoque1: TMenuItem
      Action = ActGerarDadosEstoque
    end
  end
  object DataEstoque: TDataSource
    Left = 852
    Top = 96
  end
  object DataProdAliq: TDataSource
    DataSet = DmProdutos.CdsProduto_Aliquota
    Left = 903
    Top = 163
  end
  object DataCFOP: TDataSource
    DataSet = DmWorkCom.CdsCFOP
    Left = 914
    Top = 240
  end
  object DataCST: TDataSource
    Left = 900
    Top = 40
  end
  object PopupMenu2: TPopupMenu
    Left = 852
    Top = 200
    object InserirAliquotaparaoproduto1: TMenuItem
      Caption = 'Inserir Aliquota para o produto'
      ShortCut = 45
      OnClick = InserirAliquotaparaoproduto1Click
    end
    object DeletarAliquotadoproduto1: TMenuItem
      Caption = 'Deletar Aliquota do produto'
      ShortCut = 46
      OnClick = DeletarAliquotadoproduto1Click
    end
  end
  object DataUF: TDataSource
    Left = 852
    Top = 144
  end
  object DataNCM: TDataSource
    Left = 940
    Top = 312
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 852
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagem JPeg|*.jpg|Todos os arquivos|*.*'
    Left = 948
    Top = 104
  end
  object DataCest: TDataSource
    DataSet = DmProdutos.CdsCest
    Left = 860
    Top = 323
  end
  object DataCSTPis: TDataSource
    DataSet = DmProdutos.CdsCSTPisCofins
    Left = 940
    Top = 379
  end
  object DataCSTCofins: TDataSource
    DataSet = DmProdutos.CdsCSTPisCofins
    Left = 868
    Top = 395
  end
  object DataProdCor: TDataSource
    DataSet = DmProdutos.CdsProdutoCor
    Left = 956
    Top = 457
  end
  object DataProdTamanho: TDataSource
    DataSet = DmProdutos.CdsProdutoTamanho
    Left = 868
    Top = 457
  end
  object DataCSOSN: TDataSource
    DataSet = DmWorkCom.CdsCSOSN
    Left = 668
    Top = 296
  end
end
