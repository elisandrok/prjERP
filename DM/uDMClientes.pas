unit uDMClientes;

interface

uses
  SysUtils, Classes, DB, FMTBcd, DBClient, Provider, Windows, Messages,
  Variants, Graphics, Controls, Forms, ExtCtrls, ComCtrls, ImgList, Dialogs,
  Menus, uFuncoesPAFECF, uDmAcBr, ACBrDevice, pcnConversao, IniFiles,
  ACBrPAFClass, StdCtrls, ActnList, jpeg, OleCtrls, SHDocVw, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmClientes = class(TDataModule)
    QryContatos: TFDQuery;
    QryContatosID: TIntegerField;
    QryContatosNOME: TStringField;
    QryContatosENDERECO: TStringField;
    QryContatosNUM_END: TStringField;
    QryContatosBAIRRO_END: TStringField;
    QryContatosCIDADE_END: TStringField;
    QryContatosCEP_END: TStringField;
    QryContatosTELEFONE: TStringField;
    QryContatosTELEFAX: TStringField;
    QryContatosCELULAR: TStringField;
    QryContatosCNPJ_CPF: TStringField;
    QryContatosINSC_RG: TStringField;
    QryContatosEND_ENTREGA: TStringField;
    QryContatosNUM_END_ENTREGA: TStringField;
    QryContatosBAIRRO_END_ENTREGA: TStringField;
    QryContatosCID_END_ENTREGA: TStringField;
    QryContatosCEP_END_ENTREGA: TStringField;
    QryContatosLOCAL_TRAB: TStringField;
    QryContatosEND_LOCAL_TRAB: TStringField;
    QryContatosTELEFONE_TRAB: TStringField;
    QryContatosFILIACAO_PAI: TStringField;
    QryContatosFILIACAO_MAE: TStringField;
    QryContatosDATA_CAD: TSQLTimeStampField;
    QryContatosDATA_NASC: TSQLTimeStampField;
    QryContatosLIMITE_CRED: TFloatField;
    QryContatosCONTATO: TStringField;
    QryContatosTIPO_CONTATO: TStringField;
    QryContatosATIVO: TStringField;
    QryContatosCOMPLEMENTO: TStringField;
    QryContatosCOMPL_ENT: TStringField;
    QryContatosUF_END: TStringField;
    QryContatosUF_END_ENT: TStringField;
    QryContatosSITE: TStringField;
    QryContatosEMAIL: TStringField;
    QryContatosCODCIDADE: TStringField;
    QryContatosSINCRONIZADO: TStringField;
    DspContatos: TDataSetProvider;
    CdsContatos: TClientDataSet;
    CdsContatosID: TIntegerField;
    CdsContatosNOME: TStringField;
    CdsContatosENDERECO: TStringField;
    CdsContatosNUM_END: TStringField;
    CdsContatosBAIRRO_END: TStringField;
    CdsContatosCIDADE_END: TStringField;
    CdsContatosCEP_END: TStringField;
    CdsContatosTELEFONE: TStringField;
    CdsContatosTELEFAX: TStringField;
    CdsContatosCELULAR: TStringField;
    CdsContatosCNPJ_CPF: TStringField;
    CdsContatosINSC_RG: TStringField;
    CdsContatosEND_ENTREGA: TStringField;
    CdsContatosNUM_END_ENTREGA: TStringField;
    CdsContatosBAIRRO_END_ENTREGA: TStringField;
    CdsContatosCID_END_ENTREGA: TStringField;
    CdsContatosCEP_END_ENTREGA: TStringField;
    CdsContatosLOCAL_TRAB: TStringField;
    CdsContatosEND_LOCAL_TRAB: TStringField;
    CdsContatosTELEFONE_TRAB: TStringField;
    CdsContatosFILIACAO_PAI: TStringField;
    CdsContatosFILIACAO_MAE: TStringField;
    CdsContatosDATA_CAD: TSQLTimeStampField;
    CdsContatosDATA_NASC: TSQLTimeStampField;
    CdsContatosLIMITE_CRED: TFloatField;
    CdsContatosCONTATO: TStringField;
    CdsContatosTIPO_CONTATO: TStringField;
    CdsContatosATIVO: TStringField;
    CdsContatosCOMPLEMENTO: TStringField;
    CdsContatosCOMPL_ENT: TStringField;
    CdsContatosUF_END: TStringField;
    CdsContatosUF_END_ENT: TStringField;
    CdsContatosSITE: TStringField;
    CdsContatosEMAIL: TStringField;
    CdsContatosCODCIDADE: TStringField;
    CdsContatosSINCRONIZADO: TStringField;
    QryContatoAux: TFDQuery;
    QryContatoAuxID: TIntegerField;
    QryContatoAuxNOME: TStringField;
    DspContatoAux: TDataSetProvider;
    CdsContatoAux: TClientDataSet;
    CdsContatoAuxID: TIntegerField;
    CdsContatoAuxNOME: TStringField;
    QryEndereco: TFDQuery;
    QryEnderecoID: TIntegerField;
    QryEnderecoENDERECO: TStringField;
    QryEnderecoBAIRRO: TStringField;
    QryEnderecoCIDADE: TStringField;
    QryEnderecoUF: TStringField;
    QryEnderecoCEP: TStringField;
    QryUF: TFDQuery;
    QryUFCODIGO: TStringField;
    QryUFUF: TStringField;
    QryUFDESCRICAO: TStringField;
    QryUFDATA_INICIO: TDateField;
    DspEndereco: TDataSetProvider;
    DspUF: TDataSetProvider;
    CdsUF: TClientDataSet;
    CdsUFCODIGO: TStringField;
    CdsUFUF: TStringField;
    CdsUFDESCRICAO: TStringField;
    CdsUFDATA_INICIO: TDateField;
    CdsEndereco: TClientDataSet;
    CdsEnderecoID: TIntegerField;
    CdsEnderecoENDERECO: TStringField;
    CdsEnderecoBAIRRO: TStringField;
    CdsEnderecoCIDADE: TStringField;
    CdsEnderecoUF: TStringField;
    CdsEnderecoCEP: TStringField;
    QryContatosAdc: TFDQuery;
    QryContatosAdcID: TIntegerField;
    QryContatosAdcID_CONTATO: TIntegerField;
    QryContatosAdcNOME: TStringField;
    QryContatosAdcTELEFONE: TStringField;
    QryContatosAdcRAMAL: TStringField;
    QryContatosAdcEMAIL1: TStringField;
    QryContatosAdcEMAIL2: TStringField;
    QryContatosAdcSITE: TStringField;
    DspContatosADC: TDataSetProvider;
    CdsContatosADC: TClientDataSet;
    CdsContatosADCID: TIntegerField;
    CdsContatosADCID_CONTATO: TIntegerField;
    CdsContatosADCNOME: TStringField;
    CdsContatosADCTELEFONE: TStringField;
    CdsContatosADCRAMAL: TStringField;
    CdsContatosADCEMAIL1: TStringField;
    CdsContatosADCEMAIL2: TStringField;
    CdsContatosADCSITE: TStringField;
    CdsClienteAux: TClientDataSet;
    CdsClienteAuxID: TStringField;
    CdsClienteAuxDESCRICAO: TStringField;
    CdsClienteAuxCNPJCPF: TStringField;
    QryTipoEnd: TFDQuery;
    QryTipoEndID: TIntegerField;
    QryTipoEndDESCRICAO: TStringField;
    QryTipoEndSIGLA: TStringField;
    DspTipoEnd: TDataSetProvider;
    CdsTipoEnd: TClientDataSet;
    CdsTipoEndID: TIntegerField;
    CdsTipoEndDESCRICAO: TStringField;
    CdsTipoEndSIGLA: TStringField;
    QryCliForAux: TFDQuery;
    QryCliForAuxID: TIntegerField;
    QryCliForAuxNOME: TStringField;
    DspCliForAux: TDataSetProvider;
    CdsCliForAux: TClientDataSet;
    CdsCliForAuxID: TIntegerField;
    CdsCliForAuxNOME: TStringField;
    QryCodCidade: TFDQuery;
    QryCodCidadeCOD_UF: TStringField;
    QryCodCidadeCOD_MUNICIPIO: TStringField;
    QryCodCidadeUF: TStringField;
    QryCodCidadeMUNICIPIO: TStringField;
    QryCodCidadeUF_SIGLA: TStringField;
    DspCodCidade: TDataSetProvider;
    CdsCodCidade: TClientDataSet;
    CdsCodCidadeCOD_UF: TStringField;
    CdsCodCidadeCOD_MUNICIPIO: TStringField;
    CdsCodCidadeUF: TStringField;
    CdsCodCidadeMUNICIPIO: TStringField;
    CdsCodCidadeUF_SIGLA: TStringField;
    QryFuncionarios: TFDQuery;
    QryFuncionariosID: TIntegerField;
    QryFuncionariosNOME: TStringField;
    QryFuncionariosENDERECO: TStringField;
    QryFuncionariosNUMERO: TStringField;
    QryFuncionariosBAIRRO: TStringField;
    QryFuncionariosCIDADE: TStringField;
    QryFuncionariosCEP: TStringField;
    QryFuncionariosUF: TStringField;
    QryFuncionariosTELEFONE: TStringField;
    QryFuncionariosTELEFAX: TStringField;
    QryFuncionariosCELULAR: TStringField;
    QryFuncionariosCNPJ_CPF: TStringField;
    QryFuncionariosINSC_RG: TStringField;
    QryFuncionariosFILIACAO_PAI: TStringField;
    QryFuncionariosFILIACAO_MAE: TStringField;
    QryFuncionariosDATA_NASC: TSQLTimeStampField;
    QryFuncionariosDATA_ADMISSAO: TSQLTimeStampField;
    QryFuncionariosDATA_DEMISSAO: TSQLTimeStampField;
    QryFuncionariosSALARIO: TFloatField;
    QryFuncionariosCOMISSAO: TStringField;
    QryFuncionariosPERC_COMISSAO: TFloatField;
    QryFuncionariosATIVO: TStringField;
    QryFuncionariosEMAIL: TStringField;
    QryFuncionariosTIPO: TIntegerField;
    QryFuncionariosTIPO_COM: TIntegerField;
    QryFuncionariosSINCRONIZADO: TStringField;
    DspFuncionarios: TDataSetProvider;
    CdsFuncionarios: TClientDataSet;
    CdsFuncionariosID: TIntegerField;
    CdsFuncionariosNOME: TStringField;
    CdsFuncionariosENDERECO: TStringField;
    CdsFuncionariosNUMERO: TStringField;
    CdsFuncionariosBAIRRO: TStringField;
    CdsFuncionariosCIDADE: TStringField;
    CdsFuncionariosCEP: TStringField;
    CdsFuncionariosUF: TStringField;
    CdsFuncionariosTELEFONE: TStringField;
    CdsFuncionariosTELEFAX: TStringField;
    CdsFuncionariosCELULAR: TStringField;
    CdsFuncionariosCNPJ_CPF: TStringField;
    CdsFuncionariosINSC_RG: TStringField;
    CdsFuncionariosFILIACAO_PAI: TStringField;
    CdsFuncionariosFILIACAO_MAE: TStringField;
    CdsFuncionariosDATA_NASC: TSQLTimeStampField;
    CdsFuncionariosDATA_ADMISSAO: TSQLTimeStampField;
    CdsFuncionariosDATA_DEMISSAO: TSQLTimeStampField;
    CdsFuncionariosSALARIO: TFloatField;
    CdsFuncionariosCOMISSAO: TStringField;
    CdsFuncionariosPERC_COMISSAO: TFloatField;
    CdsFuncionariosATIVO: TStringField;
    CdsFuncionariosEMAIL: TStringField;
    CdsFuncionariosTIPO: TIntegerField;
    CdsFuncionariosTIPO_COM: TIntegerField;
    CdsFuncionariosSINCRONIZADO: TStringField;
    CdsFuncionariosAux: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    SQLTimeStampField7: TSQLTimeStampField;
    SQLTimeStampField8: TSQLTimeStampField;
    SQLTimeStampField9: TSQLTimeStampField;
    FloatField5: TFloatField;
    StringField20: TStringField;
    FloatField6: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField23: TStringField;
    QryUsuarios: TFDQuery;
    QryUsuariosID: TIntegerField;
    QryUsuariosUSUARIO: TStringField;
    QryUsuariosSENHA: TStringField;
    QryUsuariosATIVO: TStringField;
    QryUsuariosTIPO_USUARIO: TIntegerField;
    QryUsuariosNOME_USUAIO: TStringField;
    QryUsuariosID_PERFIL: TIntegerField;
    QryUsuariosNUM_CHAVE: TIntegerField;
    QryUsuariosID_FUNC: TIntegerField;
    QryUsuariosFUNCAO: TStringField;
    DspUsuarios: TDataSetProvider;
    CdsUsuarios: TClientDataSet;
    CdsUsuariosID: TIntegerField;
    CdsUsuariosUSUARIO: TStringField;
    CdsUsuariosSENHA: TStringField;
    CdsUsuariosATIVO: TStringField;
    CdsUsuariosTIPO_USUARIO: TIntegerField;
    CdsUsuariosNOME_USUAIO: TStringField;
    CdsUsuariosID_PERFIL: TIntegerField;
    CdsUsuariosNUM_CHAVE: TIntegerField;
    CdsUsuariosID_FUNC: TIntegerField;
    CdsUsuariosFUNCAO: TStringField;
    QryUsuariosPerfil: TFDQuery;
    QryUsuariosPerfilID: TIntegerField;
    QryUsuariosPerfilDESCRICAO: TStringField;
    QryUsuariosPerfilATIVO: TStringField;
    QryUsuariosPermissoes: TFDQuery;
    QryUsuariosPermissoesID: TIntegerField;
    QryUsuariosPermissoesID_PERFIL: TIntegerField;
    QryUsuariosPermissoesPERMITE: TStringField;
    QryUsuariosPermissoesMENUITEM: TStringField;
    QryUsuariosPermissoesDESCRICAO: TStringField;
    QryUsuariosPermissoesNOME_APP: TStringField;
    DspUsuariosPerrfil: TDataSetProvider;
    CdsUsuariosPerfil: TClientDataSet;
    CdsUsuariosPerfilID: TIntegerField;
    CdsUsuariosPerfilDESCRICAO: TStringField;
    CdsUsuariosPerfilATIVO: TStringField;
    DspUsuariosPermissoes: TDataSetProvider;
    CdsUsuariosPermissoes: TClientDataSet;
    CdsUsuariosPermissoesID: TIntegerField;
    CdsUsuariosPermissoesID_PERFIL: TIntegerField;
    CdsUsuariosPermissoesPERMITE: TStringField;
    CdsUsuariosPermissoesMENUITEM: TStringField;
    CdsUsuariosPermissoesDESCRICAO: TStringField;
    CdsUsuariosPermissoesNOME_APP: TStringField;
    QryUsuariosItens: TFDQuery;
    QryUsuariosItensID: TIntegerField;
    QryUsuariosItensDESCRICAO: TStringField;
    QryUsuariosItensNOME: TStringField;
    QryUsuariosItensNOME_APP: TStringField;
    QryUsuariosItensNIVEL: TIntegerField;
    DspUsuariosItens: TDataSetProvider;
    CdsUsuariosItens: TClientDataSet;
    CdsUsuariosItensID: TIntegerField;
    CdsUsuariosItensDESCRICAO: TStringField;
    CdsUsuariosItensNOME: TStringField;
    CdsUsuariosItensNOME_APP: TStringField;
    CdsUsuariosItensNIVEL: TIntegerField;
    QryFuncionariosOBSERVACOES: TStringField;
    CdsFuncionariosOBSERVACOES: TStringField;
    CdsFuncionariosAuxOBSERVACOES: TStringField;
    QryContatosOBSERVACOES: TBlobField;
    CdsContatosOBSERVACOES: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CdsContatosNewRecord(DataSet: TDataSet);
    procedure DspContatosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsContatosBeforePost(DataSet: TDataSet);
    procedure CdsContatosADCNewRecord(DataSet: TDataSet);
    procedure DspContatosADCGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspContatoAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure CdsEnderecoNewRecord(DataSet: TDataSet);
    procedure DspEnderecoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DspUFGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DspFuncionariosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsFuncionariosNewRecord(DataSet: TDataSet);
    procedure CdsUsuariosPerfilNewRecord(DataSet: TDataSet);
    procedure CdsUsuariosNewRecord(DataSet: TDataSet);
    procedure CdsUsuariosPermissoesNewRecord(DataSet: TDataSet);
    procedure DspUsuariosPerrfilGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspUsuariosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspUsuariosItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure DspUsuariosPermissoesGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
    procedure CdsFuncionariosBeforePost(DataSet: TDataSet);
    procedure CdsUsuariosBeforePost(DataSet: TDataSet);
    procedure CdsUsuariosItensNewRecord(DataSet: TDataSet);
    procedure DspCodCidadeGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
  private
    { Private declarations }
    procedure FormataCampos;
  public
    { Public declarations }
    function Dados_Contato(fID: Integer): Boolean; overload;
    function Dados_Contato(fTipoContato: String): Boolean; overload;
    function Dados_ContatoCNPJ(CNPJ: String): Boolean;
    function Dados_ContatoADC(fID: Integer): Boolean;
    function Dados_ContatoAux: Boolean;
    function Dados_UF: Boolean;
    procedure Grava_Endereco(fCep, fEnd, fBairro, fCidade, fUF: String);
    function Dados_Endereco(fCep: String): Boolean; overload;
    function Dados_Endereco(fCep, fRua: String): Boolean; overload;
    procedure Gera_UF(fUF: array of string);
    function Dados_Funcionario: Boolean; overload;
    function Dados_Funcionario(fIDFunc: Integer): Boolean; overload;
    function Dados_FuncionarioAux(fIDFunc: Integer): Boolean;
    function Dados_Usuarios(fUsuario: String): Boolean; overload;
    function Dados_Usuarios: Boolean; overload;
    function Dados_Perfil: Boolean; overload;
    function Dados_Perfil(pNomeApp: String): Boolean; overload;
    function Dados_Permissoes(fIDPerfil: Integer): Boolean; overload;
    function Dados_Permissoes(fIDPerfil: Integer; pNomeApp: String): Boolean; overload;
    function Dados_UsuariosItens: Boolean; overload;
    function Dados_UsuariosItens(pNomeApp: String): Boolean; overload;
    function Dados_CliFor(fTipoContato: String): Boolean;
    function Dados_CodCidade(pNome: String; ValidarCidade: Boolean = false): Boolean;
    function Grava_ItemsMenu(fMenu: TMainMenu): Boolean;
    procedure Insere_RegistroPerfil(fNome, fDescricao: String; fNivel: Integer);
    function Adciona_UsuarioPadrao: Boolean;
    function Adiciona_PerfilPadrao: Boolean;
    procedure Insere_PermissoesPerfil(fIDPerfil: Integer);
  end;

