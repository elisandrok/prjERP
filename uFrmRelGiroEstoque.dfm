inherited FrmRelGiroEstoque: TFrmRelGiroEstoque
  Left = 303
  Top = 188
  Caption = 'Giro de estoque'
  ClientHeight = 264
  ClientWidth = 351
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 357
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 351
    Height = 197
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 16
      Width = 137
      Height = 69
      Caption = ' Per'#237'odo '
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Datai: TDateTimePicker
        Left = 28
        Top = 18
        Width = 92
        Height = 21
        Date = 40053.976546585640000000
        Time = 40053.976546585640000000
        TabOrder = 0
      end
      object Dataf: TDateTimePicker
        Left = 28
        Top = 40
        Width = 92
        Height = 21
        Date = 40053.976561412040000000
        Time = 40053.976561412040000000
        TabOrder = 1
      end
    end
    object RadioTipo: TRadioGroup
      Left = 154
      Top = 16
      Width = 182
      Height = 69
      Caption = ' Tipo de Filtro '
      ItemIndex = 2
      Items.Strings = (
        '0 - Todos os produtos'
        '1 - Selecionar Grupo'
        '2 - Selecionar Produto')
      TabOrder = 1
      OnClick = RadioTipoClick
    end
    object GrpGrupo: TGroupBox
      Left = 8
      Top = 88
      Width = 329
      Height = 50
      Caption = ' Grupo '
      TabOrder = 2
      object ComboGrupo: TDBLookupComboBox
        Left = 8
        Top = 16
        Width = 305
        Height = 21
        KeyField = 'ID'
        ListField = 'DESCRICAO'
        ListSource = DataGrupo
        TabOrder = 0
      end
    end
    object GrpProduto: TGroupBox
      Left = 8
      Top = 88
      Width = 329
      Height = 50
      Caption = ' Produto '
      TabOrder = 3
      object ComboProduto: TDBLookupComboBox
        Left = 8
        Top = 16
        Width = 305
        Height = 21
        KeyField = 'ID'
        ListField = 'DESCRICAO'
        ListSource = DataProduto
        TabOrder = 0
      end
    end
    object RadioOrdem: TRadioGroup
      Left = 8
      Top = 144
      Width = 329
      Height = 39
      Caption = ' Ordernar por '
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        '0 - C'#243'digo do Produto'
        '1 - Descri'#231#227'o do Produto')
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 197
    Width = 351
    Height = 67
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 61
      Top = 3
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 61
      ExplicitTop = 3
      inherited BtnConfirmar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnConfirmarClick
      end
      inherited BtnCancelar: TBitBtn
        OnClick = FrameConfirmaCancela1BtnCancelarClick
      end
    end
  end
  object DataProduto: TDataSource
    Left = 32
    Top = 152
  end
  object DataGrupo: TDataSource
    Left = 136
    Top = 128
  end
  object QryProdutos: TFDQuery
    Connection = DmConexao.Conexao
    Left = 224
    Top = 104
  end
  object QrySaida: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select sum(pedido_itens.quantidade),'
      
        '       sum(pedido_itens.quantidade*pedido_itens.valor-pedido_ite' +
        'ns.desconto)'
      'from pedido_itens'
      'left outer join pedido on pedido_itens.idpedido =pedido.id'
      'where pedido.data_pedido between :pDatai and :pDataf'
      'and pedido.confirmada = '#39'S'#39
      'and pedido.cancelado = '#39'N'#39
      'and pedido_itens.idproduto = :pIDProd')
    Left = 136
    Top = 72
    ParamData = <
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
        Name = 'pIDProd'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrySaidaSUM: TFloatField
      FieldName = 'SUM'
    end
    object QrySaidaSUM_1: TFloatField
      FieldName = 'SUM_1'
    end
  end
  object QryEntrada: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select sum(compras_itens.quantidade),'
      
        '       sum(compras_itens.quantidade*compras_itens.valor-compras_' +
        'itens.desconto)'
      'from compras_itens'
      'left outer join compras on compras_itens.idcompra = compras.id'
      'where compras.data_compra between :pDatai and :pDataf'
      'and compras.confirmada = '#39'S'#39
      'and compras.cancelado = '#39'N'#39
      'and compras_itens.idproduto = :pIDprod')
    Left = 304
    Top = 40
    ParamData = <
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
        Name = 'pIDprod'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryEntradaSUM: TFloatField
      FieldName = 'SUM'
    end
    object QryEntradaSUM_1: TFloatField
      FieldName = 'SUM_1'
    end
  end
end
