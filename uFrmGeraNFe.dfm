inherited FrmGeraNFe: TFrmGeraNFe
  Left = 226
  Top = 105
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'Gerar NFe'
  ClientHeight = 539
  ClientWidth = 882
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 888
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 882
    Height = 84
    Align = alTop
    Color = clAppWorkSpace
    ParentColor = False
    TabOrder = 0
    object RadioOpcao: TRadioGroup
      Left = 155
      Top = 10
      Width = 129
      Height = 67
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'N'#250'mero Pedido'
        'C'#243'digo Cliente'
        'Nome Cliente')
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 7
      Top = 10
      Width = 141
      Height = 67
      Caption = ' Per'#237'odo '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 20
        Width = 17
        Height = 13
        Caption = 'De'
      end
      object Label2: TLabel
        Left = 10
        Top = 41
        Width = 8
        Height = 13
        Caption = #224
      end
      object DataIni: TDateTimePicker
        Left = 26
        Top = 16
        Width = 103
        Height = 21
        Date = 40556.295889930550000000
        Time = 40556.295889930550000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DataFim: TDateTimePicker
        Left = 26
        Top = 38
        Width = 103
        Height = 21
        Date = 40556.295906932870000000
        Time = 40556.295906932870000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object BtnLocalizar: TBitBtn
      Left = 733
      Top = 41
      Width = 142
      Height = 35
      Caption = 'Localizar Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000130B0000130B00000000000000000000844224AF5B3C
        3FFF0B3D6AF900376AFF00376AFF00336610FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00956134FF0E53
        7EFF0897C8FF009ED1FF00598CFF00376AFF00336610FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00155C7FF97BB7
        D2FF5EE0FFFF02BAECFF0086B9FF005689FF00376AFF00336610FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006295FFFFFF
        FFFF85F4FFFF30DCFFFF02B8EAFF0086B9FF005689FF00376AFF00336610FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006295FF9FC4
        D7FFECFFFFFF81F4FFFF30DCFFFF02B8EAFF0086B9FF005689FF00376AFF0033
        6610FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006699100062
        95FF9FC4D7FFECFFFFFF81F4FFFF30DCFFFF02B8EAFF0086B9FF00598CFF0037
        6AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
        9910006295FF9FC4D7FFECFFFFFF81F4FFFF30DCFFFF02BAECFF009ED1FF0037
        6AFF7845451076434370744141CF723F3FFF703D3DFF6D3A3AFF6B3838FF6936
        36CF683535706633331000000000000000000000000000000000FFFFFF00FFFF
        FF0000669910006295FF9FC4D7FFECFFFFFF85F4FFFF5EE0FFFF0897C8FF0B3D
        6AFB7A4747EF916565FFA78080FFB28A8AFFAC8484FFA87D7DFFA37676FF9262
        62FF7C4A4AFF673434EF66333350000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF0000669910006295FF9FC4D7FFFFFFFFFF7BB7D2FF0E537EFF5738
        3FFFB69595FFC7A6A6FFD3B1B1FFE0C0C0FFE2C3C3FFE3C6C6FFE4C8C8FFCFAF
        AFFFB08686FF915F5FFF6D3A3AFF663333600000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000669910006295FF006295FF155C7FFB8B5427FF9256
        3AFFD3B2B2FFD0AAAAFF9E7171FF7A4848FF713E3EFF6D3A3AFF724040FF966C
        6CFFD5B8B8FFC6A3A3FF976565FF6D3A3AFF6633335000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0087545410865353EFC7AEAEFFD6B6
        B6FFC8A0A0FF835151FFBD8E75FFF6CFA2FFFFDFB0FFFFE7C2FFF6E7D5FFB59A
        99FF6F3D3DFFCDAEAEFFC6A3A3FF915F5FFF673434EF66333310FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008A575770A98383FFDAC2C2FFCCA3
        A3FF885656FFE7B78EFFFFD5A4FFFFD9A9FFFFE0B1FFFFEBCBFFFFF8EBFFFFFF
        FFFFE3D9D9FF6F3D3DFFD5B8B8FFB08686FF7C4A4AFF68353570FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C5959CFCEB8B8FFD8B6B6FFA576
        76FFC2927AFFFFCF9DFFFFD4A3FFFFD9A9FFFFE0B1FFFFEAC8FFFFF6E8FFFFFF
        FFFFFFFFFFFFB59B9BFF966C6CFFCFAFAFFF926262FF693636CFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E5B5BFFE9DFDFFFD2A6A6FF915E
        5EFFF0D2B4FFFFCE9BFFFFD3A1FFFFD7A7FFFFDEAEFFFFE6BEFFFFEFD6FFFFF8
        ECFFFFFCF6FFF6ECE3FF724040FFE4C8C8FFA37676FF6B3838FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00915E5EFFEEE6E6FFD1A4A4FF8F5D
        5DFFF4E3CCFFFFCC99FFFFD2A0FFFFD6A5FFFFDAAAFFFFE0B1FFFFE6C0FFFFED
        CFFFFFEDD1FFFFEDCFFF6D3A3AFFE3C6C6FFAC8181FF6D3A3AFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00936060FFF2EDEDFFD0A1A1FF9260
        60FFF4EADBFFFCD2A7FFFFCF9DFFFFD3A1FFFFD7A7FFFFDBABFFFFDFB0FFFFE2
        B5FFFFE3B7FFFFE2B5FF713E3EFFE2C3C3FFB08888FF703D3DFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00956262FFF8F3F3FFCE9E9EFF9A67
        67FFF2E9E0FFF4E3CCFFFECE9CFFFFD09EFFFFD3A1FFFFD6A6FFFFD9A9FFFFDA
        AAFFFFDCACFFF6D1A4FF7A4848FFE0C0C0FFB28A8AFF723F3FFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00966363CFE2D4D4FFDBB8B8FFAD7B
        7BFFCAAFAEFFF6EFE3FFF6DDC0FFFECE9CFFFFCF9DFFFFD2A0FFFFD4A3FFFFD5
        A5FFFFD6A5FFBD8F77FF9E7171FFD3B1B1FFA78080FF744141CFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099666670BE9E9EFFF2E4E4FFC695
        95FFA27373FFEADFDDFFF6EFE3FFF4E0C7FFFCD0A2FFFFCD9AFFFFCF9DFFFFD1
        9EFFE7B890FF835151FFD0AAAAFFC7A6A6FF916565FF76434370FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099666610996666EFEBE2E2FFDFBF
        BFFFC39292FF9C6A6AFFC9AEACFFF1E6DCFFF3E9D8FFF5DCBEFFF3CCA6FFC390
        77FF885656FFC8A0A0FFD3B2B2FFB69595FF7A4747EF78454510FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000099666650A67979FFF8F5
        F5FFE2C6C6FFC69595FFAD7B7BFF9A6767FF926060FF8F5D5DFF915E5EFFA576
        76FFCCA3A3FFD6B5B5FFC8AEAEFF885858FF7C49495000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000099666660A679
        79FFEBE2E2FFF2E4E4FFDBB8B8FFCE9E9EFFD0A1A1FFD1A4A4FFD2A6A6FFD8B6
        B6FFDAC2C2FFC7AEAEFF8C5D5DFF804D4D600000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000009966
        6650996666EFBE9E9EFFE2D4D4FFF8F3F3FFEEE3E3FFEDE2E2FFE9DFDFFFCEB8
        B8FFA98383FF865353EF84515150000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        00009966661099666670966363CF956262FF936060FF915E5EFF8E5B5BFF8C59
        59CF8A5757708754541000000000000000000000000000000000}
      ParentFont = False
      TabOrder = 2
      OnClick = BtnLocalizarClick
    end
    object GroupBox4: TGroupBox
      Left = 292
      Top = 36
      Width = 434
      Height = 41
      Caption = ' Localizar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object EdtDados: TEdit
        Left = 7
        Top = 15
        Width = 418
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 733
      Top = 11
      Width = 142
      Height = 29
      Caption = 'Digitar NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        A2070000424DA207000000000000360000002800000019000000190000000100
        1800000000006C070000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6BF638D67
        93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFDF9F4
        F580947D00010000000C4D774D8F9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFD
        FFF2F5F4DADFD491888C3B2F20342922DEE3DD6B8B6A1716174E274E99B699FD
        FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFF4F6F6CBCBD68E8BA48A8982474E394F5249AAA5AEECE5EFBCB8BD96
        88966375631F081F4D604E9EA09DF6FBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFF0F5F464727B3E41491818306E5A5AA9A79EE3
        F0EDD4D5D6C4B3C3D0B4D0517D51BB89BA587258282B23484A509CB2A0F0F1EF
        FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFDEE0E203031780
        807CBDBDB6E3DBE2E9ECEBCAD0CDB5C9B6C9C9C8C9B8CA557C558F7B8D868A84
        6E6A5924323E3D483DA5A7A2F3E7DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFDCDDDC313527FAF7F0CCCED8CDCFCBA99EA94C4B567F9180D5CCD4
        AFADAF7B868192A88B6D606D9B888D6E62642A2B274D524CA8AA96EAE7E1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFDADEDB2B3E2DD9D6CC525B565B6062
        423A3B282F27818181C7B4C7CEE0D4B7958FA1A3C28C8187627A609784837064
        6939344041584AACAB95F5E8E2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFDEDED8
        393724ADABB50D06003326396F6C6F939693D9C8D9FFF7FFBBB1BAA799A63244
        54DCE9D582818170797699838B6D63713A323D4B4F4E9EA990F2F7E8FFFFFFFF
        FFFFFFFFFF00FFFFFFDFDDDE3A342FD3DED6888C819F9F9BD3DBD4FFFFFFCEBD
        CE8B948C98A093D0DEE5453C45232C28D6D7FC8B85666378688683856E656C22
        232C4E4954ACB489FFFFF0FFFFFFFFFFFF00FFFFFFDFDDD637320BE4DDEEC7BC
        E3E8F2F8F7EFF19D9DA2929C8DADBFA8C4AFCEF5F7F713391280847D623235D5
        D1C886848A717C708887885C645C2B302E52414A98A494FFFFFFFFFFFF00FFFF
        FFDEDBDE342830FFFFFFFDFFFD92B2AC737C87B8A699A7B7CBB7DADFCD9988DE
        EFD54E445D6E8D6200001629615BE0D3D88885896A7D6A878A875C6B5C1E2721
        56364F889C91FFFFFF00FFFFFFDFE8DE547C51E5EFE348463AAF8883DDDECBD1
        E9DECFC0A4CD88A6C2FDFFFFFFFF4A00004E82A1573E0A9F7AA42B222BCFC3CF
        8B7D8B6B6B6B908C9364725F0025216E512BFFFFFF00FFFFFFD8D7E200001723
        1537283E53BDCEE2D5AFCFAD97A3D4D7F3DDFFF0CFAD808D9ECF5D9466F2F0EC
        2A19339680950A260A7D947DC1B5C19E9DA38B7B6EC39BAB2C1815000036FFFF
        FF00FFFFFFFFFFFFFFFFFF999EB2474A5AF0E1C7CBCFBEE6F0EBBFAEBC8D818C
        9CAFA7CFDCC7FFFEFDA5B5E317150D8397844C4C4C5C5A5C403940A9B3A56C8C
        8A8B91AE211600FFFFF8FFFFFF00FFFFFFFFFFFFFBFAFB85869C414C5DE1ECE2
        C8C4CA958B949BA69BDBC9DBDDDDDDC0BFC57D6964C6D6A9E5CFE89298913D41
        3D787D785351557D7476A2908FA6B4B2000300DAD8D9FFFFFF00FFFFFFFFFFFF
        FDFDFDC7C8D392969F757C737E777FD5D0D8C3C3C3D1C5D198AD98A6989FC8D7
        F9D5DCC8B3A9AE9A97859299986C6C6C51465349443F807C6BC1CAD91A1F11DE
        DDD9FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFE7E5E66B6C6980908AB1B8BCAAA4
        A7A8A2A7DAD7DAD4E3D4A6999D96ACB8B5ABA1F1EBE8C3CEC15D5F586961695E
        6861354339A18C9D101B13D9DEDAFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF5F5
        F5E3E3E195989B565857BEBCB7D1E2D1B098B0A8CAA7BAA5BBD8E4D1C8CBC59A
        ACB3C1B8ABC6C0BF857F865553554246406556632B2F2BE3E6E3FFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0BEBDA1A4A97D7B8492A38DE1C7DFC5
        E1CBC5B2C5B8C6B8ADA8AFC4CDC2C8C2BEB8C3C3A8A6A99690972F2A3476757D
        C4C3C5FAFAFAFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F5FF
        FFFF4A4F5C6C4D8B9AA6A6C9A4A9B7C0B3CFD9CFD7C3C6A9A0ACB3B6B5CDDCCD
        D3D1C3B5B3AE767B83BDBEC8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6BBC0D6B5F112351DF9EBD1CBE2FFA1AD91
        B18CA4EADFD0DBC9E0A0A59AB9C3ABDEDADAECEDF0FBFBFCFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFF
        D9E7D17B77AF5D4B3CCAE1FFFFF6F89AAD8D8D9990E6E4E5E7ECE6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000007788E20FFFFFF295530FFFFFFE9EE
        EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00}
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 84
    Width = 882
    Height = 351
    Align = alClient
    TabOrder = 1
    DesignSize = (
      882
      351)
    object GridNFe: TDBGrid
      Left = 2
      Top = 15
      Width = 878
      Height = 334
      Align = alClient
      DataSource = DataNFe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = GridNFeDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_PEDIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Data Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDIDO_NUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_DOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'N'#186' NFe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDCLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 335
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Valor Prod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACRESCIMO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Acrescimo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Total Final'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Chave NFe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Status NFe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ICMS_ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ICMS_ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object MemoXML: TMemo
      Left = 2
      Top = 15
      Width = 878
      Height = 334
      Align = alClient
      Lines.Strings = (
        'MemoXML')
      ReadOnly = True
      TabOrder = 2
      Visible = False
      OnKeyPress = MemoXMLKeyPress
    end
    object PnJustifica: TPanel
      Left = 156
      Top = 151
      Width = 606
      Height = 64
      Anchors = []
      Color = clAppWorkSpace
      TabOrder = 1
      Visible = False
      object GroupBox6: TGroupBox
        Left = 1
        Top = 1
        Width = 604
        Height = 62
        Align = alClient
        Color = clBtnShadow
        ParentColor = False
        TabOrder = 0
        object Label11: TLabel
          Left = 8
          Top = 14
          Width = 69
          Height = 13
          Caption = 'Justificativa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdtJustifica: TEdit
          Left = 8
          Top = 28
          Width = 582
          Height = 21
          TabOrder = 0
          OnExit = EdtJustificaExit
          OnKeyPress = EdtJustificaKeyPress
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 882
    Height = 104
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      882
      104)
    object BtnValidarNFe: TBitBtn
      Left = 11
      Top = 47
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Validar NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnValidarNFeClick
    end
    object BtnStatusServ: TBitBtn
      Left = 226
      Top = 74
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Status do Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnStatusServClick
    end
    object BtnConsultaRecLote: TBitBtn
      Left = 442
      Top = 74
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Consultar Recibo Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnConsultaRecLoteClick
    end
    object BtnEnviarNFe: TBitBtn
      Left = 226
      Top = 47
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Enviar NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnEnviarNFeClick
    end
    object BtnImprimirDanfe: TBitBtn
      Left = 442
      Top = 47
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Imprimir Danfe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnImprimirDanfeClick
    end
    object BtnEnviarEmail: TBitBtn
      Left = 11
      Top = 74
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Enviar Email Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnEnviarEmailClick
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 1
      Width = 880
      Height = 41
      Align = alTop
      Color = clAppWorkSpace
      ParentColor = False
      TabOrder = 6
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 91
        Height = 13
        Caption = 'Numero do Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtNumLote: TEdit
        Left = 112
        Top = 11
        Width = 145
        Height = 21
        TabOrder = 0
      end
      object ChApropria: TCheckBox
        Left = 280
        Top = 16
        Width = 209
        Height = 17
        Caption = 'Apropriar Credito de ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object BitBtn2: TBitBtn
      Left = 657
      Top = 74
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Cancelar NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object BtnCartaCorrecao: TBitBtn
      Left = 657
      Top = 47
      Width = 215
      Height = 25
      Anchors = []
      Caption = 'Carta de Corre'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BtnCartaCorrecaoClick
    end
  end
  object QryNFe: TFDQuery
    Connection = DmConexao.Conexao
    SQL.Strings = (
      'select * from pedido'
      'where pedido.id = -1')
    Left = 32
    Top = 297
    object QryNFeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryNFePEDIDO_NUM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PEDIDO_NUM'
      Origin = 'PEDIDO_NUM'
      Size = 10
    end
    object QryNFeIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      Required = True
    end
    object QryNFeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
      Required = True
    end
    object QryNFeDATA_PEDIDO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object QryNFeHORA_PEDIDO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_PEDIDO'
      Origin = 'HORA_PEDIDO'
    end
    object QryNFeDATA_ENTREGA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object QryNFeHORA_ENTREGA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_ENTREGA'
      Origin = 'HORA_ENTREGA'
    end
    object QryNFeID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      Origin = 'ID_CLASSIFICACAO'
      Required = True
    end
    object QryNFeCONFIRMADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONFIRMADA'
      Origin = 'CONFIRMADA'
      FixedChar = True
      Size = 1
    end
    object QryNFeENTREGUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGUE'
      Origin = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object QryNFeVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object QryNFeDESCONTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object QryNFeACRESCIMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
    end
    object QryNFeOUTRAS_DESPESAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'OUTRAS_DESPESAS'
    end
    object QryNFeVALOR_TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
    end
    object QryNFeCANCELADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELADO'
      Origin = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object QryNFeID_FORMAPAG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FORMAPAG'
      Origin = 'ID_FORMAPAG'
    end
    object QryNFeEND_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_ENTREGA'
      Origin = 'END_ENTREGA'
      Size = 30
    end
    object QryNFeNUM_END_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_END_ENTREGA'
      Origin = 'NUM_END_ENTREGA'
      Size = 10
    end
    object QryNFeCOMPL_END_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPL_END_ENTREGA'
      Origin = 'COMPL_END_ENTREGA'
    end
    object QryNFeBAIRRO_END_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO_END_ENTREGA'
      Origin = 'BAIRRO_END_ENTREGA'
    end
    object QryNFeCID_END_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CID_END_ENTREGA'
      Origin = 'CID_END_ENTREGA'
    end
    object QryNFeUF_END_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_END_ENTREGA'
      Origin = 'UF_END_ENTREGA'
      FixedChar = True
      Size = 2
    end
    object QryNFeCEP_END_ENTREGA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP_END_ENTREGA'
      Origin = 'CEP_END_ENTREGA'
      Size = 10
    end
    object QryNFeCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object QryNFeTIPODOC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPODOC'
      Origin = 'TIPODOC'
    end
    object QryNFeTIPO_PEDIDO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_PEDIDO'
      Origin = 'TIPO_PEDIDO'
    end
    object QryNFeVALOR_REAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_REAL'
      Origin = 'VALOR_REAL'
    end
    object QryNFeMARGEM_VENDA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_VENDA'
      Origin = 'MARGEM_VENDA'
    end
    object QryNFeVALOR_COMISSAO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
    end
    object QryNFeTOTAL_GERAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_GERAL'
      Origin = 'TOTAL_GERAL'
    end
    object QryNFeCOO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COO'
      Origin = 'COO'
    end
    object QryNFeCCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CCF'
      Origin = 'CCF'
    end
    object QryNFeGNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GNF'
      Origin = 'GNF'
    end
    object QryNFeDAV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DAV'
      Origin = 'DAV'
      Size = 1
    end
    object QryNFeCNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
      Size = 18
    end
    object QryNFeINSCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCEST'
      Origin = 'INSCEST'
      Size = 18
    end
    object QryNFeVALOR_TROCO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TROCO'
      Origin = 'VALOR_TROCO'
    end
    object QryNFeCAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 3
    end
    object QryNFeIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      Required = True
    end
    object QryNFeDAV_IMPRESSO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DAV_IMPRESSO'
      Origin = 'DAV_IMPRESSO'
    end
    object QryNFeNATOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATOP'
      Origin = 'NATOP'
      Size = 250
    end
    object QryNFeALIQ_ICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
    end
    object QryNFeBASE_ICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
    end
    object QryNFeVALOR_ICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
    end
    object QryNFeALIQ_ICMS_ST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICMS_ST'
    end
    object QryNFeBASE_ICMS_ST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
    end
    object QryNFeVALOR_ICMS_ST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
    end
    object QryNFeVALOR_PIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
    end
    object QryNFeVALOR_COFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
    end
    object QryNFeVALOR_IPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
    end
    object QryNFeMD5REGISTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MD5REGISTRO'
      Origin = 'MD5REGISTRO'
      Size = 32
    end
    object QryNFeNUMPV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMPV'
      Origin = 'NUMPV'
      Size = 10
    end
    object QryNFeCER: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CER'
      Origin = 'CER'
    end
    object QryNFeID_MESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
    end
    object QryNFeABASTECIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABASTECIMENTO'
      Origin = 'ABASTECIMENTO'
      FixedChar = True
      Size = 1
    end
    object QryNFeSTATUS_ABASTEC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_ABASTEC'
      Origin = 'STATUS_ABASTEC'
    end
    object QryNFeNUMSERIEECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMSERIEECF'
      Origin = 'NUMSERIEECF'
      Size = 30
    end
    object QryNFePLACA_VEIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLACA_VEIC'
      Origin = 'PLACA_VEIC'
      Size = 7
    end
    object QryNFeODOMETRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ODOMETRO'
      Origin = 'ODOMETRO'
      Size = 10
    end
    object QryNFeCHAVE_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 100
    end
    object QryNFeSTATUS_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_NFE'
      Origin = 'STATUS_NFE'
      FixedChar = True
      Size = 3
    end
    object QryNFePROTOCOLO_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      Size = 100
    end
    object QryNFeRECIBO_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RECIBO_NFE'
      Origin = 'RECIBO_NFE'
      Size = 100
    end
    object QryNFeDEVOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLUCAO'
      Origin = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object QryNFeNUMERO_DOC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_DOC'
      Origin = 'NUMERO_DOC'
      Size = 10
    end
    object QryNFeSINCRONIZADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SINCRONIZADO'
      Origin = 'SINCRONIZADO'
      FixedChar = True
      Size = 1
    end
    object QryNFeIDUSUARIOCANC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDUSUARIOCANC'
      Origin = 'IDUSUARIOCANC'
    end
    object QryNFeVALOR_CARGA_TRIB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_CARGA_TRIB'
      Origin = 'VALOR_CARGA_TRIB'
    end
    object QryNFeNUMDAV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMDAV'
      Origin = 'NUMDAV'
      Size = 10
    end
    object QryNFeTIPO_FRETE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_FRETE'
      Origin = 'TIPO_FRETE'
    end
    object QryNFeVALOR_FRETE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
    end
    object QryNFeVALOR_SEGURO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
    end
    object QryNFeVALOR_OUTROS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_OUTROS'
      Origin = 'VALOR_OUTROS'
    end
    object QryNFeBASE_ISS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
    end
    object QryNFeVALOR_ISS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ISS'
      Origin = 'VALOR_ISS'
    end
    object QryNFeBASE_PIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
    end
    object QryNFeBASE_COFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
    end
    object QryNFeBASE_IPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
    end
    object QryNFeIDPLANOCONTAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPLANOCONTAS'
      Origin = 'IDPLANOCONTAS'
    end
    object QryNFeIDCENTROCUSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCENTROCUSTO'
      Origin = 'IDCENTROCUSTO'
    end
    object QryNFeNFE_TIPOEMISS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFE_TIPOEMISS'
      Origin = 'NFE_TIPOEMISS'
    end
    object QryNFeNAUTORIZA_VIDALINK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAUTORIZA_VIDALINK'
      Origin = 'NAUTORIZA_VIDALINK'
    end
    object QryNFeNUM_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_LOTE'
      Origin = 'NUM_LOTE'
    end
    object QryNFeARQUIVO_XML: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARQUIVO_XML'
      Origin = 'ARQUIVO_XML'
      Size = 512
    end
    object QryNFeVAL_CARGA_FED: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VAL_CARGA_FED'
      Origin = 'VAL_CARGA_FED'
    end
    object QryNFeVAL_CARGA_EST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VAL_CARGA_EST'
      Origin = 'VAL_CARGA_EST'
    end
    object QryNFeVAL_CARGA_MUN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VAL_CARGA_MUN'
      Origin = 'VAL_CARGA_MUN'
    end
    object QryNFeNOTAMANUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTAMANUAL'
      Origin = 'NOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object QryNFeCOO_CONF_MESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COO_CONF_MESA'
      Origin = 'COO_CONF_MESA'
    end
    object QryNFeMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      FixedChar = True
      Size = 3
    end
    object QryNFeDATA_AUTORIZA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_AUTORIZA'
      Origin = 'DATA_AUTORIZA'
    end
    object QryNFeHORA_AUTORIZA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_AUTORIZA'
      Origin = 'HORA_AUTORIZA'
    end
    object QryNFeOBSNFE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSNFE_1'
      Origin = 'OBSNFE_1'
      Size = 150
    end
    object QryNFeOBSNFE_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSNFE_2'
      Origin = 'OBSNFE_2'
      Size = 150
    end
    object QryNFeOBSNFE_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSNFE_3'
      Origin = 'OBSNFE_3'
      Size = 150
    end
    object QryNFeOBSNFE_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSNFE_4'
      Origin = 'OBSNFE_4'
      Size = 150
    end
    object QryNFeCODIGOSEFAZ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGOSEFAZ'
      Origin = 'CODIGOSEFAZ'
    end
    object QryNFeNUMEROSESSAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROSESSAO'
      Origin = 'NUMEROSESSAO'
    end
  end
  object DataNFe: TDataSource
    DataSet = QryNFe
    Left = 96
    Top = 354
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos XML|*.xml|Todos os arquivos|*.*'
    Left = 32
    Top = 236
  end
  object PopupMenu1: TPopupMenu
    Left = 100
    Top = 237
    object VerarquivoXML1: TMenuItem
      Caption = 'Ver arquivo XML'
      OnClick = VerarquivoXML1Click
    end
    object LiberaravalidaodaNFe1: TMenuItem
      Caption = 'Liberar a valida'#231#227'o da NFe'
      OnClick = LiberaravalidaodaNFe1Click
    end
    object ConsultareatualizardadosdaNFe1: TMenuItem
      Caption = 'Consultar e atualizar dados da NFe'
      OnClick = ConsultareatualizardadosdaNFe1Click
    end
  end
end
