unit uFrmCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons,
  uFrameBotaoVertical, ComCtrls, ActnList, DB, Grids, DBGrids, Menus,
  uFrameBotaoHorizontal, System.Actions, System.UITypes, ACBrBase, ACBrValidador;

type
  TFrmCadProdutos = class(TFrmCadPadrao)
    PageControl1: TPageControl;
    TbsGeral: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DbID: TDBEdit;
    DbDescricao: TDBEdit;
    DbReferencia: TDBEdit;
    DbEan13: TDBEdit;
    DbDum14: TDBEdit;
    ComboUnidade: TDBComboBox;
    ComboGrupo: TDBLookupComboBox;
    ComboSubGrupo1: TDBLookupComboBox;
    DbQuantCx: TDBEdit;
    DbRadioTipoProd: TDBRadioGroup;
    DbChAtivo: TDBCheckBox;
    DataGrupo: TDataSource;
    DataSubGrupo1: TDataSource;
    DataSubGrupo2: TDataSource;
    ActProdComposto: TAction;
    ActGrupo: TAction;
    ActClassifica: TAction;
    ActFornecedor: TAction;
    GrpDados: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DbIcms: TDBEdit;
    DbIpi: TDBEdit;
    Label7: TLabel;
    GrpComissao: TGroupBox;
    DataComissao: TDataSource;
    GridComissao: TDBGrid;
    PopupMenu1: TPopupMenu;
    AcertarEstoqueManual1: TMenuItem;
    DbChEstoque: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label21: TLabel;
    DataEstoque: TDataSource;
    ActGerarDadosEstoque: TAction;
    GerarDadosdoEstoque1: TMenuItem;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    TbsAliquota: TTabSheet;
    GroupBox2: TGroupBox;
    PnCadAliquota: TPanel;
    DataProdAliq: TDataSource;
    DataCFOP: TDataSource;
    DataCST: TDataSource;
    PopupMenu2: TPopupMenu;
    InserirAliquotaparaoproduto1: TMenuItem;
    DeletarAliquotadoproduto1: TMenuItem;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit6: TDBEdit;
    Label27: TLabel;
    DBEdit7: TDBEdit;
    DataUF: TDataSource;
    ComboUF: TDBLookupComboBox;
    ComboCST: TDBLookupComboBox;
    ComboCFOP: TDBLookupComboBox;
    btnConfirmaAliq: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DbPrecoCompra: TDBEdit;
    DbMargem: TDBEdit;
    Label12: TLabel;
    Label18: TLabel;
    DbPrecoVenda: TDBEdit;
    Label8: TLabel;
    DbDesconto: TDBEdit;
    DbComissao: TDBEdit;
    Label9: TLabel;
    Label16: TLabel;
    DbEstoque: TDBEdit;
    DBEdit3: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label30: TLabel;
    Bevel1: TBevel;
    GridAliquota: TDBGrid;
    DataNCM: TDataSource;
    DBEdit1: TDBEdit;
    RadioTribucacao: TDBRadioGroup;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    DbInficeA: TDBEdit;
    DBEdit8: TDBEdit;
    Label32: TLabel;
    Label31: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    GrpAtivoPermanente: TGroupBox;
    Label35: TLabel;
    DBEdit11: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit13: TDBEdit;
    MemoFinalidade: TMemo;
    DbCodNCM: TDBEdit;
    Label22: TLabel;
    Label19: TLabel;
    DbReducaoBase: TDBEdit;
    GroupBox5: TGroupBox;
    ImgProduto: TImage;
    BtnImagem: TButton;
    DBCheckBox8: TDBCheckBox;
    ACBrValidador1: TACBrValidador;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    SpBtnGrupo: TBitBtn;
    SpBtnComposicao: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label20: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label33: TLabel;
    Label34: TLabel;
    DataCest: TDataSource;
    DataCSTPis: TDataSource;
    DataCSTCofins: TDataSource;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DataProdCor: TDataSource;
    DataProdTamanho: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit9: TDBEdit;
    DataCSOSN: TDataSource;
    DBLookupComboBox6: TDBLookupComboBox;
    Label38: TLabel;
    Label39: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    procedure ActProdCompostoExecute(Sender: TObject);
    procedure ActGrupoExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbIDKeyPress(Sender: TObject; var Key: Char);
    procedure ActionList1Update(Action: TBasicAction; var Handled: Boolean);
    procedure DbRadioTipoProdChange(Sender: TObject);
    procedure ActFornecedorExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridComissaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AcertarEstoqueManual1Click(Sender: TObject);
    procedure ActGerarDadosEstoqueExecute(Sender: TObject);
    procedure InserirAliquotaparaoproduto1Click(Sender: TObject);
    procedure DeletarAliquotadoproduto1Click(Sender: TObject);
    procedure btnConfirmaAliqClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure GridAliquotaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure DataWorkDataChange(Sender: TObject; Field: TField);
    procedure MemoFinalidadeExit(Sender: TObject);
    procedure DbCodNCMExit(Sender: TObject);
    procedure BtnImagemClick(Sender: TObject);
    procedure DbEan13Exit(Sender: TObject);
    procedure DbDum14Exit(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure PreencheUnidades;
  public
    { Public declarations }
    sIDProduto: Integer;
    sCadNFe: Boolean;
    xDESCRICAO, xREFERENCIA, xEAN13, xUNIDADE, xCODIGO_NCM, xCODIGO_CEST, xCST_INTERNO, xCFOP_INTERNO, xUF_Fornec: String;
    xALIQUOTA_ICMS, xALIQUOTA_IPI, xPRECO_COMPRA, xREDUCAO_BASE, xMVA, xALIQUOTA_PIS, xALIQUOTA_COFINS, xQuantCompra: Double end;

  var
    FrmCadProdutos: TFrmCadProdutos;

implementation

Uses uLibrary, uDmWorkCom, uFrmCadGrupo, uFrmProdutos, uFrmProdComposto,
  uFrmClientes, uFrmCadProdFornecedor, uFrmTabNCM, uDMClientes, uDmProdutos,
  uDmAcBr, uFrmProdutoCores, uFrmProdutoTamanho;

{$R *.dfm}

procedure TFrmCadProdutos.ActProdCompostoExecute(Sender: TObject);
var
  aValorCusto: Double;
begin
  inherited;
  aValorCusto := 0;
  if DataWork.DataSet.State in [dsInsert, dsEdit] then
  begin
    Grava_Dados(DataWork.DataSet);
  end;
  //
  Application.CreateForm(TFrmProdComposto, FrmProdComposto);
  try
    FrmProdComposto.sIDProduto := DataWork.DataSet.fieldByname('ID').AsInteger;
    FrmProdComposto.ShowModal;
    aValorCusto := Retorna_Valor_Custo_ProdComposto(DataWork.DataSet.fieldByname('ID').AsInteger);
    if aValorCusto > 0 then
    begin
      if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
        DataWork.DataSet.Edit;
      DataWork.DataSet.fieldByname('PRECO_COMPRA').AsFloat := aValorCusto;
    end;
  finally
    FreeAndNil(FrmProdComposto);
  end;

end;

procedure TFrmCadProdutos.ActGrupoExecute(Sender: TObject);
begin
  inherited;
  AbreForm(TFrmCadGrupo, FrmCadGrupo);
  DmProdutos.Dados_Grupo;

end;

procedure TFrmCadProdutos.ActIncluirExecute(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  inherited;
  DmWorkCom.Dados_TabelaComissao(DataWork.DataSet.fieldByname('ID').AsInteger);
  DbDescricao.SetFocus;

end;

procedure TFrmCadProdutos.ActPesquisarExecute(Sender: TObject);
var
  aTotalComposto: Double;
begin
  inherited;
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  try
    FrmProdutos.sIDProd := 0;
    FrmProdutos.ShowModal;
    if FrmProdutos.sIDProd > 0 then
    begin
      if DmProdutos.Dados_Produto(FrmProdutos.sIDProd) then
      begin
        DmProdutos.Dados_Estoque(FrmProdutos.sIDProd, sIDEmpresa);
        DmProdutos.Dados_Produto_Aliquota(FrmProdutos.sIDProd);
        if DataWork.DataSet.fieldByname('TIPOPROD').AsInteger = 1 then // produto composto
        begin
          aTotalComposto := Retorna_Valor_Custo_ProdComposto(DataWork.DataSet.fieldByname('ID').AsInteger);
          if aTotalComposto > 0 then
          begin
            if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
              DataWork.DataSet.Edit;
            DataWork.DataSet.fieldByname('PRECO_COMPRA').AsFloat := aTotalComposto;
          end
        end;
        DmWorkCom.Dados_TabelaComissao(DataWork.DataSet.fieldByname('ID').AsInteger);
        // carrega a imagem do produto
        if DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString <> '' then
        begin
          if FileExists(DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString) then
            ImgProduto.Picture.LoadFromFile(DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString);
        end
        else
          ImgProduto.Picture := nil;
      end;
      DbDescricao.SetFocus;
    end;
    DmProdutos.Dados_Grupo;
  finally
    FrmProdutos.Destroy;
  end;

end;

procedure TFrmCadProdutos.PreencheUnidades;
var
  aArquivo: TextFile;
  aNomeArq, Linha: string;
begin
  aNomeArq := ExtractFilePath(Application.ExeName) + 'Unid.txt';
  if FileExists(aNomeArq) then
  begin
    AssignFile(aArquivo, aNomeArq);
    Reset(aArquivo);
    While not Eof(aArquivo) do
    begin
      ReadLn(aArquivo, Linha);
      ComboUnidade.Items.Add(Linha);
    end;
    CloseFile(aArquivo);
  end
  else
  begin
    AssignFile(aArquivo, aNomeArq);
    Rewrite(aArquivo);
    Writeln(aArquivo, 'UN');
    Writeln(aArquivo, 'CX');
    Writeln(aArquivo, 'DZ');
    Writeln(aArquivo, 'PR');
    Writeln(aArquivo, 'FD');
    Writeln(aArquivo, 'PC');
    Writeln(aArquivo, 'LT');
    Writeln(aArquivo, 'VD');
    Writeln(aArquivo, 'M2');
    Writeln(aArquivo, 'M3');
    Writeln(aArquivo, 'CM');
    Writeln(aArquivo, 'MM');
    Writeln(aArquivo, 'PA');
    Writeln(aArquivo, 'MT');
    Writeln(aArquivo, 'GG');
    CloseFile(aArquivo);
    PreencheUnidades
  end;

end;

procedure TFrmCadProdutos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmProdutoCores, FrmProdutoCores);
    FrmProdutoCores.sApenasConsulta := false;
    FrmProdutoCores.ShowModal;
    DmProdutos.Dados_ProdCor;
  finally
    FreeAndNil(FrmProdutoCores);
  end;
end;

procedure TFrmCadProdutos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmProdutoTamanho, FrmProdutoTamanho);
    FrmProdutoTamanho.sApenasConsulta := false;
    FrmProdutoTamanho.ShowModal;
    DmProdutos.Dados_ProdTamanho;
  finally
    FreeAndNil(FrmProdutoTamanho);
  end;

