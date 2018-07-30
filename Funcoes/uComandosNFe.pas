unit uComandosNFe;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Menus, ActnList, Buttons, ExtCtrls, ComCtrls, ImgList, DbClient,
     inifiles, Db, StdCtrls, Registry, MMSYSTEM, Grids, DBGrids,
     dbctrls, ShellApi, SqlExpr, ADODB, Provider, Math, Winsock,
     pcnConversao, pcnConversaoNFe;

type
  TDadosEmpresa = record
    ID: Integer;
    RazaoSocial: string;
    Fantasia: string;
    Endereco: string;
    Numero: string;
    Complemento: string;
    Bairro: string;
    Cidade: string;
    UF: string;
    Cep: string;
    CodMunicipio: string;
    CNPJ: string;
    InsEstadual: string;
    InsMunicipal: string;
    CNAE: string;
    CodSuframa: string;
    Telefax: String;
    Email: String;
    Site: String;
    CRT:Integer;
  end;

type
  TConfigNFe = Record
    sCertificado:String;
    sSenha:String;
    sSerial:String;
    sFormas:Integer;
    sSalvaArq:Boolean;
    sPathArq:String;
    sToken:String;
    sIDToken:String;
    sVersaoDF: Integer;
    sUFWS:String;
    sUFWSAux:String;
    sUsarWSAux:String;
    sAmbiente: Integer;
    sWSVisualizar:String;
    sWSHost: String;
    sWSPorta:String;
    sWSUsuario:String;
    sWSSenha: String;
    sEmailHost: String;
    sEmailPorta:String;
    sEmailUsuario: String;
    sEmailSenha:String;
    sNomeOperador:String;
    sVisualizaDanfe:String;
    sLogoMarca:String;
    sVersaoSistema:String;
  end;

var
  Transc : TTransactionDesc;
  ConexaoDados : TSQLConnection;
  QryPedidos, QryItens, QryFormaPag, QryClientes, QryProdutos : TSQLQuery;
  ArqIni : TIniFile;
  sPath, sUser, sPass : String;
  ConfiguraNFe : TConfigNFe;
  Empresa : TDadosEmpresa;
  sNFeNFCe: Integer;
  // procedures e fun��es de conex�o com banco de dados
  function IDTransaction: string;
  procedure Start;
  procedure Comit;
  procedure Rollback;
  procedure IniciaTransacao;
  procedure Grava_Dados(pDataDados: TDataSet);
  procedure CancelRevertUpdates(DataSet: TDataSet);
  procedure CancelUpdates(DataSet: TDataSet);
  // procedure e funcoes diversas
  function ZeroEsquerda(fTermo:String;fQuant:Integer):String;
  function GenID(pTabela: String): Integer;
  function FiltraNumero(fAux:String):string;
  procedure CriaArqIni;
  procedure LeArqIni;
  procedure AtualizaConfigAcBr;
  procedure CapturaDadosEmpresa;
  procedure CapturaConfigNFe;
//  Procedure LeConfigNFe;
//  procedure GravaConfigNFe;
  function Dados_Cliente(pID:Integer) : Boolean;
  function Dados_Pedido(pID:Integer) : Boolean;
  function Dados_PedidoItens(pID:Integer) : Boolean;
  function Dados_PedidoFP(pID:Integer) : Boolean;
  function Dados_Produto(pID:Integer) : Boolean;
  function ProcessaNFeInformada(pIDPedido:String):Boolean;
  function GerarNFe(pID:Integer;Apropria:Boolean;NFCe:Boolean=false):Boolean;
  procedure GravaArquivoXML(Chave_nfe,Arquivoxml:AnsiString);
  procedure GravaChaveNFEPedido(pChaveNFe, pStatus, pProtocol, pRecibo,
                                NumLote: String; TipoEmiss,pIDPedido: Integer);
           
const
  MSG_OK = 'Informa��o cadastrada com sucesso!';
  MSG_PERMISSOES = 'Voc� n�o tem permiss�o para executar essa a��o';
  MSG_CAMPO_OBR = 'Campo obrigat�rio';
  MSG_ERRO = 'Ocorreu um erro!';

implementation

uses uDmAcBr, pcnNFe;

function IDTransaction: string;
var i: integer;
const str = '0123456789';
begin
  for i := 1 to 2 do
  begin
    Randomize;
    Result := Result + str[Random(Length(str))+1];
  end;
end;

procedure Start;
begin
  Transc.IsolationLevel := xilREADCOMMITTED;
  Transc.TransactionID := StrToInt(IDTransaction);
  ConexaoDados.StartTransaction(Transc);

end;

procedure Comit;
begin
  ConexaoDados.Commit(Transc);

end;

procedure Rollback;
begin
  ConexaoDados.Rollback(Transc);
  raise Exception.Create(MSG_ERRO);

end;

procedure Grava_Dados(pDataDados: TDataSet);
begin
  try
    Randomize;
    IniciaTransacao;
    if TClientDataSet(pDataDados).Active then
    begin
      if TClientDataSet(pDataDados).State in [dsInsert,dsEdit] then
         TClientDataSet(pDataDados).Post;
      if TClientDataSet(pDataDados).ChangeCount > 0 then
         TClientDataSet(pDataDados).ApplyUpdates(0);
    end;
    ConexaoDados.Commit(Transc);
  except
    on E : Exception do
      ShowMessage(E.Message);
  end;

end;

procedure IniciaTransacao;
begin
  Transc.TransactionID  := Random(65635);
  Transc.IsolationLevel :=  xilREADCOMMITTED;
  ConexaoDados.StartTransaction(Transc);
end;

procedure CancelRevertUpdates(DataSet: TDataSet);
begin
  if DataSet.Active then
  begin
    CancelUpdates(DataSet);
    (DataSet as TClientDataSet).Refresh;
  end;
end;

procedure CancelUpdates(DataSet: TDataSet);
var ClientDataSet: TClientDataSet;
begin
  if (DataSet.Active)  then
  begin
    ClientDataSet := DataSet as TClientDataSet;
    if ClientDataSet.State in dsEditModes then
      ClientDataSet.Cancel;
    if ClientDataSet.ChangeCount > 0 then
       ClientDataSet.CancelUpdates;
  end
end;

