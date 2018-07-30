unit uFrmServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmServer = class(TForm)
    Label1: TLabel;
    LbContador: TLabel;
    GroupBox1: TGroupBox;
    MemoUsuarios: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServer: TFrmServer;

implementation

{$R *.dfm}

end.
