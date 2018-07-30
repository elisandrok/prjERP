unit uFrmMovMesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, ExtCtrls, StdCtrls, Grids, DBGrids, ActnList,
  Buttons, DBCtrls, Menus, ComCtrls, System.Actions;

type
  TFrmMovMesas = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    DataMesas: TDataSource;
    DataMesasAbertas: TDataSource;
    DataMesaItens: TDataSource;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    ActionList1: TActionList;
    ActAbreMesa: TAction;
    ActVendeItem: TAction;
    ActTransfereItem: TAction;
    ActConferencia: TAction;
    ActEncerrar: TAction;
    PnMesas: TPanel;
    ComboMesas: TDBLookupComboBox;
    PopupMenu1: TPopupMenu;
    CancelarItemdaMesa1: TMenuItem;
    BitBtn5: TBitBtn;
    ActAtualizaMesas: TAction;
    Panel2: TPanel;
    Mesa7: TSpeedButton;
    Mesa6: TSpeedButton;
    Mesa5: TSpeedButton;
    Mesa4: TSpeedButton;
    Mesa3: TSpeedButton;
    Mesa2: TSpeedButton;
    Mesa1: TSpeedButton;
    Mesa14: TSpeedButton;
    Mesa13: TSpeedButton;
    Mesa12: TSpeedButton;
    Mesa11: TSpeedButton;
    Mesa10: TSpeedButton;
    Mesa9: TSpeedButton;
    Mesa8: TSpeedButton;
    Mesa22: TSpeedButton;
    Mesa23: TSpeedButton;
    Mesa24: TSpeedButton;
    Mesa25: TSpeedButton;
    Mesa26: TSpeedButton;
    Mesa27: TSpeedButton;
    Mesa28: TSpeedButton;
    Mesa15: TSpeedButton;
    Mesa16: TSpeedButton;
    Mesa17: TSpeedButton;
    Mesa18: TSpeedButton;
    Mesa19: TSpeedButton;
    Mesa20: TSpeedButton;
    Mesa21: TSpeedButton;
    Mesa35: TSpeedButton;
    Mesa34: TSpeedButton;
    Mesa41: TSpeedButton;
    Mesa42: TSpeedButton;
    Mesa40: TSpeedButton;
    Mesa33: TSpeedButton;
    Mesa32: TSpeedButton;
    Mesa39: TSpeedButton;
    Mesa38: TSpeedButton;
    Mesa31: TSpeedButton;
    Mesa30: TSpeedButton;
    Mesa37: TSpeedButton;
    Mesa36: TSpeedButton;
    Mesa29: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure ActAbreMesaExecute(Sender: TObject);
    procedure ActVendeItemExecute(Sender: TObject);
    procedure ActTransfereItemExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
    procedure ComboMesasKeyPress(Sender: TObject; var Key: Char);
    procedure CancelarItemdaMesa1Click(Sender: TObject);
    procedure ActAtualizaMesasExecute(Sender: TObject);
    procedure Mesa1Click(Sender: TObject);
    procedure Mesa2Click(Sender: TObject);
    procedure Mesa3Click(Sender: TObject);
    procedure Mesa4Click(Sender: TObject);
    procedure Mesa5Click(Sender: TObject);
    procedure Mesa6Click(Sender: TObject);
    procedure Mesa7Click(Sender: TObject);
    procedure Mesa8Click(Sender: TObject);
    procedure Mesa9Click(Sender: TObject);
    procedure Mesa10Click(Sender: TObject);
    procedure Mesa11Click(Sender: TObject);
    procedure Mesa12Click(Sender: TObject);
    procedure Mesa13Click(Sender: TObject);
    procedure Mesa14Click(Sender: TObject);
    procedure Mesa15Click(Sender: TObject);
    procedure Mesa16Click(Sender: TObject);
    procedure Mesa17Click(Sender: TObject);
    procedure Mesa18Click(Sender: TObject);
    procedure Mesa19Click(Sender: TObject);
    procedure Mesa20Click(Sender: TObject);
    procedure Mesa21Click(Sender: TObject);
    procedure Mesa22Click(Sender: TObject);
    procedure Mesa23Click(Sender: TObject);
    procedure Mesa24Click(Sender: TObject);
    procedure Mesa25Click(Sender: TObject);
    procedure Mesa26Click(Sender: TObject);
    procedure Mesa27Click(Sender: TObject);
    procedure Mesa28Click(Sender: TObject);
    procedure Mesa30Click(Sender: TObject);
    procedure Mesa29Click(Sender: TObject);
    procedure Mesa31Click(Sender: TObject);
    procedure Mesa32Click(Sender: TObject);
    procedure Mesa33Click(Sender: TObject);
    procedure Mesa34Click(Sender: TObject);
    procedure Mesa35Click(Sender: TObject);
    procedure Mesa36Click(Sender: TObject);
    procedure Mesa37Click(Sender: TObject);
    procedure Mesa38Click(Sender: TObject);
    procedure Mesa39Click(Sender: TObject);
    procedure Mesa40Click(Sender: TObject);
    procedure Mesa41Click(Sender: TObject);
    procedure Mesa42Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    sIDMesa : Integer;
    procedure RecalculaTotalMesa;
    procedure ExibeInformacoesMesasAbertas;
    procedure AlteraCorBotao(Cor:TColor;Inicio:Integer=1);
    procedure ProcessaSelecaoMesa(pMesa:String);
  public
    { Public declarations }
  end;

