program SisServer;

uses
  Forms,
  ComServ,
  uFrmServer in 'uFrmServer.pas' {FrmServer},
  SisServer_TLB in 'SisServer_TLB.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Servidor de Aplicação';
  Application.CreateForm(TFrmServer, FrmServer);
  Application.Run;
end.
