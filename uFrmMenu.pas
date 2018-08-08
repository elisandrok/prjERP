unit uFrmMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, Buttons, ExtCtrls, ComCtrls, ImgList, StdCtrls,
  ToolWin, jpeg, ShellAPI, System.Actions, System.UITypes,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  uMensagem, System.ImageList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, cxClasses, dxBar, dxRibbon;

type
  TFrmMenu = class(TForm)
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    ActClientes: TAction;
    ActProdutos: TAction;
    ActPedidos: TAction;
    ActAgenda: TAction;
    ActEncerrar: TAction;
    ImageList1: TImageList;
    ActContasRc: TAction;
    ActContasPg: TAction;
    ActCaixa: TAction;
    ActEntradas: TAction;
    Timer1: TTimer;
    actCadUsuario: TAction;
    actCadFunc: TAction;
    actAjustePreco: TAction;
    actCadComposicao: TAction;
    ActionManager1: TActionManager;
    ImgLogo: TImage;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarManager1Bar12: TdxBar;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarManager1Bar13: TdxBar;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarManager1Bar14: TdxBar;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarManager1Bar15: TdxBar;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarManager1Bar16: TdxBar;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarManager1Bar17: TdxBar;
    dxBarLargeButton27: TdxBarLargeButton;
    procedure ActClientesExecute(Sender: TObject);
    procedure ActAgendaExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActContasRcExecute(Sender: TObject);
    procedure ActContasPgExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ActProdutosExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure CadastrodeProdutos2Click(Sender: TObject);
    procedure GruposeSubGrupos1Click(Sender: TObject);
    procedure AtualizarTabeladePreos71Click(Sender: TObject);
    procedure FechamentodeEstoque1Click(Sender: TObject);
    procedure GravaFechamentoInicial1Click(Sender: TObject);
    procedure CadastrodeFuncionarios1Click(Sender: TObject);
    procedure CadastrodeContabilidade1Click(Sender: TObject);
    procedure CadastrodePontosdeVenda1Click(Sender: TObject);
    procedure CadastrodeTanque1Click(Sender: TObject);
    procedure CadastrodeBomba1Click(Sender: TObject);
    procedure CadastrodeCombustivel1Click(Sender: TObject);
    procedure OpesdePosto1Click(Sender: TObject);
    procedure CentrodeCusto1Click(Sender: TObject);
    procedure PlanosdeContas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CadastrarClassificaodeSada1Click(Sender: TObject);
    procedure CadastrarFormasdePagamento1Click(Sender: TObject);
    procedure PedidoseOramentos1Click(Sender: TObject);
    procedure CompradeMercadorias1Click(Sender: TObject);
    procedure EmissoSrieD11Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure MovimentodeCaixa1Click(Sender: TObject);
    procedure ControledeCheques1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure AgendadeCompromisso1Click(Sender: TObject);
    procedure CadastrodeReduesZ1Click(Sender: TObject);
    procedure Sintegra1Click(Sender: TObject);
    procedure SEF21Click(Sender: TObject);
    procedure CadastrodeUsuarios1Click(Sender: TObject);
    procedure rocadeUsuarios1Click(Sender: TObject);
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCadFuncExecute(Sender: TObject);
    procedure actAjustePrecoExecute(Sender: TObject);
    procedure ActPedidosExecute(Sender: TObject);
    procedure ActCaixaExecute(Sender: TObject);
    procedure actCadComposicaoExecute(Sender: TObject);
    procedure CadastrodeFornecedores1Click(Sender: TObject);
    procedure GeradorSPEDFiscaleConstrinuies1Click(Sender: TObject);
    procedure SobreoAplicativo1Click(Sender: TObject);
    procedure Acompanhamentodevendas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RelatoriosemGeral1Click(Sender: TObject);
    procedure RelatoriodeVendaseComisses1Click(Sender: TObject);
    procedure Etiquetasdepostagem1Click(Sender: TObject);
    procedure GirodeProdutos1Click(Sender: TObject);
    procedure Contaapagarereceber1Click(Sender: TObject);
    procedure MovimentaodeCaixaDirio1Click(Sender: TObject);
    procedure ResultadoFinanceirodoPerodo1Click(Sender: TObject);
    procedure Scribes1Click(Sender: TObject);
    procedure LivrodemovimentaodecombustvelLMC2Click(Sender: TObject);
    procedure ImportardadosV151Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure dxBarLargeButton21Click(Sender: TObject);
    procedure dxBarLargeButton22Click(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure dxBarLargeButton24Click(Sender: TObject);
    procedure dxBarLargeButton25Click(Sender: TObject);
    procedure dxBarLargeButton26Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarConfiguracao;
    procedure ShowHint(Sender: TObject);
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses uFrmAgendaCompromissos, uFrmGrupo, uFrmSubGrupo, uFrmConfiguracoes,
  uFrmClientes, uFrmCadFunc, uFrmCadGrupo, uLibrary, uFrmCadPDV,
  uFrmLancPedidos, uFrmCadClassPedido, uFrmCadFormaPag, uFrmCadContas,
  uDmWorkCom, uFrmTabPreco, uFrmCadCheques, uFrmImforma, uFrmCaixaDiario,
  uFrmLancItensPedido, uFrmPedidosConsulta, uFrmCadUsuarios, uDmProdutos,
  uFrmLoginUsuario, uFrmProdutos, uFrmLancCompras, uFrmLancItensCompra,
  uFrmComprasConsulta, uFrmLancItensGrid, uFrmFechamentoEstoque,
  uFrmLancComanda, uFrmCadRegistro60, uFrmCadOS, uFrmCadTanques, uFrmCadBicos,
  uFrmConfigPosto, uFrmCadBomba, uFrmCadContabil, uFrmCadReg61, uFrmCadCCusto,
  uFrmCadPlanoConta, uFrmSintegra, uDMClientes, uFrmSEF2,
  uAjustePreco, uAcompanhaVenda, uFrmCadastroCliente, uFrmSelEndereco,
  uFrmContatosADC, uFrmProdComposto, uFrmMovCaixa, uFrmSPED, uFrmTabNCM,
  uDmPosto, uFuncoesPosto, uFrmRelComissao, uFrmRelContas, uFrmEtiquetas,
  uFrmMovFinanceiro, uFrmRelatorios, uFrmSelMovCaixa, uFrmRelGiroEstoque,
  uFrmLivroLMC, uFrmContas;

{$R *.dfm}

procedure TFrmMenu.actAjustePrecoExecute(Sender: TObject);
begin
  AbreForm(TFrmAjustePreco, FrmAjustePreco);
end;

procedure TFrmMenu.actCadComposicaoExecute(Sender: TObject);
begin
  AbreForm(TFrmProdComposto, FrmProdComposto);
end;

procedure TFrmMenu.actCadFuncExecute(Sender: TObject);
begin
  AbreForm(TFrmCadFunc, FrmCadFunc);
end;

procedure TFrmMenu.actCadUsuarioExecute(Sender: TObject);
begin
  AbreForm(TFrmCadUsuarios, FrmCadUsuarios);
end;

procedure TFrmMenu.ActCaixaExecute(Sender: TObject);
begin
  AbreForm(TFrmCaixaDiario, FrmCaixaDiario);
end;

procedure TFrmMenu.ActClientesExecute(Sender: TObject);
begin
  // verifica permissao
  if Verifica_Permissao(sIDPerfil, 'CadastrodeClientes1') then
  begin
    // cadastro de clientes
    Application.CreateForm(TFrmClientes, FrmClientes);
    try
      FrmClientes.showmodal;
    finally
      FrmClientes.Destroy;
    end;
  end;

end;

procedure TFrmMenu.Acompanhamentodevendas1Click(Sender: TObject);
begin
  AbreForm(TfrmAcompanhaVenda, frmAcompanhaVenda);
end;

procedure TFrmMenu.ActAgendaExecute(Sender: TObject);
begin
  // Agenda de Compromissos
  Application.CreateForm(TFrmAgendaCompromissos, FrmAgendaCompromissos);
  FrmAgendaCompromissos.showmodal;
  FrmAgendaCompromissos.Destroy;

end;

procedure TFrmMenu.ActEncerrarExecute(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
  pNumCli := 0;
  pNumProd := 0;
  DmWorkCom.PAFECF.LeArquivoINI;
  StatusBar1.Panels.Items[0].Text := DateToStr(SVData);
  StatusBar1.Panels.Items[1].Text := 'IP: ' + RetornaIP;
  StatusBar1.Panels.Items[4].Text := 'Gestor - Sistema comercial';
end;

procedure TFrmMenu.GeradorSPEDFiscaleConstrinuies1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSPED, FrmSPED);
    FrmSPED.showmodal;
  finally
    FreeAndNil(FrmSPED);
  end;
end;

procedure TFrmMenu.GirodeProdutos1Click(Sender: TObject);
begin
  AbreForm(TFrmRelGiroEstoque, FrmRelGiroEstoque);

end;

procedure TFrmMenu.GravaFechamentoInicial1Click(Sender: TObject);
var
  aux, mes, ano: String;
begin
  if DmProdutos.VerificaFechamentoInicial then
  begin
    MessageDlg('Fechamento inicial já efetuado!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if InputQuery('Fechamento Inicial', 'Mes/ano', aux) then
  begin
    if Length(aux) <> 7 then
    begin
      MessageDlg('O mês e ano deve ser informado no formato MM/AAAA. Verifique!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
    mes := copy(aux, 1, 2);
    ano := copy(aux, 4, 4);
    DmProdutos.GravaFechamentoInicial(mes, ano);
    MessageDlg('Fechamento inicial efetuado com sucesso!!!', mtWarning, [mbOK], 0);
  end;

end;

procedure TFrmMenu.GruposeSubGrupos1Click(Sender: TObject);
begin
  AbreForm(TFrmCadGrupo, FrmCadGrupo);
end;

procedure TFrmMenu.ImportardadosV151Click(Sender: TObject);
var
  formMensagem: TFormMensagem;
begin
  if Confirmacao('Confirma a importação dos dados V15?') then
  begin
    try
      formMensagem := TFormMensagem.Create('Aguarde... Importando os dados V15!', 550, 150, clWhite, clSilver);
      formMensagem.mostrar;
      Refresh;
      DmProdutos.ProcessaImportacaoProdutosSISCOM;
    finally
      formMensagem.destruir;
      FreeAndNil(formMensagem);
      ShowMessage('Processo concluído com sucesso!');
    end;
  end;
end;

procedure TFrmMenu.LivrodemovimentaodecombustvelLMC2Click(Sender: TObject);
begin
  AbreForm(TFrmLivroLMC, FrmLivroLMC);
end;

procedure TFrmMenu.MovimentaodeCaixaDirio1Click(Sender: TObject);
begin
  AbreForm(TFrmSelMovCaixa, FrmSelMovCaixa);

end;

procedure TFrmMenu.MovimentodeCaixa1Click(Sender: TObject);
begin
  AbreForm(TFrmCaixaDiario, FrmCaixaDiario);
end;

procedure TFrmMenu.OpesdePosto1Click(Sender: TObject);
begin
  AbreForm(TFrmConfigPosto, FrmConfigPosto);
end;

procedure TFrmMenu.OrdemdeServio1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmClientes, FrmClientes);
    Application.CreateForm(TFrmCadOS, FrmCadOS);
    FrmCadOS.showmodal;
  finally
    FrmCadOS.Free;
    FrmClientes.Free;
  end;

end;

procedure TFrmMenu.PedidoseOramentos1Click(Sender: TObject);
begin
  // Lancamento de Encomendas
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmPedidosConsulta, FrmPedidosConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmLancPedidos, FrmLancPedidos);
  try
    FrmLancPedidos.showmodal;
  finally
    FrmLancPedidos.Destroy;
    FrmProdutos.Destroy;
    FrmPedidosConsulta.Destroy;
    FrmCadFormaPag.Destroy;
    FrmCadClassPedido.Destroy;
    FrmClientes.Destroy;
  end;

end;

procedure TFrmMenu.PlanosdeContas1Click(Sender: TObject);
begin
  AbreForm(TFrmCadPlanoConta, FrmCadPlanoConta);
end;

procedure TFrmMenu.RelatoriodeVendaseComisses1Click(Sender: TObject);
begin
  AbreForm(TFrmRelComissao, FrmRelComissao);

end;

procedure TFrmMenu.RelatoriosemGeral1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRelatorios, FrmRelatorios);
  try
    FrmRelatorios.showmodal;
  finally
    FreeAndNil(FrmRelatorios);
  end

