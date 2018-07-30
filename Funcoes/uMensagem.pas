unit uMensagem;

interface

uses
  Classes,
  Windows,
  Forms,
  ExtCtrls,
  StdCtrls,
  Controls,
  Graphics,
  Buttons,
  Dialogs;

type
  TFormMensagem = class(TForm)

  private

    formMensagem: TForm;
    mensagem: String;
    borda: TShape;
    display: TPanel;
    largura: integer;
    altura: integer;
    corPainel: TColor;
    corFonte: TColor;
    botao: TBitBtn;
    texto: TLabel;
    button: TButton;

  public

    function getMensagem: String;
    procedure setMensagem(pMensagem: String);
    function getLargura: integer;
    procedure setLargura(pLargura: integer);
    function getAltura: integer;
    procedure setAltura(pAltura: integer);
    function getCorFonte: TColor;
    procedure setCorFonte(pCorFonte: TColor);
    function getCorPainel: TColor;
    procedure setCorPainel(pCorPainel: TColor);

    procedure mostrar; overload;
    procedure destruir;
    procedure mostrar(pSegundos: integer); overload;

    procedure clicou(Sender: TObject);

    procedure mostrarFixo;

    constructor Create; overload;
    constructor Create(pMensagem: String; pLargura: integer = 350; pAltura: integer = 35; pCorFonte: TColor = clRed; pCorPainel: TColor = clBtnFace;
      pBotao: boolean = false); overload;
    constructor Create(pMensagem: String; pTipoJanela: String = 'dialogo'); overload;

  end;

implementation

{ TFormMensagem }

constructor TFormMensagem.Create;
begin

  formMensagem := TForm.Create(Application);

  setLargura(350);
  setAltura(35);
  setCorFonte(clRed);
  setCorPainel(clBtnFace);

  formMensagem.BorderStyle := bsNone;
  formMensagem.Position := poDesktopCenter;
  formMensagem.Width := getLargura;
  formMensagem.Height := getAltura;

  borda := TShape.Create(Application);
  borda.Parent := formMensagem;
  borda.Align := alClient; // uma borda envolta do form

  display := TPanel.Create(Application);
  display.Parent := formMensagem;
  display.Align := alClient;
  // display.Transparent:= true;
  display.AutoSize := false;
  display.Width := getLargura;
  display.Caption := 'Aguarde o processamento dos dados...';
  display.Alignment := taCenter; // label com a mensagem "Aguarde"

  display.Color := getCorPainel;

  display.Font.Color := getCorFonte; // clRed;

  display.Font.Style := [fsBold];
  display.Font.Size := 10;

end;

constructor TFormMensagem.Create(pMensagem: String; pLargura: integer = 350; pAltura: integer = 35; pCorFonte: TColor = clRed; pCorPainel: TColor = clBtnFace;
  pBotao: boolean = false);
begin
  mensagem := pMensagem;

  formMensagem := TForm.Create(Application);
  formMensagem.BorderStyle := bsNone;
  formMensagem.Position := poDesktopCenter;

  setLargura(pLargura);
  setAltura(pAltura);
  setCorFonte(pCorFonte);
  setCorPainel(pCorPainel);

  formMensagem.Width := getLargura;
  formMensagem.Height := getAltura; // até aqui criamos o form

  borda := TShape.Create(Application);
  borda.Parent := formMensagem;
  borda.Align := alClient; // uma borda envolta do form

  display := TPanel.Create(Application);
  display.Parent := formMensagem;
  display.Align := alClient;
  // display.Color      := clWhite;
  display.Color := getCorPainel;
  // display.Transparent:= true;
  display.AutoSize := false;
  display.Width := getLargura;
  display.Caption := getMensagem;
  display.Alignment := taCenter; // label com a mensagem "Aguarde"

  display.Color := getCorPainel;

  display.Font.Color := getCorFonte;
  display.Font.Style := [fsBold];
  display.Font.Size := 14;

  if pBotao then
  begin

    // *********** programando um botão de ok **************//

    botao := TBitBtn.Create(display);
    // botao.Parent:=display;
    botao.Caption := 'OK';
    botao.Width := 75;
    botao.Left := Round(formMensagem.Width / 2) - Round(botao.Width / 2);
    botao.Top := display.Height - 20;

    // botao.Left:=240;
    // botao.Top:=3;
    botao.SetFocus;
    // botao.OnClick:=BotaoClick;
  end;
end;

procedure TFormMensagem.clicou(Sender: TObject);
begin
  formMensagem.Close;
end;

constructor TFormMensagem.Create(pMensagem: String; pTipoJanela: String = 'dialogo');
begin
  mensagem := pMensagem;

  formMensagem := TForm.Create(Application);
  formMensagem.BorderStyle := bsDialog;
  formMensagem.Position := poDesktopCenter;

  texto := TLabel.Create(formMensagem);
  with texto do
  begin
    Parent := formMensagem;
    Caption := pMensagem;
    texto.Font.Style := [fsBold];
    Width := texto.Width + 30;
    Height := 10 + texto.Height + 50;
    Left := 10;
    setLargura(Width + 50);
    setAltura(Height + 50);
    formMensagem.ClientWidth := Width + 50;
    formMensagem.ClientHeight := Height + 50;
    Left := (formMensagem.ClientWidth - Width) div 2;
    Top := (formMensagem.ClientHeight - Height) div 2;
  end;

  button := TButton.Create(formMensagem);
  with button do
  begin
    Parent := formMensagem;
    Height := 25;
    Width := 50;
    Caption := 'OK';
    Left := (formMensagem.ClientWidth - Width) div 2;
    Top := (formMensagem.ClientHeight + Height) div 2;
    OnClick := clicou;
  end;

end;

procedure TFormMensagem.destruir;
begin
  formMensagem.Refresh;
  formMensagem.Free;
end;

function TFormMensagem.getAltura: integer;
begin
  Result := altura;
end;

function TFormMensagem.getCorFonte: TColor;
begin
  Result := corFonte;
end;

function TFormMensagem.getCorPainel: TColor;
begin
  Result := corPainel;
end;

function TFormMensagem.getLargura: integer;
begin
  Result := largura;
end;

function TFormMensagem.getMensagem: String;
begin
  Result := mensagem;
end;

procedure TFormMensagem.mostrar;
begin
  formMensagem.Show;
  formMensagem.Update;
end;

procedure TFormMensagem.mostrar(pSegundos: integer);
begin
  formMensagem.Show;
  formMensagem.Update;
  Sleep(pSegundos * 1000);
  Close;
end;

procedure TFormMensagem.setAltura(pAltura: integer);
begin
  if pAltura = 0 then
    pAltura := 35;
  altura := pAltura;
end;

procedure TFormMensagem.setCorFonte(pCorFonte: TColor);
begin
  corFonte := pCorFonte;
end;

procedure TFormMensagem.setCorPainel(pCorPainel: TColor);
begin
  corPainel := pCorPainel;
end;

procedure TFormMensagem.setLargura(pLargura: integer);
begin
  if pLargura = 0 then
    pLargura := 350;
  largura := pLargura;
end;

procedure TFormMensagem.setMensagem(pMensagem: String);
begin
  mensagem := pMensagem;
end;

procedure TFormMensagem.mostrarFixo;
begin
  SetForegroundWindow(formMensagem.Handle);
  formMensagem.ShowModal;
end;

end.
