unit uFrmContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFrmConsPadrao, Data.DB, Data.FMTBcd, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmContas = class(TFrmConsPadrao)
    GrpPeriodo: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    ChPeriodo: TCheckBox;
    RadioStatusConsulta: TRadioGroup;
    BitBtn2: TBitBtn;
    ActQuitar: TAction;
    StatusBar1: TStatusBar;
    BitBtn3: TBitBtn;
    ActRemoveQuit: TAction;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ActQuitarExecute(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure GridDadosKeyPress(Sender: TObject; var Key: Char);
    procedure ActRemoveQuitExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CapturaTotaisPeriodo;
  public
    { Public declarations }
    sIDCta: Integer;
    sApenasConsulta: Boolean;
  end;

var
  FrmContas: TFrmContas;

implementation

{$R *.dfm}

uses
  uDmWorkCom, uLibrary, uFrmCadastroCliente, uFrmClientes, uFrmCadContas,
  uFrmSelEndereco, uFrmContatosADC;

procedure TFrmContas.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  if CdsConsulta.FieldByName('STATUS').AsInteger = 1 then
  begin
    MessageDlg('Esta conta j� est� quitada no sistema.', mtWarning, [mbOK], 0);
    Exit;
  end;
  //
  if DataConsulta.DataSet.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFrmCadContas, FrmCadContas);
      Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
      Application.CreateForm(TFrmClientes, FrmClientes);
      Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
      Application.CreateForm(TFrmContatosADC, FrmContatosADC);
      FrmCadContas.sIDConta := DataConsulta.DataSet.FieldByName('ID').AsInteger;
      DmWorkCom.sProcessoQui := 0;
      if DmWorkCom.sTipoConta = 0 then
        FrmCadContas.GrpContato.Caption := ' Cliente '
      else
        FrmCadContas.GrpContato.Caption := ' Fornecedores ';
      FrmCadContas.ShowModal;
      ActLocalizarExecute(Sender);
    finally
      FreeAndNil(FrmContatosADC);
      FreeAndNil(FrmSelEndereco);
      FreeAndNil(FrmCadastroCliente);
      FreeAndNil(FrmClientes);
      FreeAndNil(FrmCadContas);
    end;
  end;

end;