end;

procedure TFrmMenu.ResultadoFinanceirodoPerodo1Click(Sender: TObject);
begin
  AbreForm(TFrmMovFinanceiro, FrmMovFinanceiro);

end;

procedure TFrmMenu.rocadeUsuarios1Click(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TFrmMenu.FechamentodeEstoque1Click(Sender: TObject);
begin
  AbreForm(TFrmFechamentoEstoque, FrmFechamentoEstoque);

end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // companytec
  if DmPosto.Dados_ConfigPosto then
  begin
    if (DmPosto.CdsConfigPosto.FieldByName('TIPO_CBC').AsInteger = 1) then
    begin
      if (DmPosto.CdsConfigPosto.FieldByName('PORTA_CBC').AsInteger > 0) then
        FechaSerial
      else // estou fazendo a conectação via IP.
        FechaSocket;
    end;
  end;
  { else
    MessageDlg('É necessário inserir as configurações de posto!!!', mtWarning, [mbOK], 0); }

end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  FrmMenu.WindowState := wsMaximized;
  CarregarConfiguracao;

end;

procedure TFrmMenu.ActContasRcExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmContas, FrmContas);
    DmWorkCom.sTipoConta := 0;
    FrmContas.showmodal;
  finally
    FrmContas.Destroy;
  end;

