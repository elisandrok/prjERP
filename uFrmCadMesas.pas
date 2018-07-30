unit uFrmCadMesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ExtCtrls, StdCtrls, ActnList, DB,
  uFrameBotaoVertical, DBCtrls, Mask, System.Actions;

type
  TFrmCadMesas = class(TFrmCadPadrao)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    FrameBotaoVertical1: TFrameBotaoVertical;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMesas: TFrmCadMesas;

implementation

uses uDmWorkCom, uLibrary;

{$R *.dfm}

procedure TFrmCadMesas.FormShow(Sender: TObject);
begin
  DataWork.DataSet := DmWorkCom.CdsMesas;
  inherited;
  DmWorkCom.Dados_Mesa;

end;

procedure TFrmCadMesas.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(FrameBotaoVertical1,DataWork.DataSet);
  
end;

end.
