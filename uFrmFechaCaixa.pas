unit uFrmFechaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, DBClient, StdCtrls, uFrameConfirmaCancela,
  ExtCtrls, Mask, DBCtrls, ActnList;

type
  TFrmFechaCaixa = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    CdsFechamento: TClientDataSet;
    DataFechamento: TDataSource;
    Label1: TLabel;
    DbDinheiro: TDBEdit;
    Label2: TLabel;
    DbCartao: TDBEdit;
    Label3: TLabel;
    DbCheque: TDBEdit;
    Label4: TLabel;
    DbOutros: TDBEdit;
    CdsFechamentoDINHEIRO: TCurrencyField;
    CdsFechamentoCARTAO: TCurrencyField;
    CdsFechamentoCHEQUE: TCurrencyField;
    CdsFechamentoOUTROS: TCurrencyField;
    ActionList1: TActionList;
    ActMenuFiscal: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
    procedure FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbDinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure ActMenuFiscalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sDinheiro, sCartao, sCheque, sOutros : Double;
  end;

var
  FrmFechaCaixa: TFrmFechaCaixa;

implementation

uses uLibrary, uFrmMenuFiscal, uDmWorkCom;

{$R *.dfm}

procedure TFrmFechaCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  if not CdsFechamento.Active then
     CdsFechamento.CreateDataSet;
  CdsFechamento.EmptyDataSet;
  CdsFechamento.Append;
  CdsFechamentoDINHEIRO.AsFloat := 0;
  CdsFechamentoCARTAO.AsFloat := 0;
  CdsFechamentoCHEQUE.AsFloat := 0;
  CdsFechamentoOUTROS.AsFloat := 0;
  sDinheiro := 0;
  sCartao   := 0;
  sCheque   := 0;
  sOutros   := 0;

end;

procedure TFrmFechaCaixa.FrameConfirmaCancela1BtnCancelarClick(
  Sender: TObject);
begin
  inherited;
  sDinheiro := 0;
  sCartao   := 0;
  sCheque   := 0;
  sOutros   := 0;
  Close;

end;

procedure TFrmFechaCaixa.FrameConfirmaCancela1BtnConfirmarClick(
  Sender: TObject);
begin
  inherited;
  sDinheiro := CdsFechamentoDINHEIRO.AsFloat;
  sCartao   := CdsFechamentoCARTAO.AsFloat;
  sCheque   := CdsFechamentoCHEQUE.AsFloat;
  sOutros   := CdsFechamentoOUTROS.AsFloat;
  Close;

end;

procedure TFrmFechaCaixa.FormShow(Sender: TObject);
begin
  inherited;
  DbDinheiro.SelectAll;
  DbDinheiro.SetFocus;

end;

procedure TFrmFechaCaixa.DbDinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);
end;

procedure TFrmFechaCaixa.ActMenuFiscalExecute(Sender: TObject);
var aMensagem : String;
begin
  inherited;
  if not DmWorkCom.PAFECF.VerificaImpressoraLigada then
  begin
     DmWorkCom.PAFECF.sControleECFAtivo := 1;
  end
  else
  begin
    if not DmWorkCom.PAFECF.VerificacoesPAFECF(aMensagem) then
    begin
      ShowMessage(aMensagem);
      DmWorkCom.PAFECF.sControleECFAtivo := 2;
    end;
  end;  
   Application.CreateForm(TFrmMenuFiscal,FrmMenuFiscal);
   Try
      FrmMenuFiscal.ShowModal;
   Finally
      FrmMenuFiscal.Destroy;
   End;

end;

end.
