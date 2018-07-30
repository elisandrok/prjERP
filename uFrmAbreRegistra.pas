unit uFrmAbreRegistra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, DBClient, DBCtrls, StdCtrls,
  uFrameConfirmaCancela, ExtCtrls, Buttons, Mask;

type
  TFrmAbreRegistra = class(TFrmPadrao)
    DataMesa: TDataSource;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    FrameConfirmaCancela1: TFrameConfirmaCancela;
    Label1: TLabel;
    ComboMesa: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    CdsAuxiliar: TClientDataSet;
    CdsAuxiliarID_PRODUTO: TIntegerField;
    CdsAuxiliarID_MESA: TIntegerField;
    CdsAuxiliarQUANT: TFloatField;
    DataAuxiliar: TDataSource;
    EdtProduto: TMaskEdit;
    SpeedButton1: TSpeedButton;
    DbQuant: TDBEdit;
    CdsAuxiliarPRECO: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrameConfirmaCancela1BtnCancelarClick(Sender: TObject);
    procedure FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboMesaExit(Sender: TObject);
    procedure ComboMesaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sIDMesa : Integer;
  end;

var
  FrmAbreRegistra: TFrmAbreRegistra;

implementation

uses uDmWorkCom, uLibrary, uFrmProdutos, uDMClientes, uDmProdutos;

{$R *.dfm}

procedure TFrmAbreRegistra.FormShow(Sender: TObject);
begin
  inherited;
  DataMesa.DataSet := DmWorkCom.CdsMesas;
  DmWorkCom.Dados_Mesa;
  CdsAuxiliar.Open;
  CdsAuxiliar.Append;
  CdsAuxiliarID_MESA.AsInteger := sIDMesa;
  //
  ComboMesa.Enabled := true;
  if sIDMesa > 0 then
  begin
    ComboMesa.Enabled := false;
    SpeedButton1Click(Sender);
  end;
     
end;

procedure TFrmAbreRegistra.ComboMesaExit(Sender: TObject);
begin
  inherited;
  SpeedButton1Click(Sender);
end;

procedure TFrmAbreRegistra.ComboMesaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);
end;

procedure TFrmAbreRegistra.FormCreate(Sender: TObject);
begin
  inherited;
  sIDMesa := 0;
  if not CdsAuxiliar.Active then
     CdsAuxiliar.CreateDataSet;
  CdsAuxiliar.EmptyDataSet;

end;

procedure TFrmAbreRegistra.FrameConfirmaCancela1BtnCancelarClick(
  Sender: TObject);
begin
  inherited;
  CdsAuxiliar.Cancel;
  Close;
  
end;

procedure TFrmAbreRegistra.FrameConfirmaCancela1BtnConfirmarClick(Sender: TObject);
var aTotal : Double;
    aIDMesa : Integer;
begin
  inherited;
  if (CdsAuxiliarID_PRODUTO.AsInteger <= 0) or (CdsAuxiliarID_MESA.AsInteger <= 0) or
     (CdsAuxiliarQUANT.AsFloat <= 0) or (CdsAuxiliarPRECO.AsFloat <= 0) then
  begin
    MessageDlg('É necessários informar todos os dados!!!', mtWarning, [mbOK], 0);
    if ComboMesa.Enabled then
       ComboMesa.SetFocus
    else
       EdtProduto.SetFocus;
    Abort;
  end;
  // verifica se mesa já foi aberta
  if sIDMesa = 0 then
  begin
    if VerificaMesaAberta(aIDMesa,DataMesa.DataSet.FieldByName('ID').AsInteger) then
    begin
      MessageDlg('A mesa selecionada já esta aberta!!!', mtWarning, [mbOK], 0);
    if ComboMesa.Enabled then
       ComboMesa.SetFocus
    else
       EdtProduto.SetFocus;
      Abort;
    end;
  end;
  if Confirmacao('Confirma este registro?') then
  begin
    aTotal := 0;
    aTotal := CdsAuxiliarQUANT.AsFloat * CdsAuxiliarPRECO.AsFloat;
    aTotal := aTotal + RetornaTotalMesa(sIDMesa);
    if sIDMesa = 0 then
    begin
      DmWorkCom.CdsMesasAbertas.Append;
      DmWorkCom.CdsMesasAbertas.FieldByName('ID_MESA').AsInteger    := DataMesa.DataSet.FieldByName('ID').AsInteger;
      DmWorkCom.CdsMesasAbertas.FieldByName('NUMERO_MESA').AsString := DataMesa.DataSet.FieldByName('NUMERO_MESA').AsString;
    end
    else
    begin
      DmWorkCom.CdsMesasAbertas.Edit;
    end;
    DmWorkCom.CdsMesasAbertas.FieldByName('VALOR').AsFloat := aTotal;
    Grava_Dados(DmWorkCom.CdsMesasAbertas);
    // registra o item
    DmWorkCom.CdsMesasItens.Append;
    DmWorkCom.CdsMesasItensID_PRODUTO.AsInteger := CdsAuxiliarID_PRODUTO.AsInteger;
    DmWorkCom.CdsMesasItensDESCRICAO.AsString   := EdtProduto.Text;
    DmWorkCom.CdsMesasItensQUANT.AsFloat        := CdsAuxiliarQUANT.AsFloat;
    DmWorkCom.CdsMesasItensPRECO_UNIT.AsFloat   := CdsAuxiliarPRECO.AsFloat;
    DmWorkCom.CdsMesasItensPRECO_TOTAL.AsFloat  := CdsAuxiliarQUANT.AsFloat * CdsAuxiliarPRECO.AsFloat;
    Grava_Dados(DmWorkCom.CdsMesasItens);
  end;
  Close;

end;

procedure TFrmAbreRegistra.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmProdutos,FrmProdutos);
  try
    FrmProdutos.sIDProd := 0;
    FrmProdutos.sApenasConsulta := true;
    FrmProdutos.ShowModal;
    if FrmProdutos.sIDProd > 0 then
    begin
      if DmProdutos.Dados_Produto(FrmProdutos.sIDProd) then
      begin
        EdtProduto.Text                 := DmProdutos.CdsProdutos.FieldByName('DESCRICAO').AsString;
        CdsAuxiliarID_PRODUTO.AsInteger := DmProdutos.CdsProdutos.FieldByName('ID').AsInteger;
        CdsAuxiliarPRECO.AsFloat        := DmProdutos.CdsProdutos.FieldByName('PRECO_VENDA').AsFloat;
      end;
      DbQuant.SetFocus;
    end;
  finally
    FrmProdutos.Destroy;
  end;
  
end;

end.