end;

procedure TFrmMenu.ActContasPgExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmContas, FrmContas);
    DmWorkCom.sTipoConta := 1;
    FrmContas.showmodal;
  finally
    FrmContas.Destroy;
  end;

end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
var
  aux: Integer;
  formMensagem: TFormMensagem;
begin
  Timer1.Enabled := false;
  // cadastra itens do aplicativo
  if not DmClientes.Dados_UsuariosItens(sNomeApp) then
  begin
//    DmClientes.Grava_ItemsMenu(MainMenu1);
  end;
  // verifica perfil
  if not DmClientes.Dados_Perfil then
  begin
    DmClientes.Adiciona_PerfilPadrao;
  end
  else
    sIDPerfil := DmClientes.CdsUsuariosPerfilID.AsInteger;
  // verifica permissões
  if not DmClientes.Dados_Permissoes(sIDPerfil, sNomeApp) then
  begin
    // adciona permissoes
    DmClientes.Insere_PermissoesPerfil(sIDPerfil);
  end;
  // verifica usuários
  if not DmClientes.Dados_Usuarios then
  begin
    DmClientes.Adciona_UsuarioPadrao;
  end;
  // verifica tabela de UF
  if not DmClientes.dados_uf then
  begin
    // gera tabela de estados
    DmClientes.Gera_UF(['AM', 'AC', 'RR', 'RD', 'RN', 'RS', 'GO', 'MG', 'RJ', 'SP', 'ES', 'BA', 'CE', 'MT', 'AP', 'MS', 'TO', 'SE', 'PE', 'MA', 'PI', 'PR',
      'PA', 'DF', 'AL', 'PB', 'SC']);
  end;
  // verifica dados da empresa
  sIDEmpresa := 1;
  // if not DmWorkCom.Dados_Empresa(sIDEmpresa) then
  if not DmWorkCom.Dados_Empresa then
  begin
    try
      Application.CreateForm(TFrmConfiguracoes, FrmConfiguracoes);
      // insere empresa padrão
      DmWorkCom.CdsEmpresa.Append;
      Grava_Dados(DmWorkCom.CdsEmpresa);
      // insere configuração da empresa padrão
      DmWorkCom.CdsConfig.Append;
      Grava_Dados(DmWorkCom.CdsConfig);
      FrmConfiguracoes.sControle := 0;
      FrmConfiguracoes.showmodal;
    finally
      FrmConfiguracoes.Destroy;
      MessageDlg('O aplicativo será reiniciado!!!', mtWarning, [mbOK], 0);
      Application.Terminate;
    end;
  end
  else
  begin
    // login do usuario
    Application.CreateForm(TFrmLoginUsuario, FrmLoginUsuario);
    try
      FrmLoginUsuario.sOK := false;
      FrmLoginUsuario.showmodal;
      if not FrmLoginUsuario.sOK then
        Application.Terminate
      else
      begin
        StatusBar1.Panels.Items[2].Text := DmClientes.CdsUsuariosUSUARIO.AsString;
        // verifica permissões
        if not DmClientes.Dados_Permissoes(sIDPerfil, sNomeApp) then
        begin
          // adciona permissoes
          DmClientes.Insere_PermissoesPerfil(sIDPerfil);
        end;

      end;
    finally
      FrmLoginUsuario.Destroy
    end;
    // carrega dados do sistema
    DmWorkCom.Dados_Empresa(sIDEmpresa);
    StatusBar1.Panels.Items[3].Text := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;
    DmWorkCom.CarregaDadosEmpresa;
    // verifica agenda de compromissos
    aux := RetornaCompromissosDias(sDiasAgenda);
    if aux > 0 then
    begin
      MessageDlg('Há ' + IntToStr(aux) + ' compromissos agendados para os proximos ' + IntToStr(sDiasAgenda) + ' dias!', mtInformation, [mbOK], 0);
    end;
  end;

