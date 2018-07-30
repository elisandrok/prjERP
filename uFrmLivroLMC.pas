unit uFrmLivroLMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, Vcl.StdCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmLivroLMC = class(TFrmPadrao)
    GrpDadosLivro: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataLivro: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DataResponsavel: TDataSource;
    DataConferente: TDataSource;
    DataGerente: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PnBotoesLivro: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ActionList1: TActionList;
    ActGravarDadosLivro: TAction;
    ActCancelarDadosLivro: TAction;
    ActImprimirPagina: TAction;
    ActFecharTela: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DataLivroPag: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure ActGravarDadosLivroExecute(Sender: TObject);
    procedure ActCancelarDadosLivroExecute(Sender: TObject);
    procedure ActImprimirPaginaExecute(Sender: TObject);
    procedure ActFecharTelaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLivroLMC: TFrmLivroLMC;

implementation

{$R *.dfm}

uses uDmPosto, uDmWorkCom, uDMClientes, uLibrary, uFrmLivroLMCProd;

procedure TFrmLivroLMC.ActCancelarDadosLivroExecute(Sender: TObject);
begin
  inherited;
  DataLivro.DataSet.Cancel;
  PnBotoesLivro.Visible := false;
  GrpDadosLivro.Height := 221;
  GrpDadosLivro.Enabled := false;
  DmPosto.Dados_LivroLMCPag(0);

end;

procedure TFrmLivroLMC.ActFecharTelaExecute(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmLivroLMC.ActGravarDadosLivroExecute(Sender: TObject);
begin
  inherited;
  if Confirmacao('Confirma os dados do libro?') then
  begin
    Grava_Dados(DataLivro.DataSet);
    DmPosto.Dados_LivroLMCPag(DataLivro.DataSet.FieldByName('NUM_LIVRO').AsInteger);
    PnBotoesLivro.Visible := false;
    GrpDadosLivro.Height := 221;
    GrpDadosLivro.Enabled := false;
  end;

end;

procedure TFrmLivroLMC.ActImprimirPaginaExecute(Sender: TObject);
begin
  inherited;
  if DataLivro.DataSet.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFrmLivroLMCProd, FrmLivroLMCProd);
      with FrmLivroLMCProd do
      begin
        ShowModal;
        if sIDProduto > 0 then
        begin
          // verificar se a data já existe pagina registrada para o produto selecionado
          if not DataLivroPag.DataSet.Locate('DATA_PAGINA;ID_PRODUTO', VarArrayOf([sDataMov, sIDProduto]), []) then
          begin
            // verifica se é o primeiro produto da data e emite advertencia
            if DmPosto.VerificaPrimeiroItemDataLivro(sDataMov) then
            begin

            end;
            // verificar se todos ha pagina para todos os produtos cadastrados

            // verifica se a data informada é maior ou igual a ultima pagina

            // se não localizar vai gravar os dados da nova pagina
          end;
          // enviar o comando para imprimir.
        end;
      end;
    finally
      FreeAndNil(FrmLivroLMCProd);
    end;

  end;

end;

procedure TFrmLivroLMC.FormShow(Sender: TObject);
begin
  inherited;
  DataLivro.DataSet := DmPosto.CdsLivroLMC;
  DataLivroPag.DataSet := DmPosto.CdsLivroLMCPag;
  DataResponsavel.DataSet := DmClientes.CdsFuncionarios;
  DataConferente.DataSet := DmClientes.CdsFuncionarios;
  DataGerente.DataSet := DmClientes.CdsFuncionarios;
  DmClientes.Dados_Funcionario;
  //
  if not DmPosto.Dados_LivroLMC then
  begin
    MessageDlg('Não foi localizado informações para o livro em andamento.' + #13 + #10 + 'É necessário informar os dados.', mtWarning, [mbOK], 0);
    PnBotoesLivro.Visible := true;
    GrpDadosLivro.Height := 241;
    GrpDadosLivro.Enabled := true;
    DBEdit1.SetFocus;
  end
  else
    DmPosto.Dados_LivroLMCPag(DataLivro.DataSet.FieldByName('NUM_LIVRO').AsInteger);

end;

end.
