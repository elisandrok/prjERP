unit uFrmSelMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ComCtrls, StdCtrls, uFrameConfirmaCancela, ExtCtrls;

type
  TFrmSelMovCaixa = class(TFrmPadrao)
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    GroupBox1: TGroupBox;
    Calendario: TMonthCalendar;
    procedure FormShow(Sender: TObject);
    procedure FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
    procedure FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelMovCaixa: TFrmSelMovCaixa;

implementation

Uses uLibrary, uDmWorkCom, uFrmRelCaixa;

{$R *.dfm}

procedure TFrmSelMovCaixa.FormShow(Sender: TObject);
begin
  inherited;
  Calendario.Date := SVData;

end;

procedure TFrmSelMovCaixa.FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmSelMovCaixa.FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmRelcaixa, FrmRelcaixa);
  try
    DmWorkCom.Dados_Caixa(Calendario.Date);
    DmWorkCom.Dados_CaixaMov(DmWorkCom.CdsCaixa.FieldByname('ID').AsInteger);
    CalculaTotaisCaixaMov(Calendario.Date);
    FrmRelcaixa.LbCredito.Caption := AlinhaCampoValor(sTotalReceita, 8, 2);
    FrmRelcaixa.LbDebito.Caption := AlinhaCampoValor(sTotalDespesa, 8, 2);
    FrmRelcaixa.LbSaldo.Caption := AlinhaCampoValor((DmWorkCom.CdsCaixa.FieldByname('VALOR_ABERTURA').AsFloat + sTotalReceita) - sTotalDespesa, 8, 2);
    FrmRelcaixa.LbCaixa.Caption := 'Movimento do dia: ' + FormatDateTime('DD/MM/YYYY', Calendario.Date);
    FrmRelcaixa.QrCaixa.Prepare;
    FrmRelcaixa.QrCaixa.Preview;
  finally
    FrmRelcaixa.Destroy;
  end;
end;

end.