end;

procedure TFrmMenu.CadastrarClassificaodeSada1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  try
    FrmCadClassPedido.showmodal;
  finally
    FrmCadClassPedido.Destroy;
  end;

end;

procedure TFrmMenu.CadastrarFormasdePagamento1Click(Sender: TObject);
begin
  AbreForm(TFrmCadFormaPag, FrmCadFormaPag);
end;

procedure TFrmMenu.CadastrodeBomba1Click(Sender: TObject);
begin
  AbreForm(TFrmCadBomba, FrmCadBomba);
end;

procedure TFrmMenu.CadastrodeClientes1Click(Sender: TObject);
begin
  ActClientesExecute(Sender);
end;

procedure TFrmMenu.CadastrodeCombustivel1Click(Sender: TObject);
begin
  AbreForm(TFrmCadBicos, FrmCadBicos);
end;

procedure TFrmMenu.CadastrodeContabilidade1Click(Sender: TObject);
begin
  AbreForm(TFrmCadContabil, FrmCadContabil);
end;

procedure TFrmMenu.CadastrodeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmClientes, FrmClientes);
  try
    FrmClientes.showmodal;
  finally
    FrmClientes.Destroy;
  end;
end;

procedure TFrmMenu.CadastrodeFuncionarios1Click(Sender: TObject);
begin
  AbreForm(TFrmCadFunc, FrmCadFunc);
