unit uFuncoesSoftPlus;

interface

uses   StdCtrls,   SysUtils,   ExtCtrls,   Forms,   Windows,   Graphics,   Controls,   Math;

type
  TFuncoes = class
  public
    class procedure AjustaCasasDecimais(Edit: TEdit; Decimais: Integer; Entrada: Boolean);
    class procedure EventoOnEnter2Casas(Sender: TObject);
    class procedure EventoOnExit2Casas(Sender: TObject);
    class procedure EventoOnEnter3Casas(Sender: TObject);
    class procedure EventoOnExit3Casas(Sender: TObject);
    class procedure EventoOnKeyPress(Sender: TObject; var Key: Char);
    class procedure Edit_SetaFormatacao(Edit: TEdit; NroCasas: Integer);
    class procedure Edit_ApenasNumeros(Edit: TEdit);
  end;

type
  TBicos = Array of Integer;

var
	TimerExecutando : Boolean;
  BicosGlobal : TBicos;
  PegaBicos : Boolean;

function RetornaArquivoAbastecVWT : TFileName;
function IntToStrZero(Num : Integer) : String;
function StrZero(Numero: Real; Total: integer; Decimal: integer = 0): string;
function FormatFloatByDecimal(const AFloat : Extended; const ADecimalCount : Integer) : String;
function RemovePontoEVirgula(Texto: String) : String;
function AdicionaZerosEsquerda(Texto: String; Total : Integer): String;
function SalvaArquivoAbastecimentos(DadosAbastecimentos : String) : Boolean;
function RetornaBicos(const SomenteBombaEletronica: Boolean = False): TBicos;
function DifHora(Inicio,Fim : TDateTime): String;
function Spaces(Quantos: integer): string;
procedure CriaMensAguarde(const Mens : String);
procedure FechaMensAguarde;

function InicializaCom(PortaCom: Integer; Host_IP: PAnsiChar; PortaIP: Integer): Integer; stdcall; external 'ControlTech32.dll';
function FinalizaCom: Integer; stdcall; external 'ControlTech32.dll';
function StatusCom: Integer; stdcall; external 'ControlTech32.dll';
function SetId(nNewId : Integer): Integer; stdcall; external 'ControlTech32.dll';
function SetConfig(nSlot: Integer; nCanal:Integer; lados:Integer; Configuracao:PChar): Integer; stdcall; external 'ControlTech32.dll';
function GetStatusBico(nBico:Integer; Status: PChar): Integer; stdcall; external 'ControlTech32.dll';
function GetAbastecimento(Abastecimento : PChar): Integer; stdcall; external 'ControlTech32.dll';
function ApagaAbastecimento(nIdAbast: Integer): Integer; stdcall; external 'ControlTech32.dll';
function GetDisplay(nBico: Integer; DadosDisplay: PChar): Integer; stdcall; external 'ControlTech32.dll';
function RamDownLoad(nPosMem: Integer; Abastecimento: PChar): Integer; stdcall; external 'ControlTech32.dll';
function GetEncerrantes(nBico: Integer; DadosEncerrante: PChar): Integer; stdcall; external 'ControlTech32.dll';
function AlteraPreco(nBico: Integer; sPreco: PAnsiChar): Integer; stdcall; external 'ControlTech32.dll';
function SetRelogio(DataHora: PChar): Integer; stdcall; external 'ControlTech32.dll';
function GetRelogio(DataHora: PChar): Integer; stdcall; external 'ControlTech32.dll';
function PresetValor(nBico: Integer; fValor: PChar): Integer; stdcall; external 'ControlTech32.dll';
function PresetLitros(nBico: Integer; fLitros: PChar): Integer; stdcall; external 'ControlTech32.dll';
function GetConfig(nSlot: Integer; nCanal: Integer; DadosCanal: PChar): Integer; stdcall; external 'ControlTech32.dll';
function GetTensoes(Tensoes: PChar): Integer; stdcall; external 'ControlTech32.dll';
function BrilhoDisplay(nNewNivel: Integer): Integer; stdcall; external 'ControlTech32.dll';
function AutorizaAbastecimento(nBico: Integer): Integer; stdcall; external 'ControlTech32.dll';
function CancelaAutorizacao(nBico: Integer): Integer; stdcall; external 'ControlTech32.dll';
function GetFator(nBico: Integer; sFator: PChar): Integer; stdcall; external 'ControlTech32.dll';
function SetFator(nBico: Integer; sFator: PChar): Integer; stdcall; external 'ControlTech32.dll';
function UpLoadBios(Arquivo: PChar): Integer; stdcall; external 'ControlTech32.dll';
function SetLog(Active: Integer): Integer; stdcall; external 'ControlTech32.dll';
function CommBusy : Integer; stdcall; external 'ControlTech32.dll';
function GetGasId(Arquivo: char; Operacao: char; DadosIn: PChar; DadosOut: PChar): Integer;  stdcall; external 'ControlTech32.dll';

