program Food;

uses
  Forms,
  uDmAcBr in 'DM\uDmAcBr.pas' {DmAcBr: TDataModule},
  uDmConexao in 'DM\uDmConexao.pas' {DmConexao: TDataModule},
  uDmWorkCom in 'DM\uDmWorkCom.pas' {DmWorkCom: TDataModule},
  ICEP1 in 'Funcoes\ICEP1.pas',
  libeay32 in 'Funcoes\libeay32.pas',
  MD5 in 'Funcoes\MD5.pas',
  uFuncoesPAFECF in 'Funcoes\uFuncoesPAFECF.pas',
  uLibrary in 'Funcoes\uLibrary.pas',
  uFrmPadrao in 'uFrmPadrao.pas' {FrmPadrao},
  uFrmCadPadrao in 'uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmMenuRest in 'uFrmMenuRest.pas' {FrmMenuRest},
  uFrmLoginUsuario in 'uFrmLoginUsuario.pas' {FrmLoginUsuario},
  uFrmCadMesas in 'uFrmCadMesas.pas' {FrmCadMesas},
  uFrameBotaoHorizontal in 'uFrameBotaoHorizontal.pas' {FrameBotaoHorizontal: TFrame},
  uFrameBotaoVertical in 'uFrameBotaoVertical.pas' {FrameBotaoVertical: TFrame},
  uFrameConfirmaCancela in 'uFrameConfirmaCancela.pas' {FrameConfirmaCancela: TFrame},
  uFrameItensPedidoLaje in 'uFrameItensPedidoLaje.pas' {FrameItensPedidoLaje: TFrame},
  uFrmMovMesas in 'uFrmMovMesas.pas' {FrmMovMesas},
  uFrmAbreRegistra in 'uFrmAbreRegistra.pas' {FrmAbreRegistra},
  uFrmProdutos in 'uFrmProdutos.pas' {FrmProdutos},
  uDMClientes in 'DM\uDMClientes.pas' {DmClientes: TDataModule},
  CharPrinter in 'Funcoes\CharPrinter.pas',
  uMensagem in 'Funcoes\uMensagem.pas',
  uDmSPED in 'DM\uDmSPED.pas' {DmSPED: TDataModule},
  uDmAuxiliar in 'DM\uDmAuxiliar.pas' {DmAuxiliar: TDataModule},
  uDmPosto in 'DM\uDmPosto.pas' {DmPosto: TDataModule},
  uFuncoesPosto in 'Funcoes\uFuncoesPosto.pas',
  uFrmConsPadrao in 'uFrmConsPadrao.pas' {FrmConsPadrao},
  uDmProdutos in 'DM\uDmProdutos.pas' {DmProdutos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Controle de Mesas';
  Application.CreateForm(TDmAcBr, DmAcBr);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmAuxiliar, DmAuxiliar);
  Application.CreateForm(TDmWorkCom, DmWorkCom);
  Application.CreateForm(TDmPosto, DmPosto);
  Application.CreateForm(TFrmMenuRest, FrmMenuRest);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.CreateForm(TDmProdutos, DmProdutos);
  Application.CreateForm(TDmSPED, DmSPED);
  Application.Run;
end.