end;

procedure TFrmCadProdutos.FormShow(Sender: TObject);
begin
  inherited;
  DataWork.DataSet := DmProdutos.CdsProdutos;
  DataEstoque.DataSet := DmProdutos.CdsEstoque;
  DataGrupo.DataSet := DmProdutos.CdsGrupo;
  DataSubGrupo1.DataSet := DmProdutos.CdsSubGrupo;
  DataSubGrupo2.DataSet := DmProdutos.CdsSubGrupo;
  DataComissao.DataSet := DmWorkCom.CdsTabelaComissao;
  DataProdAliq.DataSet := DmProdutos.CdsProduto_Aliquota;
  DataCFOP.DataSet := DmWorkCom.CdsCFOP;
  DataCST.DataSet := DmWorkCom.CdsCST;
  DataCSOSN.DataSet := DmWorkCom.CdsCSOSN;
  DataCSTPis.DataSet := DmProdutos.CdsCSTPisCofins;
  DataCSTCofins.DataSet := DmProdutos.CdsCSTPisCofins;
  DataCest.DataSet := DmProdutos.CdsCest;
  DataUF.DataSet := DmClientes.CdsUF;
  DataNCM.DataSet := DmProdutos.CdsNCM;
  DataProdCor.DataSet := DmProdutos.CdsProdutoCor;
  DataProdTamanho.DataSet := DmProdutos.CdsProdutoTamanho;
  PreencheUnidades;
  PageControl1.TabIndex := 0;
  DmProdutos.Dados_Produto(sIDProduto);
  DmProdutos.Dados_Estoque(sIDProduto, sIDEmpresa);
  DmProdutos.Dados_Grupo;
  DmWorkCom.Dados_TabelaComissao(sIDProduto);
  DmWorkCom.Dados_CFOP;
  DmWorkCom.Dados_CST;
  DmWorkCom.Dados_CSOSN;
  DmProdutos.Dados_CST_Pis_Cofins;
  DmProdutos.Dados_NCM;
  DmProdutos.Dados_Cest('');
  DmProdutos.Dados_ProdCor;
  DmProdutos.Dados_ProdTamanho;
  DataUF.DataSet.Open;
  DmProdutos.Dados_Produto_Aliquota(sIDProduto);
  //PnCadAliquota.Enabled := false;
  DbRadioTipoProdChange(Sender);
  DbEan13.SetFocus;
  GrpComissao.Enabled := false;
  if sTipoComissao = 2 then
    GrpComissao.Enabled := True;
  // RadioTipoProd.Enabled := false;
  if sTipoEmp = 2 then
    // RadioTipoProd.Enabled := true;
    if DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString <> '' then
    begin
      if FileExists(DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString) then
        ImgProduto.Picture.LoadFromFile(DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString);
    end;
  // verifica os dados
  if DataWork.DataSet.RecordCount > 0 then
  begin
    DataWork.DataSet.Edit
  end
  else
  begin
    DataWork.DataSet.Append;
    ComboUnidade.ItemIndex := 0;
    DataWork.DataSet.fieldByname('UNIDADE').AsString := ComboUnidade.Text;
  end;
  if sCadNFe then
  begin
    DataWork.DataSet.fieldByname('DESCRICAO').AsString := xDESCRICAO;
    DataWork.DataSet.fieldByname('REFERENCIA').AsString := xREFERENCIA;
    DataWork.DataSet.fieldByname('EAN13').AsString := xEAN13;
    DataWork.DataSet.fieldByname('UNIDADE').AsString := xUNIDADE;
    DataWork.DataSet.fieldByname('CODIGO_NCM').AsString := xCODIGO_NCM;
    DataWork.DataSet.fieldByname('COD_CEST').AsString := xCODIGO_CEST;
    DataWork.DataSet.fieldByname('CST_INTERNO').AsString := xCST_INTERNO;
    DataWork.DataSet.fieldByname('CFOP_INTERNO').AsString := xCFOP_INTERNO;
    DataWork.DataSet.fieldByname('ALIQUOTA_ICMS').AsFloat := xALIQUOTA_ICMS;
    DataWork.DataSet.fieldByname('ALIQUOTA_IPI').AsFloat := xALIQUOTA_IPI;
    DataWork.DataSet.fieldByname('PRECO_COMPRA').AsFloat := xPRECO_COMPRA;
    DataWork.DataSet.fieldByname('REDUCAO_BASE').AsFloat := xREDUCAO_BASE;
    DataWork.DataSet.fieldByname('MVA').AsFloat := xMVA;
    DataWork.DataSet.fieldByname('ALIQUOTA_PIS').AsFloat := xALIQUOTA_PIS;
    DataWork.DataSet.fieldByname('ALIQUOTA_COFINS').AsFloat := xALIQUOTA_COFINS;
    // verifica a tributação
    if Copy(xCST_INTERNO, 2, 2) = '00' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 2
    else if Copy(xCST_INTERNO, 2, 2) = '10' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 1
    else if Copy(xCST_INTERNO, 2, 2) = '20' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 2
    else if Copy(xCST_INTERNO, 2, 2) = '30' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 0
    else if Copy(xCST_INTERNO, 2, 2) = '40' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 0
    else if Copy(xCST_INTERNO, 2, 2) = '41' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 3
    else if Copy(xCST_INTERNO, 2, 2) = '50' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 2
    else if Copy(xCST_INTERNO, 2, 2) = '51' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 2
    else if Copy(xCST_INTERNO, 2, 2) = '60' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 1
    else if Copy(xCST_INTERNO, 2, 2) = '70' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 1
    else if Copy(xCST_INTERNO, 2, 2) = '90' then
      DataWork.DataSet.fieldByname('TRIBUTACAO').AsInteger := 2;
  end;

