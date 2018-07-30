inherited FrmCadCCusto: TFrmCadCCusto
  Left = 268
  Top = 144
  Caption = 'Cadadstro de Centro de Custo'
  ClientHeight = 356
  ClientWidth = 673
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 532
    Top = 0
    Width = 141
    Height = 356
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
    Width = 532
    Height = 356
    ActivePage = TbsConsulta
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
        Top = 11
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 51
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DbEdDescricao
      end
      object Label3: TLabel
        Left = 8
        Top = 91
        Width = 62
        Height = 13
        Caption = 'Respons'#225'vel'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 131
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 184
        Top = 131
        Width = 35
        Height = 13
        Caption = 'Telefax'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 8
        Top = 176
        Width = 58
        Height = 13
        Caption = 'Observacao'
        FocusControl = DBMemo1
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 27
        Width = 65
        Height = 21
        DataField = 'ID'
        DataSource = DataWork
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DbEdDescricao: TDBEdit
        Left = 8
        Top = 67
        Width = 515
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DataWork
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 107
        Width = 515
        Height = 21
        DataField = 'RESPONSAVEL'
        DataSource = DataWork
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 147
        Width = 160
        Height = 21
        DataField = 'TELEFONE'
        DataSource = DataWork
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 147
        Width = 160
        Height = 21
        DataField = 'TELEFAX'
        DataSource = DataWork
        TabOrder = 4
        OnKeyPress = DBEdit1KeyPress
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 192
        Width = 513
        Height = 89
        DataField = 'OBS'
        DataSource = DataWork
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 11
        Top = 287
        Width = 97
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
        TabOrder = 6
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
    end
    object TbsConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 524
        Height = 328
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 520
          Height = 311
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
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVO'
              Visible = True
            end>
        end
      end
    end
  end
  inherited DataWork: TDataSource
    DataSet = DmWorkCom.CdsCentroCusto
    Left = 360
    Top = 171
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 424
    Top = 171
  end
end
