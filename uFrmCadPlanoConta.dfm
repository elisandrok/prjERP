inherited FrmCadPlanoConta: TFrmCadPlanoConta
  Left = 273
  Top = 152
  Caption = 'Cadastro de Plano de Contas'
  ClientHeight = 377
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 537
    Top = 0
    Width = 143
    Height = 377
    Align = alRight
    TabOrder = 0
    inline FrameBotaoVertical1: TFrameBotaoVertical
      Left = 4
      Top = 4
      Width = 135
      Height = 182
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 4
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
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 537
    Height = 377
    ActivePage = TbsCadastro
    Align = alClient
    TabOrder = 1
    object TbsCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 47
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 8
        Top = 214
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBMemo1
      end
      object Label6: TLabel
        Left = 7
        Top = 172
        Width = 63
        Height = 13
        Caption = 'Conta Mestre'
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 23
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DataWork
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 63
        Width = 264
        Height = 21
        DataField = 'CODIGO'
        DataSource = DataWork
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 103
        Width = 500
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DataWork
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 230
        Width = 505
        Height = 81
        DataField = 'OBS'
        DataSource = DataWork
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 316
        Width = 53
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
        TabOrder = 4
        ValueChecked = 'T'
        ValueUnchecked = 'F'
        OnKeyPress = DBEdit1KeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 7
        Top = 188
        Width = 257
        Height = 21
        DataField = 'IDCONTAMASTER'
        DataSource = DataWork
        KeyField = 'ID'
        ListField = 'DESCRICAO'
        ListSource = DataConta
        TabOrder = 5
        OnKeyPress = DBEdit1KeyPress
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 8
        Top = 127
        Width = 505
        Height = 39
        Caption = 'DBRadioGroup1'
        Columns = 3
        DataField = 'TIPO_CONTA'
        DataSource = DataWork
        Items.Strings = (
          'M - Master'
          'D - Debito'
          'C- Credito')
        TabOrder = 6
        Values.Strings = (
          'M'
          'D'
          'C')
      end
    end
    object TbsConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 349
        Align = alClient
        DataSource = DataWork
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_CONTA'
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDCONTAMASTER'
            Title.Caption = 'C.MASTER'
            Visible = True
          end>
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.CdsPlanoConta
    Left = 560
    Top = 208
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 624
    Top = 208
  end
  object DataConta: TDataSource
    DataSet = DmWorkCom.CdsPNMaster
    Left = 561
    Top = 272
  end
end