function ZeroEsquerda(fTermo:String;fQuant:Integer):String;
var aux:String;
    i:Integer;
begin
  Result := '';
  aux := Trim(fTermo);
  for i:=1 to fQuant-length(aux) do
  begin
    Result := Result + '0';
  end;
  Result := Result + aux;

end;

function GenID(pTabela: String): Integer;
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.SQL.Add('SELECT GEN_ID('+pTabela+'_ID,1) FROM RDB$DATABASE');
    Q.Open;
    Result := Q.Fields[0].AsInteger;
  finally
    FreeAndNil(Q);
  end;

end;

function FiltraNumero(fAux:String):string;
var i:Integer;
begin
  Result := '';
  for i:=1 to length(fAux) do
  begin
    if (Copy(fAux,i,1) = '1') or
       (Copy(fAux,i,1) = '2') or
       (Copy(fAux,i,1) = '3') or
       (Copy(fAux,i,1) = '4') or
       (Copy(fAux,i,1) = '5') or
       (Copy(fAux,i,1) = '6') or
       (Copy(fAux,i,1) = '7') or
       (Copy(fAux,i,1) = '8') or
       (Copy(fAux,i,1) = '9') or
       (Copy(fAux,i,1) = '0') then
     begin
       Result := Result + Copy(fAux,i,1);
     end;
  end;
end;

procedure CriaArqIni;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  ArqINI.WriteString('DADOS','PATH',ExtractFilePath(Application.ExeName)+'Dados\DADOS.FDB');
  ArqINI.WriteString('DADOS','USUARIO','SYSDBA');
  ArqINI.WriteString('DADOS','SENHA','masterkey');
  ArqIni.Free;
end;

procedure LeArqIni;
begin
  ArqIni    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  sPath     := ArqINI.ReadString('DADOS','PATH',ExtractFilePath(Application.ExeName)+'Dados\DADOS.FDB');
  sUser     := ArqINI.ReadString('DADOS','USUARIO','SYSDBA');
  sPass     := ArqINI.ReadString('DADOS','SENHA','masterkey');
  ArqIni.Free;
end;

procedure AtualizaConfigAcBr;
var OK : Boolean;
begin
  // Repassa Dados para componente AcBrNFe
  {$IFDEF AcBrMFeOpenSSL}
    DmAcBr.ACBrNFe1.configuracoes.Certificados.Certificado := sCertificado;
    DmAcBr.AcBrNFe1.Configuracoes.Certificados.Senha       := sSenha;
    DmAcBr.AcBrNFe1.Configuracoes.Certificados.NumeroSerie := '';
  {$ELSE}
    DmAcBr.AcBrNFe1.Configuracoes.Certificados.NumeroSerie := ConfiguraNFe.sSerial;
    DmAcBr.AcBrNFe1.Configuracoes.Certificados.Senha       := '';
  {$ENDIF}
  // Geral
  DmAcBr.ACBrNFe1.Configuracoes.Geral.FormaEmissao         := StrToTpEmis(OK,IntToStr(ConfiguraNFe.sFormas));
  DmAcBr.ACBrNFe1.Configuracoes.Geral.Salvar               := ConfiguraNFe.sSalvaArq;
  DmAcBr.ACBrNFe1.Configuracoes.Arquivos.PathSalvar        := ConfiguraNFe.sPathArq;
  if ConfiguraNFe.sToken <> '' then
  begin
    DmAcBr.ACBrNFe1.Configuracoes.Geral.IdCSC              := ConfiguraNFe.sToken;
    DmAcBr.ACBrNFe1.Configuracoes.Geral.CSC                := ConfiguraNFe.sIDToken;
  end;
  // modelo
  DmAcBr.ACBrNFe1.Configuracoes.Geral.ModeloDF      := moNFe;
  if sNFeNFCe = 1 then
     DmAcBr.ACBrNFe1.Configuracoes.Geral.ModeloDF   := moNFCe;
  // vers�o
  case ConfiguraNFe.sVersaoDF of
    0: DmAcBr.ACBrNFe1.Configuracoes.Geral.VersaoDF    := ve200;
    1: DmAcBr.ACBrNFe1.Configuracoes.Geral.VersaoDF    := ve300;
    2: DmAcBr.ACBrNFe1.Configuracoes.Geral.VersaoDF    := ve310;
  end;
  DmAcBr.ACBrNFe1.Configuracoes.Arquivos.PathSchemas   := ExtractFilePath(Application.ExeName)+'Schemas';
  DmAcBr.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  DmAcBr.ACBrNFe1.Configuracoes.Geral.FormatoAlerta    := 'Campo:%DESCRICAO% - %MSG%';
  // WebServices
  if sNFeNFCe = 1 then // NFCe
  begin
    if ConfiguraNFe.sUsarWSAux = 'S' then
       DmAcBr.ACBrNFe1.Configuracoes.WebServices.UF    := ConfiguraNFe.sUFWSAux
    else
       DmAcBr.ACBrNFe1.Configuracoes.WebServices.UF    := ConfiguraNFe.sUFWS;
  end
  else
  begin
    DmAcBr.ACBrNFe1.Configuracoes.WebServices.UF       := ConfiguraNFe.sUFWS;
  end;
  DmAcBr.ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(OK,IntToStr(ConfiguraNFe.sAmbiente+1));
  if ConfiguraNFe.sWSVisualizar = 'S' then
     DmAcBr.ACBrNFe1.Configuracoes.WebServices.Visualizar := True
  else
     DmAcBr.ACBrNFe1.Configuracoes.WebServices.Visualizar := false;
  DmAcBr.ACBrNFe1.Configuracoes.WebServices.ProxyHost  := ConfiguraNFe.sWSHost;
  DmAcBr.ACBrNFe1.Configuracoes.WebServices.ProxyPort  := ConfiguraNFe.sWSPorta;
  DmAcBr.ACBrNFe1.Configuracoes.WebServices.ProxyUser  := ConfiguraNFe.sWSUsuario;
  DmAcBr.ACBrNFe1.Configuracoes.WebServices.ProxyPass  := ConfiguraNFe.sWSSenha;
