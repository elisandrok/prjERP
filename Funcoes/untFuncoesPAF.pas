unit untFuncoesPAF; // Desenvolvida pela Equipe da RoraimaSoft
                 // mas o pioneiro foi o Paulo Rodrigues.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBClient, SqlExpr, Sqlconst, StdCtrls, Clipbrd, DBGrids, DB,
  Commctrl, Math, OleServer, ComObj, DateUtils, StrUtils, FMTBcd, Provider, md5,
  Mask, ShellApi, ExtCtrls;

  function  ConectarBanco(SQLConnection : TSQLConnection; caminho : string; banco : string) : TStringList;
  function  stDecrypt(S : string) : string;
  function  stEncrypt(S : string) : string;
  function  Encrypt(const S : string; Key : Word) : string;
  function  Decrypt(const S : string; Key : Word) : string;

  function  RetornaSenhaMD5(passwd : string) : string;
  function  LogEntry(Cmd, Msg: string; Dig: MD5Digest): string;

  procedure Mensagem(msg : string; tipo : string);
  function  NomeComputador : String;
  procedure MostrarFormulario(Formulario : TForm);
  function  VerificaSeUsuarioPodeLogarPAF(DataSetLocal : TClientDataSet; usuario : string; senha : string) : Boolean;
  function  VerificaSeJaFoiFeitoAberturaDoDia(DataSetLocal : TClientDataSet) : Boolean;
  function  RetornaDadosMicroPAF(DataSet : TClientDataSet) : TStringList;
  function  RestauraAplicativo(NomeAplicativo:String): boolean;

var
  {variavel para controle de exibe��o de mensagens}
  Hwnd : THandle;

implementation

const

  C1                = 1311432746401313687;
  C2                = 1811313413057100154;

function Encrypt(const S : string; Key : Word) : string;
// Fun��o para criptografar strings
var
  I : byte;
begin
  Result := '';
  for I := 1 to Length(S) do
    begin
      Result := Result + IntToHex(byte(char(byte(S[I]) xor (Key shr 8))),2);
      Key := (byte(char(byte(S[I]) xor (Key shr 8))) + Key) * C1 + C2;
    end;
end;

function Decrypt(const S : string; Key : Word) : string;
// Fun��o para descriptografar strings
var
  I : byte;
  x : char;
begin
  Result := '';
  i := 1;
  while (i < Length(S)) do
    begin
      x := char(StrToInt('$' + copy(s, i, 2)));
      Result := Result + char(byte(x) xor (Key shr 8));
      Key := (byte(x)+ Key) * C1 + C2;
      Inc(i, 2);
    end;
end;

function stEncrypt(S : string) : string;
// Fun��o auxiliar para criptografar
begin
  Result := Encrypt(S, 1024);
end;

function stDecrypt(S : string) : string;
// Fun��o auxiliar para descriptograr
begin
  Result := Decrypt(S, 1024);
end;

//**********************************************************************************************************************************
function ConectarBanco(SQLConnection : TSQLConnection; caminho : string; banco : string) : TStringList;
//**********************************************************************************************************************************
// Esta fun��o tem por objetivo conectar a um banco de dados firebird
// Ela recebe como par�metro o sqlconection, o caminho do banco, o usuario e a senha
// Desenvolvida por : Paulo Rodrigues
//              Em  : 19/01/2005
var
  ip_banco : string;
  alias, linha02, usuario, senha, msg : string;
  arq : TextFile;
  StringList : TStringList;
  arqHost, arqConfig : string;
  controle : integer;
