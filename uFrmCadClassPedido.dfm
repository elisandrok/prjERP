inherited FrmCadClassPedido: TFrmCadClassPedido
  Left = 280
  Top = 232
  Caption = 'Classifica'#231#227'o'
  ClientHeight = 286
  ClientWidth = 471
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 477
  ExplicitHeight = 311
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 471
    Height = 286
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consultar'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 463
        Height = 258
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 459
          Height = 241
          Align = alClient
          DataSource = DataWork
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 297
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIXAR_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Est.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GERAR_MOVIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'mov.'
              Width = 64
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 330
        Height = 258
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 9
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 8
          Top = 45
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DbDescricao
        end
        object Label3: TLabel
          Left = 8
          Top = 82
          Width = 65
          Height = 13
          Caption = 'Modelo Fiscal'
        end
        object Label4: TLabel
          Left = 83
          Top = 81
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
        end
        object Label6: TLabel
          Left = 120
          Top = 81
          Width = 43
          Height = 13
          Caption = 'Natureza'
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
        end
        object DbDescricao: TDBEdit
          Left = 8
          Top = 59
          Width = 309
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = DataWork
          TabOrder = 1
        end
        object DbChMovimento: TDBCheckBox
          Left = 8
          Top = 217
          Width = 161
          Height = 17
          Caption = 'Gerar Movimento de Contas'
          DataField = 'GERAR_MOVIMENTO'
          DataSource = DataWork
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DbEstoque: TDBCheckBox
          Left = 8
          Top = 201
          Width = 119
          Height = 17
          Caption = 'Movimenta Estoque'
          DataField = 'BAIXAR_ESTOQUE'
          DataSource = DataWork
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DbRadioTipoMov: TDBRadioGroup
          Left = 237
          Top = 119
          Width = 86
          Height = 60
          Caption = ' Movimento de: '
          DataField = 'TIPO_MOVIMENTO'
          DataSource = DataWork
          Items.Strings = (
            '0 - Entrada'
            '1 - Sa'#237'da')
          TabOrder = 6
          Values.Strings = (
            '0'
            '1')
        end
        object DbRadioTipo: TDBRadioGroup
          Left = 8
          Top = 119
          Width = 226
          Height = 60
          Caption = ' Tipo '
          Columns = 2
          DataField = 'TIPO'
          DataSource = DataWork
          Items.Strings = (
            '0 - Pedido/Compra'
            '1 - Or'#231'amento'
            '2 - Pre-Venda'
            '3 - DAV'
            '4 - Servi'#231'o')
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object DBComboBox1: TDBComboBox
          Left = 8
          Top = 96
          Width = 69
          Height = 21
          DataField = 'MODELO'
          DataSource = DataWork
          Items.Strings = (
            '01'
            '1B'
            '02'
            '08'
            '2D'
            '55'
            '65')
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 83
          Top = 95
          Width = 29
          Height = 21
          DataField = 'SERIE'
          DataSource = DataWork
          TabOrder = 3
        end
        object DBCheckBox1: TDBCheckBox
          Left = 9
          Top = 183
          Width = 184
          Height = 17
          Caption = 'Devolu'#231#227'o de mercadorias'
          DataField = 'DEVOLUCAO'
          DataSource = DataWork
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 234
          Width = 161
          Height = 17
          Caption = 'Apropriar ICMS de Apura'#231#227'o'
          DataField = 'APROPRIAR_ICMS_AP'
          DataSource = DataWork
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 120
          Top = 95
          Width = 198
          Height = 21
          DataField = 'NATOP'
          DataSource = DataWork
          DropDownWidth = 600
          KeyField = 'CFNOME'
          ListField = 'CFNOME'
          ListSource = DataCFOP
          TabOrder = 10
        end
        object DBCheckBox3: TDBCheckBox
          Left = 184
          Top = 184
          Width = 97
          Height = 17
          Caption = 'Exibir na lista'
          DataField = 'EXIBE_LISTA'
          DataSource = DataWork
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object Panel1: TPanel
        Left = 330
        Top = 0
        Width = 133
        Height = 258
        Align = alRight
        TabOrder = 1
        inline Frame: TFrameBotaoVertical
          Left = 0
          Top = 4
          Width = 136
          Height = 182
          TabOrder = 0
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
    DataSet = DmWorkCom.CdsPedidoClass
    Left = 128
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 192
  end
  object DataCFOP: TDataSource
    DataSet = DmWorkCom.CdsCFOP
    Left = 252
    Top = 40
  end
end