var
  FrmMovMesas: TFrmMovMesas;

implementation

uses uDmWorkCom, uLibrary, uFrmAbreRegistra, uFuncoesPAFECF;

{$R *.dfm}

procedure TFrmMovMesas.FormShow(Sender: TObject);
begin
  inherited;
  DataMesas.DataSet        := DmWorkCom.CdsMesas;
  DataMesasAbertas.DataSet := DmWorkCom.CdsMesasAbertas;
  DataMesaItens.DataSet    := DmWorkCom.CdsMesasItens;
  DmWorkCom.Dados_Mesa;
  DmWorkCom.Dados_MesasAbertas;
  ExibeInformacoesMesasAbertas;

end;

procedure TFrmMovMesas.Mesa10Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa10.Caption);

end;

procedure TFrmMovMesas.Mesa11Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa11.Caption);

end;

procedure TFrmMovMesas.Mesa12Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa12.Caption);

end;

procedure TFrmMovMesas.Mesa13Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa13.Caption);

end;

procedure TFrmMovMesas.Mesa14Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa14.Caption);

end;

procedure TFrmMovMesas.Mesa15Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa15.Caption);

end;

procedure TFrmMovMesas.Mesa16Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa16.Caption);

end;

procedure TFrmMovMesas.Mesa17Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa17.Caption);

end;

procedure TFrmMovMesas.Mesa18Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa18.Caption);

end;

procedure TFrmMovMesas.Mesa19Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa19.Caption);

end;

procedure TFrmMovMesas.Mesa1Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa1.Caption);

end;

procedure TFrmMovMesas.Mesa20Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa20.Caption);

end;

procedure TFrmMovMesas.Mesa21Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa21.Caption);

end;

procedure TFrmMovMesas.Mesa22Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa22.Caption);

end;

procedure TFrmMovMesas.Mesa23Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa23.Caption);

end;

procedure TFrmMovMesas.Mesa24Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa24.Caption);

end;

procedure TFrmMovMesas.Mesa25Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa25.Caption);

end;

procedure TFrmMovMesas.Mesa26Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa26.Caption);

end;

procedure TFrmMovMesas.Mesa27Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa27.Caption);

end;

procedure TFrmMovMesas.Mesa28Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa28.Caption);

end;

procedure TFrmMovMesas.Mesa29Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa29.Caption);