begin
  SQLConnection.Connected := False;
  StringList := TStringList.Create;
  StringList.Clear;
  arqHost   := caminho + 'host.cfg';
  arqConfig := caminho + 'setup.cfg';
  controle  := 0;
  if not FileExists(arqHost) then
     controle := controle + 1;
  if not FileExists(arqConfig) then
     controle := controle + 1;
  if controle > 0 then
     begin
       msg := 'Arquivos de configura��o inexistentes.' + chr(10) + 'Comunique imediatamente a RoraimaSoft.';
       Application.MessageBox(PChar(msg), 'Aten��o!', MB_ICONWARNING + MB_OK);
       Result := StringList;
     end
  else
     begin
        if banco <> '' then
          begin
            AssignFile(arq,arqHost);
            Reset(arq);
            while not Eof(arq) do
              begin
               ReadLn(arq,alias);
               if Pos('[',alias) > 0 then
                  alias := copy(alias,Pos('[',alias)+1,length(alias));
               if Pos(']',alias) > 0 then
                  alias := copy(alias,1,Pos(']',alias)-1);
               if alias = banco then
                 begin
                   ReadLn(arq,ip_banco);
                   break;
                 end
               else
                 ReadLn(arq,ip_banco);
              end;
            CloseFile(arq);
          end;

        if banco = '' then
         begin
            AssignFile(arq,arqHost);
            Reset(arq);
            ReadLn(arq,alias);
            if Pos('[',alias) > 0 then
               alias := copy(alias,Pos('[',alias)+1,length(alias));
            if Pos(']',alias) > 0 then
               alias := copy(alias,1,Pos(']',alias)-1);
            banco := alias;
            ReadLn(arq,ip_banco);
            CloseFile(arq);
        end;
        AssignFile(arq, arqConfig);
        Reset(arq);
        while not Eof (arq) do
          begin
            ReadLn(arq,alias);            // LI O ALIAS
            ReadLn(arq,linha02);          // sem utiliza��o por enquanto
            ReadLn(arq,usuario);          // LI O USU�RIO
            ReadLn(arq,senha);            // LI A SENHA
            linha02 := alias;

            alias := stDecrypt(alias);
            alias := copy(alias,1,Pos('#',alias)-1);
            if alias = banco then
               begin
                  alias := linha02;
                  break;
               end;
          end;
        CloseFile(arq);
        SQLConnection.Params.Values[DATABASENAME_KEY] := ip_banco;
        SQLConnection.Params.Values[szUSERNAME]       := stDecrypt(usuario);
        SQLConnection.Params.Values[szPASSWORD]       := stDecrypt(senha);
        SQLConnection.Connected := True;

        StringList.Add(alias);
        StringList.Add(stDecrypt(usuario));
        StringList.Add(stDecrypt(senha));

        Result := StringList;
     end;
end;

