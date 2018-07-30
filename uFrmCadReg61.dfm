inherited FrmCadReg61: TFrmCadReg61
  Left = 267
  Top = 170
  Caption = 'Movimento Manual'
  ClientHeight = 393
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label20: TLabel [0]
    Left = 344
    Top = 296
    Width = 38
    Height = 13
    Caption = 'Aliquota'
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 680
    Height = 393
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 529
        Height = 365
        Align = alClient
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 10
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 104
          Top = 10
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 200
          Top = 10
          Width = 46
          Height = 13
          Caption = 'N'#186' Ordem'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 342
          Top = 11
          Width = 24
          Height = 13
          Caption = 'Serie'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 8
          Top = 96
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 8
          Top = 136
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit5
        end
        object Label9: TLabel
          Left = 128
          Top = 136
          Width = 21
          Height = 13
          Caption = 'Tipo'
          FocusControl = DBEdit7
        end
        object Label11: TLabel
          Left = 248
          Top = 136
          Width = 38
          Height = 13
          Caption = 'Especie'
          FocusControl = DBEdit9
        end
        object Label12: TLabel
          Left = 8
          Top = 216
          Width = 55
          Height = 13
          Caption = 'Quantidade'
          FocusControl = DBEdit10
        end
        object Label13: TLabel
          Left = 112
          Top = 216
          Width = 24
          Height = 13
          Caption = 'Valor'
          FocusControl = DBEdit11
        end
        object Label14: TLabel
          Left = 248
          Top = 216
          Width = 24
          Height = 13
          Caption = 'Total'
          FocusControl = DBEdit12
        end
        object Label15: TLabel
          Left = 112
          Top = 256
          Width = 38
          Height = 13
          Caption = 'Aliquota'
          FocusControl = DBEdit13
        end
        object Bevel1: TBevel
          Left = 8
          Top = 92
          Width = 505
          Height = 6
          Shape = bsTopLine
        end
        object SpeedButton1: TSpeedButton
          Left = 384
          Top = 111
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label16: TLabel
          Left = 8
          Top = 49
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object Label17: TLabel
          Left = 8
          Top = 256
          Width = 53
          Height = 13
          Caption = 'Base ICMS'
          FocusControl = DBEdit14
        end
        object Label18: TLabel
          Left = 184
          Top = 256
          Width = 53
          Height = 13
          Caption = 'Valor ICMS'
          FocusControl = DBEdit15
        end
        object Label19: TLabel
          Left = 8
          Top = 297
          Width = 44
          Height = 13
          Caption = 'Valor PIS'
          FocusControl = DBEdit16
        end
        object Label21: TLabel
          Left = 112
          Top = 297
          Width = 66
          Height = 13
          Caption = 'Valor COFINS'
          FocusControl = DBEdit17
        end
        object Label10: TLabel
          Left = 286
          Top = 11
          Width = 35
          Height = 13
          Caption = 'Modelo'
          FocusControl = DBEdit8
        end
        object Label22: TLabel
          Left = 8
          Top = 176
          Width = 21
          Height = 13
          Caption = 'CST'
          FocusControl = DBEdit18
        end
        object Label23: TLabel
          Left = 72
          Top = 176
          Width = 28
          Height = 13
          Caption = 'CFOP'
          FocusControl = DBEdit19
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 26
          Width = 81
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 26
          Width = 81
          Height = 21
          DataField = 'DATA_EMISSAO'
          DataSource = DataWork
          Enabled = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 200
          Top = 26
          Width = 73
          Height = 21
          DataField = 'NUM_ORDEM'
          DataSource = DataWork
          TabOrder = 2
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 342
          Top = 27
          Width = 30
          Height = 21
          DataField = 'SERIE'
          DataSource = DataWork
          Enabled = False
          TabOrder = 4
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 112
          Width = 369
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = DataWork
          ReadOnly = True
          TabOrder = 6
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 152
          Width = 105
          Height = 21
          DataField = 'MARCA'
          DataSource = DataWork
          TabOrder = 7
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 128
          Top = 152
          Width = 105
          Height = 21
          DataField = 'TIPO'
          DataSource = DataWork
          TabOrder = 8
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 248
          Top = 152
          Width = 113
          Height = 21
          DataField = 'ESPECIE'
          DataSource = DataWork
          TabOrder = 9
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 8
          Top = 232
          Width = 89
          Height = 21
          DataField = 'QUANTIDADE'
          DataSource = DataWork
          TabOrder = 12
          OnExit = DBEdit10Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 112
          Top = 232
          Width = 121
          Height = 21
          DataField = 'VALOR'
          DataSource = DataWork
          TabOrder = 13
          OnExit = DBEdit10Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 248
          Top = 232
          Width = 121
          Height = 21
          DataField = 'TOTAL'
          DataSource = DataWork
          ReadOnly = True
          TabOrder = 14
          OnExit = DBEdit10Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 112
          Top = 272
          Width = 57
          Height = 21
          DataField = 'ALIQ_ICMS'
          DataSource = DataWork
          ReadOnly = True
          TabOrder = 16
          OnKeyPress = DBEdit1KeyPress
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 64
          Width = 369
          Height = 21
          DataField = 'ID_CLIENTE'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'NOME;ID'
          ListSource = DataCliente
          TabOrder = 5
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 8
          Top = 272
          Width = 89
          Height = 21
          DataField = 'BASE_ICMS'
          DataSource = DataWork
          TabOrder = 15
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 184
          Top = 272
          Width = 105
          Height = 21
          DataField = 'VALOR_ICMS'
          DataSource = DataWork
          TabOrder = 17
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 313
          Width = 89
          Height = 21
          DataField = 'VALOR_PIS'
          DataSource = DataWork
          TabOrder = 18
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 112
          Top = 313
          Width = 97
          Height = 21
          DataField = 'VALOR_COFINS'
          DataSource = DataWork
          TabOrder = 19
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 286
          Top = 27
          Width = 41
          Height = 21
          DataField = 'MODELO'
          DataSource = DataWork
          Enabled = False
          TabOrder = 3
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit18: TDBEdit
          Left = 8
          Top = 192
          Width = 49
          Height = 21
          DataField = 'CST'
          DataSource = DataWork
          TabOrder = 10
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit19: TDBEdit
          Left = 72
          Top = 192
          Width = 49
          Height = 21
          DataField = 'CFOP'
          DataSource = DataWork
          TabOrder = 11
          OnKeyPress = DBEdit1KeyPress
        end
      end
      object Panel1: TPanel
        Left = 529
        Top = 0
        Width = 143
        Height = 365
        Align = alRight
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        inline FrameBotaoVertical1: TFrameBotaoVertical
          Left = 6
          Top = 6
          Width = 136
          Height = 187
          TabOrder = 0
          ExplicitLeft = 6
          ExplicitTop = 6
          ExplicitWidth = 136
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
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 672
        Height = 365
        Align = alClient
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 8
          Top = 16
          Width = 129
          Height = 67
          Caption = ' Per'#237'odo '
          TabOrder = 0
          object Label1: TLabel
            Left = 11
            Top = 19
            Width = 14
            Height = 13
            Caption = 'De'
          end
          object Label2: TLabel
            Left = 11
            Top = 43
            Width = 6
            Height = 13
            Caption = #224
          end
          object Datai: TDateTimePicker
            Left = 30
            Top = 16
            Width = 90
            Height = 21
            Date = 40370.917575590280000000
            Time = 40370.917575590280000000
            TabOrder = 0
          end
          object Dataf: TDateTimePicker
            Left = 30
            Top = 39
            Width = 90
            Height = 21
            Date = 40370.917585173610000000
            Time = 40370.917585173610000000
            TabOrder = 1
          end
        end
        object BitBtn1: TBitBtn
          Left = 160
          Top = 39
          Width = 177
          Height = 43
          Action = ActLocalizar
          Caption = 'Localizar Registros'
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
          TabOrder = 1
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 88
          Width = 657
          Height = 270
          Caption = ' Registros '
          TabOrder = 2
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 653
            Height = 253
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
                FieldName = 'NUM_ORDEM'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Ordem'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_EMISSAO'
                Title.Alignment = taCenter
                Title.Caption = 'Emiss'#227'o'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Width = 283
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Quant'
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Total'
                Width = 73
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited DataWork: TDataSource
    Left = 552
    Top = 224
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 616
    Top = 232
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    object ActLocalizar: TAction
      Category = 'Botoes'
      Caption = 'Localizar Registros'
      OnExecute = ActLocalizarExecute
    end
  end
  object DataCliente: TDataSource
    Left = 573
    Top = 288
  end
end
