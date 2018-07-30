inherited FrmCadFunc: TFrmCadFunc
  Left = 284
  Top = 135
  Caption = 'Cadastro de Funcionarios'
  ClientHeight = 440
  ClientWidth = 638
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 376
    Width = 638
    Height = 64
    Align = alBottom
    TabOrder = 0
    inline Frame1: TFrameBotaoHorizontal
      Left = 0
      Top = 0
      Width = 637
      Height = 63
      TabOrder = 0
      ExplicitWidth = 637
      ExplicitHeight = 63
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
        Caption = 'F7 - &Relatorio'
      end
    end
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 638
    Height = 376
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Principais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 630
        Height = 348
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 101
          Height = 13
          Caption = 'Nome do Funcionario'
          FocusControl = DbNome
        end
        object Label3: TLabel
          Left = 16
          Top = 104
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DbEndereco
        end
        object Label4: TLabel
          Left = 352
          Top = 104
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DbNumero
        end
        object Label5: TLabel
          Left = 16
          Top = 144
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DbBairro
        end
        object Label6: TLabel
          Left = 16
          Top = 184
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DbCidade
        end
        object Label7: TLabel
          Left = 296
          Top = 184
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DbCep
        end
        object Label8: TLabel
          Left = 440
          Top = 184
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label9: TLabel
          Left = 16
          Top = 224
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DbTelefone
        end
        object Label10: TLabel
          Left = 192
          Top = 224
          Width = 35
          Height = 13
          Caption = 'Telefax'
          FocusControl = DbTelefax
        end
        object Label11: TLabel
          Left = 368
          Top = 224
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DbCelular
        end
        object Label12: TLabel
          Left = 16
          Top = 264
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DbCPF
        end
        object Label13: TLabel
          Left = 216
          Top = 264
          Width = 16
          Height = 13
          Caption = 'RG'
          FocusControl = DbRG
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
        object DbNome: TDBEdit
          Left = 16
          Top = 80
          Width = 393
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DataWork
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbEndereco: TDBEdit
          Left = 16
          Top = 120
          Width = 321
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataWork
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DbNumero: TDBEdit
          Left = 352
          Top = 120
          Width = 134
          Height = 21
          DataField = 'NUMERO'
          DataSource = DataWork
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object DbBairro: TDBEdit
          Left = 16
          Top = 160
          Width = 264
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DataWork
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DbCidade: TDBEdit
          Left = 16
          Top = 200
          Width = 264
          Height = 21
          DataField = 'CIDADE'
          DataSource = DataWork
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object DbCep: TDBEdit
          Left = 296
          Top = 200
          Width = 134
          Height = 21
          DataField = 'CEP'
          DataSource = DataWork
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object DbTelefone: TDBEdit
          Left = 16
          Top = 240
          Width = 160
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataWork
          TabOrder = 8
          OnKeyPress = DbIDKeyPress
        end
        object DbTelefax: TDBEdit
          Left = 192
          Top = 240
          Width = 160
          Height = 21
          DataField = 'TELEFAX'
          DataSource = DataWork
          TabOrder = 9
          OnKeyPress = DbIDKeyPress
        end
        object DbCelular: TDBEdit
          Left = 368
          Top = 240
          Width = 160
          Height = 21
          DataField = 'CELULAR'
          DataSource = DataWork
          TabOrder = 10
          OnKeyPress = DbIDKeyPress
        end
        object DbCPF: TDBEdit
          Left = 16
          Top = 280
          Width = 185
          Height = 21
          DataField = 'CNPJ_CPF'
          DataSource = DataWork
          TabOrder = 11
          OnKeyPress = DbIDKeyPress
        end
        object DbRG: TDBEdit
          Left = 216
          Top = 280
          Width = 185
          Height = 21
          DataField = 'INSC_RG'
          DataSource = DataWork
          TabOrder = 12
          OnKeyPress = DbIDKeyPress
        end
        object ComboEstado: TDBLookupComboBox
          Left = 440
          Top = 200
          Width = 49
          Height = 21
          DataField = 'UF'
          DataSource = DataWork
          KeyField = 'UF'
          ListField = 'UF'
          ListSource = DataUF
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outras dados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label14: TLabel
        Left = 8
        Top = 8
        Width = 61
        Height = 13
        Caption = 'Nome do Pai'
        FocusControl = DbPai
      end
      object Label15: TLabel
        Left = 8
        Top = 48
        Width = 67
        Height = 13
        Caption = 'Nome da M'#227'e'
        FocusControl = DbMae
      end
      object Label16: TLabel
        Left = 8
        Top = 88
        Width = 94
        Height = 13
        Caption = 'Data de Nascimeno'
        FocusControl = DbDataNasc
      end
      object Label17: TLabel
        Left = 152
        Top = 88
        Width = 86
        Height = 13
        Caption = 'Data de Admiss'#227'o'
        FocusControl = DbAdmissao
      end
      object Label18: TLabel
        Left = 304
        Top = 88
        Width = 87
        Height = 13
        Caption = 'Data de Demiss'#227'o'
        FocusControl = DbDemissao
      end
      object Label19: TLabel
        Left = 8
        Top = 144
        Width = 32
        Height = 13
        Caption = 'Sal'#225'rio'
        FocusControl = DbSalario
      end
      object Label21: TLabel
        Left = 112
        Top = 144
        Width = 73
        Height = 13
        Caption = 'Perc. Comiss'#227'o'
        FocusControl = DbPercCom
      end
      object Label23: TLabel
        Left = 8
        Top = 224
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
        FocusControl = DbObservacao
      end
      object Label24: TLabel
        Left = 8
        Top = 184
        Width = 25
        Height = 13
        Caption = 'Email'
        FocusControl = DbEmail
      end
      object DbPai: TDBEdit
        Left = 8
        Top = 24
        Width = 433
        Height = 21
        DataField = 'FILIACAO_PAI'
        DataSource = DataWork
        TabOrder = 0
        OnKeyPress = DbIDKeyPress
      end
      object DbMae: TDBEdit
        Left = 8
        Top = 64
        Width = 433
        Height = 21
        DataField = 'FILIACAO_MAE'
        DataSource = DataWork
        TabOrder = 1
        OnKeyPress = DbIDKeyPress
      end
      object DbDataNasc: TDBEdit
        Left = 8
        Top = 104
        Width = 134
        Height = 21
        DataField = 'DATA_NASC'
        DataSource = DataWork
        TabOrder = 2
        OnKeyPress = DbIDKeyPress
      end
      object DbAdmissao: TDBEdit
        Left = 152
        Top = 104
        Width = 134
        Height = 21
        DataField = 'DATA_ADMISSAO'
        DataSource = DataWork
        TabOrder = 3
        OnKeyPress = DbIDKeyPress
      end
      object DbDemissao: TDBEdit
        Left = 304
        Top = 104
        Width = 134
        Height = 21
        DataField = 'DATA_DEMISSAO'
        DataSource = DataWork
        TabOrder = 4
        OnKeyPress = DbIDKeyPress
      end
      object DbSalario: TDBEdit
        Left = 8
        Top = 160
        Width = 81
        Height = 21
        DataField = 'SALARIO'
        DataSource = DataWork
        TabOrder = 6
        OnKeyPress = DbIDKeyPress
      end
      object DbPercCom: TDBEdit
        Left = 112
        Top = 160
        Width = 73
        Height = 21
        DataField = 'PERC_COMISSAO'
        DataSource = DataWork
        TabOrder = 7
        OnKeyPress = DbIDKeyPress
      end
      object DbObservacao: TDBMemo
        Left = 8
        Top = 240
        Width = 513
        Height = 81
        DataField = 'OBSERVACOES'
        DataSource = DataWork
        TabOrder = 10
        OnKeyPress = DbIDKeyPress
      end
      object DbEmail: TDBEdit
        Left = 8
        Top = 200
        Width = 513
        Height = 21
        DataField = 'EMAIL'
        DataSource = DataWork
        TabOrder = 9
        OnKeyPress = DbIDKeyPress
      end
      object DbChAtivo: TDBCheckBox
        Left = 8
        Top = 328
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = DataWork
        TabOrder = 11
        ValueChecked = 'T'
        ValueUnchecked = 'F'
        OnKeyPress = DbIDKeyPress
      end
      object DbChComissao: TDBCheckBox
        Left = 8
        Top = 127
        Width = 97
        Height = 17
        Caption = 'Comissionado'
        DataField = 'COMISSAO'
        DataSource = DataWork
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnKeyPress = DbIDKeyPress
      end
      object RadioTipo: TDBRadioGroup
        Left = 200
        Top = 136
        Width = 241
        Height = 57
        Caption = ' Tipo '
        Columns = 2
        DataField = 'TIPO'
        DataSource = DataWork
        Items.Strings = (
          '0 - Vendedor'
          '1 - Caixa'
          '2 - Operario'
          '3 - Gerente'
          '4 - Administrador')
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Selecionar Funcion'#225'rio'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 630
        Height = 348
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 626
          Height = 331
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
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome do Funcion'#225'rio'
              Width = 214
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Alignment = taCenter
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CELULAR'
              Title.Alignment = taCenter
              Title.Caption = 'Celular'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_NASC'
              Title.Alignment = taCenter
              Title.Caption = 'Data Nasc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_ADMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Admiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_DEMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Demiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Sal'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Com.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERC_COMISSAO'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Visible = True
            end>
        end
      end
    end
  end
  inherited DataWork: TDataSource
    Left = 336
    Top = 288
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 120
    Top = 288
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
  end
  object DataUF: TDataSource
    Left = 228
    Top = 288
  end
end