implementation

uses ufrmmensagem;

procedure CriaMensAguarde(const Mens : String);
begin
	TFrmMensagem.CriaMensAguarde(Mens);
end;

procedure FechaMensAguarde;
begin
  TFrmMensagem.FechaMensAguarde;
end;

function RetornaArquivoAbastecVWT : TFileName;
begin
  Result := ExtractFilePath(ParamStr(0)) + 'Abastec.vwt';
end;

function RetornaBicos(const SomenteBombaEletronica: Boolean = False): TBicos;
var
	Slot, Canal, Bicos : Integer;
  DadosConfig: array[0..24] of Char;
  NroDoBico : String;
  NroRegistros : Integer;
begin
	{Retorna os bicos configurados no m�dulo,
   s� le os bicos a primeira vez ou se mudou a configura��o.
   Isso � feito com a vari�vel PegaBicos que � setada para true
   ao iniciar o sistema e tamb�m ao enviar configura��o}
	if PegaBicos then
  begin
    NroRegistros := 0;
    for Slot := 1 to 6 do
    begin
      for Canal := 1 to 4 do
      begin
        if GetConfig(Slot, Canal, DadosConfig) = 0 then
        begin
          if SomenteBombaEletronica and (DadosConfig[3] = 'U') then
            Continue;
          for Bicos := 1 to 8 do
          begin
            case Bicos of
              1: NroDoBico := (DadosConfig[7] + DadosConfig[8]);
              2: NroDoBico := (DadosConfig[9] + DadosConfig[10]);
              3: NroDoBico := (DadosConfig[11] + DadosConfig[12]);
              4: NroDoBico := (DadosConfig[13] + DadosConfig[14]);
              5: NroDoBico := (DadosConfig[16] + DadosConfig[17]);
              6: NroDoBico := (DadosConfig[18] + DadosConfig[19]);
              7: NroDoBico := (DadosConfig[20] + DadosConfig[21]);
              8: NroDoBico := (DadosConfig[22] + DadosConfig[23]);
            end;
            if NroDoBico <> '00' then
            begin
              SetLength(Result,Length(Result) + 1);
              Result[NroRegistros] := StrToInt(NroDoBico);
              Inc(NroRegistros);
            end;
          end;
        end;
      end;
    end;
    PegaBicos := false;
    BicosGlobal := Result;
  end else
  	Result := BicosGlobal;
end;

function DifHora(Inicio,Fim : TDateTime): String;
begin
	if (Inicio > Fim) then
    Result := TimeToStr((StrTotime('23:59:59') + StrToTime('00:00:01') - Inicio)+ Fim)
	else
  	Result := TimeToStr(Fim - Inicio);
end;

function Spaces(Quantos: integer): String;
var
  TempStr: string;
begin
  TempStr := '';
  while length(TempStr) < Quantos do
    Insert(' ', TempStr, 1);
  Spaces := TempStr;
end;

function SalvaArquivoAbastecimentos(DadosAbastecimentos : String): Boolean;
  function WriteAbas(cStr: string): Boolean;
  var
    nHandle: integer;
  begin
    Result := false;
    if FileExists(RetornaArquivoAbastecVWT) then
      nHandle := FileOpen(RetornaArquivoAbastecVWT, fmOpenReadWrite)
    else
      nHandle := FileCreate(RetornaArquivoAbastecVWT);

    if nHandle >= 0 then
    begin
      FileSeek(nHandle, 0, 2);
      cStr := cStr + #13 + #10;
      Result := (FileWrite(nHandle, cStr[1], Length(cStr)) > 0);
      FileClose(nHandle);
    end;
  end;
var
  cStr: string;
  Bico,DataHora,Preco,Litros,Valor,Encerrante,ID,PosMem : String;