end;

procedure TFrmMenu.CadastrodePontosdeVenda1Click(Sender: TObject);
begin
  AbreForm(TFrmCadPDV, FrmCadPDV);
end;

procedure TFrmMenu.CadastrodeProdutos2Click(Sender: TObject);
begin
  AbreForm(TfrmProdutos, FrmProdutos);
end;

procedure TFrmMenu.CadastrodeReduesZ1Click(Sender: TObject);
begin
  AbreForm(TFrmCadRegistro60, FrmCadRegistro60);
end;

procedure TFrmMenu.CadastrodeTanque1Click(Sender: TObject);
begin
  AbreForm(TFrmCadTanques, FrmCadTanques);
end;

procedure TFrmMenu.CadastrodeUsuarios1Click(Sender: TObject);
begin
  AbreForm(TFrmCadUsuarios, FrmCadUsuarios);
end;

procedure TFrmMenu.CarregarConfiguracao;
begin
  // tela principal
  if FileExists(ExtractFilePath(Application.ExeName) + 'imagens\fundosys.jpg') then
  begin
    ImgLogo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'imagens\fundosys.jpg');
    ImgLogo.Visible := true;
  end;

end;

procedure TFrmMenu.CentrodeCusto1Click(Sender: TObject);
begin
  AbreForm(TFrmCadCCusto, FrmCadCCusto);
end;

procedure TFrmMenu.CompradeMercadorias1Click(Sender: TObject);
begin
  // Lancamento de Compras de mercadorias
  Application.CreateForm(TFrmLancCompras, FrmLancCompras);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmLancItensCompra, FrmLancItensCompra);
  Application.CreateForm(TFrmComprasConsulta, FrmComprasConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  try
    FrmLancCompras.showmodal;
  finally
    FrmProdutos.Destroy;
    FrmComprasConsulta.Destroy;
    FrmLancItensCompra.Destroy;
    FrmCadClassPedido.Destroy;
    FrmCadFormaPag.Destroy;
    FrmLancCompras.Destroy;
  end;

end;

procedure TFrmMenu.Configurao1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConfiguracoes, FrmConfiguracoes);
  try
    FrmConfiguracoes.sControle := 0;
    FrmConfiguracoes.showmodal;
  finally
    FrmConfiguracoes.Destroy;
    DmWorkCom.Dados_Empresa(sIDEmpresa);
    CarregarConfiguracao;
    StatusBar1.Panels.Items[3].Text := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;
    DmWorkCom.CarregaDadosEmpresa;
  end;

end;

procedure TFrmMenu.Contaapagarereceber1Click(Sender: TObject);
begin
  AbreForm(TFrmRelContas, FrmRelContas);

end;

procedure TFrmMenu.ContasaPagar1Click(Sender: TObject);
begin
  ActContasPgExecute(Sender);
end;

procedure TFrmMenu.ContasaReceber1Click(Sender: TObject);
begin
  ActContasRcExecute(Sender);
end;

procedure TFrmMenu.ControledeCheques1Click(Sender: TObject);
begin
  AbreForm(TFrmCadCheques, FrmCadCheques);
end;

procedure TFrmMenu.dxBarButton11Click(Sender: TObject);
begin
  AbreForm(TFrmRelGiroEstoque, FrmRelGiroEstoque);
end;

procedure TFrmMenu.dxBarButton13Click(Sender: TObject);
begin
  AbreForm(TFrmRelContas, FrmRelContas);
end;

procedure TFrmMenu.dxBarButton14Click(Sender: TObject);
begin
  AbreForm(TFrmSelMovCaixa, FrmSelMovCaixa);
end;

procedure TFrmMenu.dxBarButton15Click(Sender: TObject);
begin
  AbreForm(TFrmMovFinanceiro, FrmMovFinanceiro);
end;

procedure TFrmMenu.dxBarButton19Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConfiguracoes, FrmConfiguracoes);
  try
    FrmConfiguracoes.sControle := 0;
    FrmConfiguracoes.showmodal;
  finally
    FrmConfiguracoes.Destroy;
    DmWorkCom.Dados_Empresa(sIDEmpresa);
    CarregarConfiguracao;
    StatusBar1.Panels.Items[3].Text := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;
    DmWorkCom.CarregaDadosEmpresa;
  end;
end;

procedure TFrmMenu.dxBarButton20Click(Sender: TObject);
begin
  ActAgendaExecute(Sender);
