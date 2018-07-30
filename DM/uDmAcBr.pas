unit uDmAcBr;

interface

uses
  SysUtils, Classes, ACBrSpedPisCofins, ACBrSpedFiscal, ACBrNFeDANFEClass,
  ACBrNFe, ACBrEAD, ACBrBAL, ACBrBase, ACBrECF, Forms, SHDocVw, ActiveX,
  StdCtrls, MSHTML, DBClient, ACBrSocket, ACBrCNIEE, ACBrValidador, ACBrIBPTax,
  pcnConversao, ACBrNFeDANFEFR, ComCtrls, ACBrDevice, Dialogs, ACBrSintegra,
  ACBrDFe, ACBrMail, frxClass, ACBrNFeDANFEFRDM, ACBrNFeDANFeRLClass,
  ACBrNFSeDANFSeClass, ACBrNFSeDANFSeFR, ACBrNFSe, ACBrCTe, ACBrBlocoX,
  ACBrNCMs, ACBrDANFCeFortesFr, ACBrSATExtratoESCPOS, ACBrPosPrinter,
  ACBrSATExtratoClass, ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr,
  ACBrSAT, ACBrNFSeDANFSeRLClass;

type
  TDmAcBr = class(TDataModule)
    ACBrECF1: TACBrECF;
    ACBrBAL1: TACBrBAL;
    ACBrEAD1: TACBrEAD;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    ACBrCNIEE1: TACBrCNIEE;
    ACBrValidador1: TACBrValidador;
    ACBrIBPTax1: TACBrIBPTax;
    ACBrSintegra1: TACBrSintegra;
    ACBrMail1: TACBrMail;
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrNCMs1: TACBrNCMs;
    ACBrBlocoX1: TACBrBlocoX;
    ACBrCTe1: TACBrCTe;
    ACBrNFSe1: TACBrNFSe;
    ACBrNFSeDANFSeFR1: TACBrNFSeDANFSeFR;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL;
    ACBrNFe1: TACBrNFe;
    procedure ACBrEAD1GetChavePrivada(var Chave: String);
    procedure ACBrECF1MsgPoucoPapel(Sender: TObject);
    procedure ACBrECF1MsgAguarde(const Mensagem: String);
    procedure ACBrECF1ErrorCancelaNaoFiscal(var Tratado: Boolean);
    procedure ACBrECF1ErrorFechaNaoFiscal(var Tratado: Boolean);
    procedure ACBrECF1ErrorFechaRelatorio(var Tratado: Boolean);
    procedure ACBrECF1DepoisFechaRelatorio(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure ACBrECF1AguardandoRespostaChange(Sender: TObject);
    procedure ACBrECF1ChangeEstado(const EstadoAnterior, EstadoAtual: TACBrECFEstado);
    procedure ACBrECF1DepoisFechaCupom(const Observacao: String; const IndiceBMP: Integer);
    procedure ACBrECF1DepoisFechaNaoFiscal(const Observacao: String; const IndiceBMP: Integer);
    procedure ACBrECF1DepoisLeituraX(Sender: TObject);
    procedure ACBrECF1DepoisReducaoZ(Sender: TObject);
    procedure ACBrECF1DepoisSangria(const Valor: Double; const Obs, DescricaoCNF, DescricaoFPG: String);
    procedure ACBrECF1DepoisSuprimento(const Valor: Double; const Obs, DescricaoCNF, DescricaoFPG: String);
    procedure ACBrECF1ErrorSemPapel(Sender: TObject);
    procedure ACBrECF1DepoisAbreCupom(const CPF_CNPJ, Nome, Endereco: String);
    procedure ACBrECF1DepoisAbreRelatorioGerencial(const Indice: Integer);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sMensagem: TStatusBar;
    sCodAtivacao, sSwHAssinatura: String;
  end;

const
  ChavePrivada = '-----BEGIN RSA PRIVATE KEY-----' + #13 + #10 + 'MIICWwIBAAKBgQDv2KaFWYuSl1XaCY1JO0bm7zsPcnrMHZUQoZ+ZJnVAUPXjUA6W' + #13 + #10 +
    'Rd927j6lv/gUoiCzfr3/e/7XMfjWCZWzY0k4Nu9joJmDKV2J0Bac/2lx4yw1kPTx' + #13 + #10 + 'cQN7SEp5rpZqU+2Hyx3HfSR9lLcI5rLE/8nCJ50a2qEzt6t9S+J/rA9AZwIDAQAB' + #13 +
    #10 + 'AoGAE1lP/bv+lYHd7CwPGNROYPz1r8ZVf7f3OZNAU9OVa+3cGE1yD89tOqP3q9lz' + #13 + #10 + 'wv5dUv2riDvRkDy4zVOSnxkoY9eVpWYu5mGjKYw4vxGNgLSI4+HVfteVUTCM6xhd' +
    #13 + #10 + 'bxO6wt9fPoGMPAX40f70JgXfeiV5Y758gaYBygBhC4XnEGECQQD83C+LZzUbR8Ow' + #13 + #10 +
    '5MVdqS7bA4OoxBsfvrYf2U87kS6k+h/xI4kKt9f3H5rPYakFir4cDR1vTo4SBniU' + #13 + #10 + 'fy1bV4jxAkEA8tMYZPqwzqCvDhaE3dA6aUMQY5jDel68D7GhgIESX2dLqgkRCdkt' + #13 +
    #10 + 'quouuCnK9/6din7Wo+oZr75LKQdsg28e1wJALH1lVCbNnkYrNVWbMFaTKu/cW3Zd' + #13 + #10 + 'u2En1ES8/yMVTOvBcQEqnJsqQY3rBDAPuCzoNDFOi4YL0zoWPzJ9PYQSUQJASiqB' +
    #13 + #10 + 'q+4J7MKVVTc5k8pS3O235sO1CP5AcIavrmE97FfPe3rTcm+cDDUE2gkhzkc9dRyy' + #13 + #10 +
    'kFQjTlNP/5Md6LMa9wJAVrY3epef/RnceFzp4nro90ttS+eZKHDrnTuYGhCWijpB' + #13 + #10 + 'NiE7ZOhFKU3EdAQgj4hacsfAe93g/epUmQaThz4FxA==' + #13 + #10 +
    '-----END RSA PRIVATE KEY-----' + #13 + #10;

var
  DmAcBr: TDmAcBr;

implementation

uses uLibrary;

{$R *.dfm}

procedure TDmAcBr.ACBrEAD1GetChavePrivada(var Chave: String);
var
  Texto: TStringList;
begin
  Texto := TStringList.Create;
  try
    Texto.Add(ChavePrivada);
    Chave := Texto.Text;
  finally
    FreeAndNil(Texto);
  end;
end;

procedure TDmAcBr.ACBrECF1MsgPoucoPapel(Sender: TObject);
begin
  try
    // n�o exibir mensgem
  except
  end;
end;

procedure TDmAcBr.ACBrECF1MsgAguarde(const Mensagem: String);
begin
  try
    // sMensagem.Panels[2].Text := StringReplace(Mensagem,#10,' ',[rfReplaceAll]) ;
  except
  end;
end;

procedure TDmAcBr.ACBrECF1ErrorCancelaNaoFiscal(var Tratado: Boolean);
begin
  try
    // n�o exibir mensgem
  except
  end;
end;

procedure TDmAcBr.ACBrECF1ErrorFechaNaoFiscal(var Tratado: Boolean);
begin
  try
    // n�o exibir mensgem
  except
  end;
end;

procedure TDmAcBr.ACBrECF1ErrorFechaRelatorio(var Tratado: Boolean);
begin
  try
    // n�o exibir mensgem
  except
  end;
end;

procedure TDmAcBr.ACBrECF1DepoisFechaRelatorio(Sender: TObject);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));
  try
    // n�o exibir mensagem
  except
  end;
