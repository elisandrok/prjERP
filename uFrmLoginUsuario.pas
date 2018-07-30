unit uFrmLoginUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, uFrameConfirmaCancela, DB, StdCtrls,
  ExtCtrls, DBCtrls, Buttons, jpeg, System.Actions, dxGDIPlusClasses;

type
  TFrmLoginUsuario = class(TFrmPadrao)
    DataUsuarios: TDataSource;
    ActionList1: TActionList;
    Panel1: TPanel;
    ActConfirmar: TAction;
    ActCancelar: TAction;
    Image1: TImage;
    GrpDados: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    DataEmpresa: TDataSource;
    LbEmpresa: TLabel;
    ComboEmpresa: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sOK, sSelEmpresa: Boolean;
    sContador: Integer;
  end;

var
  FrmLoginUsuario: TFrmLoginUsuario;

implementation

Uses uLibrary, uDmWorkCom, uDMClientes;

{$R *.dfm}

procedure TFrmLoginUsuario.FormShow(Sender: TObject);
begin
  inherited;
  DataUsuarios.DataSet := DmClientes.CdsUsuarios;
  DataEmpresa.DataSet := DmWorkCom.CdsEmpresa;
  DmWorkCom.Dados_Empresa;
  //
  LbEmpresa.Visible := true;
  ComboEmpresa.Visible := true;
  ComboEmpresa.KeyValue := DataEmpresa.DataSet.FieldByName('ID').AsInteger;
  GrpDados.Height := 116;
  FrmLoginUsuario.ClientHeight := 351;
  if not sSelEmpresa then
  begin
    LbEmpresa.Visible := false;
    ComboEmpresa.Visible := false;
    GrpDados.Height := 82;
    FrmLoginUsuario.ClientHeight := 314;
    sIDEmpresa := 1;
  end;
  //
  sOK := false;
  sContador := 0;
  EdtUsuario.SetFocus;

end;

procedure TFrmLoginUsuario.EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmLoginUsuario.ActConfirmarExecute(Sender: TObject);
begin
  inherited;
  //

end;

procedure TFrmLoginUsuario.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  //

end;

procedure TFrmLoginUsuario.BtnConfirmarClick(Sender: TObject);
var
  aVerifica: Boolean;
begin
  inherited;
  aVerifica := false;
  Inc(sContador);
  if DmClientes.Dados_Usuarios(UpperCase(EdtUsuario.Text)) then
  begin
    if DataUsuarios.DataSet.FieldByName('ATIVO').AsString = 'F' then
    begin
      MessageDlg('Usu�rio Desativado. verifique!!!', mtWarning, [mbOK], 0);
      sOK := false;
      EdtUsuario.SetFocus;
      Abort;
    end;
    if Criptografa(EdtSenha.Text, 10) = DataUsuarios.DataSet.FieldByName('SENHA').AsString then
      aVerifica := true;
  end;
  // verifica
  if not aVerifica then
  begin
    MessageDlg('Usu�rio ou senha inv�lidos. Verifique!!!', mtWarning, [mbOK], 0);
    if sContador > 2 then
    begin
      sOK := false;
      Close;
    end
    else
    begin
      EdtUsuario.SetFocus;
      Abort;
    end;
  end
  else
  begin
    sOK := true;
    sIDEmpresa := DataEmpresa.DataSet.FieldByName('ID').AsInteger;
    sIDPerfil := DataUsuarios.DataSet.FieldByName('ID_PERFIL').AsInteger;
    Close;
  end;

end;

procedure TFrmLoginUsuario.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  sOK := false;
  Close;

end;

procedure TFrmLoginUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  sSelEmpresa := true;

end;

end.