//  DmAcBr.ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas := 5000;
//  DmAcBr.ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet := 5000;
  //
  if sNFeNFCe = 0 then // NFe
  begin
    DmAcBr.ACBrNFeDANFEFR1.ACBrNFe   := DmAcBr.ACBrNFe1;
    DmAcBr.ACBrNFeDANFEFR1.PathPDF   := ConfiguraNFe.sPathArq;
    DmAcBr.ACBrNFeDANFEFR1.FastFile  := ExtractFilePath(Application.ExeName)+'DANFeRetrato.fr3';
    DmAcBr.ACBrNFeDANFEFR1.TipoDANFE := tiRetrato
  end
  else
  begin
    DmAcBr.ACBrNFeDANFCeFortes1.ACBrNFe     := DmAcBr.ACBrNFe1;
    DmAcBr.ACBrNFeDANFCeFortes1.PathPDF     := ConfiguraNFe.sPathArq;
//    DmAcBr.ACBrNFeDANFEFR1.FastFile         := ExtractFilePath(Application.ExeName)+'Report\DANFeNFCe.fr3';
    DmAcBr.ACBrNFeDANFCeFortes1.TipoDANFE   := tiNFCe;
    DmAcBr.ACBrNFe1.DANFE.ImprimeEmUmaLinha := true;;
  end;
  DmAcBr.ACBrNFe1.DANFE.Sistema           := ExtractFileName(Application.ExeName);
  DmAcBr.ACBrNFe1.DANFE.Usuario           := 'Usuario';
  DmAcBr.ACBrNFe1.DANFE.Impressora        := 'Laser';
  if ConfiguraNFe.sVisualizaDanfe = 'S' then
     DmAcBr.ACBrNFe1.DANFE.MostrarPreview := True
  else
     DmAcBr.ACBrNFe1.DANFE.MostrarPreview := false;
  DmAcBr.ACBrNFe1.DANFE.NumCopias         := 1;
  DmAcBr.ACBrNFe1.DANFE.Fax               := Empresa.Telefax;
  DmAcBr.ACBrNFe1.DANFE.Email             := Empresa.Email;
  DmAcBr.ACBrNFe1.DANFE.Site              := Empresa.Site;
  DmAcBr.ACBrNFe1.DANFE.ImprimirDescPorc  := True;
  DmAcBr.ACBrNFe1.DANFE.Logo              := ConfiguraNFe.sLogoMarca;
  DmAcBr.ACBrNFe1.DANFE.PathPDF           := ConfiguraNFe.sPathArq;

end;

procedure CapturaDadosEmpresa;
var Q : TSQLQuery;
begin
  Empresa.ID := 0;
  Empresa.RazaoSocial := '';
  Empresa.Fantasia := '';
  Empresa.Endereco := '';
  Empresa.Numero := '';
  Empresa.Complemento := '';
  Empresa.Bairro := '';
  Empresa.Cidade := '';
  Empresa.UF := '';
  Empresa.Cep := '';
  Empresa.CodMunicipio := '';
  Empresa.CNPJ := '';
  Empresa.InsEstadual := '';
  Empresa.InsMunicipal := '';
  Empresa.CNAE := '';
  Empresa.CodSuframa := '';
  Empresa.Telefax := '';
  Empresa.Email := '';
  Empresa.Site := '';
  //
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.SQL.Clear;
    Q.SQL.Add('select * from empresa');
    Q.Open;
    if not Q.IsEmpty then
    begin
      Empresa.ID           := Q.FieldByName('LOJA').AsInteger;
      Empresa.RazaoSocial  := Q.FieldByName('NOME_EMPRESA').AsString;
      Empresa.Fantasia     := Q.FieldByName('NOME_EMPRESA').AsString;
      Empresa.Endereco     := Q.FieldByName('END_EMPRESA').AsString;
      Empresa.Numero       := Q.FieldByName('ENDERECO_NUMERO').AsString;
      Empresa.Complemento  := Q.FieldByName('COMPLEMENTO').AsString;
      Empresa.Bairro       := Q.FieldByName('BAIRRO_EMPRESA').AsString;
      Empresa.Cidade       := Q.FieldByName('MUNICIPIO').AsString;
      Empresa.UF           := Q.FieldByName('UF').AsString;
      Empresa.Cep          := Q.FieldByName('CEP_EMPRESA').AsString;
      Empresa.CodMunicipio := Q.FieldByName('COD_MUNICIPIO').AsString;
      Empresa.CNPJ         := Q.FieldByName('CNPJ').AsString;
      Empresa.InsEstadual  := Q.FieldByName('INSC_ESTADUAL').AsString;
      Empresa.InsMunicipal := '';
      Empresa.CNAE         := '';
      Empresa.CodSuframa   := '';
      Empresa.Telefax      := Q.FieldByName('FAX_EMPRESA').AsString;
      Empresa.Email        := '';
      Empresa.Site         := '';
      Empresa.CRT          := StrToInt(Copy(Q.FieldByName('REGIME_TRIBUTARIO').AsString,1,1));
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure CapturaConfigNFe;
var Q : TSQLQuery;
begin
  ConfiguraNFe.sCertificado    := '';
  ConfiguraNFe.sSenha          := '';
  ConfiguraNFe.sSerial         := '';
  ConfiguraNFe.sFormas         := 0;
  ConfiguraNFe.sSalvaArq       := True;
  ConfiguraNFe.sPathArq        := '';
  ConfiguraNFe.sToken          := '';
  ConfiguraNFe.sIDToken        := '';
  ConfiguraNFe.sVersaoDF       := 0;
  ConfiguraNFe.sUFWS           := '';
  ConfiguraNFe.sUFWSAux        := '';
  ConfiguraNFe.sUsarWSAux      := '';
  ConfiguraNFe.sAmbiente       := 0;
  ConfiguraNFe.sWSVisualizar   := '';
  ConfiguraNFe.sWSHost         := '';
  ConfiguraNFe.sWSPorta        := '';
  ConfiguraNFe.sWSUsuario      := '';
  ConfiguraNFe.sWSSenha        := '';
  ConfiguraNFe.sEmailHost      := '';
  ConfiguraNFe.sEmailPorta     := '';
  ConfiguraNFe.sEmailUsuario   := '';
  ConfiguraNFe.sEmailSenha     := '';
  ConfiguraNFe.sNomeOperador   := '';
  ConfiguraNFe.sVisualizaDanfe := '';
  ConfiguraNFe.sLogoMarca      := '';
  ConfiguraNFe.sVersaoSistema  := '';
  //
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.SQL.Clear;
    Q.SQL.Add('select * from config_nfe n');
    Q.SQL.Add('where n.cnpj = '+QuotedStr(Empresa.CNPJ));
    Q.Open;
    if not Q.IsEmpty then
    begin
      ConfiguraNFe.sCertificado    := Q.FieldByName('NFE_PATH_CERTF').AsString;
      ConfiguraNFe.sSenha          := Q.FieldByName('NFE_SENHA_CERTF').AsString;
      ConfiguraNFe.sSerial         := Q.FieldByName('NFE_SERIE_CERTF').AsString;
      ConfiguraNFe.sFormas         := Q.FieldByName('NFE_FORMA_EMISS').AsInteger;
      ConfiguraNFe.sSalvaArq       := True;
      if Q.FieldByName('NFE_SALVAR_ARQ').AsString = 'N' then
         ConfiguraNFe.sSalvaArq    := False;
      ConfiguraNFe.sPathArq        := Q.FieldByName('NFE_PATH_ARQUIVO').AsString;
      ConfiguraNFe.sToken          := Q.FieldByName('NFE_TOKEN').AsString;
      ConfiguraNFe.sIDToken        := Q.FieldByName('NFE_IDTOKEN').AsString;
      ConfiguraNFe.sVersaoDF       := Q.FieldByName('NFE_VERSAODF').AsInteger;
      ConfiguraNFe.sUFWS           := Q.FieldByName('NFE_WS_UF').AsString;
      ConfiguraNFe.sUFWSAux        := Q.FieldByName('NFE_WS_UF_AUX').AsString;
      ConfiguraNFe.sUsarWSAux      := Q.FieldByName('NFE_USAR_AUX_NFCE').AsString;
      ConfiguraNFe.sAmbiente       := Q.FieldByName('NFE_WS_AMBIENTE').AsInteger;
      ConfiguraNFe.sWSVisualizar   := Q.FieldByName('NFE_WS_VISUALIZAR').AsString;
      ConfiguraNFe.sWSHost         := Q.FieldByName('NFE_WS_HOST').AsString;
      ConfiguraNFe.sWSPorta        := Q.FieldByName('NFE_WS_PORTA').AsString;
      ConfiguraNFe.sWSUsuario      := Q.FieldByName('NFE_WS_USUARIO').AsString;
      ConfiguraNFe.sWSSenha        := Q.FieldByName('NFE_WS_SENHA').AsString;
      ConfiguraNFe.sEmailHost      := Q.FieldByName('NFE_EMAIL_HOST').AsString;
      ConfiguraNFe.sEmailPorta     := Q.FieldByName('NFE_EMAIL_PORTA').AsString;
      ConfiguraNFe.sEmailUsuario   := Q.FieldByName('NFE_EMAIL_USUARIO').AsString;
      ConfiguraNFe.sEmailSenha     := Q.FieldByName('NFE_EMAIL_SENHA').AsString;
      ConfiguraNFe.sNomeOperador   := 'Usuario do sistema';
      ConfiguraNFe.sVisualizaDanfe := Q.FieldByName('NFE_DANFE_PREVIEW').AsString;
      ConfiguraNFe.sLogoMarca      := Q.FieldByName('NFE_PATH_LOGOMARCA').AsString;
      ConfiguraNFe.sVersaoSistema  := Q.FieldByName('VERSAO_SISTEMA').AsString;
    end;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

