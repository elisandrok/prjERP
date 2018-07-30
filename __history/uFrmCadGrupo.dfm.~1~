inherited FrmCadGrupo: TFrmCadGrupo
  Left = 309
  Top = 234
  Caption = 'Cadastro de Grupos/SubGrupos'
  ClientHeight = 303
  ClientWidth = 473
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 473
    Height = 303
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Grupos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 329
        Height = 275
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 14
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 12
          Top = 54
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DbDescricao
        end
        object DbID: TDBEdit
          Left = 12
          Top = 30
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbDescricao: TDBEdit
          Left = 12
          Top = 70
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbChAtivo: TDBCheckBox
          Left = 12
          Top = 94
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'ATIVO'
          DataSource = DataWork
          TabOrder = 2
          ValueChecked = 'T'
          ValueUnchecked = 'F'
          OnKeyPress = DbIDKeyPress
        end
        object DBGrid2: TDBGrid
          Left = 5
          Top = 119
          Width = 320
          Height = 152
          DataSource = DataWork
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 187
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVO'
              Title.Caption = 'Ativo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVO_VENDA'
              Title.Caption = 'Ativo Venda'
              Visible = True
            end>
        end
        object DbChAtivoVenda: TDBCheckBox
          Left = 128
          Top = 94
          Width = 97
          Height = 17
          Caption = 'Ativo para Venda'
          DataField = 'ATIVO_VENDA'
          DataSource = DataWork
          TabOrder = 3
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
      end
      object Panel1: TPanel
        Left = 329
        Top = 0
        Width = 136
        Height = 275
        Align = alRight
        TabOrder = 1
        inline Frame1: TFrameBotaoVertical
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
    object TabSheet2: TTabSheet
      Caption = '&SubGrupo'
      ImageIndex = 1
      OnEnter = TabSheet2Enter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 42
        Width = 265
        Height = 232
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 261
          Height = 215
          Align = alClient
          DataSource = DataSubGrupo
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descricao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVO'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              PickList.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5')
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 272
        Top = 0
        Width = 185
        Height = 153
        Caption = ' Tipos '
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 65
          Height = 16
          Caption = '0 - Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 44
          Width = 74
          Height = 16
          Caption = '1 - Modelo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 64
          Width = 76
          Height = 16
          Caption = '2 - Detalhe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 84
          Width = 46
          Height = 16
          Caption = '3 - Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 104
          Width = 90
          Height = 16
          Caption = '4 - Categoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 124
          Width = 94
          Height = 16
          Caption = '5 - Deriva'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 265
        Height = 43
        Caption = ' Grupo '
        TabOrder = 2
        object DbGrupoDescricao: TDBEdit
          Left = 8
          Top = 16
          Width = 249
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
        end
      end
      object Button1: TButton
        Left = 272
        Top = 160
        Width = 185
        Height = 33
        Caption = 'Confirmar os Dados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  inherited DataWork: TDataSource
    Left = 160
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 224
  end
  object DataSubGrupo: TDataSource
    Left = 244
    Top = 104
  end
end