end;

procedure TFrmMenu.dxBarButton6Click(Sender: TObject);
begin
  AbreForm(TFrmCadGrupo, FrmCadGrupo);
end;

procedure TFrmMenu.dxBarButton7Click(Sender: TObject);
begin
  AbreForm(TFrmProdComposto, FrmProdComposto);
end;

procedure TFrmMenu.dxBarButton8Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  try
    FrmCadClassPedido.showmodal;
  finally
    FrmCadClassPedido.Destroy;
  end;
end;

procedure TFrmMenu.dxBarButton9Click(Sender: TObject);
begin
  AbreForm(TFrmCadFormaPag, FrmCadFormaPag);
end;

procedure TFrmMenu.dxBarLargeButton10Click(Sender: TObject);
begin
  // Lancamento de Compras de mercadorias
  Application.CreateForm(TFrmLancCompras, FrmLancCompras);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmLancItensCompra, FrmLancItensCompra);
  Application.CreateForm(TFrmComprasConsulta, FrmComprasConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  try
    FrmLancCompras.showmodal;
  finally
    FrmProdutos.Destroy;
    FrmComprasConsulta.Destroy;
    FrmLancItensCompra.Destroy;
    FrmCadClassPedido.Destroy;
    FrmCadFormaPag.Destroy;
    FrmLancCompras.Destroy;
  end;
end;

procedure TFrmMenu.dxBarLargeButton11Click(Sender: TObject);
begin
  AbreForm(TfrmAcompanhaVenda, frmAcompanhaVenda);
end;

procedure TFrmMenu.dxBarLargeButton12Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmClientes, FrmClientes);
    Application.CreateForm(TFrmCadOS, FrmCadOS);
    FrmCadOS.showmodal;
  finally
    FrmCadOS.Free;
    FrmClientes.Free;
  end;

end;

procedure TFrmMenu.dxBarLargeButton13Click(Sender: TObject);
begin
  ActContasPgExecute(Sender);
end;

procedure TFrmMenu.dxBarLargeButton14Click(Sender: TObject);
begin
  ActContasRcExecute(Sender);
end;

procedure TFrmMenu.dxBarLargeButton15Click(Sender: TObject);
begin
  AbreForm(TFrmCaixaDiario, FrmCaixaDiario);
end;

procedure TFrmMenu.dxBarLargeButton16Click(Sender: TObject);
begin
  AbreForm(TFrmCadCheques, FrmCadCheques);
end;

procedure TFrmMenu.dxBarLargeButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRelatorios, FrmRelatorios);
  try
    FrmRelatorios.showmodal;
  finally
    FreeAndNil(FrmRelatorios);
  end
end;

procedure TFrmMenu.dxBarLargeButton18Click(Sender: TObject);
begin
  AbreForm(TFrmRelComissao, FrmRelComissao);
end;

procedure TFrmMenu.dxBarLargeButton1Click(Sender: TObject);
begin
  ActClientesExecute(Sender);
end;

procedure TFrmMenu.dxBarLargeButton20Click(Sender: TObject);
begin
  AbreForm(TFrmCadUsuarios, FrmCadUsuarios);
end;

procedure TFrmMenu.dxBarLargeButton21Click(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TFrmMenu.dxBarLargeButton22Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSPED, FrmSPED);
    FrmSPED.showmodal;
  finally
    FreeAndNil(FrmSPED);
  end;
end;

procedure TFrmMenu.dxBarLargeButton23Click(Sender: TObject);
begin
  AbreForm(TFrmCadRegistro60, FrmCadRegistro60);
end;

procedure TFrmMenu.dxBarLargeButton24Click(Sender: TObject);
begin
  AbreForm(TFrmSintegra, FrmSintegra);
end;

procedure TFrmMenu.dxBarLargeButton25Click(Sender: TObject);
begin
  AbreForm(TFrmSEF2, FrmSEF2);
end;

procedure TFrmMenu.dxBarLargeButton26Click(Sender: TObject);
var
  formMensagem: TFormMensagem;
begin
  if Confirmacao('Confirma a importação dos dados V15?') then
  begin
    try
      formMensagem := TFormMensagem.Create('Aguarde... Importando os dados V15!', 550, 150, clWhite, clSilver);
      formMensagem.mostrar;
      Refresh;
      DmProdutos.ProcessaImportacaoProdutosSISCOM;
    finally
      formMensagem.destruir;
      FreeAndNil(formMensagem);
      ShowMessage('Processo concluído com sucesso!');
    end;
  end;
end;

procedure TFrmMenu.dxBarLargeButton27Click(Sender: TObject);
begin
  AbreForm(TFrmImforma, FrmImforma);
end;