end;

procedure TFrmCadProdutos.DbIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self, Key);

end;

procedure TFrmCadProdutos.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  // AbilitaFrame(frame,DataWork.DataSet);

end;

procedure TFrmCadProdutos.DbRadioTipoProdChange(Sender: TObject);
begin
  inherited;
  SpBtnComposicao.Enabled := false;
  if DbRadioTipoProd.ItemIndex = 1 then
  begin
    SpBtnComposicao.Enabled := True;
  end;

end;

procedure TFrmCadProdutos.ActFornecedorExecute(Sender: TObject);
begin
  inherited;
  if DataWork.DataSet.RecordCount > 0 then
  begin
    Application.CreateForm(TFrmCadProdFornecedor, FrmCadProdFornecedor);
    try
      FrmCadProdFornecedor.sIDProduto := DataWork.DataSet.fieldByname('ID').AsInteger;
      FrmCadProdFornecedor.ShowModal;
    finally
      FrmCadProdFornecedor.Destroy;
    end;
  end;
end;

procedure TFrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DataWork.DataSet.RecordCount > 0 then
    sIDProduto := DataWork.DataSet.fieldByname('ID').AsInteger;
  // fecha tabelas
  DataWork.DataSet.Close;
  DataGrupo.DataSet.Close;
  DataSubGrupo1.DataSet.Close;
  DataSubGrupo2.DataSet.Close;
  DataComissao.DataSet.Close;
  DataProdAliq.DataSet.Close;
  DataCFOP.DataSet.Close;
  DataCST.DataSet.Close;
  DataUF.DataSet.Close;
  DataNCM.DataSet.Close;