{
Procedure LeConfigNFe;
begin
  ArqIni    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'_ProcessaNFe.ini');
  with ConfiguraNFe do
  begin
    sCertificado    := ArqINI.ReadString('CONFIG_NFE','CERTIFICADO','');
    sSenha          := ArqINI.ReadString('CONFIG_NFE','SENHA_CERTIFICADO','');
    sSerial         := ArqINI.ReadString('CONFIG_NFE','NUM_SERIE_CERTIFICADO','');
    sFormas         := ArqINI.ReadInteger('CONFIG_NFE','TIPO_EMISSAO',0);
    sSalvaArq       := ArqINI.ReadBool('CONFIG_NFE','SALVAR_ARQUIVOS',True);
    sPathArq        := ArqINI.ReadString('CONFIG_NFE','PATH_ARQUIVOS',ExtractFilePath(Application.ExeName)+'NFe\');
    sToken          := ArqINI.ReadString('CONFIG_NFE','NUM_TOKEN','');
    sVersaoDF       := ArqINI.ReadInteger('CONFIG_NFE','VERSAO_NFE',2);
    sUFWS           := ArqINI.ReadString('CONFIG_NFE','UF_WEBSERVICE',Empresa.UF);
    sAmbiente       := ArqINI.ReadInteger('CONFIG_NFE','AMBIENTE_NFE',2);
    sWSVisualizar   := ArqINI.ReadString('CONFIG_NFE','VER_MENSAGENS','N');
    sWSHost         := ArqINI.ReadString('CONFIG_NFE','HOST_WEBSERVICE','');
    sWSPorta        := ArqINI.ReadString('CONFIG_NFE','PORTA_WEBSERVICE','');
    sWSUsuario      := ArqINI.ReadString('CONFIG_NFE','USUARIO_WEBSERVICE','');
    sWSSenha        := ArqINI.ReadString('CONFIG_NFE','SENHA_WEBSERVICE','');
    sNomeOperador   := ArqINI.ReadString('CONFIG_NFE','NOME_OPERADOR','');
    sVisualizaDanfe := ArqINI.ReadString('CONFIG_NFE','PREVIEW_DANFE','S');
    sLogoMarca      := ArqINI.ReadString('CONFIG_NFE','PATH_LOGO_MARCA','');
  end;
  ArqIni.Free;
end;

procedure GravaConfigNFe;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'_ProcessaNFe.ini');
  with ConfiguraNFe do
  begin
    ArqINI.WriteString('CONFIG_NFE','CERTIFICADO',sCertificado);
    ArqINI.WriteString('CONFIG_NFE','SENHA_CERTIFICADO',sSenha);
    ArqINI.WriteString('CONFIG_NFE','NUM_SERIE_CERTIFICADO',sSerial);
    ArqINI.WriteInteger('CONFIG_NFE','TIPO_EMISSAO',sFormas);
    ArqINI.WriteBool('CONFIG_NFE','SALVAR_ARQUIVOS',sSalvaArq);
    ArqINI.WriteString('CONFIG_NFE','PATH_ARQUIVOS',sPathArq);
    ArqINI.WriteString('CONFIG_NFE','NUM_TOKEN',sToken);
    ArqINI.WriteInteger('CONFIG_NFE','VERSAO_NFE',sVersaoDF);
    ArqINI.WriteString('CONFIG_NFE','UF_WEBSERVICE',sUFWS);
    ArqINI.WriteInteger('CONFIG_NFE','AMBIENTE_NFE',sAmbiente);
    ArqINI.WriteString('CONFIG_NFE','VER_MENSAGENS',sWSVisualizar);
    ArqINI.WriteString('CONFIG_NFE','HOST_WEBSERVICE','');
    ArqINI.WriteString('CONFIG_NFE','PORTA_WEBSERVICE',sWSPorta);
    ArqINI.WriteString('CONFIG_NFE','USUARIO_WEBSERVICE',sWSUsuario);
    ArqINI.WriteString('CONFIG_NFE','SENHA_WEBSERVICE',sWSSenha);
    ArqINI.WriteString('CONFIG_NFE','NOME_OPERADOR',sNomeOperador);
    ArqINI.WriteString('CONFIG_NFE','PREVIEW_DANFE',sVisualizaDanfe);
    ArqINI.WriteString('CONFIG_NFE','PATH_LOGO_MARCA',sLogoMarca);
  end;
  ArqIni.Free;

