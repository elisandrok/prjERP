unit uFrmAbreCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, uFrameConfirmaCancela, ExtCtrls, StdCtrls, Mask,
  DBCtrls, ActnList, System.Actions;

type
  TFrmAbreCaixa = class(TFrmPadrao)
    DataCaixa: TDataSource;
    DataFuncionario: TDataSource;
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboFuncionario: TDBLookupComboBox;
    DbValor: TDBEdit;
    ActionList1: TActionList;
    ActMenuFiscal: TAction;
    procedure FormShow(Sender: TObject);
    procedure ComboFuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
    procedure FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
    procedure ActMenuFiscalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sValor: Double;
  end;

var
  FrmAbreCaixa: TFrmAbreCaixa;

implementation

uses uLibrary, uDmWorkCom, uFuncoesPAFECF, uFrmMenuFiscal, uDMClientes;

{$R *.dfm}

procedure TFrmAbreCaixa.FormShow(Sender: TObject);
begin
  inherited;
  DataCaixa.DataSet := DmWorkCom.CdsCaixa;
  DataFuncionario.DataSet := DmClientes.CdsFuncionarios;
  sValor := 0;
  DataCaixa.DataSet.Append;
  DataCaixa.DataSet.FieldByName('CAIXA').AsString := DmWorkCom.PAFECF.gCaixa;
  DataCaixa.DataSet.FieldByName('NUMSERIEFAB').AsString := DmWorkCom.PAFECF.gSerial;
  DataCaixa.DataSet.FieldByName('IDOPERADOR').AsInteger := DmWorkCom.PAFECF.gIDOperador;
  ComboFuncionario.SetFocus;

end;

procedure TFrmAbreCaixa.ComboFuncionarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmAbreCaixa.FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if ComboFuncionario.Text = '' then
  begin
    MessageDlg('É necessário selefionar o funcinário!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  DataCaixa.DataSet.Post;
  Grava_Dados(DataCaixa.DataSet);
  sValor := DataCaixa.DataSet.FieldByName('VALOR_ABERTURA').AsFloat;
  Close;

end;

procedure TFrmAbreCaixa.FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
begin
  inherited;
  DataCaixa.DataSet.Cancel;
  Grava_Dados(DataCaixa.DataSet);
  Close;

end;

procedure TFrmAbreCaixa.ActMenuFiscalExecute(Sender: TObject);
var
  aMensagem: String;
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
  Application.CreateForm(TFrmMenuFiscal, FrmMenuFiscal);
  Try
    FrmMenuFiscal.ShowModal;
  Finally
    FrmMenuFiscal.Destroy;
  End;

end;

end.