end;

procedure TDmAcBr.ACBrNFe1StatusChange(Sender: TObject);
begin
  try
    // n�o exibir mensagem
  except
  end;
end;

procedure TDmAcBr.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := sCodAtivacao;

end;

procedure TDmAcBr.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := sSwHAssinatura;

end;

procedure TDmAcBr.DataModuleCreate(Sender: TObject);
begin
  {NFE.Configuracoes.Geral.SSLLib := libWinCrypt;
  NFE.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
  NFE.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
  NFE.Configuracoes.Geral.SSLXmlSignLib := xsMsXml; }
end;

procedure TDmAcBr.ACBrECF1AguardandoRespostaChange(Sender: TObject);
begin
  // if ACBrECF1.AguardandoResposta then
  // sMensagem.Panels[0].Text := 'Processando...'
  // else
  // sMensagem.Panels[0].Text := '' ;

end;

procedure TDmAcBr.ACBrECF1ChangeEstado(const EstadoAnterior, EstadoAtual: TACBrECFEstado);
var
  sEstAnterior, sEstAtual: String;
begin
  // sMensagem.Panels[1].Text := Format('Anterior: %s - Atual: %s', [sEstAnterior, sEstAtual]);
end;

procedure TDmAcBr.ACBrECF1DepoisFechaCupom(const Observacao: String; const IndiceBMP: Integer);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1DepoisFechaNaoFiscal(const Observacao: String; const IndiceBMP: Integer);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1DepoisLeituraX(Sender: TObject);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1DepoisReducaoZ(Sender: TObject);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1DepoisSangria(const Valor: Double; const Obs, DescricaoCNF, DescricaoFPG: String);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1DepoisSuprimento(const Valor: Double; const Obs, DescricaoCNF, DescricaoFPG: String);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1ErrorSemPapel(Sender: TObject);
begin
  try
    ShowMessage('ECF Sem papel. Verifique!');
  except
  end;
end;

procedure TDmAcBr.ACBrECF1DepoisAbreCupom(const CPF_CNPJ, Nome, Endereco: String);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

procedure TDmAcBr.ACBrECF1DepoisAbreRelatorioGerencial(const Indice: Integer);
begin
  xDataECF := StrToDateTime(FormatDateTime('dd/mm/yyyy', ACBrECF1.DataHora));
  xHoraECF := StrToDateTime(FormatDateTime('hh:mm:ss', ACBrECF1.DataHora));

end;

end.