function LogEntry(Cmd, Msg: string; Dig: MD5Digest): string;
begin
	Result := Format('%s(''%s'') =' + #13#10 + '   %s', [Cmd, Msg, MD5Print(Dig)]);
  Result := Trim( copy(Result, Pos('=',Result)+1, Length(Result)) );
  Result := copy(Result,1,32);
end;

function NomeComputador : String;
var
 lpBuffer : PChar;
 nSize : DWord;
const
 Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;

function RetornaSenhaMD5(passwd : string) : string;
begin
  Result := LogEntry('MD5String', passwd, MD5String(passwd));
end;

procedure MostrarFormulario(Formulario : TForm);
begin
  if Screen.DesktopWidth <> 800 then
    begin
      Formulario.Position := poMainFormCenter;
    end;

  if Screen.DesktopWidth = 800 then
    begin
      if Formulario.Width + 2 <> 800 then
         Formulario.Position := poMainFormCenter
      else
       begin
         Formulario.Position  := poDesigned;
         Formulario.Left      := 0;
         Formulario.Top       := 0
       end;
    end;
end;

procedure Mensagem(msg : string; tipo : string);
//******************************************************************************
// Esta fun��o mostra a mensagem usando o Application.Messsagebox
// Desenvolvida por: Paulo Rodrigues
var
  usuario : string;
begin
  usuario := ParamStr(2) + ',';
  if Trim(usuario) <> ',' then
     msg := usuario + #13+#13 + msg;

   if tipo = 'ATENCAO' then
      Application.MessageBox(PChar(msg),'Aten��o!', MB_ICONWARNING + MB_OK);

   if tipo = 'INFORMACAO' then
      Application.MessageBox(PChar(msg),'Informa��o!', MB_ICONINFORMATION + MB_OK);

   if tipo = 'ERRO' then
      Application.MessageBox(PChar(msg),'Erro!', MB_ICONERROR + MB_OK);

end;


function VerificaSeUsuarioPodeLogarPAF(DataSetLocal : TClientDataSet; usuario : string; senha : string) : Boolean;
begin
  with DataSetLocal do
    begin
      Close;
      CommandText := 'SELECT NOME, SENHA, UPPER(LOGA_NO_PAF) AS LOGA_NO_PAF FROM PAF_USUARIOS WHERE NOME LIKE :VNME AND SENHA LIKE :VSNH';
      Params.ParamByName('VNME').AsString := usuario;
      Params.ParamByName('VSNH').AsString := senha;
      Open;
      if FieldByName('LOGA_NO_PAF').AsString = 'TRUE' then
        begin
          Result := True;
        end
      else
        begin
          Result := False;
        end;
    end;
end;


function VerificaSeJaFoiFeitoAberturaDoDia(DataSetLocal : TClientDataSet) : Boolean;
begin
  Result := false;

  with DataSetLocal do
    begin
      Close;
      CommandText := 'SELECT COD_OBJ FROM PDV_PRINCIPAL WHERE DATA_MOVIMENTO = CURRENT_DATE';
      Open;
      if not IsEmpty then
        begin
          Result := True;
        end;
      close;
    end;
end;

function VerificaSeExisteCaixaAberto(DataSetLocal : TClientDataSet) : Boolean;
begin
  with DataSetLocal do
    begin
      Close;
      CommandText := 'SELECT P.TURNO, P.DATA, U.NOME FROM PDV_PRINCIPAL P, PDV_USUARIOS U'+
                     ' WHERE P.PDV_FUNCIONARIOS_CODIGO = U.COD_FUNC                      '+
                     ' AND   P.STATUS  = :VSTS                                           ';
      Params.ParamByName('VSTS').AsString  := 'ABERTO';
      Open;
      if (FieldByName('TURNO').AsString) = '' then // n�o existe caixa aberto
        begin
          Result := false;
        end
      else
        begin
          Result := true; // existe caixa aberto
        end;

      close;
    end;
end;


function RetornaDadosMicroPAF(DataSet : TClientDataSet) : TStringList;
var
  retorno : TStringList;
begin
  retorno := TStringList.Create;

  with DataSet do
    begin
      Close;
      CommandText := 'SELECT TIPO_PAF, RECEBE_EM_DUPLICATA, RECEBE_EM_CHEQUE, RECEBE_EM_CARTAO_CREDITO, RECEBE_EM_CONVENIO'+
                     ' FROM  PAF_MICROS_EMISSOR'+
                     ' WHERE NOME =  :VMIC                                                                                      ';
      Params.ParamByName('VMIC').AsString := NomeComputador;
      Open;
      retorno.Add(FieldByName('TIPO_PAF').AsString);                        // 0
      retorno.Add(FieldByName('RECEBE_EM_DUPLICATA').AsString);
      retorno.Add(FieldByName('RECEBE_EM_CHEQUE').AsString);
      retorno.Add(FieldByName('RECEBE_EM_CARTAO_CREDITO').AsString);
      retorno.Add(FieldByName('RECEBE_EM_CONVENIO').AsString);
      retorno.Add(FieldByName('CODIGO').AsString);
      Result := retorno;
      Close;
    end;
end;


function RestauraAplicativo(NomeAplicativo:String): boolean;
begin
  Result := true;
  try
    // procura aplica��o em execu��o
    Hwnd := FindWindow('TApplication', pChar(NomeAplicativo));
    // Se aplica��o estiver em uso executa
    if Hwnd <> 0 then
    begin
      SetForegroundWindow(Hwnd);
      Application.Restore;
    end;
  except
    Result := false;
  end;

end;

end.

