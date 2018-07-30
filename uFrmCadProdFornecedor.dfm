inherited FrmCadProdFornecedor: TFrmCadProdFornecedor
  Left = 289
  Top = 139
  Caption = 'Cadastro de Fornecedores do produto'
  ClientHeight = 340
  ClientWidth = 571
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 571
    Height = 340
    ActivePage = TabSheet1
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
        Width = 563
        Height = 312
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 559
          Height = 295
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
          OnTitleClick = DBGrid1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'IDFORNECEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_FORNECEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Fornecedor'
              Width = 281
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_COMPRA'
              Title.Alignment = taCenter
              Title.Caption = 'Valor compra'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_ULTCOMPRA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Ult. Compra'
              Width = 87
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
        Width = 425
        Height = 312
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 8
          Top = 56
          Width = 62
          Height = 13
          Caption = 'C'#243'd. Produto'
          FocusControl = DbIDProduto
        end
        object Label3: TLabel
          Left = 8
          Top = 96
          Width = 79
          Height = 13
          Caption = 'C'#243'd. Fornecedor'
          FocusControl = DbIDFornecedor
        end
        object Label4: TLabel
          Left = 8
          Top = 136
          Width = 113
          Height = 13
          Caption = 'NOME_FORNECEDOR'
        end
        object Label5: TLabel
          Left = 8
          Top = 176
          Width = 63
          Height = 13
          Caption = 'Valor Compra'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 112
          Top = 176
          Width = 81
          Height = 13
          Caption = 'Data Ult. Compra'
          FocusControl = DBEdit2
        end
        object DbID: TDBEdit
          Left = 8
          Top = 32
          Width = 81
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
        end
        object DbIDProduto: TDBEdit
          Left = 8
          Top = 72
          Width = 81
          Height = 21
          DataField = 'IDPRODUTO'
          DataSource = DataWork
          Enabled = False
          TabOrder = 1
        end
        object DbIDFornecedor: TDBEdit
          Left = 8
          Top = 112
          Width = 81
          Height = 21
          DataField = 'IDFORNECEDOR'
          DataSource = DataWork
          TabOrder = 2
        end
        object ComboFornecedor: TDBLookupComboBox
          Left = 8
          Top = 152
          Width = 361
          Height = 21
          DataField = 'IDFORNECEDOR'
          DataSource = DataWork
          ListSource = DataFornecedor
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 192
          Width = 81
          Height = 21
          DataField = 'VALOR_COMPRA'
          DataSource = DataWork
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 112
          Top = 192
          Width = 81
          Height = 21
          DataField = 'DATA_ULTCOMPRA'
          DataSource = DataWork
          TabOrder = 5
        end
      end
      object Panel1: TPanel
        Left = 425
        Top = 0
        Width = 138
        Height = 312
        Align = alRight
        TabOrder = 1
        inline Frame: TFrameBotaoVertical
          Left = 2
          Top = 2
          Width = 136
          Height = 182
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
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
    Left = 224
    Top = 264
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 296
    Top = 272
  end
  object DataFornecedor: TDataSource
    Left = 132
    Top = 272
  end
end
