object frmDetalhaCupom: TfrmDetalhaCupom
  Left = 0
  Top = 0
  Caption = 'Detalhamento de Cupom'
  ClientHeight = 310
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 302
    Top = 8
    Width = 571
    Height = 265
    Caption = 'Acompanhamento de Caixas '
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 567
      Height = 248
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Descri'#231#227'o'
          Width = 246
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor Unit'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Quantidade'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor Total'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Cancelado'
          Width = 60
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 290
    Height = 265
    Caption = 'Formas de Pagamento '
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 286
      Height = 248
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'No. Cupom'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Forma'
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor'
          Width = 60
          Visible = True
        end>
    end
  end
  object Button1: TButton
    Left = 798
    Top = 279
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 688
    Top = 279
    Width = 104
    Height = 25
    Caption = 'Imprimir Cupom'
    TabOrder = 2
  end
end