end;
}
function ProcessaNFeInformada(pIDPedido:String):Boolean;
var aNumLote, aChaveNfe, aStatus, aProcolo, aRecibo : String;
begin
  Result := true;
  if GerarNFe(StrToInt(pIDPedido),false,true) then
  begin
    try
      // comandos para gerar arquivo XML
      DmAcBr.ACBrNFe1.NotasFiscais.Assinar;
      DmAcBr.ACBrNFe1.NotasFiscais.Items[0].GravarXML;
      // grava o arquivo XML
      GravaArquivoXML(DmAcBr.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,
                      DmAcBr.ACBrNFe1.NotasFiscais.Items[0].XML);
      // executa valida��o do arquivo
      DmAcBr.ACBrNFe1.NotasFiscais.Validar;
      // define o lote
      aNumLote := FormatDateTime('yymmhhss',now);
      // enviar ao portal
      DmAcBr.ACBrNFe1.Enviar(aNumLote);
      //
      aChaveNfe := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
      aProcolo  := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
      aRecibo   := DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
      aStatus   := IntToStr(DmAcBr.ACBrNFe1.WebServices.Retorno.NFeRetorno.cStat);
      // grava chave NFe
      if aChaveNfe <> '' then
      begin
        GravaChaveNFEPedido(aChaveNfe,
                            aStatus,
                            aProcolo,
                            aRecibo,
                            aNumLote,
                            ConfiguraNFe.sFormas,
                            StrToInt(pIDPedido));


      end;
    except
      on E : Exception do
      begin
        ShowMessage(E.Message);
        Result := false;
      end;
    end;
  end
  else Result := false;

end;

function Dados_Cliente(pID:Integer) : Boolean;
begin
  QryClientes.Close;
  QryClientes.SQL.Clear;
  QryClientes.SQL.Add('select c.cnpj,');
  QryClientes.SQL.Add('       c.insc_estadual,');
  QryClientes.SQL.Add('       c.endereco,');
  QryClientes.SQL.Add('       c.numero,');
  QryClientes.SQL.Add('       c.complemento,');
  QryClientes.SQL.Add('       c.bairro,');
  QryClientes.SQL.Add('       c.municipio,');
  QryClientes.SQL.Add('       c.cod_municipio,');
  QryClientes.SQL.Add('       c.cidade,');
  QryClientes.SQL.Add('       c.uf');
  QryClientes.SQL.Add('from clientes c');
  QryClientes.SQL.Add('where c.id_cliente = :pID');
  QryClientes.Params.ParamByName('pID').AsInteger := pID;
  QryClientes.Open;
  Result := not QryClientes.IsEmpty;

end;

function Dados_Pedido(pID:Integer) : Boolean;
begin
  QryPedidos.Close;
  QryPedidos.SQL.Clear;
  QryPedidos.SQL.Add('select max(m.id_ce) as id_ce,');
  QryPedidos.SQL.Add('       max(m.id_cupom) as id_cupom,');
  QryPedidos.SQL.Add('       max(m.id_cliente) as id_cliente');
  QryPedidos.SQL.Add('from movimento m');
  QryPedidos.SQL.Add('where m.id_cupom = :pID');
  QryPedidos.Params.ParamByName('pID').AsInteger := pID;
  QryPedidos.Open;
  Result := not QryPedidos.IsEmpty;

end;

function Dados_PedidoItens(pID:Integer) : Boolean;
begin
  QryItens.Close;
  QryItens.SQL.Clear;
  QryItens.SQL.Add('select * from movimento i');
  QryItens.SQL.Add('where i.id_cupom = :pID');
  QryItens.Params.ParamByName('pID').AsInteger := pID;
  QryItens.Open;
  Result := not QryItens.IsEmpty;
end;

function Dados_PedidoFP(pID:Integer) : Boolean;
begin
  QryFormaPag.Close;
  QryFormaPag.SQL.Clear;
  QryFormaPag.SQL.Add('select t.nome_forma_pg,p.valor from pagamento_movimento p');
  QryFormaPag.SQL.Add('inner join tipo_de_pagamento t on p.id_tipo_pagamento = t.id_forma_pagamento');
  QryFormaPag.SQL.Add('where p.id_cupom = :pID');
  QryFormaPag.Params.ParamByName('pID').AsInteger := pID;
  QryFormaPag.Open;
  Result := not QryFormaPag.IsEmpty;
end;

function Dados_Produto(pID:Integer) : Boolean;
begin
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos p');
  QryProdutos.SQL.Add('where p.id_produto = :pID');
  QryProdutos.Params.ParamByName('pID').AsInteger := pID;
  QryProdutos.Open;
  Result := not QryProdutos.IsEmpty;
  