end;

procedure TFrmMovMesas.Mesa2Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa2.Caption);
end;

procedure TFrmMovMesas.Mesa30Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa30.Caption);

end;

procedure TFrmMovMesas.Mesa31Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa31.Caption);

end;

procedure TFrmMovMesas.Mesa32Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa32.Caption);

end;

procedure TFrmMovMesas.Mesa33Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa33.Caption);

end;

procedure TFrmMovMesas.Mesa34Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa34.Caption);

end;

procedure TFrmMovMesas.Mesa35Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa35.Caption);

end;

procedure TFrmMovMesas.Mesa36Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa36.Caption);

end;

procedure TFrmMovMesas.Mesa37Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa37.Caption);

end;

procedure TFrmMovMesas.Mesa38Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa38.Caption);

end;

procedure TFrmMovMesas.Mesa39Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa39.Caption);

end;

procedure TFrmMovMesas.Mesa3Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa3.Caption);
end;

procedure TFrmMovMesas.Mesa40Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa40.Caption);

end;

procedure TFrmMovMesas.Mesa41Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa41.Caption);

end;

procedure TFrmMovMesas.Mesa42Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa42.Caption);

end;

procedure TFrmMovMesas.Mesa4Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa4.Caption);
end;

procedure TFrmMovMesas.Mesa5Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa5.Caption);
end;

procedure TFrmMovMesas.Mesa6Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa6.Caption);
end;

procedure TFrmMovMesas.Mesa7Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa7.Caption);
end;

procedure TFrmMovMesas.Mesa8Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa8.Caption);

end;

procedure TFrmMovMesas.Mesa9Click(Sender: TObject);
begin
  inherited;
  ProcessaSelecaoMesa(Mesa9.Caption);

end;

procedure TFrmMovMesas.ProcessaSelecaoMesa(pMesa: String);
begin
  if pMesa <> 'FECHADA' then
  begin
    sIDMesa := DmWorkCom.LocalizaIDMesa(pMesa);
    if DataMesasAbertas.DataSet.Locate('ID',sIDMesa,[]) then
    begin
       StatusBar1.Panels.Items[0].Text := 'Selecionada a mesa n�mero: '+pMesa;
       StatusBar1.Panels.Items[1].Text := IntToStr(sIDMesa);
       DmWorkCom.Dados_MesasItens(DataMesasAbertas.DataSet.FieldByName('id').AsInteger);
    end
    else
       MessageDlg('N�mero da mesa n�o encontrado no cadastro!',mtWarning,[mbOK],0);
  end
  else
    MessageDlg('Mesa fechada. Selecione outra!',mtWarning,[mbOK],0);

end;

procedure TFrmMovMesas.ActAbreMesaExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmAbreRegistra,FrmAbreRegistra);
  try
    FrmAbreRegistra.sIDMesa := 0;
    FrmAbreRegistra.ShowModal;
    RecalculaTotalMesa;
    DataMesas.DataSet.Last;
  finally
    FreeAndNil(FrmAbreRegistra);
  end;
  DmWorkCom.Dados_MesasAbertas;
  ExibeInformacoesMesasAbertas;

end;

procedure TFrmMovMesas.ActVendeItemExecute(Sender: TObject);
begin
  inherited;
  if DataMesasAbertas.DataSet.RecordCount > 0 then
  begin
    Application.CreateForm(TFrmAbreRegistra,FrmAbreRegistra);
    try
      FrmAbreRegistra.sIDMesa := DataMesasAbertas.DataSet.FieldByName('ID_MESA').AsInteger;
      FrmAbreRegistra.ShowModal;
      RecalculaTotalMesa;
      DataMesas.DataSet.Locate('ID',FrmAbreRegistra.sIDMesa,[]);
    finally
      FreeAndNil(FrmAbreRegistra);
    end;
  end
  else MessageDlg('N�o h� mesas abertas para registro de itens!!!', mtInformation, [mbOK], 0);
