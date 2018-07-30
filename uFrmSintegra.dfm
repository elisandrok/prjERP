inherited FrmSintegra: TFrmSintegra
  Left = 262
  Top = 123
  Hint = 'Selecione os Registros a serem gerados e clique em Gerar Arquivo'
  Caption = 'Emitir Sintegra'
  ClientHeight = 515
  ClientWidth = 425
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 429
    Width = 425
    Height = 67
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 4
    inline FrameConfirmaCancela1: TFrameConfirmaCancela
      Left = 100
      Top = 3
      Width = 203
      Height = 62
      TabOrder = 0
      ExplicitLeft = 100
      ExplicitTop = 3
      inherited BtnConfirmar: TBitBtn
        Cursor = crHandPoint
        Hint = 'Confirma a gera'#231#227'o do arquivo'
        Action = ActGerar
        Caption = 'Gerar Arquivo'
      end
      inherited BtnCancelar: TBitBtn
        Cursor = crHandPoint
        Action = ActEncerrar
        Caption = 'Encerrar'
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 496
    Width = 425
    Height = 19
    Panels = <
      item
        Width = 400
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 233
    Caption = ' Registros a serem processados '
    TabOrder = 0
    object Ch10: TCheckBox
      Left = 16
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Registro 10'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
    end
    object Ch11: TCheckBox
      Left = 16
      Top = 32
      Width = 105
      Height = 17
      Caption = 'Registro 11'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
    object Ch50: TCheckBox
      Left = 16
      Top = 48
      Width = 105
      Height = 17
      Caption = 'Registro 50'
      Enabled = False
      TabOrder = 2
    end
    object Ch51: TCheckBox
      Left = 16
      Top = 64
      Width = 105
      Height = 17
      Caption = 'Registro 51'
      Enabled = False
      TabOrder = 3
    end
    object Ch53: TCheckBox
      Left = 16
      Top = 80
      Width = 105
      Height = 17
      Caption = 'Registro 53'
      Enabled = False
      TabOrder = 4
    end
    object Ch54: TCheckBox
      Left = 16
      Top = 96
      Width = 105
      Height = 17
      Caption = 'Registro 54'
      Enabled = False
      TabOrder = 5
    end
    object Ch55: TCheckBox
      Left = 16
      Top = 112
      Width = 105
      Height = 17
      Caption = 'Registro 55'
      Enabled = False
      TabOrder = 6
    end
    object Ch56: TCheckBox
      Left = 16
      Top = 128
      Width = 105
      Height = 17
      Caption = 'Registro 56'
      Enabled = False
      TabOrder = 7
    end
    object Ch57: TCheckBox
      Left = 16
      Top = 144
      Width = 105
      Height = 17
      Caption = 'Registro 57'
      Enabled = False
      TabOrder = 8
    end
    object Ch60m: TCheckBox
      Left = 16
      Top = 160
      Width = 105
      Height = 17
      Caption = 'Registro 60M'
      TabOrder = 9
      OnClick = Ch60mClick
    end
    object Ch61: TCheckBox
      Left = 136
      Top = 32
      Width = 105
      Height = 17
      Caption = 'Registro 61'
      TabOrder = 10
    end
    object Ch70: TCheckBox
      Left = 136
      Top = 64
      Width = 105
      Height = 17
      Caption = 'Registro 70'
      Enabled = False
      TabOrder = 11
    end
    object Ch71: TCheckBox
      Left = 136
      Top = 80
      Width = 105
      Height = 17
      Caption = 'Registro 71'
      Enabled = False
      TabOrder = 12
    end
    object Ch74: TCheckBox
      Left = 136
      Top = 96
      Width = 105
      Height = 17
      Caption = 'Registro 74'
      Enabled = False
      TabOrder = 13
    end
    object Ch75: TCheckBox
      Left = 136
      Top = 112
      Width = 105
      Height = 17
      Caption = 'Registro 75'
      TabOrder = 14
    end
    object Ch76: TCheckBox
      Left = 136
      Top = 128
      Width = 105
      Height = 17
      Caption = 'Registro 76'
      Enabled = False
      TabOrder = 15
    end
    object Ch77: TCheckBox
      Left = 136
      Top = 144
      Width = 105
      Height = 17
      Caption = 'Registro 77'
      Enabled = False
      TabOrder = 16
    end
    object Ch85: TCheckBox
      Left = 136
      Top = 160
      Width = 105
      Height = 17
      Caption = 'Registro 85'
      Enabled = False
      TabOrder = 17
    end
    object Ch86: TCheckBox
      Left = 136
      Top = 176
      Width = 105
      Height = 17
      Caption = 'Registro 86'
      Enabled = False
      TabOrder = 18
    end
    object Ch90: TCheckBox
      Left = 136
      Top = 192
      Width = 105
      Height = 17
      Caption = 'Registro 90'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 19
    end
    object Ch60a: TCheckBox
      Left = 16
      Top = 176
      Width = 105
      Height = 17
      Caption = 'Registro 60A'
      TabOrder = 20
      OnClick = Ch60aClick
    end
    object Ch60d: TCheckBox
      Left = 16
      Top = 192
      Width = 105
      Height = 17
      Caption = 'Registro 60D'
      TabOrder = 21
      OnClick = Ch60dClick
    end
    object Ch60i: TCheckBox
      Left = 16
      Top = 208
      Width = 105
      Height = 17
      Caption = 'Registro 60I'
      TabOrder = 22
      OnClick = Ch60iClick
    end
    object Ch61r: TCheckBox
      Left = 136
      Top = 48
      Width = 105
      Height = 17
      Caption = 'Registro 61R'
      TabOrder = 23
    end
    object Ch60r: TCheckBox
      Left = 136
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Registro 60R'
      TabOrder = 24
      OnClick = Ch60rClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 246
    Width = 409
    Height = 47
    Caption = ' Informe a Pasta de Grava'#231#227'o do Arquivo '
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 380
      Top = 19
      Width = 23
      Height = 22
      Hint = 'Selecionar o arquivo para grava'#231#227'o do sintegra'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object EdtPath: TEdit
      Left = 6
      Top = 18
      Width = 371
      Height = 21
      TabOrder = 0
      Text = 'C:\Sintegra.txt'
    end
  end
  object GroupBox3: TGroupBox
    Left = 272
    Top = 9
    Width = 145
    Height = 72
    Caption = ' Per'#237'odo a Ser Processado '
    TabOrder = 2
    object Label1: TLabel
      Left = 6
      Top = 21
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 10
      Top = 44
      Width = 6
      Height = 13
      Caption = #224
    end
    object Datai: TDateTimePicker
      Left = 22
      Top = 18
      Width = 100
      Height = 21
      Date = 40365.662139756950000000
      Time = 40365.662139756950000000
      TabOrder = 0
    end
    object Dataf: TDateTimePicker
      Left = 21
      Top = 39
      Width = 100
      Height = 21
      Date = 40365.662162361110000000
      Time = 40365.662162361110000000
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 295
    Width = 409
    Height = 40
    Caption = ' Estrututa '
    TabOrder = 3
    object ComboEstrutura: TComboBox
      Left = 10
      Top = 14
      Width = 391
      Height = 21
      TabOrder = 0
      Text = 
        '3 - Conv. ICMS 57/95, com as altera'#231#245'es promovidas pelo Conv'#234'nio' +
        ' ICMS 76/03.'
      Items.Strings = (
        
          '1 - Conv. ICMS 31/99 e com as altera'#231#245'es promovidas at'#233' o Conv'#234'n' +
          'io ICMS 30/02.'
        
          '2 - Conv. ICMS 69/02 e com as altera'#231#245'es promovidas pelo Conv'#234'ni' +
          'o ICMS 142/02.'
        
          '3 - Conv. ICMS 57/95, com as altera'#231#245'es promovidas pelo Conv'#234'nio' +
          ' ICMS 76/03.')
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 336
    Width = 409
    Height = 40
    Caption = ' Natureza '
    TabOrder = 6
    object ComboNatureza: TComboBox
      Left = 8
      Top = 14
      Width = 393
      Height = 21
      TabOrder = 0
      Text = '3 - Totalidade das opera'#231#245'es do informante'
      Items.Strings = (
        
          '1 - Interestaduais somente opera'#231#245'es sujeitas ao regime de Subst' +
          'itui'#231#227'o Tribut'#225'ria'
        
          '2 - Interestaduais - opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ri' +
          'a '
        '3 - Totalidade das opera'#231#245'es do informante')
    end
  end
  object GroupBox6: TGroupBox
    Left = 8
    Top = 379
    Width = 409
    Height = 40
    Caption = ' Finalidade '
    TabOrder = 7
    object ComboFinalidade: TComboBox
      Left = 8
      Top = 14
      Width = 393
      Height = 21
      TabOrder = 0
      Text = '1 - Normal'
      Items.Strings = (
        '1 - Normal'
        '2 - Retifica'#231#227'o total de arquivo'
        '3 - Retifica'#231#227'o aditiva de arquivo'
        
          '5 - Desfazimento; Referentes as opera'#231#245'es/presta'#231#245'es n'#227'o efetiva' +
          'das')
    end
  end
  object ActionList1: TActionList
    Left = 344
    Top = 448
    object ActGerar: TAction
      Caption = 'Gerar Arquivo'
      OnExecute = ActGerarExecute
    end
    object ActEncerrar: TAction
      Caption = 'Encerrar'
      ShortCut = 121
      OnExecute = ActEncerrarExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 352
    Top = 192
  end
end