end;

function GerarNFe(pID:Integer;Apropria:Boolean;NFCe:Boolean=false):Boolean;
var aNumIten : Integer;
    aCodUF : String;
    abase_icms, avalor_icms, avalor_produtos, adesconto, AuxValor : Double;
begin
  try
    Result := true;
    if not Dados_Pedido(pID) then
    begin
      Result := false;
      Abort;
    end
    else
    begin
      Dados_Cliente(QryPedidos.FieldByName('ID_CLIENTE').AsInteger);
      Dados_PedidoItens(pID);
      Dados_PedidoFP(pID);
    end;
    if QryPedidos.FieldByName('ID_CE').AsInteger = 0 then
    begin
      MessageDlg('� necess�rio ter o numero do Danfe para prosseguir!',mtWarning,[mbOK],0);
      Result := false;
      Exit;
    end;
    // gera a NFe
    DmAcBr.ACBrNFe1.NotasFiscais.Clear;
    with DmAcBr.ACBrNFe1.NotasFiscais.Add.NFe do
    begin
      // Dados Principais
      Ide.cNF     := StrToInt(QryPedidos.FieldByName('id_cupom').AsString);
      Ide.natOp   := 'VENDA DE MERCADORIAS';
      Ide.indPag  := ipVista;
      if not NFCe then
      begin
        Ide.modelo  := 55;
        Ide.serie   := 1;
      end
      else
      begin
        Ide.modelo  := 65;
        Ide.serie   := 1;
      end;
      Ide.nNF     := QryPedidos.FieldByName('ID_CE').AsInteger;
      Ide.dEmi    := Now;
      Ide.dSaiEnt := Now;
      if DmAcBr.ACBrNFe1.Configuracoes.Geral.VersaoDF <> ve310 then
         Ide.hSaiEnt := Now
      else
         Ide.hSaiEnt := 0;
      Ide.tpNF    := tnSaida;
      case ConfiguraNFe.sFormas of
        0: Ide.tpEmis  := teNormal;
        1: Ide.tpEmis  := teDPEC;
        2: Ide.tpEmis  := teContingencia;
        3: Ide.tpEmis  := teSCAN;
        4: Ide.tpEmis  := teFSDA;
      end;
      if ConfiguraNFe.sAmbiente = 0 then
         Ide.tpAmb   := taProducao
      else
         Ide.tpAmb := taHomologacao;
      Ide.verProc := ConfiguraNFe.sVersaoSistema;
      Ide.cUF     := UFtoCUF(Empresa.UF);
      Ide.cMunFG  := StrToInt(Empresa.CodMunicipio);
      Ide.finNFe  := fnNormal;
      if not NFCe then
      begin
        if QryClientes.FieldByName('UF').AsString <> '' then
        begin
          if Trim(Empresa.UF) = Trim(QryClientes.FieldByName('UF').AsString) then
             Ide.idDest  := doInterna
          else
             Ide.idDest  := doInterestadual;
        end
        else Ide.idDest  := doInterna;
      end
      else
      begin
        Ide.idDest  := doInterna;
      end;
      //
      if not NFCe then
      begin
        Ide.tpImp     := tiRetrato;
        Ide.indFinal  := cfNao;
        Ide.indPres   := pcNao;
      end
      else
      begin
        Ide.tpImp     := tiNFCe;
        Ide.indFinal  := cfConsumidorFinal;
        Ide.indPres   := pcPresencial;
      end;
      // Emitente
      case Empresa.CRT of
        1: Emit.CRT := crtSimplesNacional;
        2: Emit.CRT := crtSimplesExcessoReceita;
        3: Emit.CRT := crtRegimeNormal;
      end;
      Emit.CNPJCPF := Empresa.CNPJ;
      Emit.IE      := Empresa.InsEstadual;
      Emit.IEST    := '';
      Emit.xNome   := Empresa.RazaoSocial;
      Emit.xFant   := Empresa.Fantasia;
      Emit.IM      := Empresa.InsMunicipal;
      Emit.CNAE    := FiltraNumero(Empresa.CNAE);
      //
      Emit.EnderEmit.xLgr    := Empresa.Endereco;
      Emit.EnderEmit.nro     := Empresa.Numero;
      Emit.EnderEmit.xCpl    := Empresa.Complemento;
      Emit.EnderEmit.xBairro := Empresa.Bairro;
      Emit.EnderEmit.cMun    := StrToInt(Empresa.CodMunicipio);
      Emit.EnderEmit.xMun    := Empresa.Cidade;
      Emit.EnderEmit.UF      := Empresa.UF;
      Emit.EnderEmit.CEP     := StrToInt(Empresa.Cep);
      Emit.EnderEmit.fone    := Empresa.Telefax;
      Emit.EnderEmit.cPais   := 1058;
      Emit.EnderEmit.xPais   := 'BRASIL';
      // Destinatario
      if QryPedidos.FieldByName('ID_CLIENTE').AsInteger > 0 then
      begin
        Dest.CNPJCPF           := QryClientes.FieldByName('CNPJ').AsString;
        if not NFCe then
        begin
          if QryClientes.FieldByName('INSC').AsString <> '' then
          begin
            Dest.indIEDest := inContribuinte;
            Dest.IE        := QryClientes.FieldByName('INSC').AsString;
          end
          else
          begin
            Dest.indIEDest := inNaoContribuinte;
            Dest.IE        := '';
          end;
        end
        else
        begin
          Dest.indIEDest := inNaoContribuinte;
          Dest.IE        := '';
        end;
        Dest.ISUF              := '';
        Dest.xNome             := QryClientes.FieldByName('RAZAO').AsString;
        Dest.EnderDest.xLgr    := QryClientes.FieldByName('ENDERECO').AsString;
        Dest.EnderDest.nro     := QryClientes.FieldByName('NUMERO').AsString;
        Dest.EnderDest.xCpl    := QryClientes.FieldByName('COMPLEMENTO').AsString;
        Dest.EnderDest.xBairro := QryClientes.FieldByName('BAIRRO').AsString;
        Dest.EnderDest.cMun    := QryClientes.FieldByName('COD_MUNICIPIO').AsInteger;
        Dest.EnderDest.xMun    := QryClientes.FieldByName('MUNICIPIO').AsString;
        Dest.EnderDest.UF      := QryClientes.FieldByName('UF').AsString;
        if QryClientes.FieldByName('CEP').AsString <> '' then
           Dest.EnderDest.CEP  := QryClientes.FieldByName('CEP').AsInteger
        else
           Dest.EnderDest.CEP  := 0;
        Dest.EnderDest.cPais   := 1058;
        Dest.EnderDest.xPais   := 'BRASIL';
        Dest.EnderDest.fone    := QryClientes.FieldByName('TELEFONES').AsString;
      end
      else
      begin
        Dest.CNPJCPF           := '';
        Dest.indIEDest         := inNaoContribuinte;
        Dest.IE                := '';
        Dest.ISUF              := '';
        Dest.xNome             := 'CONSUMIDOR FINAL';
        Dest.EnderDest.xLgr    := '';
        Dest.EnderDest.nro     := '';
        Dest.EnderDest.xCpl    := '';
        Dest.EnderDest.xBairro := '';
        Dest.EnderDest.cMun    := 0;
        Dest.EnderDest.xMun    := '';
        Dest.EnderDest.UF      := '';
        Dest.EnderDest.CEP     := 0;
        Dest.EnderDest.cPais   := 1058;
        Dest.EnderDest.xPais   := 'BRASIL';
        Dest.EnderDest.fone    := '';
      end;
      // Entrega
      Entrega.CNPJCPF := Dest.CNPJCPF;
      Entrega.xLgr    := Dest.EnderDest.xLgr;
      Entrega.nro     := Dest.EnderDest.nro;
      Entrega.xCpl    := Dest.EnderDest.xCpl;
      Entrega.xBairro := Dest.EnderDest.xBairro;
      Entrega.cMun    := Dest.EnderDest.cMun;
      Entrega.xMun    := Dest.EnderDest.xMun;
      Entrega.UF      := Dest.EnderDest.UF;
      // Itens da NFe
      aNumIten := 0;
      abase_icms := 0;
      avalor_icms := 0;
      avalor_produtos := 0;
      adesconto := 0;
      QryItens.First;
      while not QryItens.Eof do
      begin
        Inc(aNumIten);
        Dados_Produto(QryItens.FieldByName('ID_PRODUTO').AsInteger);
        with Det.Add do
        begin
          Prod.nItem    := aNumIten;
          Prod.cProd    := IntToStr(QryItens.FieldByName('ID_PRODUTO').AsInteger);
          if QryProdutos.FieldByName('CODIGO_BARRA_PRODUTO').AsString <> '' then
             Prod.cEAN  := QryProdutos.FieldByName('CODIGO_BARRA_PRODUTO').AsString
          else
             Prod.cEAN  := '';
          Prod.xProd    := QryProdutos.FieldByName('DESCRICAO_PRODUTO').AsString;
          Prod.NCM      := QryProdutos.FieldByName('NCM_DANFE').AsString;
          Prod.EXTIPI   := '';
          Prod.CFOP     := QryProdutos.FieldByName('CFOP_DANFE').AsString;
          Prod.uCom     := QryProdutos.FieldByName('UNIDADE_MEDIDA').AsString;
          Prod.qCom     := QryItens.FieldByName('QTDE').AsFloat;
          Prod.vUnCom   := QryItens.FieldByName('VALOR_UNIT').AsFloat;
          Prod.vProd    := QryItens.FieldByName('VALOR_TOTAL').AsFloat;
          if QryProdutos.FieldByName('CODIGO_BARRA_PRODUTO').AsString <> '' then
             Prod.cEANTrib  := QryProdutos.FieldByName('CODIGO_BARRA_PRODUTO').AsString
          else
             Prod.cEANTrib  := '';
          Prod.uTrib    := QryProdutos.FieldByName('UNIDADE_MEDIDA').AsString;
          Prod.qTrib    := QryItens.FieldByName('QTDE').AsFloat;
          Prod.vUnTrib  := QryItens.FieldByName('VALOR_UNIT').AsFloat;
          Prod.vFrete   := 0;
          Prod.vSeg     := 0;
          Prod.vDesc    := QryItens.FieldByName('VALOR_DESCONTO').AsFloat;
          with Imposto do
          begin
            with ICMS do
            begin
              // simples nacional
              if (Empresa.CRT = 1) then
              begin
                if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '101' then
                   CSOSN := csosn101
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '102' then
                   CSOSN := csosn102
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '103' then
                   CSOSN := csosn103
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '201' then
                   CSOSN := csosn201
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '202' then
                   CSOSN := csosn202
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '203' then
                   CSOSN := csosn203
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '300' then
                   CSOSN := csosn300
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '400' then
                   CSOSN := csosn400
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '500' then
                   CSOSN := csosn500
                else if QryProdutos.FieldByName('CSOSN_DANFE').AsString = '900' then
                   CSOSN := csosn900;
              end;
              // regime normal ou excesso
              if (Empresa.CRT = 2) or (Empresa.CRT = 3) then
              begin
                if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '00' then
                   CST := cst00
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '10' then
                   CST  := cst10
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '20' then
                   CST  := cst20
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '30' then
                   CST  := cst30
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '40' then
                   CST  := cst40
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '41' then
                   CST  := cst41
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '45' then
                   CST  := cst45
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '50' then
                   CST  := cst50
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '51' then
                   CST  := cst51
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '60' then
                   CST  := cst60
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '70' then
                   CST  := cst70
                else if Copy(QryProdutos.FieldByName('CST_DANFE').AsString,2,2) = '90' then
                   CST  := cst90;
              end;
              //
              ICMS.orig     := oeNacional;
              ICMS.modBC    := dbiValorOperacao;
              ICMS.vBC      := QryItens.FieldByName('VALOR_TOTAL').AsFloat;
              ICMS.pICMS    := QryProdutos.FieldByName('PICMSST_DANFE').AsFloat;
              AuxValor := (QryItens.FieldByName('VALOR_TOTAL').AsFloat+QryProdutos.FieldByName('PICMSST_DANFE').AsFloat)/100;
              ICMS.vICMS    := StrToFloat(FormatFloat('0.00',AuxValor));
              ICMS.modBCST  := dbisMargemValorAgregado;
              ICMS.pMVAST   := 0;
              ICMS.pRedBCST := 0;
              ICMS.vBCST    := 0;
              ICMS.pICMSST  := 0;
              ICMS.pRedBC   := 0;
            end;
            // soma os valores finais
            avalor_produtos := avalor_produtos + QryItens.FieldByName('VALOR_TOTAL').AsFloat;
            if QryProdutos.FieldByName('PICMSST_DANFE').AsFloat > 0 then
            begin
              abase_icms := abase_icms + QryItens.FieldByName('VALOR_TOTAL').AsFloat;
              avalor_icms := avalor_icms + AuxValor;
            end;
            adesconto := adesconto + QryItens.FieldByName('VALOR_DESCONTO').AsFloat;
            //
            if not NFCe then
            begin
              if (Copy(QryItens.FieldByName('CST_DANFE').AsString,2,2) = '40') or // 1 - Isento
                 (Copy(QryItens.FieldByName('CST_DANFE').AsString,2,2) = '41') then // 2 - N�o tributado
              begin
                with II do
                begin
                  vBc      := QryItens.FieldByName('VALOR_TOTAL').AsFloat;
                  vDespAdu := 0;
                  vII      := QryItens.FieldByName('VALOR_TOTAL').AsFloat;
                  vIOF     := 0;
                end;
              end;
            end;
          end;
        end;
        QryItens.Next;
      end;
      // informa��es finais da NFe
      Total.ICMSTot.vBC     := abase_icms;
      Total.ICMSTot.vICMS   := avalor_icms;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := avalor_produtos;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := adesconto;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := avalor_produtos - adesconto;
      //
      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNtot.vBC     := 0;
      Total.ISSQNtot.vISS    := 0;
      Total.ISSQNtot.vPIS    := 0;
      Total.ISSQNtot.vCOFINS := 0;
      //
      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vRetPrev   := 0;
      // transportara
      Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE
      if not NFCe then
      begin
        Transp.modFrete := mfContaEmitente; // NFC-e n�o pode ter FRETE
        Transp.Transporta.CNPJCPF := '';
        Transp.Transporta.xNome   := '';
        Transp.Transporta.IE      := '';
        Transp.Transporta.xEnder  := '';
        Transp.Transporta.xMun    := '';
        Transp.Transporta.UF      := '';
{         With Transp.Reboque.Add do
        begin
          placa := '';
          UF    := '';
          RNTC  := '';
        end;
        with Transp.Vol.Add do
        begin
          qVol  := 1;
          esp   := '';
          marca := '';
          nVol  := '';
          pesoL := 0;
          pesoB := 0;
        end;
}
    end;
      if not NFCe then
      begin
        // Cobranca
        Cobr.Fat.nFat  := QryPedidos.FieldByName('ID_CE').AsString;
        Cobr.Fat.vOrig := avalor_produtos - adesconto;
        Cobr.Fat.vDesc := 0;
        Cobr.Fat.vLiq  := avalor_produtos - adesconto;
        with Cobr.Dup.Add do
        begin
          nDup  := QryPedidos.FieldByName('ID_CE').AsString;
          dVenc := Now;
          vDup  := avalor_produtos - adesconto;
        end;
      end
      else
      begin
        with pag.Add do //PAGAMENTOS apenas para NFC-e
        begin
          tPag := fpDinheiro;
          vPag := avalor_produtos - adesconto;
        end;
      end;
      //
      if not NFCe then
      begin
