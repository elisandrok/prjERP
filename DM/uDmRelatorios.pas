unit uDmRelatorios;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Datasnap.DBClient, Datasnap.Provider, frxClass,
  frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmRelatorios = class(TDataModule)
    QryEntrada: TFDQuery;
    QrySaidas: TFDQuery;
    QryComissoes: TFDQuery;
    DataComissao: TDataSource;
    QryRelatorios: TFDQuery;
    DspRelatorios: TDataSetProvider;
    CdsRelatorios: TClientDataSet;
    frxGeral: TfrxReport;
    frxDBGeral: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    frxDBItens: TfrxDBDataset;
    CdsPeriodo: TClientDataSet;
    CdsPeriododata_inicio: TDateField;
    CdsPeriododata_final: TDateField;
    frxDBPeriodo: TfrxDBDataset;
    QryHorasTrab: TFDQuery;
    DspHorasTrab: TDataSetProvider;
    CdsHorasTrab: TClientDataSet;
    QryOrdServ: TFDQuery;
    DspOrdServ: TDataSetProvider;
    CdsOrdServ: TClientDataSet;
    QryHorasTrabID: TIntegerField;
    QryHorasTrabID_OS: TIntegerField;
    QryHorasTrabID_FUNCIONARIO: TIntegerField;
    QryHorasTrabDATA_OS: TSQLTimeStampField;
    QryHorasTrabDATA_TRAB: TSQLTimeStampField;
    QryHorasTrabHORA_INICIO: TSQLTimeStampField;
    QryHorasTrabHORA_FIM: TSQLTimeStampField;
    QryHorasTrabTEMPO_GASTO: TSQLTimeStampField;
    QryHorasTrabREALIZADO: TMemoField;
    QryHorasTrabNOME: TStringField;
    CdsHorasTrabID: TIntegerField;
    CdsHorasTrabID_OS: TIntegerField;
    CdsHorasTrabID_FUNCIONARIO: TIntegerField;
    CdsHorasTrabDATA_OS: TSQLTimeStampField;
    CdsHorasTrabDATA_TRAB: TSQLTimeStampField;
    CdsHorasTrabHORA_INICIO: TSQLTimeStampField;
    CdsHorasTrabHORA_FIM: TSQLTimeStampField;
    CdsHorasTrabTEMPO_GASTO: TSQLTimeStampField;
    CdsHorasTrabREALIZADO: TMemoField;
    CdsHorasTrabNOME: TStringField;
    frxDBDOrdServ: TfrxDBDataset;
    DataOrdServ: TDataSource;
    frxDBHoras: TfrxDBDataset;
    QryOrdServID: TIntegerField;
    QryOrdServN_CONTROLE: TStringField;
    QryOrdServID_CONTATO: TIntegerField;
    QryOrdServCONTATO: TStringField;
    QryOrdServDATA_OS: TSQLTimeStampField;
    QryOrdServHORA_OS: TSQLTimeStampField;
    QryOrdServRECLAMADO: TStringField;
    QryOrdServCONSTATADO: TStringField;
    QryOrdServREALIZADO: TStringField;
    QryOrdServDATA_INICIO: TSQLTimeStampField;
    QryOrdServHORA_INICIO: TSQLTimeStampField;
    QryOrdServDATA_FIM: TSQLTimeStampField;
    QryOrdServHORA_FIM: TSQLTimeStampField;
    QryOrdServTEMPO_GASTO: TSQLTimeStampField;
    QryOrdServVALOR_COBRADO: TFloatField;
    QryOrdServDESCONTO: TFloatField;
    QryOrdServACRESCIMO: TFloatField;
    QryOrdServOUTROS: TFloatField;
    QryOrdServVALOR_PAGO: TFloatField;
    QryOrdServFORMAPAGTO: TIntegerField;
    QryOrdServDOCUMENTO: TIntegerField;
    QryOrdServENDERECO: TStringField;
    QryOrdServNUMERO: TStringField;
    QryOrdServCOMPLEMENTO: TStringField;
    QryOrdServBAIRRO: TStringField;
    QryOrdServCIDADE: TStringField;
    QryOrdServUF: TStringField;
    QryOrdServCEP: TStringField;
    QryOrdServTELEFONE: TStringField;
    QryOrdServCELULAR: TStringField;
    QryOrdServCNPJCPF: TStringField;
    QryOrdServINSCRICAORG: TStringField;
    QryOrdServSTATUS: TIntegerField;
    QryOrdServIDEMPRESA: TIntegerField;
    QryOrdServCHAVE_NFSE: TStringField;
    CdsOrdServID: TIntegerField;
    CdsOrdServN_CONTROLE: TStringField;
    CdsOrdServID_CONTATO: TIntegerField;
    CdsOrdServCONTATO: TStringField;
    CdsOrdServDATA_OS: TSQLTimeStampField;
    CdsOrdServHORA_OS: TSQLTimeStampField;
    CdsOrdServRECLAMADO: TStringField;
    CdsOrdServCONSTATADO: TStringField;
    CdsOrdServREALIZADO: TStringField;
    CdsOrdServDATA_INICIO: TSQLTimeStampField;
    CdsOrdServHORA_INICIO: TSQLTimeStampField;
    CdsOrdServDATA_FIM: TSQLTimeStampField;
    CdsOrdServHORA_FIM: TSQLTimeStampField;
    CdsOrdServTEMPO_GASTO: TSQLTimeStampField;
    CdsOrdServVALOR_COBRADO: TFloatField;
    CdsOrdServDESCONTO: TFloatField;
    CdsOrdServACRESCIMO: TFloatField;
    CdsOrdServOUTROS: TFloatField;
    CdsOrdServVALOR_PAGO: TFloatField;
    CdsOrdServFORMAPAGTO: TIntegerField;
    CdsOrdServDOCUMENTO: TIntegerField;
    CdsOrdServENDERECO: TStringField;
    CdsOrdServNUMERO: TStringField;
    CdsOrdServCOMPLEMENTO: TStringField;
    CdsOrdServBAIRRO: TStringField;
    CdsOrdServCIDADE: TStringField;
    CdsOrdServUF: TStringField;
    CdsOrdServCEP: TStringField;
    CdsOrdServTELEFONE: TStringField;
    CdsOrdServCELULAR: TStringField;
    CdsOrdServCNPJCPF: TStringField;
    CdsOrdServINSCRICAORG: TStringField;
    CdsOrdServSTATUS: TIntegerField;
    CdsOrdServIDEMPRESA: TIntegerField;
    CdsOrdServCHAVE_NFSE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PassaPeriodoRelatorio(pDatai, pDataf: TdateTime);
  end;

var
  DmRelatorios: TDmRelatorios;

implementation

uses
  uLibrary, uDmConexao, uDmWorkCom;

{$R *.dfm}
{ TDmRelatorios }

procedure TDmRelatorios.PassaPeriodoRelatorio(pDatai, pDataf: TdateTime);
begin
  with CdsPeriodo do
  begin
    if not Active then
    begin
      CreateDataSet;
      EmptyDataSet;
    end
    else
      EmptyDataSet;
    Append;
    FieldByName('data_inicio').AsDateTime := pDatai;
    FieldByName('data_final').AsDateTime := pDataf;
    Post;
  end;

end;

end.
