inherited FrmCadUsuarios: TFrmCadUsuarios
  Left = 299
  Top = 141
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 293
  ClientWidth = 453
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 459
  ExplicitHeight = 318
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 453
    Height = 293
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Usu'#225'rios'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 445
        Height = 265
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 441
          Height = 248
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
              FieldName = 'USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Usu'#225'rio'
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
        Width = 308
        Height = 265
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 13
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 16
          Top = 53
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
          FocusControl = DbUsuario
        end
        object Label4: TLabel
          Left = 16
          Top = 138
          Width = 31
          Height = 13
          Caption = 'Senha'
          FocusControl = DbSenha
        end
        object Label5: TLabel
          Left = 157
          Top = 138
          Width = 75
          Height = 13
          Caption = 'Confirma Senha'
        end
        object Label3: TLabel
          Left = 16
          Top = 98
          Width = 23
          Height = 13
          Caption = 'Perfil'
        end
        object SbtCadPerfil: TSpeedButton
          Left = 264
          Top = 113
          Width = 22
          Height = 21
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
          OnClick = SbtCadPerfilClick
        end
        object Label6: TLabel
          Left = 16
          Top = 177
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
        end
        object DbID: TDBEdit
          Left = 16
          Top = 26
          Width = 73
          Height = 21
          DataField = 'ID'
          DataSource = DataWork
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbUsuario: TDBEdit
          Left = 16
          Top = 71
          Width = 264
          Height = 21
          DataField = 'USUARIO'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbSenha: TDBEdit
          Left = 16
          Top = 153
          Width = 129
          Height = 21
          DataField = 'SENHA'
          DataSource = DataWork
          PasswordChar = '#'
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object DbChAtivo: TDBCheckBox
          Left = 16
          Top = 220
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'ATIVO'
          DataSource = DataWork
          TabOrder = 6
          ValueChecked = 'T'
          ValueUnchecked = 'F'
          OnKeyPress = DbIDKeyPress
        end
        object EdtConfSenha: TEdit
          Left = 157
          Top = 153
          Width = 129
          Height = 21
          PasswordChar = '#'
          TabOrder = 4
        end
        object ComboPerfil: TDBLookupComboBox
          Left = 16
          Top = 114
          Width = 241
          Height = 21
          DataField = 'ID_PERFIL'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DataPefil
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 193
          Width = 270
          Height = 21
          DataField = 'ID_FUNC'
          DataSource = DataWork
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = DataFuncionario
          TabOrder = 5
        end
      end
      object Panel1: TPanel
        Left = 308
        Top = 0
        Width = 137
        Height = 265
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
    Left = 328
    Top = 216
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 248
    Top = 232
    object ActCadPerfil: TAction
      Category = 'Botoes'
    end
  end
  object DataPefil: TDataSource
    Left = 396
    Top = 224
  end
  object DataFuncionario: TDataSource
    Left = 180
    Top = 232
  end
end
