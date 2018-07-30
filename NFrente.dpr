program NFrente;

uses
  ShareMem,
  Forms,
  Windows,
  Messages,
  Dialogs,
  SysUtils,
  uFrmPadrao in 'uFrmPadrao.pas' {FrmPadrao},
  uFrmSplash in 'uFrmSplash.pas' {FrmSplash},
  uDmConexao in 'DM\uDmConexao.pas' {DmConexao: TDataModule},
  uDmWorkCom in 'DM\uDmWorkCom.pas' {DmWorkCom: TDataModule},
  uFrmCadPadrao in 'uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmPrincipalNF in 'uFrmPrincipalNF.pas' {FrmPrincipalNFrente},
  uFrmEmiCupom in 'uFrmEmiCupom.pas' {FrmEmiCupom},
  uFrmFecharCupom in 'uFrmFecharCupom.pas' {FrmFecharCupom},
  uFrmIdenticaCliente in 'uFrmIdenticaCliente.pas' {FrmIdenticaCliente},
  uFrameConfirmaCancela in 'uFrameConfirmaCancela.pas' {FrameConfirmaCancela: TFrame},
  uFrameBotaoHorizontal in 'uFrameBotaoHorizontal.pas' {FrameBotaoHorizontal: TFrame},
  uFrameBotaoVertical in 'uFrameBotaoVertical.pas' {FrameBotaoVertical: TFrame},
  uFuncoesPAFECF in 'Funcoes\uFuncoesPAFECF.pas',
  uLibrary in 'Funcoes\uLibrary.pas',
  libeay32 in 'Funcoes\libeay32.pas',
  uFrmLoginUsuario in 'uFrmLoginUsuario.pas' {FrmLoginUsuario},
  uFrmConfiguracoes in 'uFrmConfiguracoes.pas' {FrmConfiguracoes},
  uFrmClientes in 'uFrmClientes.pas' {FrmClientes},
  uFrmProdutos in 'uFrmProdutos.pas' {FrmProdutos},
  MD5 in 'Funcoes\MD5.pas',
  uFrmSelListaEstoque in 'uFrmSelListaEstoque.pas' {FrmSelListaEstoque},
  uFrmValorFormaPag in 'uFrmValorFormaPag.pas' {FrmValorFormaPag},
  uFrmCupomAbastecimento in 'uFrmCupomAbastecimento.pas' {FrmCupomAbastecimento},
  uFrmFechaMesa in 'uFrmFechaMesa.pas' {FrmFechaMesa},
  uFrmRegistraDescAcres in 'uFrmRegistraDescAcres.pas' {FrmRegistraDescAcres},
  uMensagem in 'Funcoes\uMensagem.pas',
  uFrmMensageemProd in 'uFrmMensageemProd.pas' {FrmMensageemProd},
  uFrmAbreCaixa in 'uFrmAbreCaixa.pas' {FrmAbreCaixa},
  uDmAcBr in 'DM\uDmAcBr.pas' {DmAcBr: TDataModule},
  uFrmImforma in 'uFrmImforma.pas' {FrmImforma},
  uFrmPrecoProduto in 'uFrmPrecoProduto.pas' {FrmPrecoProduto},
  uFuncoesPosto in 'Funcoes\uFuncoesPosto.pas',
  uFrmLiberacao in 'uFrmLiberacao.pas' {FrmLiberacao},
  uFrmAutorizaVidaLink in 'uFrmAutorizaVidaLink.pas' {FrmAutorizaVidaLink},
  uFrmFechaCaixa in 'uFrmFechaCaixa.pas' {FrmFechaCaixa},
  uFrmNFCePendente in 'uFrmNFCePendente.pas' {FrmNFCePendente},
  uFrmCupomDAVPV in 'uFrmCupomDAVPV.pas' {FrmCupomDAVPV},
  uDMClientes in 'DM\uDMClientes.pas' {DmClientes: TDataModule},
  CharPrinter in 'Funcoes\CharPrinter.pas',
  uFrmNFCeEmitida in 'uFrmNFCeEmitida.pas' {FrmNFCeEmitida},
  uDmSPED in 'DM\uDmSPED.pas' {DmSPED: TDataModule},
  uDmAuxiliar in 'DM\uDmAuxiliar.pas' {DmAuxiliar: TDataModule},
  uDmPosto in 'DM\uDmPosto.pas' {DmPosto: TDataModule},
  untFuncoesPAF in 'Funcoes\untFuncoesPAF.pas',
  uFuncoesSoftPlus in 'Funcoes\uFuncoesSoftPlus.pas',
  uFrmListaContigencia in 'uFrmListaContigencia.pas' {FrmListaContigencia},
  uDmProdutos in 'DM\uDmProdutos.pas' {DmProdutos: TDataModule},
  ICEP1 in 'Funcoes\ICEP1.pas';

{$R *.res}

var
pArquivo : TextFile;
pNomeArq, pLinha : string;
pDataSys : TDateTime;
pDiasExpira : Double;

begin
  Hwnd := FindWindow('TApplication','Emissor de Documento Fiscal');
  if Hwnd = 0 then
  begin
    SetLength(sPathWindows, MAX_PATH);
    lng := GetTempPath(MAX_PATH, PChar(sPathWindows));
    SetLength(sPathWindows, lng);
    pDataSys := date();
    pDiasExpira := 0;
    pNumCli := 0;
    pNumProd := 0;
    frmSplash := TfrmSplash.Create(frmSplash);
    frmSplash.Show;
    frmSplash.Update;
    Application.Initialize;
    Application.Title := 'Emissor de Documento Fiscal';
    if pDiasExpira > 0 then
    begin
      pNomeArq := sPathWindows+'WC.vcn';
      if not FileExists(pNomeArq) then
      begin
        pDataSys := SVData;
        pDataSys := pDataSys + pDiasExpira;
        AssignFile(pArquivo,pNomeArq);
        Rewrite(pArquivo);
        Writeln(pArquivo,datetostr(pDataSys));
        CloseFile(pArquivo);
      end
      else
      begin
        AssignFile(pArquivo,pNomeArq);
        Reset(pArquivo);
        While not Eof(pArquivo) do
        begin
          ReadLn(pArquivo,pLinha);
          pDataSys := StrToDate(pLinha);
        end;
        CloseFile(pArquivo);
      end;
      // verifica data
      pDiasExpira := pDataSys - SVData;
      if SVData > pDataSys then
      begin
        MessageDlg('Sistema Expirou. Entre em contato com o Suporte T�cnico!!!', mtWarning, [mbOK], 0);
        Application.Terminate;
      end;
      // exibe dias para expirar
      MessageDlg('Vers�o de Demonstra��o.'+#13+#10+
                 'Expira Em '+FloatToStr(pDiasExpira)+' Dias.', mtWarning, [mbOK], 0);
    end;
    Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmAuxiliar, DmAuxiliar);
  Application.CreateForm(TDmWorkCom, DmWorkCom);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.CreateForm(TDmProdutos, DmProdutos);
  Application.CreateForm(TDmSPED, DmSPED);
  Application.CreateForm(TDmPosto, DmPosto);
  Application.CreateForm(TDmAcBr, DmAcBr);
  Application.CreateForm(TFrmPrincipalNFrente, FrmPrincipalNFrente);
  Application.Run;
  end
  else
    MessageDlg('Aplicativo ja esta em uso. Verifique!', mtInformation, [mbOK], 0);
end.
