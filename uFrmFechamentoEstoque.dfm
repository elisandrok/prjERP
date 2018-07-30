inherited FrmFechamentoEstoque: TFrmFechamentoEstoque
  Left = 316
  Top = 177
  Caption = 'Fechamento de Estoque'
  ClientHeight = 250
  ClientWidth = 266
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RadioTipo: TRadioGroup
    Left = 8
    Top = 56
    Width = 249
    Height = 36
    Columns = 3
    ItemIndex = 1
    Items.Strings = (
      '0 - Geral'
      '1 - Grupo'
      '2 - Produto')
    TabOrder = 1
    OnClick = RadioTipoClick
  end
  object GrpGrupos: TGroupBox
    Left = 8
    Top = 96
    Width = 249
    Height = 62
    Caption = ' Grupos '
    TabOrder = 2
    object ComboGrupo: TDBLookupComboBox
      Left = 8
      Top = 16
      Width = 233
      Height = 21
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = DataGrupo
      TabOrder = 0
      OnKeyPress = EdtProdutoKeyPress
    end
  end
  object GrpProduto: TGroupBox
    Left = 8
    Top = 96
    Width = 249
    Height = 62
    Caption = ' Produto '
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 222
      Top = 17
      Width = 20
      Height = 20
      Action = ActConsultaProd
    end
    object EdtProduto: TEdit
      Left = 8
      Top = 16
      Width = 210
      Height = 21
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = EdtProdutoKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 186
    Width = 266
    Height = 64
    Align = alBottom
    TabOrder = 4
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 29
      Top = 2
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 29
      ExplicitTop = 2
      inherited BtnConfirmar: TBitBtn
        Action = ActConfirmar
        Caption = 'F2 - Confirmar'
      end
      inherited BtnCancelar: TBitBtn
        Action = ActFechar
        Caption = 'F10 - Fechar'
      end
    end
  end
  object GrpPeriodo: TGroupBox
    Left = 8
    Top = 8
    Width = 249
    Height = 45
    Caption = 'Per'#237'odo'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 128
      Top = 20
      Width = 6
      Height = 13
      Caption = #224
    end
    object Datai: TDateTimePicker
      Left = 29
      Top = 16
      Width = 89
      Height = 21
      Date = 39780.916830150460000000
      Time = 39780.916830150460000000
      TabOrder = 0
    end
    object Dataf: TDateTimePicker
      Left = 144
      Top = 16
      Width = 89
      Height = 21
      Date = 39780.916854201390000000
      Time = 39780.916854201390000000
      TabOrder = 1
    end
  end
  object ChFechamento: TCheckBox
    Left = 8
    Top = 160
    Width = 121
    Height = 17
    Caption = 'Gravar Fechamento'
    TabOrder = 5
  end
  object ChProduto: TCheckBox
    Left = 144
    Top = 160
    Width = 111
    Height = 17
    BiDiMode = bdLeftToRight
    Caption = 'Gravar no produto'
    ParentBiDiMode = False
    TabOrder = 6
  end
  object DataGrupo: TDataSource
    Left = 184
    Top = 64
  end
  object QryProdutos: TFDQuery
    Left = 120
    Top = 16
  end
  object ActionList1: TActionList
    Left = 112
    Top = 64
    object ActConfirmar: TAction
      Caption = 'F2 - Confirmar'
      ShortCut = 113
      OnExecute = ActConfirmarExecute
    end
    object ActFechar: TAction
      Caption = 'F10 - Fechar'
      ShortCut = 121
      OnExecute = ActFecharExecute
    end
    object ActConsultaProd: TAction
      Caption = 'F6'
      ShortCut = 117
      OnExecute = ActConsultaProdExecute
    end
    object ActFechamentoEstoque: TAction
      OnExecute = ActFechamentoEstoqueExecute
    end
  end
  object QryEntradas: TFDQuery
    SQL.Strings = (
      'select sum(compras_itens.quantidade) from compras_itens'
      'left outer join compras on compras_itens.idcompra = compras.id'
      'where compras_itens.idproduto = :pID'
      'and compras.data_compra between :pDatai and :pDataf'
      'and compras.idempresa = :pIDEmpresa'
      'and compras.confirmada = '#39'S'#39
      'and compras.cancelado = '#39'N'#39)
    Left = 48
    Top = 16
    ParamData = <
      item
        Name = 'pID'
      end
      item
        Name = 'pDatai'
      end
      item
        Name = 'pDataf'
      end
      item
        Name = 'pIDEmpresa'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QrySaidas: TFDQuery
    SQL.Strings = (
      'select sum(pedido_itens.quantidade) from pedido_itens'
      'left outer join pedido on pedido_itens.idpedido = pedido.id'
      'where pedido_itens.idproduto = :pID'
      'and pedido.data_pedido between :pDatai and :pDataf'
      'and pedido.idempresa = :pIDEmpresa'
      'and pedido.confirmada = '#39'S'#39
      'and pedido.cancelado = '#39'N'#39)
    Left = 208
    Top = 16
    ParamData = <
      item
        Name = 'pID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'pDatai'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pDataf'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'pIDEmpresa'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrySaidasSUM: TFMTBCDField
      FieldName = 'SUM'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
end