end;

procedure TFrmMovMesas.AlteraCorBotao(Cor: TColor;Inicio:Integer);
var i: Integer;
begin
  for i := Inicio to 42 do
  begin
    case i of
      01:Mesa1.Font.Color := Cor;
      02:Mesa2.Font.Color := Cor;
      03:Mesa3.Font.Color := Cor;
      04:Mesa4.Font.Color := Cor;
      05:Mesa5.Font.Color := Cor;
      06:Mesa6.Font.Color := Cor;
      07:Mesa7.Font.Color := Cor;
      08:Mesa8.Font.Color := Cor;
      09:Mesa9.Font.Color := Cor;
      10:Mesa10.Font.Color := Cor;
      11:Mesa11.Font.Color := Cor;
      12:Mesa12.Font.Color := Cor;
      13:Mesa13.Font.Color := Cor;
      14:Mesa14.Font.Color := Cor;
      15:Mesa15.Font.Color := Cor;
      16:Mesa16.Font.Color := Cor;
      17:Mesa17.Font.Color := Cor;
      18:Mesa18.Font.Color := Cor;
      19:Mesa19.Font.Color := Cor;
      20:Mesa20.Font.Color := Cor;
      21:Mesa21.Font.Color := Cor;
      22:Mesa22.Font.Color := Cor;
      23:Mesa23.Font.Color := Cor;
      24:Mesa24.Font.Color := Cor;
      25:Mesa25.Font.Color := Cor;
      26:Mesa26.Font.Color := Cor;
      27:Mesa27.Font.Color := Cor;
      28:Mesa28.Font.Color := Cor;
      29:Mesa29.Font.Color := Cor;
      30:Mesa30.Font.Color := Cor;
      31:Mesa31.Font.Color := Cor;
      32:Mesa32.Font.Color := Cor;
      33:Mesa33.Font.Color := Cor;
      34:Mesa34.Font.Color := Cor;
      35:Mesa35.Font.Color := Cor;
      36:Mesa36.Font.Color := Cor;
      37:Mesa37.Font.Color := Cor;
      38:Mesa38.Font.Color := Cor;
      39:Mesa39.Font.Color := Cor;
      40:Mesa40.Font.Color := Cor;
      41:Mesa41.Font.Color := Cor;
      42:Mesa42.Font.Color := Cor;
    end;
  end;

end;

procedure TFrmMovMesas.ActTransfereItemExecute(Sender: TObject);
begin
  inherited;
  PnMesas.Visible := true;
  ComboMesas.SetFocus;

end;

procedure TFrmMovMesas.ActEncerrarExecute(Sender: TObject);
begin
  inherited;
  //
  Close;

end;

procedure TFrmMovMesas.ComboMesasKeyPress(Sender: TObject; var Key: Char);
var aTotal : Double;
    aIDMesa : Integer;
    aDataMesa : TDateTime;
