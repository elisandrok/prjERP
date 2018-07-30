inherited FrmCadPerfil: TFrmCadPerfil
  Left = 277
  Top = 197
  Caption = 'Cadastro de Perfil'
  ClientHeight = 214
  ClientWidth = 437
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 443
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 437
    Height = 214
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 429
        Height = 186
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 425
          Height = 169
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVO'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Visible = True
            end>
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
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 290
        Height = 186
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DbDescricao
        end
        object DbID: TDBEdit
          Left = 16
          Top = 40
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbDescricao: TDBEdit
          Left = 16
          Top = 80
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbChAtivo: TDBCheckBox
          Left = 16
          Top = 104
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
        object BtnPermissoes: TBitBtn
          Left = 16
          Top = 125
          Width = 185
          Height = 51
          Cursor = crHandPoint
          Action = ActPermissoes
          Caption = 'F8 - Permissoes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Glyph.Data = {
            CA050000424DCA05000000000000360000002800000016000000150000000100
            18000000000094050000C40E0000C40E00000000000000000000FFFFFF344B59
            3042534D565F9A9CA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004E86
            9D12517327689010384C405053FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            00001D7FA473EAFF56D8FF42A8C1012E388E9191FFFFFFFDFDFDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF00001776956BD6FF34AFE52FAFD1055C700F3C44465C62A5ABADFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF000084BFD15AA4C25EBCE6209FCB41B9DE2688A10943533C
            4E53D0CFCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFA0B6BE80B7C963C0EA30AEE343D2FF
            34A5C00E3F4B707B7FC1C4C6F2F2F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0B6C074AFC66DCF
            F235BAE926BBE41588A50B4F621C364492989BFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA2
            BAC084B9C774D0EF28B8E72FC8F43AB5D717546A46575DC7C6C6F2F0F0FFFFFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFB7C2C794BDC773D1EF3CC2F13ACAF8268FAD0B3F4D465E667582
            89ACB3B6BDC5C7B8C1C5B0B9BDB4BABED0D2D4FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFDFDFDB8C3C991BDC67FD6F33BB8ED1FA5D11987A612
            6482063F5B1737472A4C5D275065153C511C384A42505CAFB3B5ECEBEAFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFABAC4C88EB9C874C8EF3DB2E4
            3CB6E749BAED2081B8095B8B2775A1418EB54D91B33D7A981F4F6A1B3C4E757B
            7CEAEAE90000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFBB8C5CD87B3
            C978C6ED54B4E850BDF841B6FA249DE637A4E35AB9EA75C9EF57B1D54095BE13
            597E192B379CA0A10000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
            FAFAB0C3CE76ACC873C2EF4EB4F22FA2E71A92D42E9CD44AACD95EB7DD42A6CB
            379FCA3697C20D324B535E650000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF8F9F9A6BFCD6CAAD07FD0F84FAED92CA0D461CEF088E1F897E1
            F876D0EA42B3D937B0DF2359832332420000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFCCD8E181B3CFA7EAFC79CEEA56CBF279DDF676
            BDD179B5CA94E7FB62D8FA39C3F44484BC0F20390000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD8E08BBCD2AAEEFE76CFEE45BEEA
            3289AC73A5C178ABC45DB2D250D2F93BD3FF4F92CE1427420000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4D5DD68ABC990E1FC65C3
            E7259FD70B5988476B92385D832D89B242CAF841D8FF4A83B847556E0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D9DD609DB985
            D5EC78D5F52194CC1A76A81E638B13547B369AC148CDF66CF7FF0F3B5DAAB1C1
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            88A2AF59A0B9A8FFFF6BD6F930A1D11D8AB32F96B86AD5F188FFFF43B5D63D59
            69FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF7FA5B52F8FB26FE5FF9FFFFFB8FFFFBEFFFFA4FFFF55A2B62E
            6073FFFEFDFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE9F9FC87B6C43E7C95518CA183B6C082AFB4719DA9
            82A2ACFFFFFFFFFFFFFFFFFF0000}
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel1: TPanel
        Left = 290
        Top = 0
        Width = 139
        Height = 186
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
    Left = 176
    Top = 48
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 240
    Top = 48
    object ActPermissoes: TAction
      Category = 'Botoes'
      Caption = 'F8 - Permissoes'
      ShortCut = 119
      OnExecute = ActPermissoesExecute
    end
  end
end
