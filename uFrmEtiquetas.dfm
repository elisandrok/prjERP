inherited FrmEtiquetas: TFrmEtiquetas
  Left = 200
  Top = 76
  Caption = 'Etiquetas para postagem'
  ClientHeight = 586
  ClientWidth = 891
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 891
    Height = 55
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Top = 13
      Width = 172
      Height = 34
      Action = ActIncluirEtq
      Caption = 'Incluir Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 13
      Width = 172
      Height = 34
      Action = ActExcluirEtq
      Caption = 'Excluir Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 360
      Top = 13
      Width = 172
      Height = 34
      Action = ActIncluirTodos
      Caption = 'Todos os Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 536
      Top = 13
      Width = 172
      Height = 34
      Action = ActImprimirEtq
      Caption = 'Imprimir Etiquetas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 712
      Top = 13
      Width = 172
      Height = 34
      Action = ActFechar
      Caption = 'Fechar tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 55
    Width = 891
    Height = 531
    Align = alClient
    Caption = ' Selecionados '
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 887
      Height = 514
      Align = alClient
      DataSource = DsEtiquetas
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
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Visible = True
        end>
    end
  end
  object DsEtiquetas: TDataSource
    DataSet = CdsEtiquetas
    Left = 136
    Top = 113
  end
  object CdsEtiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 113
    object CdsEtiquetasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEtiquetasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEtiquetasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEtiquetasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CdsEtiquetasCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object ActionList1: TActionList
    Left = 336
    Top = 135
    object ActIncluirEtq: TAction
      Caption = 'Incluir Etiqueta'
      OnExecute = ActIncluirEtqExecute
    end
    object ActExcluirEtq: TAction
      Caption = 'Excluir Etiqueta'
      OnExecute = ActExcluirEtqExecute
    end
    object ActIncluirTodos: TAction
      Caption = 'Todos os Clientes'
      OnExecute = ActIncluirTodosExecute
    end
    object ActImprimirEtq: TAction
      Caption = 'Imprimir Etiquetas'
      OnExecute = ActImprimirEtqExecute
    end
    object ActFechar: TAction
      Caption = 'Fechar tela'
      OnExecute = ActFecharExecute
    end
  end
end