procedure TFrmMenu.dxBarLargeButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmClientes, FrmClientes);
  try
    FrmClientes.showmodal;
  finally
    FrmClientes.Destroy;
  end;
end;

procedure TFrmMenu.dxBarLargeButton4Click(Sender: TObject);
begin
  AbreForm(TfrmProdutos, FrmProdutos);
end;

procedure TFrmMenu.dxBarLargeButton5Click(Sender: TObject);
begin
  AbreForm(TFrmCadContabil, FrmCadContabil);
end;

procedure TFrmMenu.dxBarLargeButton6Click(Sender: TObject);
begin
  AbreForm(TFrmCadCCusto, FrmCadCCusto);
end;

procedure TFrmMenu.dxBarLargeButton7Click(Sender: TObject);
begin
  AbreForm(TFrmCadPlanoConta, FrmCadPlanoConta);
end;

procedure TFrmMenu.dxBarLargeButton9Click(Sender: TObject);
begin
  // Lancamento de Encomendas
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmPedidosConsulta, FrmPedidosConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmLancPedidos, FrmLancPedidos);
  try
    FrmLancPedidos.showmodal;
  finally
    FrmLancPedidos.Destroy;
    FrmProdutos.Destroy;
    FrmPedidosConsulta.Destroy;
    FrmCadFormaPag.Destroy;
    FrmCadClassPedido.Destroy;
    FrmClientes.Destroy;
  end;
end;

procedure TFrmMenu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMenu.Scribes1Click(Sender: TObject);
begin
  // chama o gerador de relatorio
  if FileExists('c:\scribes\scribesR.exe') then
  begin
    try
      DmWorkCom.Dados_Config(sIDEmpresa);
      Executa_Scribes(DmWorkCom.CdsConfigSCIP_SRV.AsString, DmWorkCom.CdsConfigSCPATH_REL.AsString, '', '');
    except
      MessageDlg('Erro ao abrir relatorios. Chame o suporte técnico!!!', mtInformation, [mbOK], 0);
    end;
  end
  else
  begin
    MessageDlg('Não foi localizado o aplicativo Scribes instalado nesse micro!!!', mtInformation, [mbOK], 0);
  end;

end;

procedure TFrmMenu.SEF21Click(Sender: TObject);
begin
  AbreForm(TFrmSEF2, FrmSEF2);
end;

procedure TFrmMenu.ShowHint(Sender: TObject);
begin
  StatusBar1.Panels.Items[4].Text := Application.hint;

end;

procedure TFrmMenu.Sintegra1Click(Sender: TObject);
begin
  AbreForm(TFrmSintegra, FrmSintegra);
end;

procedure TFrmMenu.SobreoAplicativo1Click(Sender: TObject);
begin
  AbreForm(TFrmImforma, FrmImforma);
end;

procedure TFrmMenu.ActPedidosExecute(Sender: TObject);
begin
  // Lancamento de Encomendas
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmPedidosConsulta, FrmPedidosConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmLancPedidos, FrmLancPedidos);
  try
    FrmLancPedidos.showmodal;
  finally
    FrmLancPedidos.Destroy;
    FrmProdutos.Destroy;
    FrmPedidosConsulta.Destroy;
    FrmCadFormaPag.Destroy;
    FrmCadClassPedido.Destroy;
    FrmClientes.Destroy;
  end;

end;

procedure TFrmMenu.ActProdutosExecute(Sender: TObject);
begin
  // verifica permissao
  if Verifica_Permissao(sIDPerfil, 'CadastrodeProdutos2') then
  begin
    AbreForm(TfrmProdutos, FrmProdutos);
  end;

end;

procedure TFrmMenu.AgendadeCompromisso1Click(Sender: TObject);
begin
  ActAgendaExecute(Sender);
end;

procedure TFrmMenu.AtualizarTabeladePreos71Click(Sender: TObject);
begin
  AbreForm(TFrmTabPreco, FrmTabPreco);
end;

procedure TFrmMenu.Button1Click(Sender: TObject);
begin
  ActClientesExecute(Sender);

end;

procedure TFrmMenu.Button6Click(Sender: TObject);
begin
  AbreForm(TFrmCadFunc, FrmCadFunc);

end;

procedure TFrmMenu.Button7Click(Sender: TObject);
begin
  AbreForm(TFrmCadContabil, FrmCadContabil);

end;

procedure TFrmMenu.Button5Click(Sender: TObject);
begin
  // Lancamento de Encomendas
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmPedidosConsulta, FrmPedidosConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmLancPedidos, FrmLancPedidos);
  try
    FrmLancPedidos.showmodal;
  finally
    FrmLancPedidos.Destroy;
    FrmProdutos.Destroy;
    FrmPedidosConsulta.Destroy;
    FrmCadFormaPag.Destroy;
    FrmCadClassPedido.Destroy;
    FrmClientes.Destroy;
  end;

