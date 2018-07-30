unit uFrmSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, StdCtrls, jpeg, ExtCtrls, dxGDIPlusClasses;

type
  TFrmSplash = class(TFrmPadrao)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}

procedure TFrmSplash.FormShow(Sender: TObject);
begin
  inherited;
  if FileExists(ExtractFilePath(Application.ExeName) + 'imagens\FundoSplash.jpg') then
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'imagens\FundoSplash.jpg');

end;

end.