begin
  Result := false;

  PosMem := Copy(DadosAbastecimentos,2,4);
  ID := Copy(DadosAbastecimentos, 7,4);
  Bico := Copy(DadosAbastecimentos, 11,2);
  DataHora := Copy(DadosAbastecimentos, 19, 2) + '/' +
  					  Copy(DadosAbastecimentos, 21, 2) + '/' +
              Copy(DadosAbastecimentos, 23, 2) + ' ' +
              Copy(DadosAbastecimentos, 13, 2) + ':' +
              Copy(DadosAbastecimentos, 15, 2) + ':' +
              Copy(DadosAbastecimentos, 17, 2);
  DataHora := FormatDateTime('ddmmyyyyhhnnss', StrToDateTime(DataHora));
  Preco := Copy(DadosAbastecimentos, 27, 4);
  Litros := Copy(DadosAbastecimentos, 31, 8);
  Valor := Copy(DadosAbastecimentos, 39, 8);
  Encerrante := Copy(DadosAbastecimentos, 47, 8);
                               
  cStr := Bico +
    			'0000000000' +   //Pulsos
    			DataHora +
          '00' + Preco + //Preco vem com 4, por�m s�o 6 caracteres no layout
          Litros + Valor + Encerrante +
    			'000000' + //Cliente
    			'000' +    //Operador
          ID +
          PosMem;

  Result := WriteAbas(cStr);
end;

function IntToStrZero(Num : Integer) : String;
begin
	if Num < 10 then
  	Result := '0' + IntToStr(Num)
  else
  	Result := IntToStr(Num);
end;

function StrZero;
var
	TempStr: string;
  x: Integer;
begin
	Str(Numero:0:Decimal,TempStr);
 	while length(TempStr) < Total do
  	Insert('0',TempStr,1);
 	x := Pos('-',TempStr);
 	if x > 0 then
  	TempStr := Copy(TempStr, x, Length(TempStr));
 	StrZero:= Trim(TempStr);
end;

function FormatFloatByDecimal(const AFloat : Extended; const ADecimalCount : Integer) : String;
begin
  Result := FormatFloat(',0.' + StrZero(0, ADecimalCount), AFloat / Power(10, ADecimalCount));
end;

function RemovePontoEVirgula;
begin
	Result := StringReplace(Texto,',','',[rfReplaceAll]);
  Result := StringReplace(Result,'.','',[rfReplaceAll]);
end;

function AdicionaZerosEsquerda;
begin
  Texto := RemovePontoEVirgula(Texto);
  while Length(Texto) < Total do
  	Insert('0', Texto, 1);
  Result := Trim(Texto);
end;

class procedure TFuncoes.AjustaCasasDecimais(Edit: TEdit; Decimais: Integer; Entrada: Boolean);
var
  DivCasas: Integer;
  FormatString: string;
begin
  if Edit.Text <> '' then
  begin
    case Decimais of
      2:
        begin
          DivCasas := 100;
          FormatString := ',0.00';
        end;
      3:
        begin
          DivCasas := 1000;
          FormatString := ',0.000';
        end;
    end;

    if Entrada then
      Edit.Text := FloatToStr(StrToFloat(StringReplace(Edit.Text, '.', '', [rfReplaceAll])) * DivCasas)
    else
      Edit.Text := FormatFloat(FormatString, (StrToFloat(Edit.Text) / DivCasas));
  end;
end;

class procedure TFuncoes.EventoOnKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) and (Key <> #8 {Backspace}) then
    Key := #0;
  inherited;
end;

class procedure TFuncoes.EventoOnEnter2Casas(Sender: TObject);
var
  pEdit: TEdit;
begin
  pEdit := Sender as TEdit;
  AjustaCasasDecimais(pEdit, 2, True);
  inherited;
end;

class procedure TFuncoes.EventoOnExit2Casas(Sender: TObject);
var
  pEdit: TEdit;
begin
  pEdit := Sender as TEdit;
  AjustaCasasDecimais(pEdit, 2, False);
  inherited;
end;

class procedure TFuncoes.EventoOnEnter3Casas(Sender: TObject);
var
  pEdit: TEdit;
begin
  pEdit := Sender as TEdit;
  AjustaCasasDecimais(pEdit, 3, True);
  inherited;
end;

class procedure TFuncoes.EventoOnExit3Casas(Sender: TObject);
var
  pEdit: TEdit;
begin
  pEdit := Sender as TEdit;
  AjustaCasasDecimais(pEdit, 3, False);
  inherited;
end;

class procedure TFuncoes.Edit_ApenasNumeros(Edit: TEdit);
begin
  Edit.OnKeyPress := EventoOnKeyPress;
end;

class procedure TFuncoes.Edit_SetaFormatacao(Edit: TEdit; NroCasas: Integer);
begin
  case NroCasas of
    2:
      begin
        Edit.OnEnter := EventoOnEnter2Casas;
        Edit.OnExit := EventoOnExit2Casas;
      end;
    3:
      begin
        Edit.OnEnter := EventoOnEnter3Casas;
        Edit.OnExit := EventoOnExit3Casas;
      end;
  end;
  Edit.OnKeyPress := EventoOnKeyPress;
end;

end.

