unit Uacessar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFAcessar = class(TForm)
    Edusuario: TEdit;
    EDsenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    libera :Boolean;
    { Public declarations }
  end;

var
  FAcessar: TFAcessar;

implementation

{$R *.dfm}

uses UDM;

procedure TFAcessar.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFAcessar.Button2Click(Sender: TObject);
VAR
  CAMINHO :STRING;
begin
  Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\destino.txt');
  CAMINHO := MEMO1.Lines[0] + ':' + Memo1.Lines[1];

 TRY
  with DM.fdCon.Params do
    begin
      Clear;
      Add('Database=' +Memo1.Lines[1]);
      Add('Server='+Memo1.Lines[0]);
      Add('User_Name=sysdba');
      Add('Password=masterkey');
      Add('DriverID=FB');
    end;
    DM.fdcon.Connected := TRUE;
    except
      application.MessageBox('Não foi encontrado o banco de dados!', pWidechar(application.title), mb_iconexclamation + mb_taskmodal);
      exit;
 END;

  libera := ((Edusuario.Text = 'TAYLOR') AND (EDSENHA.TEXT = '123'));
  if libera then
    BEGIN
      CLOSE;
    END
  ELSE
    BEGIN
      Application.MessageBox('Senha incorreta!', pWidechar(application.title),
      mb_DefButton2 + mb_Iconexclamation + mb_TaskModal);
      EXIT;
    END;

end;

procedure TFAcessar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not libera  then
   Application.Terminate;
end;

procedure TFAcessar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(wm_nextdlgctl, 0, 0);
  end;
  if key = #27 then
    begin
      CLOSE;
    end;
end;

end.