procedure TFrmContas.ActExcluirExecute(Sender: TObject);
begin
  inherited;
  if CdsConsulta.FieldByName('STATUS').AsInteger = 1 then
  begin
    MessageDlg('Esta conta j� est� quitada no sistema.' + #13 + #10 + 'Para excluir, use a op��o de remover a quita��o!!!', mtWarning, [mbOK], 0);
    Exit;
  end;
  //
  if DataConsulta.DataSet.RecordCount > 0 then
  begin
    if DmWorkCom.Dados_Contas(DataConsulta.DataSet.FieldByName('ID').AsInteger) then
    begin
      if Confirmacao('Confirma a exclus�o da conta selecionada?') then
      begin
        DmWorkCom.CdsContas.Delete;
        Grava_Dados(DmWorkCom.CdsContas);
        ActLocalizarExecute(Sender);
      end;
    end;
  end;

end;

procedure TFrmContas.ActImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Report\RelProdutos.fr3');
  frxReport1.ShowReport;

end;

procedure TFrmContas.ActLocalizarExecute(Sender: TObject);
begin
  inherited;
  // consulta de contas
  CdsConsulta.Close;
  CdsConsulta.Params.Clear;
  QryConsulta.Close;
  QryConsulta.SQL.Clear;
  QryConsulta.SQL.Add('select contas.data_lanc,contas.data_venc,Contas.ID,');
  QryConsulta.SQL.Add('contas.numconta,contas.contato,contas.valor_conta,');
  QryConsulta.SQL.Add('contas.data_quit,contas.valor_quitato,Contas.Serie,');
  QryConsulta.SQL.Add('contas.status from contas');
  // per�odo
  if not ChPeriodo.Checked then
    QryConsulta.SQL.Add('where contas.data_lanc between :pDatai and :pDataf')
  else if ChPeriodo.Checked then
    QryConsulta.SQL.Add('where contas.data_venc between :pDatai and :pDataf');
  QryConsulta.SQL.Add('and Contas.tipo = :pTipo');
  QryConsulta.SQL.Add('and Contas.status = :pStatus');
  // tipo de pesquisa
  if CbxTipoPesq.ItemIndex = 0 then // nome do contati
    QryConsulta.SQL.Add('and upper(contas.contato) like :pLocaliza')
  else if CbxTipoPesq.ItemIndex = 1 then // doc. do contato
    QryConsulta.SQL.Add('and contas.doc_contato = :pLocaliza')
  else if CbxTipoPesq.ItemIndex = 2 then // numeroDoc
    QryConsulta.SQL.Add('and contas.numconta = :pLocaliza')
  else if CbxTipoPesq.ItemIndex = 3 then // Id do pedido
    QryConsulta.SQL.Add('and contas.idpedido = :pLocaliza');
  // parametros
  CdsConsulta.FetchParams;
  CdsConsulta.Params.ParamByName('pDatai').AsDate := Datai.Date;
  CdsConsulta.Params.ParamByName('pDataf').AsDate := Dataf.Date;
  CdsConsulta.Params.ParamByName('pTipo').AsInteger := DmWorkCom.sTipoConta;
  CdsConsulta.Params.ParamByName('pStatus').AsInteger := RadioStatusConsulta.ItemIndex;

  if CbxTipoPesq.ItemIndex = 0 then
    CdsConsulta.Params.ParamByName('pLocaliza').AsString := UpperCase(EdtLocalizar.Text) + '%'
  else if CbxTipoPesq.ItemIndex = 1 then
    CdsConsulta.Params.ParamByName('pLocaliza').AsString := EdtLocalizar.Text
  else if CbxTipoPesq.ItemIndex = 2 then
    CdsConsulta.Params.ParamByName('pLocaliza').AsString := EdtLocalizar.Text
  else if CbxTipoPesq.ItemIndex = 3 then
    CdsConsulta.Params.ParamByName('pLocaliza').AsInteger := StrToInt(EdtLocalizar.Text);
  CdsConsulta.Open;
  TFloatField(DataConsulta.DataSet.FieldByName('valor_conta')).DisplayFormat := '###,###,###0.000';
  TFloatField(DataConsulta.DataSet.FieldByName('valor_quitato')).DisplayFormat := '###,###,###0.000';
  CdsConsulta.RecordCount;
  // captura o total recebibo e quitado
  CapturaTotaisPeriodo;
  GridDados.SetFocus;

end;

procedure TFrmContas.ActNovoExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmCadContas, FrmCadContas);
    Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
    Application.CreateForm(TFrmClientes, FrmClientes);
    Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
    Application.CreateForm(TFrmContatosADC, FrmContatosADC);
    FrmCadContas.sIDConta := 0;
    DmWorkCom.sProcessoQui := 0;
    if DmWorkCom.sTipoConta = 0 then
    begin
      FrmCadContas.Caption := 'Cadastro de Contas a receber';
      FrmCadContas.GrpContato.Caption := ' Cliente ';
    end
    else
    begin
      FrmCadContas.Caption := 'Cadastro de Contas a pagar';
      FrmCadContas.GrpContato.Caption := ' Fornecedores ';
    end;
    FrmCadContas.ShowModal;
    ActLocalizarExecute(Sender);
  finally
    FreeAndNil(FrmContatosADC);
    FreeAndNil(FrmSelEndereco);
    FreeAndNil(FrmCadastroCliente);
    FreeAndNil(FrmClientes);
    FreeAndNil(FrmCadContas);
  end;

end;