//        with InfAdic.obsCont.Add do
//        begin
//          xCampo := '';
//          xTexto := '';
//        end;
//        with InfAdic.obsFisco.Add do
//        begin
//          xCampo := '';
//          xTexto := '';
//        end;
      end
      else
      begin
        InfAdic.infCpl     :=  '';
        InfAdic.infAdFisco :=  '';
      end;
    end;
  except
  on E : Exception do
    begin
      ShowMessage(E.Message);
      Result := false;
    end;
  end;

end;

procedure GravaArquivoXML(Chave_nfe,Arquivoxml:AnsiString);
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('execute procedure nfe_xml_iu(:Chave,');
    Q.SQL.Add('                             :Data,');
    Q.SQL.Add('                             :Usuario,');
    Q.SQL.Add('                             :Arquivo)');
    Q.Params.ParamByName('Chave').AsString   := Chave_nfe;
    Q.Params.ParamByName('Data').AsDate      := Now;
    Q.Params.ParamByName('Usuario').AsString := ConfiguraNFe.sNomeOperador;
    Q.Params.ParamByName('Arquivo').AsString := Arquivoxml;
    Q.ExecSQL;
  finally
    FreeAndNil(Q);
  end;

end;

procedure GravaChaveNFEPedido(pChaveNFe, pStatus, pProtocol, pRecibo,
  NumLote: String; TipoEmiss,pIDPedido:Integer);
