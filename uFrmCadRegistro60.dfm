inherited FrmCadRegistro60: TFrmCadRegistro60
  Left = 270
  Top = 138
  Caption = 'Cadastro de Redu'#231#245'es'
  ClientHeight = 460
  ClientWidth = 575
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 575
    Height = 460
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 567
        Height = 432
        Align = alClient
        TabOrder = 0
        object GroupBox4: TGroupBox
          Left = 8
          Top = 86
          Width = 552
          Height = 338
          TabOrder = 0
          object Grid60M: TDBGrid
            Left = 2
            Top = 15
            Width = 548
            Height = 321
            Align = alClient
            DataSource = DataWork
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA_MOVIMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIAECF'
                Title.Alignment = taCenter
                Title.Caption = 'Serial do ECF'
                Width = 134
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTADOR_REINICIO'
                Title.Alignment = taCenter
                Title.Caption = 'CRO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTADOR_REDUCAO'
                Title.Alignment = taCenter
                Title.Caption = 'CRZ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDA_BRUTA'
                Title.Alignment = taCenter
                Title.Caption = 'Venda Bruta'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GRANDE_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Grande Total'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAIXA'
                Title.Alignment = taCenter
                Title.Caption = 'Caixa'
                Visible = True
              end>
          end
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 16
          Width = 129
          Height = 65
          Caption = ' Per'#237'odo '
          TabOrder = 1
          object Label13: TLabel
            Left = 8
            Top = 16
            Width = 14
            Height = 13
            Caption = 'De'
          end
          object Label14: TLabel
            Left = 8
            Top = 40
            Width = 6
            Height = 13
            Caption = #224
          end
          object Datai: TDateTimePicker
            Left = 26
            Top = 16
            Width = 93
            Height = 21
            Date = 40373.892816469910000000
            Time = 40373.892816469910000000
            TabOrder = 0
          end
          object Dataf: TDateTimePicker
            Left = 26
            Top = 37
            Width = 93
            Height = 21
            Date = 40373.892828773150000000
            Time = 40373.892828773150000000
            TabOrder = 1
          end
        end
        object BitBtn1: TBitBtn
          Left = 152
          Top = 39
          Width = 185
          Height = 41
          Cursor = crHandPoint
          Action = Actlocalizar
          Caption = 'Localizar Registros 60'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000424242777777F1F1F1C0C0C000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00424242777777B2B2B2C0C0C0F1F1F1C0C0C000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00424242777777B2B2B2C0C0C0F1F1F1C0C0C000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000099CC0099CC0000000099CC00000000CCFF00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000099CC00CCFF00000000CCFF00000000CCFF00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000099CC00CCFF00000000CCFF00000000CCFF00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000099
            CC00CCFF00CCFF00000000CCFF00000000FFFF00FFFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000099CC0099
            CC00CCFF00CCFF00000000FFFF00000000FFFF00FFFF00FFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000099CC0099CC00CC
            FF00CCFF00000000FFFF00FFFF00FFFF00000000FFFF00FFFF00FFFF00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000099CC0099CC00CCFF00CC
            FF00CCFF00000000FFFF00FFFF00FFFF00000000FFFF00FFFF00FFFF00FFFF00
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000099CC00CCFF00CCFF00CC
            FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF00FFFF00FFFF00
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000099CC0099CC00CCFF00CCFF00CC
            FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF00FFFF00FFFF00
            FFFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000099CC0099CC00CCFF00CCFF00CC
            FF00000000FFFF00000000FFFF00000000FFFF00000000FFFF00FFFF00FFFF00
            FFFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000099CC0099CC00CCFF00CCFF00CC
            FF00CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000099CC0099CC00CCFF00CCFF00CC
            FF00CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000099CC0099CC00CCFF00CCFF00CC
            FF00CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000099CC00CCFF00CCFF00CC
            FF00CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000099CC0099CC00CCFF00CC
            FF00CCFF00CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000099CC0099CC00CC
            FF00CCFF00CCFF00CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000099CC0099
            CC00CCFF00CCFF00CCFF00CCFF00FFFF00FFFF00FFFF00FFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000099CC00CCFF00CCFF00CCFF00CCFF00CCFF00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 425
        Height = 432
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 83
          Height = 13
          Caption = 'DATA_EMISSAO'
          FocusControl = DbDataEmissao
        end
        object Label3: TLabel
          Left = 120
          Top = 56
          Width = 85
          Height = 13
          Caption = 'HORA_EMISSAO'
          FocusControl = DbHoraEmissao
        end
        object Label4: TLabel
          Left = 224
          Top = 56
          Width = 101
          Height = 13
          Caption = 'DATA_MOVIMENTO'
          FocusControl = DbDataMov
        end
        object Label5: TLabel
          Left = 16
          Top = 96
          Width = 52
          Height = 13
          Caption = 'SERIAECF'
          FocusControl = Dbserial
        end
        object Label6: TLabel
          Left = 16
          Top = 136
          Width = 23
          Height = 13
          Caption = 'CRO'
          FocusControl = DbCRO
        end
        object Label7: TLabel
          Left = 84
          Top = 136
          Width = 22
          Height = 13
          Caption = 'CRZ'
          FocusControl = DbCRZ
        end
        object Label8: TLabel
          Left = 155
          Top = 136
          Width = 53
          Height = 13
          Caption = 'COO Inicial'
          FocusControl = DbCOOI
        end
        object Label9: TLabel
          Left = 224
          Top = 136
          Width = 48
          Height = 13
          Caption = 'COO Final'
          FocusControl = DbCOOF
        end
        object Label10: TLabel
          Left = 16
          Top = 176
          Width = 59
          Height = 13
          Caption = 'Venda Bruta'
          FocusControl = DbVendaBruta
        end
        object Label11: TLabel
          Left = 157
          Top = 176
          Width = 62
          Height = 13
          Caption = 'Grande Total'
          FocusControl = DbGrandetotal
        end
        object Label12: TLabel
          Left = 224
          Top = 96
          Width = 31
          Height = 13
          Caption = 'CAIXA'
          FocusControl = DbCaixa
        end
        object DbID: TDBEdit
          Left = 16
          Top = 32
          Width = 73
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbDataEmissao: TDBEdit
          Left = 16
          Top = 72
          Width = 81
          Height = 21
          DataField = 'DATA_EMISSAO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbHoraEmissao: TDBEdit
          Left = 120
          Top = 72
          Width = 81
          Height = 21
          DataField = 'HORA_EMISSAO'
          DataSource = DataWork
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DbDataMov: TDBEdit
          Left = 224
          Top = 72
          Width = 81
          Height = 21
          DataField = 'DATA_MOVIMENTO'
          DataSource = DataWork
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object Dbserial: TDBEdit
          Left = 16
          Top = 112
          Width = 185
          Height = 21
          DataField = 'SERIAECF'
          DataSource = DataWork
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DbCRO: TDBEdit
          Left = 16
          Top = 152
          Width = 57
          Height = 21
          DataField = 'CONTADOR_REINICIO'
          DataSource = DataWork
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object DbCRZ: TDBEdit
          Left = 84
          Top = 152
          Width = 57
          Height = 21
          DataField = 'CONTADOR_REDUCAO'
          DataSource = DataWork
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
        object DbCOOI: TDBEdit
          Left = 155
          Top = 152
          Width = 57
          Height = 21
          DataField = 'COO_INICIAL'
          DataSource = DataWork
          TabOrder = 8
          OnKeyPress = DbIDKeyPress
        end
        object DbCOOF: TDBEdit
          Left = 224
          Top = 152
          Width = 57
          Height = 21
          DataField = 'COO_FINAL'
          DataSource = DataWork
          TabOrder = 9
          OnKeyPress = DbIDKeyPress
        end
        object DbVendaBruta: TDBEdit
          Left = 16
          Top = 192
          Width = 126
          Height = 21
          DataField = 'VENDA_BRUTA'
          DataSource = DataWork
          TabOrder = 10
          OnKeyPress = DbIDKeyPress
        end
        object DbGrandetotal: TDBEdit
          Left = 157
          Top = 192
          Width = 124
          Height = 21
          DataField = 'GRANDE_TOTAL'
          DataSource = DataWork
          TabOrder = 11
          OnKeyPress = DbIDKeyPress
        end
        object DbCaixa: TDBEdit
          Left = 224
          Top = 112
          Width = 43
          Height = 21
          DataField = 'CAIXA'
          DataSource = DataWork
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 219
          Width = 393
          Height = 201
          Caption = ' Registro 60 Anal'#237'tico '
          TabOrder = 12
          object Grid60A: TDBGrid
            Left = 2
            Top = 15
            Width = 389
            Height = 184
            Hint = 'Ap'#243's Digitar os dados, pressione <ENTER> para salvar os mesmo!'
            Align = alClient
            DataSource = Data60A
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = Grid60AEnter
            OnKeyPress = Grid60AKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_REG60M'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAIXA'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Caixa'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTA_TRIB'
                Title.Alignment = taCenter
                Title.Caption = 'Aliquota'
                Width = 109
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTALIZADOR'
                Title.Alignment = taCenter
                Title.Caption = 'Totalizador'
                Width = 100
                Visible = True
              end>
          end
        end
      end
      object Panel1: TPanel
        Left = 425
        Top = 0
        Width = 142
        Height = 432
        Align = alRight
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        inline FrameBotaoVertical1: TFrameBotaoVertical
          Left = 5
          Top = 4
          Width = 136
          Height = 182
          TabOrder = 0
          ExplicitLeft = 5
          ExplicitTop = 4
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
            Caption = 'F7 - &Relatorio'
          end
          inherited BtnEncerrar: TBitBtn
            Action = ActEncerrar
            Caption = 'F10 - &Encerrar'
          end
        end
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.Cds60M
    OnDataChange = DataWorkDataChange
    Left = 448
    Top = 240
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 512
    Top = 240
    object Actlocalizar: TAction
      Category = 'Botoes'
      Caption = 'Localizar Registros 60'
      OnExecute = ActlocalizarExecute
    end
  end
  object Data60A: TDataSource
    DataSet = DmWorkCom.Cds60A
    Left = 452
    Top = 295
  end
end