end;

procedure TFrmCadProdutos.GridComissaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    Grava_Dados(DataComissao.DataSet);
end;

procedure TFrmCadProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  AlterVirgulaPonto(Self, Key);

end;

procedure TFrmCadProdutos.AcertarEstoqueManual1Click(Sender: TObject);
var
  aux: String;
  estoque: Double;
begin
  inherited;
  if DataWork.DataSet.RecordCount = 0 then
  begin
    MessageDlg('É necessário selecionar um produto para atualizar os dados!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  estoque := 0;
  aux := '0';
  if InputQuery('Acerto Manual de Estoque', 'Estoque Atual', aux) then
  begin
    try
      estoque := StrToFloat(aux);
      if estoque > 0 then
      begin
        if DmProdutos.Dados_Estoque(DataWork.DataSet.fieldByname('ID').AsInteger, sIDEmpresa) then
        begin
          if not(DataEstoque.DataSet.State in [dsInsert, dsEdit]) then
            DataEstoque.DataSet.Edit;
          DataEstoque.DataSet.fieldByname('QUANTIDADE').AsFloat := estoque;
          Grava_Dados(DataEstoque.DataSet);
          // atualiza os dados na tela
          DmProdutos.Dados_Produto(DataWork.DataSet.fieldByname('ID').AsInteger);
          DmProdutos.Dados_Estoque(DataWork.DataSet.fieldByname('ID').AsInteger, sIDEmpresa)
        end;
      end;
    except
      MessageDlg('Erro ao executar comando!!!', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFrmCadProdutos.ActGerarDadosEstoqueExecute(Sender: TObject);
var
  aIDProduto: Integer;
begin
  inherited;
  if DataEstoque.DataSet.RecordCount > 0 then
  begin
    MessageDlg('Já existe a informação de estoque do produto nesta filial!!', mtInformation, [mbOK], 0);
    Abort;
  end;
  aIDProduto := 0;
  if DataWork.DataSet.RecordCount = 0 then
  begin
    if MessageDlg('Será Gerado Informação de estoque para todos os produtos. Interromper?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      Abort;
    end;
  end
  else
    aIDProduto := DataWork.DataSet.fieldByname('ID').AsInteger;
  // processa os dados
  GeraEstoqueProduto(aIDProduto, sIDEmpresa);
  DmProdutos.Dados_Produto(aIDProduto);
  DmProdutos.Dados_Estoque(aIDProduto, sIDEmpresa);

end;

procedure TFrmCadProdutos.InserirAliquotaparaoproduto1Click(Sender: TObject);
begin
  inherited;
  //PnCadAliquota.Enabled := True;
  ComboUF.SetFocus;
  DataProdAliq.DataSet.Append;

end;

procedure TFrmCadProdutos.DeletarAliquotadoproduto1Click(Sender: TObject);
begin
  inherited;
  if Confirmacao('Confirma a exclusão desta aliquota?') then
  begin
    DataProdAliq.DataSet.Delete;
    GridAliquota.SetFocus;
  end;

end;

procedure TFrmCadProdutos.btnConfirmaAliqClick(Sender: TObject);
begin
  inherited;
  Grava_Dados(DataProdAliq.DataSet);
  //PnCadAliquota.Enabled := false;
  GridAliquota.SetFocus;
  DataProdAliq.DataSet.Insert;

end;

procedure TFrmCadProdutos.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if Confirmacao('Confirma o cancelamento deste registro?') then
  begin
    DataProdAliq.DataSet.Cancel;
    //PnCadAliquota.Enabled := false;
    GridAliquota.SetFocus;
  end;

end;

procedure TFrmCadProdutos.BtnImagemClick(Sender: TObject);
begin
  inherited;
  if not(DataWork.DataSet.State in [dsInsert, dsEdit]) then
    DataWork.DataSet.Edit;
  OpenDialog1.Execute;
  if OpenDialog1.FileName <> '' then
  begin
    DataWork.DataSet.fieldByname('PATH_IMAGEM').AsString := OpenDialog1.FileName;
    if FileExists(OpenDialog1.FileName) then
      ImgProduto.Picture.LoadFromFile(OpenDialog1.FileName);
  end;

end;

procedure TFrmCadProdutos.GridAliquotaDblClick(Sender: TObject);
begin
  inherited;
  //PnCadAliquota.Enabled := True;
  ComboUF.SetFocus;

end;

procedure TFrmCadProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  sIDProduto := 0;
  sCadNFe := false;

end;

procedure TFrmCadProdutos.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmCadProdutos.ActConfirmarExecute(Sender: TObject);
begin
  inherited;
  // grava tabela de PDV como não sincronizado
  DmWorkCom.GravaPDVNaoSincronizado;
  // se não tiver estoque ele gera
  if DataEstoque.DataSet.RecordCount = 0 then
  begin
    // processa os dados
    GeraEstoqueProduto(DataWork.DataSet.fieldByname('ID').AsInteger, sIDEmpresa);
    DmProdutos.Dados_Produto(DataWork.DataSet.fieldByname('ID').AsInteger);
    DmProdutos.Dados_Estoque(DataWork.DataSet.fieldByname('ID').AsInteger, sIDEmpresa);
  end;
  // grava a aliquota para o produto caso seja cadastro de NFe
  if sCadNFe then
  begin
    DataProdAliq.DataSet.Append;
    DmProdutos.CdsProduto_AliquotaUF.AsString := xUF_Fornec;
    DmProdutos.CdsProduto_AliquotaCST.AsString := xCST_INTERNO;
    DmProdutos.CdsProduto_AliquotaCFOP.AsString := xCFOP_INTERNO;
    DmProdutos.CdsProduto_AliquotaALIQUOTA.AsFloat := xALIQUOTA_ICMS;
    DmProdutos.CdsProduto_AliquotaREDUCAO_BASE.AsFloat := xREDUCAO_BASE;
    Grava_Dados(DataProdAliq.DataSet);
  end;
  Close;

end;

procedure TFrmCadProdutos.DataWorkDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  MemoFinalidade.Text := DataWork.DataSet.fieldByname('PROD_FINALIDADE').AsString;
  GrpAtivoPermanente.Enabled := false;
  if DataWork.DataSet.fieldByname('BENS_CONSUMO').AsString = 'T' then
  begin
    GrpAtivoPermanente.Enabled := True;
  end;

end;

procedure TFrmCadProdutos.MemoFinalidadeExit(Sender: TObject);
begin
  inherited;
  DataWork.DataSet.fieldByname('PROD_FINALIDADE').AsString := MemoFinalidade.Text;
end;

procedure TFrmCadProdutos.DbCodNCMExit(Sender: TObject);
begin
  inherited;
  if (DataWork.DataSet.fieldByname('CODIGO_NCM').AsString = '') or (DataWork.DataSet.fieldByname('CODIGO_NCM').IsNull) then
  begin
    if DataWork.DataSet.State in [dsInsert, dsEdit] then
    begin
      Application.CreateForm(TFrmTabNCM, FrmTabNCM);
      try
        FrmTabNCM.ShowModal;
        DataWork.DataSet.fieldByname('CODIGO_NCM').AsString := FrmTabNCM.sCodigo;
        DataWork.DataSet.fieldByname('EXCECAO_NCM').AsInteger := FrmTabNCM.sExcecao;
      finally
        FreeAndNil(FrmTabNCM);
      end;
    end;
    // verifica se possio NCM informado no cadastro
    if DataWork.DataSet.fieldByname('CODIGO_NCM').AsString <> '' then
    begin
      if not DmAcbr.ACBrNcms1.validar(DataWork.DataSet.fieldByname('CODIGO_NCM').AsString) then
      begin
        MessageDlg('O código NCM informação não possui no cadastro. Verifique!', mtWarning, [mbOK], 0);
        DbCodNCM.SetFocus;
      end
      else
      begin
        if not DmProdutos.Dados_Cest(DataWork.DataSet.fieldByname('CODIGO_NCM').AsString) then
          DmProdutos.Dados_Cest('');
      end;
    end;

  end;
  // verifica se possio NCM informado no cadastro
  if DataWork.DataSet.fieldByname('CODIGO_NCM').AsString <> '' then
  begin
    if not DmProdutos.Dados_NCM(DataWork.DataSet.fieldByname('CODIGO_NCM').AsString, DataWork.DataSet.fieldByname('EXCECAO_NCM').AsInteger) then
    begin
      MessageDlg('O código NCM informação não possui no cadastro. Verifique!', mtWarning, [mbOK], 0);
      DbCodNCM.SetFocus;
    end;
  end;
end;

procedure TFrmCadProdutos.DbDum14Exit(Sender: TObject);
begin
  inherited;
  // verifica preenchimento do EAN
  { if DataWork.DataSet.State in [dsInsert,dsEdit] then
    begin
    if DataWork.DataSet.FieldByname('DUN14').AsString = '' then
    begin
    if sGerarGTIN = 'S' then
    DataWork.DataSet.FieldByname('DUN14').AsString := ZeroEsquerda(IntToStr(DataWork.DataSet.FieldByName('ID').AsInteger),14);
    end
    else
    begin
    if (sVerificaGTIN = 'S') and
    (DataWork.DataSet.FieldByname('PESAVEL').AsString = 'N') then
    begin
    ACBrValidador1.Documento   := DataWork.DataSet.FieldByname('DUN14').AsString;
    ACBrValidador1.Complemento := '';
    ACBrValidador1.IgnorarChar := '';
    // realiza a validação
    if not ACBrValidador1.Validar then
    begin
    MessageDlg(ACBrValidador1.MsgErro,mtError,[mbOK],0);
    DbDum14.SelectAll;
    DbDum14.SetFocus;
    end;
    end;
    end;
    end;
  }
end;

procedure TFrmCadProdutos.DbEan13Exit(Sender: TObject);
begin
  inherited;
  // verifica preenchimento do EAN
  if DataWork.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DataWork.DataSet.fieldByname('EAN13').AsString = '' then
    begin
      if sGerarGTIN = 'S' then
        DataWork.DataSet.fieldByname('EAN13').AsString := ZeroEsquerda(IntToStr(DataWork.DataSet.fieldByname('ID').AsInteger), 13);
    end
    else
    begin
      if (sVerificaGTIN = 'S') and (DataWork.DataSet.fieldByname('PESAVEL').AsString = 'N') then
      begin
        if FiltraNumero(DataWork.DataSet.fieldByname('EAN13').AsString) <> '' then
        begin
          if StrToInt64(DataWork.DataSet.fieldByname('EAN13').AsString) <> DataWork.DataSet.fieldByname('ID').AsInteger then
          begin
            if Length(IntToStr(StrToInt64(DataWork.DataSet.fieldByname('EAN13').AsString))) > 5 then
            begin
              ACBrValidador1.Documento := DataWork.DataSet.fieldByname('EAN13').AsString;
              ACBrValidador1.Complemento := '';
              ACBrValidador1.IgnorarChar := '';
              // realiza a validação
              if not ACBrValidador1.validar then
              begin
                MessageDlg(ACBrValidador1.MsgErro, mtError, [mbOK], 0);
                DbEan13.SelectAll;
                DbEan13.SetFocus;
              end;
            end;
          end;
        end;
      end;
    end;
  end;

end;

end.