var
  DmClientes: TDmClientes;

implementation

uses
  uDmWorkCom, uLibrary, uDmConexao;

{$R *.dfm}

procedure TDmClientes.DataModuleCreate(Sender: TObject);
begin
  FormataCampos;
  // cliente auxiliar
  if not(CdsClienteAux.Active) then
    CdsClienteAux.CreateDataSet;
  CdsClienteAux.EmptyDataSet;

end;

procedure TDmClientes.FormataCampos;
begin
  // Contatos
  CdsContatosDATA_CAD.DisplayFormat := 'dd/mm/yyyy';
  CdsContatos.FieldByName('DATA_CAD').EditMask := '!99/99/0000;1; ';
  CdsContatosDATA_NASC.DisplayFormat := 'dd/mm/yyyy';
  CdsContatos.FieldByName('DATA_NASC').EditMask := '!99/99/0000;1; ';
  CdsContatosLIMITE_CRED.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsContatosLIMITE_CRED.EditFormat := DmWorkCom.PAFECF.gMascaraDec;
  // functionarios
  CdsFuncionarios.FieldByName('DATA_NASC').EditMask := '!99/99/0000;1; ';
  CdsFuncionariosDATA_NASC.DisplayFormat := 'dd/mm/yyyy';
  CdsFuncionarios.FieldByName('DATA_ADMISSAO').EditMask := '!99/99/0000;1; ';
  CdsFuncionariosDATA_ADMISSAO.DisplayFormat := 'dd/mm/yyyy';
  CdsFuncionarios.FieldByName('DATA_DEMISSAO').EditMask := '!99/99/0000;1; ';
  CdsFuncionariosDATA_DEMISSAO.DisplayFormat := 'dd/mm/yyyy';
  CdsFuncionariosSALARIO.DisplayFormat := DmWorkCom.PAFECF.gMascaraDec;
  CdsFuncionariosSALARIO.EditFormat := DmWorkCom.PAFECF.gMascaraDec;