end;

procedure TFrmMenu.Button8Click(Sender: TObject);
begin
  // Lancamento de Compras de mercadorias
  Application.CreateForm(TFrmLancCompras, FrmLancCompras);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmCadClassPedido, FrmCadClassPedido);
  Application.CreateForm(TFrmCadFormaPag, FrmCadFormaPag);
  Application.CreateForm(TFrmLancItensCompra, FrmLancItensCompra);
  Application.CreateForm(TFrmComprasConsulta, FrmComprasConsulta);
  Application.CreateForm(TfrmProdutos, FrmProdutos);
  try
    FrmLancCompras.showmodal;
  finally
    FrmProdutos.Destroy;
    FrmComprasConsulta.Destroy;
    FrmLancItensCompra.Destroy;
    FrmCadClassPedido.Destroy;
    FrmCadFormaPag.Destroy;
    FrmClientes.Destroy;
    FrmLancCompras.Destroy;
  end;

end;

procedure TFrmMenu.Button9Click(Sender: TObject);
begin
  ActContasPgExecute(Sender);

end;

procedure TFrmMenu.EmissoSrieD11Click(Sender: TObject);
begin
  AbreForm(TFrmCadReg61, FrmCadReg61);
end;

procedure TFrmMenu.Etiquetasdepostagem1Click(Sender: TObject);
begin
  AbreForm(TFrmEtiquetas, FrmEtiquetas);

end;

procedure TFrmMenu.Button10Click(Sender: TObject);
begin
  ActContasRcExecute(Sender);

end;

procedure TFrmMenu.Button11Click(Sender: TObject);
begin
  AbreForm(TFrmCaixaDiario, FrmCaixaDiario);

end;

procedure TFrmMenu.Button12Click(Sender: TObject);
begin
  AbreForm(TFrmCadCheques, FrmCadCheques);

end;

procedure TFrmMenu.Button13Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmClientes, FrmClientes);
    Application.CreateForm(TFrmCadOS, FrmCadOS);
    FrmCadOS.showmodal;
  finally
    FrmCadOS.Free;
    FrmClientes.Free;
  end;

end;

procedure TFrmMenu.Button14Click(Sender: TObject);
begin
  // chama o gerador de relatorio
  try
    DmWorkCom.Dados_Config(sIDEmpresa);
    Executa_Scribes(DmWorkCom.CdsConfigSCIP_SRV.AsString, DmWorkCom.CdsConfigSCPATH_REL.AsString, '', '');
  except
    MessageDlg('Erro ao abrir relatorios. Chame o suporte técnico!!!', mtInformation, [mbOK], 0);
  end;

end;

procedure TFrmMenu.Button15Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConfiguracoes, FrmConfiguracoes);
  try
    FrmConfiguracoes.sControle := 0;
    FrmConfiguracoes.showmodal;
  finally
    FrmConfiguracoes.Destroy;
    DmWorkCom.Dados_Empresa(sIDEmpresa);
    CarregarConfiguracao;
    StatusBar1.Panels.Items[3].Text := DmWorkCom.CdsEmpresaRAZAO_SOCIAL.AsString;
    DmWorkCom.CarregaDadosEmpresa;
  end;

end;

procedure TFrmMenu.Button16Click(Sender: TObject);
begin
  ActAgendaExecute(Sender);

end;

procedure TFrmMenu.Button20Click(Sender: TObject);
begin
  AbreForm(TFrmCadRegistro60, FrmCadRegistro60);

end;

procedure TFrmMenu.Button18Click(Sender: TObject);
begin
  AbreForm(TFrmCadUsuarios, FrmCadUsuarios);

end;

procedure TFrmMenu.Button19Click(Sender: TObject);
begin
  Timer1.Enabled := true;

end;

procedure TFrmMenu.Button26Click(Sender: TObject);
begin
  AbreForm(TFrmCadPDV, FrmCadPDV);

end;

procedure TFrmMenu.Button28Click(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TFrmMenu.Button29Click(Sender: TObject);
begin
  AbreForm(TFrmCadReg61, FrmCadReg61);

end;

procedure TFrmMenu.Button30Click(Sender: TObject);
begin
  AbreForm(TFrmCadCCusto, FrmCadCCusto);

end;

procedure TFrmMenu.Button31Click(Sender: TObject);
begin
  AbreForm(TFrmCadPlanoConta, FrmCadPlanoConta);

end;

procedure TFrmMenu.Button33Click(Sender: TObject);
begin
  AbreForm(TFrmSintegra, FrmSintegra);
end;

procedure TFrmMenu.Button34Click(Sender: TObject);
begin
  AbreForm(TFrmSEF2, FrmSEF2);
end;

end.