begin
  inherited;
  if (Key = #27) then
  begin
    PnMesas.Visible := false;
  end;
  if (Key = #13) then
  begin
    if DataMesas.DataSet.FieldByName('ID').AsInteger = DataMesasAbertas.DataSet.FieldByName('ID_MESA').AsInteger then
    begin
      MessageDlg('Selecione uma mesa diferente!!!', mtInformation, [mbOK], 0);
      ComboMesas.SetFocus;
      Abort;
    end;
    if not VerificaMesaAberta(aIDMesa,DataMesas.DataSet.FieldByName('ID').AsInteger) then
    begin
      MessageDlg('A mesa selecionada n�o esta aberta ou esta cancelada!!!', mtWarning, [mbOK], 0);
      ComboMesas.SetFocus;
      Abort;
    end;
    if Confirmacao('Confirma a transferencia do item selecinado?') then
    begin
      aDataMesa := DataMesasAbertas.DataSet.FieldByName('Data').AsDateTime;
      DataMesaItens.Edit;
      DataMesaItens.DataSet.FieldByName('ID_MESA_ORIGEM').AsInteger  := DataMesasAbertas.DataSet.FieldByName('ID').AsInteger;
      DataMesaItens.DataSet.FieldByName('NUMERO_MESA_ORIG').AsString := DataMesasAbertas.DataSet.FieldByName('NUMERO_MESA').AsString;
      DataMesaItens.DataSet.FieldByName('ID_MESA').AsInteger         := aIDMesa;
      Grava_Dados(DataMesaItens.DataSet);
      // atualiza o total da mesa
      aTotal := RetornaTotalMesa(DataMesasAbertas.DataSet.FieldByName('ID').AsInteger);
      DataMesasAbertas.DataSet.Edit;
      DataMesasAbertas.DataSet.FieldByName('VALOR').AsFloat := aTotal;
      Grava_Dados(DataMesasAbertas.DataSet);
      RecalculaTotalMesa;
      DataMesas.DataSet.Locate('ID',aIDMesa,[]);
      // verifica a data da mesa
      if DataMesasAbertas.DataSet.Locate('ID',aIDMesa,[]) then
      begin
        if DataMesasAbertas.DataSet.FieldByName('Data').AsDateTime > aDataMesa then
        begin
          DataMesasAbertas.Edit;
          DataMesasAbertas.DataSet.FieldByName('Data').AsDateTime := aDataMesa;
          Grava_Dados(DataMesasAbertas.DataSet);
        end;  
      end;
    end;
    PnMesas.Visible := false;
    RecalculaTotalMesa;
    DmWorkCom.Dados_MesasAbertas;
    ExibeInformacoesMesasAbertas;
  end;

end;

procedure TFrmMovMesas.ExibeInformacoesMesasAbertas;
var i : Integer;
begin
  AlteraCorBotao(clRed);
  with DataMesasAbertas.DataSet do
  begin
    while not Eof do
    begin
      case RecNo of
        01:Mesa1.Caption := FieldByName('NUMERO_MESA').AsString;
        02:Mesa2.Caption := FieldByName('NUMERO_MESA').AsString;
        03:Mesa3.Caption := FieldByName('NUMERO_MESA').AsString;
        04:Mesa4.Caption := FieldByName('NUMERO_MESA').AsString;
        05:Mesa5.Caption := FieldByName('NUMERO_MESA').AsString;
        06:Mesa6.Caption := FieldByName('NUMERO_MESA').AsString;
        07:Mesa7.Caption := FieldByName('NUMERO_MESA').AsString;
        08:Mesa8.Caption := FieldByName('NUMERO_MESA').AsString;
        09:Mesa9.Caption := FieldByName('NUMERO_MESA').AsString;
        10:Mesa10.Caption := FieldByName('NUMERO_MESA').AsString;
        11:Mesa11.Caption := FieldByName('NUMERO_MESA').AsString;
        12:Mesa12.Caption := FieldByName('NUMERO_MESA').AsString;
        13:Mesa13.Caption := FieldByName('NUMERO_MESA').AsString;
        14:Mesa14.Caption := FieldByName('NUMERO_MESA').AsString;
        15:Mesa15.Caption := FieldByName('NUMERO_MESA').AsString;
        16:Mesa16.Caption := FieldByName('NUMERO_MESA').AsString;
        17:Mesa17.Caption := FieldByName('NUMERO_MESA').AsString;
        18:Mesa18.Caption := FieldByName('NUMERO_MESA').AsString;
        19:Mesa19.Caption := FieldByName('NUMERO_MESA').AsString;
        20:Mesa20.Caption := FieldByName('NUMERO_MESA').AsString;
        21:Mesa21.Caption := FieldByName('NUMERO_MESA').AsString;
        22:Mesa22.Caption := FieldByName('NUMERO_MESA').AsString;
        23:Mesa23.Caption := FieldByName('NUMERO_MESA').AsString;
        24:Mesa24.Caption := FieldByName('NUMERO_MESA').AsString;
        25:Mesa25.Caption := FieldByName('NUMERO_MESA').AsString;
        26:Mesa26.Caption := FieldByName('NUMERO_MESA').AsString;
        27:Mesa27.Caption := FieldByName('NUMERO_MESA').AsString;
        28:Mesa28.Caption := FieldByName('NUMERO_MESA').AsString;
        29:Mesa29.Caption := FieldByName('NUMERO_MESA').AsString;
        30:Mesa30.Caption := FieldByName('NUMERO_MESA').AsString;
        31:Mesa31.Caption := FieldByName('NUMERO_MESA').AsString;
        32:Mesa32.Caption := FieldByName('NUMERO_MESA').AsString;
        33:Mesa33.Caption := FieldByName('NUMERO_MESA').AsString;
        34:Mesa34.Caption := FieldByName('NUMERO_MESA').AsString;
        35:Mesa35.Caption := FieldByName('NUMERO_MESA').AsString;
        36:Mesa36.Caption := FieldByName('NUMERO_MESA').AsString;
        37:Mesa37.Caption := FieldByName('NUMERO_MESA').AsString;
        38:Mesa38.Caption := FieldByName('NUMERO_MESA').AsString;
        39:Mesa39.Caption := FieldByName('NUMERO_MESA').AsString;
        40:Mesa40.Caption := FieldByName('NUMERO_MESA').AsString;
        41:Mesa41.Caption := FieldByName('NUMERO_MESA').AsString;
        42:Mesa42.Caption := FieldByName('NUMERO_MESA').AsString;
      end;
      Next;
    end;
  end;
  //
  AlteraCorBotao(clGreen,DataMesasAbertas.DataSet.RecordCount+1);
  for i := DataMesasAbertas.DataSet.RecordCount+1 to 42 do
  begin
    case i of
      01:Mesa1.Caption := 'FECHADA';
      02:Mesa2.Caption := 'FECHADA';
      03:Mesa3.Caption := 'FECHADA';
      04:Mesa4.Caption := 'FECHADA';
      05:Mesa5.Caption := 'FECHADA';
      06:Mesa6.Caption := 'FECHADA';
      07:Mesa7.Caption := 'FECHADA';
      08:Mesa8.Caption := 'FECHADA';
      09:Mesa9.Caption := 'FECHADA';
      10:Mesa10.Caption := 'FECHADA';
      11:Mesa11.Caption := 'FECHADA';
      12:Mesa12.Caption := 'FECHADA';
      13:Mesa13.Caption := 'FECHADA';
      14:Mesa14.Caption := 'FECHADA';
      15:Mesa15.Caption := 'FECHADA';
      16:Mesa16.Caption := 'FECHADA';
      17:Mesa17.Caption := 'FECHADA';
      18:Mesa18.Caption := 'FECHADA';
      19:Mesa19.Caption := 'FECHADA';
      20:Mesa20.Caption := 'FECHADA';
      21:Mesa21.Caption := 'FECHADA';
      22:Mesa22.Caption := 'FECHADA';
      23:Mesa23.Caption := 'FECHADA';
      24:Mesa24.Caption := 'FECHADA';
      25:Mesa25.Caption := 'FECHADA';
      26:Mesa26.Caption := 'FECHADA';
      27:Mesa27.Caption := 'FECHADA';
      28:Mesa28.Caption := 'FECHADA';
      29:Mesa29.Caption := 'FECHADA';
      30:Mesa30.Caption := 'FECHADA';
      31:Mesa31.Caption := 'FECHADA';
      32:Mesa32.Caption := 'FECHADA';
      33:Mesa33.Caption := 'FECHADA';
      34:Mesa34.Caption := 'FECHADA';
      35:Mesa35.Caption := 'FECHADA';
      36:Mesa36.Caption := 'FECHADA';
      37:Mesa37.Caption := 'FECHADA';
      38:Mesa38.Caption := 'FECHADA';
      39:Mesa39.Caption := 'FECHADA';
      40:Mesa40.Caption := 'FECHADA';
      41:Mesa41.Caption := 'FECHADA';
      42:Mesa42.Caption := 'FECHADA';
    end;
  end;
  //
  if DataMesasAbertas.DataSet.RecordCount > 0 then
  begin
    DataMesasAbertas.DataSet.First;
    DmWorkCom.Dados_MesasItens(DataMesasAbertas.DataSet.FieldByName('ID').AsInteger);
    StatusBar1.Panels.Items[0].Text := 'Selecionada a mesa n�mero: '+Mesa1.Caption;

  end
  else
  begin
    StatusBar1.Panels.Items[0].Text := 'Nenhuma mesa aberta no momento.';
    DmWorkCom.Dados_MesasItens(0);
  end;

end;

procedure TFrmMovMesas.CancelarItemdaMesa1Click(Sender: TObject);
var aTotal : Double;
begin
  inherited;
  if DataMesaItens.DataSet.RecordCount > 0 then
  begin
    if Confirmacao('Confirma o cancelamendo do item selecionado?') then
    begin
      DataMesaItens.DataSet.Edit;
      DataMesaItens.DataSet.FieldByName('CANCELADO').AsString := 'S';
      Grava_Dados(DataMesaItens.DataSet);
      // atualiza valor da mesa
      aTotal := RetornaTotalMesa(DataMesasAbertas.DataSet.FieldByName('ID').AsInteger);
      DataMesasAbertas.DataSet.Edit;
      DataMesasAbertas.DataSet.FieldByName('VALOR').AsFloat := aTotal;
      Grava_Dados(DataMesasAbertas.DataSet);
    end;
  end;

end;

procedure TFrmMovMesas.ActAtualizaMesasExecute(Sender: TObject);
begin
  inherited;
  // atualiza grid e recalcula
  RecalculaTotalMesa;

end;

procedure TFrmMovMesas.RecalculaTotalMesa;
var aTotal : Double;
begin
  inherited;
  DmWorkCom.Dados_MesasAbertas;
  if DataMesas.DataSet.RecordCount > 0 then
  begin
    while not DataMesasAbertas.DataSet.Eof do
    begin
      if not DmWorkCom.Dados_MesasItens(DataMesasAbertas.DataSet.FieldByName('ID').AsInteger) then
      begin
        DataMesasAbertas.DataSet.Edit;
        DataMesasAbertas.DataSet.FieldByName('STATUS').AsInteger := 2;
        Grava_Dados(DataMesasAbertas.DataSet);
      end
      else
      begin
        aTotal := RetornaTotalMesa(DataMesasAbertas.DataSet.FieldByName('ID').AsInteger);
        if not(DataMesasAbertas.DataSet.State in [dsInsert,dsEdit]) then
           DataMesasAbertas.DataSet.Edit;
        DataMesasAbertas.DataSet.FieldByName('VALOR').AsFloat := aTotal;
        Grava_Dados(DataMesasAbertas.DataSet);
      end;  
      DataMesasAbertas.DataSet.Next;
    end;
    ExibeInformacoesMesasAbertas;
    if DataMesasAbertas.DataSet.Locate('ID',sIDMesa,[]) then
       DmWorkCom.Dados_MesasItens(sIDMesa);
  end
  else
  begin
    DmWorkCom.Dados_MesasItens(0);
  end;
end;

procedure TFrmMovMesas.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if DataMesaItens.DataSet.FieldByName('CANCELADO').AsString = 'S' then
  begin
    DBGrid2.Canvas.Font.Color:= clRed;
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
  end;

end;

end.