end;

procedure TDmClientes.CdsContatosNewRecord(DataSet: TDataSet);
begin
  if pNumCli > 0 then
  begin
    if Retorna_Total_Contatos >= pNumCli then
    begin
      MessageDlg('SoftWare de Demonstra��o!' + #13 + #10 + 'N�o � permitido ultrapassar o limite de contatos estabelecido,' + #13 + #10 + 'M�ximo ' +
        IntToStr(pNumCli) + '. Entre em contato com o suporte t�cnico!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  DataSet.FieldByName('ID').AsInteger := GenID('CONTATO');
  DataSet.FieldByName('ATIVO').AsString := 'T';
  DataSet.FieldByName('DATA_CAD').AsDateTime := SVData;
  DataSet.FieldByName('TIPO_CONTATO').AsString := 'A';

end;

procedure TDmClientes.DspContatosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTATO';

end;

procedure TDmClientes.CdsContatosBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('END_ENTREGA').AsString = '' then
    DataSet.FieldByName('END_ENTREGA').AsString := DataSet.FieldByName('ENDERECO').AsString;
  if DataSet.FieldByName('NUM_END_ENTREGA').AsString = '' then
    DataSet.FieldByName('NUM_END_ENTREGA').AsString := DataSet.FieldByName('NUM_END').AsString;
  if DataSet.FieldByName('COMPL_ENT').AsString = '' then
    DataSet.FieldByName('COMPL_ENT').AsString := DataSet.FieldByName('COMPLEMENTO').AsString;
  if DataSet.FieldByName('BAIRRO_END_ENTREGA').AsString = '' then
    DataSet.FieldByName('BAIRRO_END_ENTREGA').AsString := DataSet.FieldByName('BAIRRO_END').AsString;
  if DataSet.FieldByName('CID_END_ENTREGA').AsString = '' then
    DataSet.FieldByName('CID_END_ENTREGA').AsString := DataSet.FieldByName('CIDADE_END').AsString;
  if DataSet.FieldByName('UF_END_ENT').AsString = '' then
    DataSet.FieldByName('UF_END_ENT').AsString := DataSet.FieldByName('UF_END').AsString;
  if DataSet.FieldByName('CEP_END_ENTREGA').AsString = '' then
    DataSet.FieldByName('CEP_END_ENTREGA').AsString := DataSet.FieldByName('CEP_END').AsString;
  //
  Grava_Endereco(DataSet.FieldByName('CEP_END').AsString, DataSet.FieldByName('ENDERECO').AsString, DataSet.FieldByName('BAIRRO_END').AsString,
    DataSet.FieldByName('CIDADE_END').AsString, DataSet.FieldByName('UF_END').AsString);
  // Grava informa��o de sincroniza��o
  DataSet.FieldByName('SINCRONIZADO').AsString := 'N';

end;

function TDmClientes.Adciona_UsuarioPadrao: Boolean;
begin
  Result := true;
  try
    CdsUsuarios.Append;
    CdsUsuariosUSUARIO.AsString := 'ADMIN';
    CdsUsuariosSENHA.AsString := '123';
    CdsUsuariosATIVO.AsString := 'T';
    CdsUsuariosID_PERFIL.AsInteger := CdsUsuariosPerfilID.AsInteger;
    Grava_Dados(CdsUsuarios);
  except
    Result := false;
  end;

end;

function TDmClientes.Adiciona_PerfilPadrao: Boolean;
begin
  Dados_Perfil;
  CdsUsuariosPerfil.Append;
  CdsUsuariosPerfilDESCRICAO.AsString := 'ADMINISTRADOR';
  CdsUsuariosPerfilATIVO.AsString := 'T';
  CdsUsuariosPerfil.Post;
  Grava_Dados(CdsUsuariosPerfil);
  //
  sIDPerfil := CdsUsuariosPerfilID.AsInteger;

end;

procedure TDmClientes.CdsContatosADCNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('CONTATO_ADC');
  DataSet.FieldByName('ID_CONTATO').AsInteger := CdsContatos.FieldByName('ID').AsInteger;

end;

function TDmClientes.Dados_ContatoADC(fID: Integer): Boolean;
begin
  CdsContatosADC.Close;
  CdsContatosADC.Params.ParamByName('pID').AsInteger := fID;
  CdsContatosADC.Open;
  // verifica resultado
  Result := false;
  if CdsContatosADC.RecordCount > 0 then
    Result := true;

end;

procedure TDmClientes.DspContatosADCGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTATO_ADC';

end;

function TDmClientes.Dados_Contato(fID: Integer): Boolean;
begin
  QryContatos.Close;
  CdsContatos.Close;
  CdsContatos.Params.Clear;
  //
  QryContatos.SQL.Clear;
  QryContatos.SQL.Add('select * from contato');
  QryContatos.SQL.Add('where contato.id = :pID');
  CdsContatos.FetchParams;
  CdsContatos.Params.ParamByName('pID').AsInteger := fID;
  CdsContatos.Open;
  //
  Result := false;
  if CdsContatos.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_ContatoAux: Boolean;
begin
  CdsContatoAux.Close;
  CdsContatoAux.Open;
  //
  Result := false;
  if CdsContatoAux.RecordCount > 0 then
    Result := true;

end;

procedure TDmClientes.DspCodCidadeGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'CODCIDADE';

end;

procedure TDmClientes.DspContatoAuxGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTATO';

end;

function TDmClientes.Dados_CliFor(fTipoContato: String): Boolean;
begin
  CdsCliForAux.Close;
  CdsCliForAux.Params.ParamByName('pTipoContato').AsString := fTipoContato;
  CdsCliForAux.Open;
  //
  Result := false;
  if CdsCliForAux.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_CodCidade(pNome: String; ValidarCidade: Boolean): Boolean;
begin
  CdsCodCidade.Close;
  CdsCodCidade.Params.Clear;
  QryCodCidade.Close;
  QryCodCidade.SQL.Clear;
  QryCodCidade.SQL.Add('select * from cod_mun_ibge c');
  if not ValidarCidade then
    QryCodCidade.SQL.Add('where c.uf_sigla = :pUF')
  else
    QryCodCidade.SQL.Add('where c.cod_municipio = :pUF');
  //
  CdsCodCidade.FetchParams;
  if not ValidarCidade then
    CdsCodCidade.Params.ParamByName('pUF').AsString := pNome
  else
    CdsCodCidade.Params.ParamByName('pUF').AsString := Copy(pNome, 3, Length(pNome) - 2);
  CdsCodCidade.Open;
  //
  Result := false;
  if CdsCodCidade.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Contato(fTipoContato: String): Boolean;
begin
  // fTipoContato = C - Cliente
  // F - Fornecedor
  // A - Ambos
  QryContatos.Close;
  CdsContatos.Close;
  CdsContatos.Params.Clear;
  //
  QryContatos.SQL.Clear;
  QryContatos.SQL.Add('select * from contato');
  if fTipoContato <> '' then
    QryContatos.SQL.Add('where (contato.tipo_contato = ' + QuotedStr(fTipoContato) + ' or contato.tipo_contato = ' + QuotedStr('A') + ')');
  CdsContatos.FetchParams;
  CdsContatos.Open;
  //
  Result := false;
  if CdsContatos.RecordCount > 0 then
    Result := true;

end;

procedure TDmClientes.Grava_Endereco(fCep, fEnd, fBairro, fCidade, fUF: String);
begin
  if not Dados_Endereco(fCep, fEnd) then
  begin
    CdsEndereco.Append;
    CdsEndereco.FieldByName('ENDERECO').AsString := fEnd;
    CdsEndereco.FieldByName('BAIRRO').AsString := fBairro;
    CdsEndereco.FieldByName('CIDADE').AsString := fCidade;
    CdsEndereco.FieldByName('CEP').AsString := fCep;
    CdsEndereco.FieldByName('UF').AsString := fUF;
    Grava_Dados(CdsEndereco);
  end;

end;

function TDmClientes.Grava_ItemsMenu(fMenu: TMainMenu): Boolean;
var
  i, ii, iii, aItens: Integer;
  aNome, aDescricao: String;
begin
  Result := true;
  try
    for i := 0 to fMenu.Items.Count - 1 do
    begin
      aNome := fMenu.Items.Items[i].Name;
      aDescricao := Remove_CaracterEstranho(fMenu.Items.Items[i].Caption);
      if (aDescricao <> '-') and (aDescricao <> '--') then
        Insere_RegistroPerfil(aNome, aDescricao, 1);

      // verifica subitem
      if fMenu.Items.Items[i].Count > 0 then
      begin
        for ii := 0 to fMenu.Items.Items[i].Count - 1 do
        begin
          aNome := fMenu.Items.Items[i].Items[ii].Name;
          aDescricao := Remove_CaracterEstranho(fMenu.Items.Items[i].Items[ii].Caption);
          aDescricao := Copy(aDescricao, 2, Length(aDescricao) - 1);
          if aDescricao <> '-' then
            Insere_RegistroPerfil(aNome, aDescricao, 2);
          //
          if fMenu.Items.Items[i].Items[ii].Count > 0 then
          begin
            for iii := 0 to fMenu.Items.Items[i].Items[ii].Count - 1 do
            begin
              aNome := fMenu.Items.Items[i].Items[ii].Items[iii].Name;
              aDescricao := Remove_CaracterEstranho(fMenu.Items.Items[i].Items[ii].Items[iii].Caption);
              aDescricao := Copy(aDescricao, 2, Length(aDescricao) - 1);
              if aDescricao <> '-' then
                Insere_RegistroPerfil(aNome, aDescricao, 3);
            end;
          end;
        end;
      end;
    end;
  except
    Result := false;
  end;

end;

procedure TDmClientes.Insere_PermissoesPerfil(fIDPerfil: Integer);
begin
  // adciona permissoes
  Dados_UsuariosItens(sNomeApp);
  Dados_Permissoes(fIDPerfil);
  CdsUsuariosItens.First;
  while not CdsUsuariosItens.Eof do
  begin
    CdsUsuariosPermissoes.Append;
    CdsUsuariosPermissoesID_PERFIL.AsInteger := fIDPerfil;
    CdsUsuariosPermissoesMENUITEM.AsString := CdsUsuariosItensNOME.AsString;
    CdsUsuariosPermissoesDESCRICAO.AsString := CdsUsuariosItensDESCRICAO.AsString;
    CdsUsuariosPermissoesPERMITE.AsString := 'S';
    CdsUsuariosPermissoesNOME_APP.AsString := sNomeApp;
    Grava_Dados(CdsUsuariosPermissoes);
    // proximo
    CdsUsuariosItens.Next;
  end;

end;

procedure TDmClientes.Insere_RegistroPerfil(fNome, fDescricao: String; fNivel: Integer);
begin
  CdsUsuariosItens.Append;
  CdsUsuariosItensDESCRICAO.AsString := fDescricao;
  CdsUsuariosItensNOME.AsString := fNome;
  CdsUsuariosItensNOME_APP.AsString := sNomeApp;
  CdsUsuariosItensNIVEL.AsInteger := fNivel;
  CdsUsuariosItens.Post;
  Grava_Dados(CdsUsuariosItens);

end;

procedure TDmClientes.CdsEnderecoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('ENDERECO');

end;

procedure TDmClientes.CdsFuncionariosBeforePost(DataSet: TDataSet);
begin
  // Grava informa��o de sincroniza��o
  DataSet.FieldByName('SINCRONIZADO').AsString := 'N';

end;

procedure TDmClientes.CdsFuncionariosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('FUNCIONARIO');
  DataSet.FieldByName('ATIVO').AsString := 'T';
  DataSet.FieldByName('COMISSAO').AsString := 'N';
  DataSet.FieldByName('TIPO_COM').AsInteger := 0;

end;

procedure TDmClientes.CdsUsuariosBeforePost(DataSet: TDataSet);
var
  AuxTxt: String;
begin
  AuxTxt := Criptografa(DataSet.FieldByName('SENHA').AsString, 10);
  DataSet.FieldByName('SENHA').AsString := AuxTxt;

end;

procedure TDmClientes.CdsUsuariosItensNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('USUARIOS_ITENS');

end;

procedure TDmClientes.CdsUsuariosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('USUARIOS');
  DataSet.FieldByName('TIPO_USUARIO').AsInteger := 0;

end;

procedure TDmClientes.CdsUsuariosPerfilNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('USUARIOS_PERFIL');

end;

procedure TDmClientes.CdsUsuariosPermissoesNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('USUARIOS_PERMISSOES');
  DataSet.FieldByName('ID_PERFIL').AsInteger := CdsUsuariosPerfil.FieldByName('ID').AsInteger;

end;

function TDmClientes.Dados_Endereco(fCep: String): Boolean;
begin
  CdsEndereco.Close;
  QryEndereco.SQL.Clear;
  QryEndereco.SQL.Add('select * from endereco');
  QryEndereco.SQL.Add('where endereco.cep = :pCep');
  // passa parametros
  CdsEndereco.FetchParams;
  CdsEndereco.Params.ParamByName('pCep').AsString := fCep;
  CdsEndereco.Open;
  // resultado
  Result := false;
  if CdsEndereco.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Endereco(fCep, fRua: String): Boolean;
begin
  CdsEndereco.Close;
  QryEndereco.SQL.Clear;
  QryEndereco.SQL.Add('select * from endereco');
  QryEndereco.SQL.Add('where endereco.cep = :pCep');
  QryEndereco.SQL.Add('and endereco.endereco = :pRua');
  // passa parametros
  CdsEndereco.FetchParams;
  CdsEndereco.Params.ParamByName('pCep').AsString := fCep;
  CdsEndereco.Params.ParamByName('pRua').AsString := fRua;
  CdsEndereco.Open;
  // resultado
  Result := false;
  if CdsEndereco.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Funcionario(fIDFunc: Integer): Boolean;
begin
  CdsFuncionarios.Params.Clear;
  QryFuncionarios.SQL.Clear;
  QryFuncionarios.SQL.Add('select * from funcionario');
  QryFuncionarios.SQL.Add('where funcionario.id = :pID');
  // passa parametros
  CdsFuncionarios.FetchParams;
  CdsFuncionarios.Params.ParamByName('pID').AsInteger := fIDFunc;
  CdsFuncionarios.Open;
  //
  Result := false;
  if CdsFuncionarios.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Funcionario: Boolean;
begin
  CdsFuncionarios.Close;
  CdsFuncionarios.Params.Clear;
  QryFuncionarios.SQL.Clear;
  QryFuncionarios.SQL.Add('select * from funcionario');
  // passa parametros
  CdsFuncionarios.FetchParams;
  CdsFuncionarios.Open;
  //
  Result := false;
  if CdsFuncionarios.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_FuncionarioAux(fIDFunc: Integer): Boolean;
begin
  CdsFuncionariosAux.Close;
  CdsFuncionariosAux.Params.Clear;
  QryFuncionarios.SQL.Clear;
  QryFuncionarios.SQL.Add('select * from funcionario');
  QryFuncionarios.SQL.Add('where funcionario.id = :pID');
  // passa parametros
  CdsFuncionariosAux.FetchParams;
  CdsFuncionariosAux.Params.ParamByName('pID').AsInteger := fIDFunc;
  CdsFuncionariosAux.Open;
  //
  Result := false;
  if CdsFuncionariosAux.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Perfil(pNomeApp: String): Boolean;
begin
  CdsUsuariosPerfil.Close;
  CdsUsuariosPerfil.Params.Clear;
  //
  QryUsuariosPerfil.Close;
  QryUsuariosPerfil.SQL.Clear;
  QryUsuariosPerfil.SQL.Add('select pf.* from usuarios_perfil pf');
  QryUsuariosPerfil.SQL.Add('inner join usuarios_permissoes pm on pf.id = pm.id_perfil');
  QryUsuariosPerfil.SQL.Add('where upper(pm.nome_app) = :pNomeApp');
  //
  CdsUsuariosPerfil.FetchParams;
  CdsUsuariosPerfil.Params.ParamByName('pNomeApp').AsString := UpperCase(pNomeApp);
  CdsUsuariosPerfil.Open;
  //
  Result := false;
  if CdsUsuariosPerfil.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Perfil: Boolean;
begin
  CdsUsuariosPerfil.Close;
  CdsUsuariosPerfil.Params.Clear;
  //
  QryUsuariosPerfil.Close;
  QryUsuariosPerfil.SQL.Clear;
  QryUsuariosPerfil.SQL.Add('select * from usuarios_perfil');
  //
  CdsUsuariosPerfil.FetchParams;
  CdsUsuariosPerfil.Open;
  //
  Result := false;
  if CdsUsuariosPerfil.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Permissoes(fIDPerfil: Integer): Boolean;
begin
  CdsUsuariosPermissoes.Close;
  CdsUsuariosPermissoes.Params.Clear;
  //
  QryUsuariosPermissoes.Close;
  QryUsuariosPermissoes.SQL.Clear;
  QryUsuariosPermissoes.SQL.Add('select * from usuarios_permissoes');
  QryUsuariosPermissoes.SQL.Add('where usuarios_permissoes.id_perfil = :pIDPerfil');

  CdsUsuariosPermissoes.FetchParams;
  CdsUsuariosPermissoes.Params.ParamByName('pIDPerfil').AsInteger := fIDPerfil;
  CdsUsuariosPermissoes.Open;
  //
  Result := false;
  if CdsUsuariosPermissoes.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Permissoes(fIDPerfil: Integer; pNomeApp: String): Boolean;
begin
  CdsUsuariosPermissoes.Close;
  CdsUsuariosPermissoes.Params.Clear;
  //
  QryUsuariosPermissoes.Close;
  QryUsuariosPermissoes.SQL.Clear;
  QryUsuariosPermissoes.SQL.Add('select * from usuarios_permissoes');
  QryUsuariosPermissoes.SQL.Add('where usuarios_permissoes.id_perfil = :pIDPerfil');
  QryUsuariosPermissoes.SQL.Add('and upper(usuarios_permissoes.nome_app) = :pNomeApp');

  CdsUsuariosPermissoes.FetchParams;
  CdsUsuariosPermissoes.Params.ParamByName('pIDPerfil').AsInteger := fIDPerfil;
  CdsUsuariosPermissoes.Params.ParamByName('pNomeApp').AsString := UpperCase(sNomeApp);
  CdsUsuariosPermissoes.Open;
  //
  Result := false;
  if CdsUsuariosPermissoes.RecordCount > 0 then
    Result := true;

end;

procedure TDmClientes.DspEnderecoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'ENDERECO';

end;

procedure TDmClientes.DspFuncionariosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'FUNCIONARIO';

end;

procedure TDmClientes.Gera_UF(fUF: array of string);
var
  i: Integer;
  Codigo, Descricao: String;
  Data: TDateTime;
begin
  i := Low(fUF);
  while i <= High(fUF) do
  begin
    DmWorkCom.retorna_Descricao(Codigo, Descricao, Data, fUF[i]);
    CdsUF.Append;
    CdsUFCODIGO.AsString := Codigo;
    CdsUFUF.AsString := fUF[i];
    CdsUFDESCRICAO.AsString := Descricao;
    CdsUFDATA_INICIO.AsDateTime := Data;
    Grava_Dados(CdsUF);
    Inc(i);
  end;
  Grava_Dados(CdsUF);

end;

function TDmClientes.Dados_UF: Boolean;
begin
  CdsUF.Close;
  CdsUF.Open;
  //
  Result := false;
  if CdsUF.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Usuarios: Boolean;
begin
  CdsUsuarios.Close;
  CdsUsuarios.Params.Clear;
  //
  QryUsuarios.Close;
  QryUsuarios.SQL.Clear;
  QryUsuarios.SQL.Add('select * from usuarios');
  //
  CdsUsuarios.FetchParams;
  CdsUsuarios.Open;
  //
  Result := false;
  if CdsUsuarios.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_Usuarios(fUsuario: String): Boolean;
begin
  CdsUsuarios.Close;
  CdsUsuarios.Params.Clear;
  //
  QryUsuarios.Close;
  QryUsuarios.SQL.Clear;
  QryUsuarios.SQL.Add('select * from usuarios');
  QryUsuarios.SQL.Add('where upper(usuarios.usuario) = :pUsuario');
  //
  CdsUsuarios.FetchParams;
  CdsUsuarios.Params.ParamByName('pUsuario').AsString := fUsuario;
  CdsUsuarios.Open;
  //
  Result := false;
  if CdsUsuarios.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_UsuariosItens(pNomeApp: String): Boolean;
begin
  CdsUsuariosItens.Close;
  CdsUsuariosItens.Params.Clear;
  //
  QryUsuariosItens.Close;
  QryUsuariosItens.SQL.Clear;
  QryUsuariosItens.SQL.Add('select * from usuarios_itens');
  QryUsuariosItens.SQL.Add('where upper(usuarios_itens.nome_app) = :pNomeapp');
  //
  CdsUsuariosItens.FetchParams;
  CdsUsuariosItens.Params.ParamByName('pNomeapp').AsString := UpperCase(pNomeApp);
  CdsUsuariosItens.Open;
  //
  Result := false;
  if CdsUsuariosItens.RecordCount > 0 then
    Result := true;

end;

function TDmClientes.Dados_UsuariosItens: Boolean;
begin
  CdsUsuariosItens.Close;
  CdsUsuariosItens.Params.Clear;
  //
  QryUsuariosItens.Close;
  QryUsuariosItens.SQL.Clear;
  QryUsuariosItens.SQL.Add('select * from usuarios_itens');
  //
  CdsUsuariosItens.FetchParams;
  CdsUsuariosItens.Open;
  //
  Result := false;
  if CdsUsuariosItens.RecordCount > 0 then
    Result := true;

end;

procedure TDmClientes.DspUFGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName := 'COD_UF_IBGE';

end;

procedure TDmClientes.DspUsuariosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'USUARIOS';

end;

procedure TDmClientes.DspUsuariosItensGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'USUARIOS_ITENS';

end;

procedure TDmClientes.DspUsuariosPermissoesGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'USUARIOS_PERMISSOES';

end;

procedure TDmClientes.DspUsuariosPerrfilGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: string);
begin
  TableName := 'USUARIOS_PERFIL';

end;

procedure TDmClientes.DataModuleDestroy(Sender: TObject);
begin
  CdsClienteAux.Free;

end;

function TDmClientes.Dados_ContatoCNPJ(CNPJ: String): Boolean;
begin
  QryContatos.Close;
  CdsContatos.Close;
  CdsContatos.Params.Clear;
  //
  QryContatos.SQL.Clear;
  QryContatos.SQL.Add('select * from contato');
  QryContatos.SQL.Add('where contato.cnpj_cpf = ' + QuotedStr(CNPJ));
  CdsContatos.FetchParams;
  CdsContatos.Open;
  //
  Result := false;
  if CdsContatos.RecordCount > 0 then
    Result := true;

end;

end.