var Query : TSQLQuery;
begin
  Query := TSQLQuery.Create(nil);
  try
    Query.SQLConnection := ConexaoDados;
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('update movimento p set');
    Query.SQL.Add('p.chave = :pChave,');
    Query.SQL.Add('p.status_nfe = :pStatus,');
    Query.SQL.Add('p.protocolo_nfe = :pProtocolo,');
    Query.SQL.Add('p.recibo_nfe = :pRecibo,');
    Query.SQL.Add('p.nfe_tipoemiss = :pTipoEmiss,');
    Query.SQL.Add('p.num_lote = :pnumlote,');
    Query.SQL.Add('p.danfe_data = :pData');
    Query.SQL.Add('where p.id_cupom = :pIDPed');
    Query.Params.ParamByName('pChave').AsString      := pChaveNFe;
    Query.Params.ParamByName('pStatus').AsString     := pStatus;
    Query.Params.ParamByName('pProtocolo').AsString  := pProtocol;
    Query.Params.ParamByName('pRecibo').AsString     := pRecibo;
    Query.Params.ParamByName('pTipoEmiss').AsInteger := TipoEmiss;
    Query.Params.ParamByName('pnumlote').AsString    := NumLote;
    Query.Params.ParamByName('pData').AsDate         := Now;
    Query.Params.ParamByName('pIDPed').AsInteger     := pIDPedido;
    Query.ExecSQL(false);
  finally
    FreeAndNil(Query);
  end;

end;

end.
