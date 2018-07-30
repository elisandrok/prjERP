inherited FrmLivroLMC: TFrmLivroLMC
  Caption = 'Livro de movimenta'#231#227'o de combust'#237'vel - LMC'
  ClientHeight = 420
  ClientWidth = 493
  OnShow = FormShow
  ExplicitWidth = 499
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  object GrpDadosLivro: TGroupBox
    Left = 0
    Top = 0
    Width = 493
    Height = 221
    Align = alTop
    Caption = ' Dados do livro atual '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 24
      Width = 47
      Height = 13
      Caption = 'Livro N'#186
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 119
      Top = 24
      Width = 76
      Height = 13
      Caption = 'Qtde p'#225'ginas'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 219
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Data abertura'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 355
      Top = 24
      Width = 98
      Height = 13
      Caption = 'Data fechamento'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 19
      Top = 69
      Width = 74
      Height = 13
      Caption = 'Respons'#225'vel'
    end
    object Label6: TLabel
      Left = 19
      Top = 115
      Width = 63
      Height = 13
      Caption = 'Conferente'
    end
    object Label7: TLabel
      Left = 19
      Top = 159
      Width = 46
      Height = 13
      Caption = 'Gerente'
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 40
      Width = 78
      Height = 21
      DataField = 'NUM_LIVRO'
      DataSource = DataLivro
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 119
      Top = 40
      Width = 78
      Height = 21
      DataField = 'QUANT_PAG'
      DataSource = DataLivro
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 219
      Top = 40
      Width = 114
      Height = 21
      DataField = 'DATA_ABERTURA'
      DataSource = DataLivro
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 355
      Top = 40
      Width = 114
      Height = 21
      DataField = 'DATA_FECHAMENTO'
      DataSource = DataLivro
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 19
      Top = 85
      Width = 450
      Height = 21
      DataField = 'ID_RESPONSAVEL'
      DataSource = DataLivro
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DataResponsavel
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 19
      Top = 130
      Width = 450
      Height = 21
      DataField = 'ID_CONFERENTE'
      DataSource = DataLivro
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DataConferente
      TabOrder = 5
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 19
      Top = 174
      Width = 450
      Height = 21
      DataField = 'ID_GERENTE'
      DataSource = DataLivro
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DataGerente
      TabOrder = 6
    end
    object PnBotoesLivro: TPanel
      Left = 2
      Top = 181
      Width = 489
      Height = 38
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 7
      Visible = False
      object BitBtn1: TBitBtn
        Left = 73
        Top = 5
        Width = 167
        Height = 29
        Action = ActGravarDadosLivro
        Caption = 'Gravar dados livro'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FAFFFFF8FFFF
          F4FFFBEFFFF7EFFFF8F1FFF9FAFFFEFDFFFFFDFEFFFDFFFFFFFFFFFFFFFEFBFF
          FCFBFFFEFFFFFFFDFFFFFAFFFEF3FFFCEDFFFAEDFFFCF4FFFCF5FCF7FFFFFEFF
          FEFDFAFFFFF3FEFCF1FFFBE9FFF5BCD9CAA8C0B4F4FDFAFAFCFDF9FAFEF9FBFC
          FDFBFBFBFCFAF7FDF8F7FCFAFBFBFBF9FBFBF5FFFD99AEA68BA89FE8FFFBEDFF
          FCF4FFFCFCFDF9FFFFFEF8FFFFF1FFFCE8FFF9436B590E3826658677F6FFFCF7
          F9FAF7F8FCF7F8FCFBF9F9F9FAF8F7FBF6F5FAF8F9F9F9F4F9F8F1FFFC668479
          184437144333AFD5C9ECFFFBF9FFFBFFFFFCF6FEFEEFFFFE5882711349321D53
          3C658F7DF1FFFADFE1E2DBDCE0DDDCE0DEDEDEDEDFDDDCE0DBDBDEDCDDDDDDD7
          DDDCEAFFF9699081124C3A1654420D4332E0FFF8F4FFFBFBFFFAF8FFFFE8FFF7
          0C412D16593C1154375C9079F1FFFBFBFDFDFDFCFFFEFDFFFEFEFEFFFFFEFFFF
          FCFEFFFBFDFCFEF5FDFCECFFFC618E7E0D523E0D58420A4D38649383EFFFF9FB
          FFFBF7FFFEC2DDD40C4A320A5B3A0655345C997FEDFFF9E3E5E5E4E3E7E4E3E7
          E5E5E5E5E6E2E5E7E1E4E5E1E3E2E4DCE4E3ECFFFB61917F0A553F03573F0954
          3E407865EDFFF9FBFFFBF5FDFCC9E6DD0E523909634009603E57997CEDFFF9F7
          FAF8F8F7FBF8F7FBF9FAF8F9FAF6FBFBF5FAF9F5F7F6F8F2F8F7EDFFFB669684
          0250390A6349085B423B7963E9FFF6F8FFF7FAFFFFC5E2D90953370F6E490562
          3D539D7FE4FFF8DFEFE8E7F2F0E9F1F0EBF2EFEBF3ECE9F4ECE9F3EDE8F0EFE1
          F2EEE3FFF7629C840A5E42046243065E403E8067EDFFF9FBFFF9FDFEFFCAE5DC
          0E5A3A0D71470E6F470D613FD0FFF2DEFFF7E3FFF8EAFFFBEBFFF9ECFFFAEAFF
          FBE8FFFBE8FFFCDFFFF9CEFFF11464410C6B460C6F4906614042846BF1FFF9FF
          FFFBFAFDFFC7E5DA0C5E3B0D7649096F4517744F0F5C405DA18872B0986BA48F
          7AAC9A78AA9873AB966EA79270A99462A38A0E5F3E116E470A70470A70470C6C
          483D8168EFFFFBFFFFFCF6FFFFBFE3D71F79551A8A5B1D865B21845E21835F10
          714F11714D0E6E4A12704E146F4E156F4C136D49156D4917714D177753157A54
          0F79500B754E086C49479076E8FFF9FAFFFDF4FFFEBDE6D71D7D58178D5D1883
          581E865D19865F17896115895E11855A0D8055128258107F531080511584580F
          7B51107B540B764F127D56127D560A704D3D8971E8FFFBFAFFFEF6FFFCBFE9D8
          177D5413905F269267238B6216895E158B60138A5D198E611A8A6016875B188E
          5E0C85530C84540D845710835B14865E0F7F570F7A530E76533E8C74E8FFFBF7
          FCFAF6FFFBBEE8D61881561597621D905F1F8C5E229066208C621D825C22815C
          237D5A24815C1E80561C8154177D5418825B16865E10835B15855B16845A107A
          56439277E7FFFAFAFFFBF3FFFBC0EDDA228B5E149960199861249766278A6233
          846390CEB695C8B48FBDAA92C1AB95CBAEA2DABDA2D6BE4C8D731E7C591D8B61
          17865A17865A18825D459578E8FFF7FDFFFBF3FFFDC0EDDA21895A189E62199D
          61259964277E58D1FFF4E0FFF5E2F7EFD6E8E1D4EEE1D6FDE778A28BC0E1D2D8
          FFF33E9270208B601D8F601A8C5D1A855E489879EAFFF8FBFFF9F5FDFDC4EBDC
          2B8E601FA16420A36424945E5EA884DFFFF7EAF8F6E9EEF1D1D9D9DEF6EE6BA3
          8E114D35487065CEFDED69B59524895C1D9261198F5E1E8C62499D7BE8FFF7FB
          FFF9FAFEFFC4E8DC32916523A2651B9E5F2FA06761A783E3FFF7EFF6F9EAE5EE
          E1E2E6D5EDE572B39D196248558377CDFBEE6CB89824865A219665229B691E8A
          5F54A382E8FFF7F8FFF6F5FBFFC6E8E1318C652BA66E22A769269B6460AA88E3
          FFF8EDF6F9EDE8F1DADCDDDBF3EB72B79C2774585B8C7ECBFCEC68B796288C62
          2096661B91612C8F676CB294EDFFF8FDFFFBFBFDFFEAFFFF458B6D39A17228A1
          6E2F9D6D63A98AE3FFF8F2FAFAECE8EEDDDCDED8EBE287BEA52C694D729688CE
          F5E677BCA1308D682591672B936A459976A4DBC2F2FFF8FEFFFAFFFCFFF9FFFD
          D6FAE94C8F7050B08B3696716DAA90E4FFF4EFF5F4EFE9EEE2DFE1DEE5DEEDFF
          F0D3E9D6EFF6EFDCEDE478AD993984683F957364B3926CA78BE6FFF7F8FFFBFE
          FDF9FFFEFFFEFFFBF4FFF9DAFFEE75B6A073B7A090BDAAD8F0E4E1E6E5EAE5E7
          E0DDDFE2E3E1E4E8DCE8ECE0EAE5E2E0E5E3B0D2C788BCAA77B1999BCFB8E8FF
          F7EFFFF4FBFFFCFFFFFFFFFFFBFDFFFBF7FEF9F3FFFCEBFFFDEBFFFBF1FFF9F5
          FFFAF9FEFDFEFDFFFFFDFFFFFEFFF8FEF9FBFFFCFEFDFFFDFEFFF6FFFFECFFF9
          ECFFF9EEFFF6FBFFF9FFFFFBF6FBFAFAFFFFFBFFF9F9FFF9FBFFFEFBFFFFFAFD
          FFFBFFFFFAFFFCF9FFFAFCFEFEFDFFFFFFFDFFFFFEFFFAFFFEF7FDFCFDFDFFFE
          FBFFFDFFFFFBFFFEF7FEF9FBFFFBFFFFFAFFFFFCFDFFFFF8FFFF}
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 242
        Top = 5
        Width = 167
        Height = 29
        Action = ActCancelarDadosLivro
        Caption = 'Cancelar dados livro'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFECFFFFF1
          FAF9F5FDFCFFEFEDFFE8E6FFACAAE655549C212175191A701310651716603130
          6872729ACFCDE3FAFAFFFFFDFFFBFAFEFFFEFFFFFEFFFBFFF1FCFFF8F7F9FFF1
          F1FFCCC9F633316D0A085403045C09086801016509086809085E06064C010137
          09082F8B88A1F3F1FDFEFDFFFAF9FDF9F8FCF6FFFFF0F8FFEFF3FF9394C60E0B
          530B096309077108087E0505810A0C8800007704057308096B13136708064C00
          002D545266FDFBFFFFFEFFFFFEFFEEF4FFF0F5FF9798D00D0C561211670E0B72
          0B098006068800028C04079104078D090A840E0D750908660F0C68100C570000
          265E5D71FDFBFFFDFCFFF1EBFFDAD5FF16126414106F0D0C623839940607750B
          0D8A070A95080C9A04078D0A0A80211E7A201A730E076F100B6E130F5A00002D
          ACAAC7FBF9FFECE5FF4740890F0974110D7E3B3C94D8D9FF9193EB0A0D750C0E
          8B080A8E0F0F851A197BC7C3FFE5DEFF2F28910E08790C096C01004A363462EC
          ECFFAFB0FF1111750D098A1D1B978E8FE7E0E2FFE3E6FF9494D414127613117B
          242176B4B1EFEAE5FFE5DFFF9F9AFD0A077B100D7A10106A000039BEBEEE6F77
          E80004810B0CA2090A980A0D769396E0EDEDFFE9E8FF8E8CD218155DC8C5FCEC
          EBFFEFEEFF8B8ACC0E0E7A0B0A8A0A0B8511117B02024E7F80BD333DCB0009A0
          0B10B9080CB10A149E151B869695D7E9E7FFEBECFFE7E8FFF1F2FFE4E6FF888E
          D7070E750D139A030A9D060B960B0F8601025C5E61AC161BBD040AB10508BE07
          0BBE080FB2121899282777CECCF6FAF8FFF9FBFFF4F4FFB3B6E2131B75081190
          0911AA040CAD070DA6090E9204066A5B5FB01512BC1411C1130ECD1A18D60F0F
          BF0D0E9C28257BBBB5E4F9F3FFFFFAFFF5F3FF8F8EC010147A0F149F0C11B30A
          0FB80709AD070B990A0E745E65B52E2BD41512C21D16D5221CD51310B31B1896
          AAA8F4EBE8FFF5EBFFF3EBFFF1EBFFE6E4FF8B8BE90D10900A0EA91114BD0E0F
          B71111A3070C6F7379C64C53F0181CC12926DA2C28CE241F9AB8B5FFE2E4FFEA
          E9FFA197DD3F3581B7B1ECE5E2FFE2E1FF8D8EE80F1499161AB91412B81B18A9
          0D0F6DB1B7FA7882FF242AB93937DD3E39D29793FDD8D7FFE1E8FF8288C9201C
          86231C8F2524828686D4E6E5FFDCDAFF787AFC1818B2221EBA221DA0363787DB
          DFFFB7BCFF3C3DAB4540D1534CDD605CCDD2D6FF7785E50816871519AE1314B2
          191DAB11148E8F8DEDB0ACFF514BDA2C26C13028B50D08759798D4EEF2FFE0E5
          FF8585D14C44B9655DE06661D44446B63C48BE303CC41B20C31B1DC91F21C52F
          31C53D3DB9403CB93D34CA413ACB352FA45250A2ECECFFF2F6FFEDF3FFE6E7FF
          635CB16056C17A73E68785FC7479F3666AEE5C58ED453EDB504FEB4C4EE85153
          E75353E54E4CE13A39B9393A92D9DAFFF4F5FFFBFEFFF8FEFFEBEEFFDDD7FF6B
          65B45D59B98484F08D8EFF9394FF928DFF857FFF7E7BFF7574FF5C60F45255DF
          4144BE484AA8D0D4FFE8ECFFF9FBFFFEFCFBFDFEFFF9F9FFF4F0FFDEDBFF8A8D
          CA6066B36F73D28D90FD8D92FF8C91FF7B7AFF6D6CF25557D35155BB767CBDE0
          E8FFEBF2FFF4FAFFFEFDFFFFFFFCFDFCFEFFFDFFFAF7FFF2F0FFE2E9FFB6BFFE
          9FA3FB7075DB656FDB606ADC6564E47573EF8E8FFFB8BCFFE4EDFFEDF8FFF1FA
          FFF8FEFFFDFBFBFFFDFA}
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 381
    Width = 493
    Height = 39
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 75
      Top = 2
      Width = 167
      Height = 33
      Action = ActImprimirPagina
      Caption = 'Imprimir p'#225'gina'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FCFCFCFFFFFF
        F8F8F8FFFFFFFDFFFFFDFFFFFFFFFFC9C9C9AAA5A6E2DDDEFFFEFFE1DCDD9A98
        98DCDADAFFFFFFFFFFFFFBFBFBFEFEFEFDFDFDFFFFFFFFFFFFF8F8F8FFFFFFFA
        FAFAFDFFFFE0E2E2717171525252403B3C4F4A4B7570716E696A878585575555
        727272C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBF8F8F88D8F
        8F5A5C5CC3C3C3F1F1F1B0ABAC837E7F847F808D8889CCCACAEDEBEBB1B1B15D
        5D5D5C5C5CB1B1B1F4F4F4FBFBFBFFFFFFFBF9F9B7B5B5646464ADADADFAFAFA
        F9F9F9D1D1D1ADAAACBEBCBC4543435553536D6B6B969494BBB9B9EEEEEED5D5
        D56A6C6CA0A0A0FCFEFEFFFEFFC5C0C1999495F8F6F6FCF9FBF3F2F4F7F6F8CB
        CDCEABAAAEB3B2B4A6A5A79895977A7878757373817F7FB0AEAEB0B2B2727776
        B0B2B2FBFFFFFFFEFFB4B2B2F1EFEFFFFEFEFAF8F8CAC9CB99989A797B7C7675
        778584869C9B9DB8B8B8C0C0C0BABABAB3B1B1525252A7A9A9545958B8BDBCFA
        FFFEFAFCFCB4B6B6E0E2E2D6D8D89292929B9C9ACCCDCBC7C8C6A09E9D979896
        898A88797979848686A9ABABB6BBBAB6BBBA9FA4A3525756B4B9B8FBFFFFFAFF
        FF878D8C8D92919DA2A1DBDEDCE4E5E3D5D6D2EDEEEAEFF0ECD9DAD6C8C9C7BE
        C1BFA0A2A27D82818287867D8281737877505554BBC0BFF9FEFDF6FBFA959A99
        DDE2E1EBF0EFD7DCDACDD0CEDADDDBD1D4D2C0C3C1C1C4C2D5D8D6D8DBD9DBDD
        DDD8DADAC5C7C7B5B7B79FA1A15B5D5DBABCBCFDFFFFFBFFFF969B9AE7ECEBDB
        DDDDD4D7D5D9DCDAE2E5E3CDD0CEF9FAF8F5F6F4DFE0DED3D4D2CACACABEBEBE
        C2C4C4D9DBDBDDDFDF585A5AEAECECF7F9F9FCFFFDE5E8E6949696BBBBBBBDBB
        BBBDBBBB999495CEC9CAD8D2D3DBD6D7F6F1F2FCF7F8F1EFEFEDEBEBEDEEECB6
        B7B5A0A2A2B1B3B3FDFFFFF9FBFBF9FEFCFDFFFEE9EAE8B8B6B5C9C4C3EFE5E5
        CBBEBCA99C9AB5A8A6B8ABA9B0A4A4AEA6A6C1BCBBE8E6E5C6C7C5A1A4A2AFB1
        B1FBFDFDFDFFFFFBFDFDF8FFFFF9FFFDFFFFFEEEE9E6C0B4B0F3E0DBE6CEC8E3
        C9C3E8CEC8F0D8D2E8D5D0E4D8D4C4BDBA848281BFC4C2E5EBEAFDFFFFFBFDFD
        FDFFFFFBFDFDF7FFFEF9FEFDFFFEFAFFFFF8D2C2BBD6C0B5E0C5B7E9CCBEE8C8
        BBE3C8BAE5CFC4E0D1C8A89F9BF9F6F2CCD1D04B5150343636828484F4F6F6FD
        FFFFFAFEFFFBFDFDFFFFFCFFFFF7BEAEA1ECD8C6F8E0CAF5D9C1F6DAC2F3DBC5
        EEDAC8BAAA9DB6ADA4C5C0BD0000000000010000000000003E3E3EFFFFFFFEFD
        FFFFFEFEFFFFFBFFF6ECBBAE9EFEEDDAF9E5CCF9E4C9FFE8CEF8E4CBFFF2DFA7
        9A8AE4DBD1090300100E0EFEFDFF858585060606000000A0A0A0FFFBFCFFFCFB
        FFFEF9F7EEE5C0B7A9F9EDDBF8EAD7FBEED8FAECD6FAECD9F5EBD9908779E3DC
        D3231D18CFCAC9181616E9E7E7757575000000727272FFFEFFFFFFFEFFFFFBC6
        C0B9D7CEC5FDF5E8FFF6E9F9F0E2FCF3E5FFF8E9DFD6CCA49F96FFFFF9070300
        040000090707020000FFFFFF0505059D9D9DFEFCFBFFFFFCF7F4F0AAA7A3FFFF
        FCFFF9F6FFF7F4FFFEFBFFF8F5FFFEFBAFA8A5E7E4E0FFFFFC908F8B08090500
        0100000000030303242424F2F2F2FFFFFCFEFFFBD0CECDC0BEBDE4DEDFD0CACB
        D9D0D3DDD4D7D4CBCECDC6C9E9E3E4FFFFFFFFFEFDFFFFFEB7BBB6393D382B2B
        2B6E6E6EEEEEEEFDFDFD}
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 244
      Top = 2
      Width = 167
      Height = 33
      Action = ActFecharTela
      Caption = 'Fechar Tela'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFCFCFCF1F1F1E2E2E2E1E1E18181817C7C7C7B7B7B787878777777
        7777777676767676767777777777777878787A7A7A7D7D7D7C7C7CA3A3A3E6E6
        E6EDEDEDFBFBFBFFFFFFFBFBFBE6E6E6D3D3D3CACACAD4D4D4999999A1A1A1A2
        A2A2A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A2A2A2A2A2A2
        A4A4A4A8A8A8CCCCCCCACACAD6D6D6F1F1F1FCFCFCF2F2F2E8E8E8E2E2E2E5E5
        E5C6C6C680808084848484848484848484848484848484848484848484848484
        84848484848384847D7D7DECECECE0E0E0E3E3E3EAEAEAF9F9F9FFFFFFFFFFFF
        FFFFFFFDFDFDFFFFFFD7D7D79091919C99969C98959C98959C98959C98959C98
        959C98959C98959C98959C98959896948A8A8AFFFFFFFDFDFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D5D28297B594A8C493A7C2
        93A7C293A7C393A7C393A7C293A7C293A7C290A5C4A8B2BEF5F4F2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF34
        6DBD619CEC5E99E95F9AE95E98E75993E3619BEA5E99E8609BE95191E79BB1D2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3C70BB558AD26CA1E96BA0E8588CD46BA0E85C91D7699EE766
        9BE34D85D39CB1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A6FB95083CB5F93DB5E92DA5487CE6A9F
        E85183CC5D91D95B8ED54C84D39BAFCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF386BB64F83CA5E92DA
        5D91D95486CE689DE55084CB5C90D8598DD54A84D199AECCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35
        6AB34E81CA5C90D85B8FD75285CD669BE35082CA5A8ED6578BD34A81D098ADCB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3367B04C81C95B8FD55A8ED55284CD659AE24E81C9588CD457
        8AD14781CE97ACCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3165AF4D7FC8598DD5588CD45083CB6298
        E04D81C7578CD3568AD13B78CC96ABCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E61AC4F83CB5083CA
        4E82C95386CE6297DF4C7FC64F82C9437BC99DB3D199ABC7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A
        5EA66196DE6094DC5F93DB6195DD5F93DB6195DD6094DB5690E19EAAB99AAAC3
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF295DA6588DD56A9FE76A9FE75A8DD65A8ED66196DE689CE55E
        97E5A1B4CF98AAC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF285CA64779C24D80C74B7FC64C7FC65C90
        D94678BF4B7EC54A7DC33471C593A8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF265BA4477BC24E81C9
        4C7FC74C80C75A90D6487AC24C7FC84D7FC73F77C595A8C7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF25
        58A24779C24C7FC64B7DC54C7EC6578DD44779C04B7DC64B7DC43F76C393A7C5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF23569F4679C0497BC2497BC14B7EC5578BD24678BE497BC249
        7BC23D74C192A7C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21559E4579C04779C04779BF4B7DC55689
        D14576BD4779C0487BC13B71C093A6C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20539B4477BE4476BD
        4375BC4A7CC35588CF4375BC4376BD4577BE3A70BE91A6C4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11
        49973C73C13A71BD3A71BD396FBC386EBB3A71BD3A71BD3A70BD306BBE8AA0C0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF91A6C49FB2CF9FB2CE9FB2CE9FB2CE9FB2CE9FB2CE9FB1CE9F
        B2CE97ADCCD2D9E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 221
    Width = 493
    Height = 160
    Align = alClient
    Caption = ' P'#225'ginas impressas '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 489
      Height = 143
      Align = alClient
      DataSource = DataLivroPag
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_LIVRO'
          Title.Caption = 'Livro N'#186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_PAGINA'
          Title.Caption = 'N'#186' P'#225'gina'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PAGINA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Caption = 'C'#243'd.Prod.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o Produto'
          Visible = True
        end>
    end
  end
  object DataLivro: TDataSource
    DataSet = DmPosto.CdsLivroLMC
    Left = 416
    Top = 208
  end
  object DataResponsavel: TDataSource
    DataSet = DmClientes.CdsFuncionarios
    Left = 296
    Top = 72
  end
  object DataConferente: TDataSource
    DataSet = DmClientes.CdsFuncionarios
    Left = 376
    Top = 112
  end
  object DataGerente: TDataSource
    DataSet = DmClientes.CdsFuncionarios
    Left = 448
    Top = 80
  end
  object ActionList1: TActionList
    Left = 232
    Top = 144
    object ActGravarDadosLivro: TAction
      Caption = 'Gravar dados livro'
      OnExecute = ActGravarDadosLivroExecute
    end
    object ActCancelarDadosLivro: TAction
      Caption = 'Cancelar dados livro'
      OnExecute = ActCancelarDadosLivroExecute
    end
    object ActImprimirPagina: TAction
      Caption = 'Imprimir p'#225'gina'
      OnExecute = ActImprimirPaginaExecute
    end
    object ActFecharTela: TAction
      Caption = 'Fechar Tela'
      OnExecute = ActFecharTelaExecute
    end
  end
  object DataLivroPag: TDataSource
    DataSet = DmPosto.CdsLivroLMCPag
    Left = 360
    Top = 284
  end
end