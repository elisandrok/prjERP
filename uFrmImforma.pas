unit uFrmImforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, StdCtrls, Buttons, jpeg, ExtCtrls, dxGDIPlusClasses;

type
  TFrmImforma = class(TFrmPadrao)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImforma: TFrmImforma;

implementation

{$R *.dfm}

procedure TFrmImforma.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;

end;

end.
