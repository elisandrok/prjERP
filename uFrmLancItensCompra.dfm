inherited FrmLancItensCompra: TFrmLancItensCompra
  Left = 290
  Top = 154
  Caption = 'Lan'#231'amento de Itens (Compras)'
  ClientHeight = 428
  ClientWidth = 565
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 565
    Height = 363
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 62
      Height = 13
      Caption = 'C'#243'd. Produto'
      FocusControl = DbIDProduto
    end
    object Label4: TLabel
      Left = 88
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DbDescricao
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DbQuantidade
    end
    object Label6: TLabel
      Left = 104
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DbValor
    end
    object Label7: TLabel
      Left = 200
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Desconto'
      FocusControl = DbDesconto
    end
    object Label8: TLabel
      Left = 296
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Acrescimo'
      FocusControl = DbAcrescimo
    end
    object Label9: TLabel
      Left = 392
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DbTotal
    end
    object DbIDProduto: TDBEdit
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = DataItens
      TabOrder = 0
      OnExit = DbIDProdutoExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbDescricao: TDBEdit
      Left = 88
      Top = 32
      Width = 457
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataItens
      Enabled = False
      TabOrder = 1
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbQuantidade: TDBEdit
      Left = 8
      Top = 72
      Width = 91
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = DataItens
      TabOrder = 2
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbValor: TDBEdit
      Left = 104
      Top = 72
      Width = 91
      Height = 21
      DataField = 'VALOR'
      DataSource = DataItens
      TabOrder = 3
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbDesconto: TDBEdit
      Left = 200
      Top = 72
      Width = 91
      Height = 21
      DataField = 'DESCONTO'
      DataSource = DataItens
      TabOrder = 4
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbAcrescimo: TDBEdit
      Left = 296
      Top = 72
      Width = 91
      Height = 21
      DataField = 'ACRESCIMO'
      DataSource = DataItens
      TabOrder = 5
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbTotal: TDBEdit
      Left = 392
      Top = 72
      Width = 91
      Height = 21
      DataField = 'VALOR_TOTAL'
      DataSource = DataItens
      Enabled = False
      TabOrder = 6
      OnKeyPress = DbIDProdutoKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 99
      Width = 561
      Height = 262
      Align = alBottom
      Caption = ' Tributa'#231#227'o '
      TabOrder = 7
      object Label1: TLabel
        Left = 9
        Top = 16
        Width = 21
        Height = 13
        Caption = 'CST'
      end
      object Label2: TLabel
        Left = 75
        Top = 15
        Width = 28
        Height = 13
        Caption = 'CFOP'
      end
      object Label10: TLabel
        Left = 233
        Top = 59
        Width = 46
        Height = 13
        Caption = 'Aliq ICMS'
        FocusControl = DBEdit3
      end
      object Label11: TLabel
        Left = 97
        Top = 59
        Width = 53
        Height = 13
        Caption = 'Base ICMS'
        FocusControl = DBEdit4
      end
      object Label12: TLabel
        Left = 329
        Top = 59
        Width = 53
        Height = 13
        Caption = 'Valor ICMS'
        FocusControl = DBEdit5
      end
      object Label13: TLabel
        Left = 8
        Top = 59
        Width = 71
        Height = 13
        Caption = 'Redu'#231#227'o Base'
        FocusControl = DBEdit6
      end
      object Label14: TLabel
        Left = 233
        Top = 99
        Width = 63
        Height = 13
        Caption = 'Aliq ICMS ST'
        FocusControl = DBEdit7
      end
      object Label15: TLabel
        Left = 97
        Top = 99
        Width = 70
        Height = 13
        Caption = 'Base ICMS ST'
        FocusControl = DBEdit8
      end
      object Label16: TLabel
        Left = 329
        Top = 99
        Width = 70
        Height = 13
        Caption = 'Valor ICMS ST'
        FocusControl = DBEdit9
      end
      object Label17: TLabel
        Left = 97
        Top = 139
        Width = 40
        Height = 13
        Caption = 'Base IPI'
        FocusControl = DBEdit10
      end
      object Label18: TLabel
        Left = 233
        Top = 139
        Width = 33
        Height = 13
        Caption = 'Aliq IPI'
        FocusControl = DBEdit11
      end
      object Label19: TLabel
        Left = 233
        Top = 179
        Width = 34
        Height = 13
        Caption = 'Aliq Pis'
        FocusControl = DBEdit12
      end
      object Label20: TLabel
        Left = 9
        Top = 139
        Width = 37
        Height = 13
        Caption = 'CST IPI'
      end
      object Label21: TLabel
        Left = 9
        Top = 179
        Width = 41
        Height = 13
        Caption = 'CST PIS'
      end
      object Label22: TLabel
        Left = 9
        Top = 219
        Width = 63
        Height = 13
        Caption = 'CST COFINS'
      end
      object Label23: TLabel
        Left = 97
        Top = 219
        Width = 56
        Height = 13
        Caption = 'Base Cofins'
        FocusControl = DBEdit16
      end
      object Label24: TLabel
        Left = 97
        Top = 179
        Width = 41
        Height = 13
        Caption = 'Base Pis'
        FocusControl = DBEdit17
      end
      object Label25: TLabel
        Left = 233
        Top = 219
        Width = 49
        Height = 13
        Caption = 'Aliq Cofins'
        FocusControl = DBEdit18
      end
      object Label26: TLabel
        Left = 329
        Top = 179
        Width = 41
        Height = 13
        Caption = 'Valor Pis'
        FocusControl = DBEdit19
      end
      object Label27: TLabel
        Left = 329
        Top = 219
        Width = 56
        Height = 13
        Caption = 'Valor Cofins'
        FocusControl = DBEdit20
      end
      object Label28: TLabel
        Left = 329
        Top = 139
        Width = 40
        Height = 13
        Caption = 'Valor IPI'
        FocusControl = DBEdit21
      end
      object Label29: TLabel
        Left = 8
        Top = 99
        Width = 23
        Height = 13
        Caption = 'MVA'
        FocusControl = DBEdit1
      end
      object DBEdit3: TDBEdit
        Left = 233
        Top = 75
        Width = 80
        Height = 21
        DataField = 'ALIQ_ICMS'
        DataSource = DataItens
        TabOrder = 4
        OnExit = DBEdit3Exit
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit4: TDBEdit
        Left = 97
        Top = 75
        Width = 120
        Height = 21
        DataField = 'BASE_ICMS'
        DataSource = DataItens
        TabOrder = 3
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit5: TDBEdit
        Left = 329
        Top = 75
        Width = 120
        Height = 21
        DataField = 'VALOR_ICMS'
        DataSource = DataItens
        TabOrder = 5
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 75
        Width = 75
        Height = 21
        DataField = 'REDUCAO_BASE'
        DataSource = DataItens
        TabOrder = 2
        OnExit = DBEdit6Exit
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit7: TDBEdit
        Left = 233
        Top = 115
        Width = 80
        Height = 21
        DataField = 'ALIQ_ICMS_ST'
        DataSource = DataItens
        TabOrder = 8
        OnExit = DBEdit7Exit
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit8: TDBEdit
        Left = 97
        Top = 115
        Width = 120
        Height = 21
        DataField = 'BASE_ICMS_ST'
        DataSource = DataItens
        TabOrder = 7
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit9: TDBEdit
        Left = 329
        Top = 115
        Width = 120
        Height = 21
        DataField = 'VALOR_ICMS_ST'
        DataSource = DataItens
        TabOrder = 9
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit10: TDBEdit
        Left = 97
        Top = 155
        Width = 119
        Height = 21
        DataField = 'BASE_IPI'
        DataSource = DataItens
        TabOrder = 11
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit11: TDBEdit
        Left = 233
        Top = 155
        Width = 81
        Height = 21
        DataField = 'ALIQ_IPI'
        DataSource = DataItens
        TabOrder = 12
        OnExit = DBEdit11Exit
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 233
        Top = 195
        Width = 81
        Height = 21
        DataField = 'ALIQ_PIS'
        DataSource = DataItens
        TabOrder = 16
        OnExit = DBEdit12Exit
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit16: TDBEdit
        Left = 97
        Top = 235
        Width = 119
        Height = 21
        DataField = 'BASE_COFINS'
        DataSource = DataItens
        TabOrder = 19
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit17: TDBEdit
        Left = 97
        Top = 195
        Width = 119
        Height = 21
        DataField = 'BASE_PIS'
        DataSource = DataItens
        TabOrder = 15
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit18: TDBEdit
        Left = 233
        Top = 235
        Width = 81
        Height = 21
        DataField = 'ALIQ_COFINS'
        DataSource = DataItens
        TabOrder = 20
        OnExit = DBEdit18Exit
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit19: TDBEdit
        Left = 329
        Top = 195
        Width = 119
        Height = 21
        DataField = 'VALOR_PIS'
        DataSource = DataItens
        TabOrder = 17
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit20: TDBEdit
        Left = 329
        Top = 235
        Width = 119
        Height = 21
        DataField = 'VALOR_COFINS'
        DataSource = DataItens
        TabOrder = 21
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit21: TDBEdit
        Left = 329
        Top = 155
        Width = 119
        Height = 21
        DataField = 'VALOR_IPI'
        DataSource = DataItens
        TabOrder = 13
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 8
        Top = 32
        Width = 59
        Height = 21
        DataField = 'CST'
        DataSource = DataItens
        Items.Strings = (
          '000 - Tributada integralmente'
          
            '010 - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'r' +
            'ia'
          '020 - Com redu'#231#227'o de base de c'#225'lculo'
          
            '030 - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substit' +
            'ui'#231#227'o tribut'#225'ria'
          '040 - Isenta'
          '041 - N'#227'o tributada'
          '050 - Suspens'#227'o'
          '051 - Diferimento'
          '060 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
          
            '070 - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por subs' +
            'titui'#231#227'o tribut'#225'ria'
          '090 - Outras')
        TabOrder = 0
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 74
        Top = 31
        Width = 71
        Height = 21
        DataField = 'CFOP'
        DataSource = DataItens
        DropDownWidth = 500
        KeyField = 'CFCOD'
        ListField = 'CFCOD;CFNOME'
        ListSource = DataCFOP
        TabOrder = 1
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBComboBox2: TDBComboBox
        Left = 8
        Top = 155
        Width = 75
        Height = 21
        DataField = 'CST_IPI'
        DataSource = DataItens
        Items.Strings = (
          '00 - Entrada com Recupera'#231#227'o de Cr'#233'dito'
          '01 - Entrada Tribut'#225'vel com Al'#237'quota Zero'
          '02 - Entrada Isenta'
          '03 - Entrada N'#227'o-Tributada'
          '04 - Entrada Imune'
          '05 - Entrada com Suspens'#227'o'
          '49 - Outras Entradas'
          '50 - Sa'#237'da Tributada'
          '51 - Sa'#237'da Tribut'#225'vel com Al'#237'quota Zero'
          '52 - Sa'#237'da Isenta'
          '53 - Sa'#237'da N'#227'o-Tributada'
          '54 - Sa'#237'da Imune'
          '55 - Sa'#237'da com Suspens'#227'o'
          '99 Outras Sa'#237'das')
        TabOrder = 10
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBComboBox3: TDBComboBox
        Left = 8
        Top = 195
        Width = 75
        Height = 21
        DataField = 'CST_PIS'
        DataSource = DataItens
        Items.Strings = (
          '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
          
            '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
            'roduto'
          '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
          '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
          '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
          '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
          '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
          '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
          '49 - Outras Opera'#231#245'es de Sa'#237'da'
          
            '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
            ' Receita Tributada no Mercado Interno'
          
            '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
            ' Receita N'#227'o-Tributada no Mercado Interno'
          
            '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
            ' Receita de Exporta'#231#227'o'
          
            '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
            'tadas e N'#227'o-Tributadas no Mercado Interno'
          
            '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
            'tadas no Mercado Interno e de Exporta'#231#227'o'
          
            '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o T' +
            'ributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
            'tadas e N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
            'vamente a Receita Tributada no Mercado Interno'
          
            '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
            'vamente a Receita N'#227'o-Tributada no Mercado Interno'
          
            '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
            'vamente a Receita de Exporta'#231#227'o'
          
            '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas Tributadas e N'#227'o-Tributadas no Mercado Interno'
          
            '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas Tributadas e N'#227'o-Tributadas no Mercado Interno e de Exporta'#231 +
            #227'o'
          '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es'
          '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
          '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
          '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
          '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
          '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
          '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
          '98 - Outras Opera'#231#245'es de Entrada'
          '99 - Outras Opera'#231#245'es')
        TabOrder = 14
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBComboBox4: TDBComboBox
        Left = 8
        Top = 235
        Width = 75
        Height = 21
        DataField = 'CST_COFINS'
        DataSource = DataItens
        Items.Strings = (
          '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
          
            '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
            'roduto'
          '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
          '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
          '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
          '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
          '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
          '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
          '49 - Outras Opera'#231#245'es de Sa'#237'da'
          
            '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
            ' Receita Tributada no Mercado Interno'
          
            '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
            ' Receita N'#227'o-Tributada no Mercado Interno'
          
            '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
            ' Receita de Exporta'#231#227'o'
          
            '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
            'tadas e N'#227'o-Tributadas no Mercado Interno'
          
            '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
            'tadas no Mercado Interno e de Exporta'#231#227'o'
          
            '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o T' +
            'ributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
            'tadas e N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
            'vamente a Receita Tributada no Mercado Interno'
          
            '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
            'vamente a Receita N'#227'o-Tributada no Mercado Interno'
          
            '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
            'vamente a Receita de Exporta'#231#227'o'
          
            '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas Tributadas e N'#227'o-Tributadas no Mercado Interno'
          
            '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
            'tas Tributadas e N'#227'o-Tributadas no Mercado Interno e de Exporta'#231 +
            #227'o'
          '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es'
          '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
          '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
          '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
          '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
          '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
          '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
          '98 - Outras Opera'#231#245'es de Entrada'
          '99 - Outras Opera'#231#245'es')
        TabOrder = 18
        OnKeyPress = DbIDProdutoKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 115
        Width = 75
        Height = 21
        DataField = 'MVA'
        DataSource = DataItens
        TabOrder = 6
        OnKeyPress = DbIDProdutoKeyPress
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 363
    Width = 565
    Height = 65
    Align = alBottom
    TabOrder = 1
    inline Frame: TFrameConfirmaCancela
      Left = 185
      Top = 2
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 185
      ExplicitTop = 2
      inherited BtnConfirmar: TBitBtn
        Action = ActConfirmar
        Caption = 'F2 - &Confirmar'
      end
      inherited BtnCancelar: TBitBtn
        Action = ActCancelar
        Caption = 'F3 - Cancelar'
      end
    end
  end
  object DataItens: TDataSource
    DataSet = DmWorkCom.CdsComprasItens
    Left = 488
    Top = 232
  end
  object ActionList1: TActionList
    Left = 496
    Top = 288
    object ActConfirmar: TAction
      Caption = 'F2 - &Confirmar'
      ShortCut = 113
      OnExecute = ActConfirmarExecute
    end
    object ActCancelar: TAction
      Caption = 'F3 - Cancelar'
      ShortCut = 114
      OnExecute = ActCancelarExecute
    end
    object ActCalculaValorTotal: TAction
      OnExecute = ActCalculaValorTotalExecute
    end
  end
  object DataCFOP: TDataSource
    DataSet = DmWorkCom.CdsCFOP
    Left = 488
    Top = 178
  end
  object DataCompra: TDataSource
    DataSet = DmWorkCom.CdsCompras
    Left = 482
    Top = 123
  end
end