procedure TFrmContas.ActQuitarExecute(Sender: TObject);
begin
  inherited;
  if DataConsulta.DataSet.RecordCount = 0 then
  begin
    MessageDlg('� necess�rio selecionar a conta a ser quitada!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if not DmWorkCom.Dados_Contas(DataConsulta.DataSet.FieldByName('ID').AsInteger) then
  begin
    MessageDlg('� foi localizado a conta a ser quitada!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if (DmWorkCom.CdsContas.FieldByName('DATA_QUIT').AsDateTime > 0) or (not DmWorkCom.CdsContas.FieldByName('DATA_QUIT').IsNull) or
    (DmWorkCom.CdsContas.FieldByName('STATUS').AsInteger = 1) then
  begin
    MessageDlg('Esta conta j� se encontra quitada no sistema. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // verifica caixa aberto
  if sLancCaixa = 'S' then
  begin
    if not DmWorkCom.Dados_Caixa(SVData) then
    begin
      MessageDlg('Favor proceder a abertura do caixa di�rio!!!', mtWarning, [mbOK], 0);
      DmWorkCom.Dados_Contas(0);
      Exit;
    end;
    DmWorkCom.Dados_CaixaMov(DmWorkCom.CdsCaixa.FieldByName('ID').AsInteger);
  end;
  //
  try
    Application.CreateForm(TFrmCadContas, FrmCadContas);
    Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
    Application.CreateForm(TFrmClientes, FrmClientes);
    Application.CreateForm(TFrmSelEndereco, FrmSelEndereco);
    Application.CreateForm(TFrmContatosADC, FrmContatosADC);
    FrmCadContas.sIDConta := DataConsulta.DataSet.FieldByName('ID').AsInteger;
    DmWorkCom.sProcessoQui := 1;
    if DmWorkCom.sTipoConta = 0 then
    begin
      FrmCadContas.Caption := 'Quita��o de Contas a receber';
      FrmCadContas.GrpContato.Caption := ' Cliente ';
    end
    else
    begin
      FrmCadContas.Caption := 'Quita��o de Contas a pagar';
      FrmCadContas.GrpContato.Caption := ' Fornecedores ';
    end;
    FrmCadContas.ShowModal;
    DmWorkCom.sProcessoQui := 0;
    ActLocalizarExecute(Sender);
  finally
    FreeAndNil(FrmContatosADC);
    FreeAndNil(FrmSelEndereco);
    FreeAndNil(FrmCadastroCliente);
    FreeAndNil(FrmClientes);
    FreeAndNil(FrmCadContas);
  end;

end;

procedure TFrmContas.ActRemoveQuitExecute(Sender: TObject);
begin
  inherited;
  if not CdsConsulta.IsEmpty then
  begin
    if CdsConsulta.FieldByName('STATUS').AsInteger = 1 then
    begin
      if DmWorkCom.Dados_Contas(CdsConsulta.FieldByName('ID').AsInteger) then
      begin
        if Confirmacao('Confirma a retirada de quita��o da conta selecionada?') then
        begin
          DmWorkCom.sRemoveQui := 1;
          DmWorkCom.sProcessoQui := 0;
          if not(DmWorkCom.CdsContas.State in [dsInsert, dsEdit]) then
            DmWorkCom.CdsContas.Edit;
          DmWorkCom.CdsContas.FieldByName('DATA_QUIT').Clear;
          DmWorkCom.CdsContas.FieldByName('VALOR_QUITATO').AsFloat := 0;
          DmWorkCom.CdsContas.FieldByName('STATUS').AsInteger := 0;
          // DmWorkCom.sValorQuitacao := 0;
          Grava_Dados(DmWorkCom.CdsContas);
          DmWorkCom.sRemoveQui := 0;
          DmWorkCom.Dados_Contas(0);
          ActLocalizarExecute(Sender);
        end;
      end
      else
        MessageDlg('� foi localizado a conta a ser retirada a quita��o!!!', mtWarning, [mbOK], 0);
    end
    else
      MessageDlg('Esta conta n�o est� quitada no sistema. Verifique!!!', mtWarning, [mbOK], 0);
  end
  else
    MessageDlg('� necess�rio selecionar a conta para remover a quita��o!!!', mtWarning, [mbOK], 0);

end;

procedure TFrmContas.CapturaTotaisPeriodo;
var
  Q: TFDQuery;
begin
  StatusBar1.Panels.Items[1].Text := FormatFloat('0.00', 0);
  StatusBar1.Panels.Items[3].Text := FormatFloat('0.00', 0);
  Q := TFDQuery.Create(nil);
  Q.Connection := ConexaoDados;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select sum((x.valor_conta + x.valor_acrescimo +');
  Q.SQL.Add('            x.juros + x.multa) -');
  Q.SQL.Add('            x.valor_desconto) as valor_conta,');
  Q.SQL.Add('       sum(x.valor_quitato) as valor_quitato');
  Q.SQL.Add('from contas x');
  // per�odo
  if not ChPeriodo.Checked then
    Q.SQL.Add('where x.data_lanc between :pDatai and :pDataf')
  else if ChPeriodo.Checked then
    Q.SQL.Add('where x.data_venc between :pDatai and :pDataf');

  Q.SQL.Add('and x.tipo = :pTipo');
  // Q.SQL.Add('and x.status = :pStatus');
  // tipo de pesquisa
  if CbxTipoPesq.ItemIndex = 0 then // nome do contati
    Q.SQL.Add('and upper(x.contato) like :pLocaliza')
  else if CbxTipoPesq.ItemIndex = 1 then // doc. do contato
    Q.SQL.Add('and x.doc_contato = :pLocaliza')
  else if CbxTipoPesq.ItemIndex = 2 then // numeroDoc
    Q.SQL.Add('and x.numconta = :pLocaliza')
  else if CbxTipoPesq.ItemIndex = 3 then // Id do pedido
    Q.SQL.Add('and x.idpedido = :pLocaliza');

  // parametros
  Q.Params.ParamByName('pDatai').AsDate := Datai.Date;
  Q.Params.ParamByName('pDataf').AsDate := Dataf.Date;
  Q.Params.ParamByName('pTipo').AsInteger := DmWorkCom.sTipoConta;
  // Q.Params.ParamByName('pStatus').AsInteger := RadioStatusConsulta.ItemIndex;
  if CbxTipoPesq.ItemIndex = 0 then
    Q.Params.ParamByName('pLocaliza').AsString := UpperCase(EdtLocalizar.Text) + '%'
  else if CbxTipoPesq.ItemIndex = 1 then
    Q.Params.ParamByName('pLocaliza').AsString := EdtLocalizar.Text
  else if CbxTipoPesq.ItemIndex = 2 then
    Q.Params.ParamByName('pLocaliza').AsString := EdtLocalizar.Text
  else if CbxTipoPesq.ItemIndex = 3 then
    Q.Params.ParamByName('pLocaliza').AsInteger := StrToInt(EdtLocalizar.Text);
  //
  Q.Open;
  StatusBar1.Panels.Items[1].Text := FormatFloat('0.00', Q.FieldByName('valor_conta').AsFloat - Q.FieldByName('valor_quitato').AsFloat);
  StatusBar1.Panels.Items[3].Text := FormatFloat('0.00', Q.FieldByName('valor_quitato').AsFloat);
  Q.Close;

end;

procedure TFrmContas.FormCreate(Sender: TObject);
begin
  inherited;
  sApenasConsulta := false;

end;

procedure TFrmContas.FormShow(Sender: TObject);
begin
  inherited;
  if DmWorkCom.sTipoConta = 0 then
    Self.Caption := 'Controle de contas a receber'
  else
    Self.Caption := 'Controle de contas a pagar';
  DmWorkCom.Dados_Contas(0);
  Datai.Date := SVData;
  Dataf.Date := SVData;
  CbxTipoPesq.ItemIndex := 0;
  CbxTipoPesq.Text := '0 - Nome do contato';
  DmWorkCom.sProcessoQui := 0;
  ActLocalizarExecute(Sender);
  Datai.SetFocus;

end;

procedure TFrmContas.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  if DataConsulta.DataSet.RecordCount > 0 then
  begin
    if not sApenasConsulta then
    begin
      ActAlterarExecute(Sender);
    end
    else
    begin
      sIDCta := CdsConsulta.FieldByName('ID').AsInteger;
      Close;
    end;
  end;

end;

procedure TFrmContas.GridDadosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
  begin
    if DataConsulta.DataSet.RecordCount > 0 then
    begin
      if not sApenasConsulta then
      begin
        ActAlterarExecute(Sender);
      end
      else
      begin
        sIDCta := CdsConsulta.FieldByName('ID').AsInteger;
        Close;
      end;
    end;
  end;

end;

end.
