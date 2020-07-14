unit Umenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFmenu = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    ClientesForncedoresFuncionarios1: TMenuItem;
    Produtos1: TMenuItem;
    StatusBar1: TStatusBar;
    PNLIMAGENS: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Memo1: TMemo;
    Lanamentos1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    procedure ClientesForncedoresFuncionarios1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure Pesquisa(sql, param, topo: string;NCOLUNA :integer; var ID: Integer; var Descricao, Complemento: string);
    { Public declarations }
  end;

var
  Fmenu: TFmenu;

implementation

{$R *.dfm}

uses Uclientes, UDM, Uprodutos, UOS, Uacessar, uPesquisa;

procedure TFmenu.ClientesForncedoresFuncionarios1Click(Sender: TObject);
begin
  Application.CreateForm(TFclientes,Fclientes);
  DM.FdClientes.Active := false;
  DM.FdClientes.Active := true;
  DM.FdClientes.last;
  DM.FdClientes.first;
  Fclientes.ShowModal;
  FreeAndNil(Fclientes);
end;

procedure TFmenu.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Usuário logado: Agenor Vicente Pelissa Júnior';
  Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\destino.txt');
  Image5.Picture.LoadFromFile(Memo1.Lines[2]);

end;

procedure TFmenu.OrdemdeServio1Click(Sender: TObject);
begin
  Application.CreateForm(TfOS,fos);
  fOS.CBTIPO.ItemIndex := 0;
  fOS.CBTIPO.OnChange(self);
  DM.FdOs.Last;
  dm.FdOs.First;
  fOS.ShowModal;
  FreeAndNil(fOS);
end;

procedure TFmenu.Pesquisa(sql, param, topo: string; NCOLUNA: integer;
  var ID: Integer; var Descricao, Complemento: string);
var
  msg : PAnsiChar;
begin
  try
    Application.CreateForm(TFPesquisa, FPesquisa);

    FPesquisa.qrPesquisa.Active := false;
    FPesquisa.qrPesquisa.SQL.Text := sql;
    FPesquisa.qrPesquisa.Active := true;
    FPesquisa.qrPesquisa.Last;
    FPesquisa.qrPesquisa.First;

    FPesquisa.qrPesquisa.Filtered := false;
    FPesquisa.qrPesquisa.Filter := 'UPPER(FIL) like ' + QuotedStr('%' + UpperCase(param) + '%');
    FPesquisa.qrPesquisa.Filtered := true;

    if FPesquisa.qrPesquisa.RecordCount <> 1 then
      begin
        FPesquisa.qrPesquisa.Filtered := false;
        FPesquisa.qrPesquisa.Filter := '';

        FPesquisa.edtpesq.Text := param;
        FPesquisa.lbTopo.Caption := topo;

        if NCOLUNA = 2  then
          BEGIN
            FPesquisa.dbgrd1.Columns[2].Visible := False;
            FPesquisa.dbgrd1.Columns[1].Width   := 350;
          end;

        FPesquisa.ShowModal;

        if FPesquisa.ModalResult = MrOk then
          begin
            ID := FPesquisa.qrPesquisaINDICE.Value;
            Descricao := FPesquisa.qrPesquisaDESCRICAO.Value;
            Complemento := FPesquisa.qrPesquisaCOMPLEMENTO.Value;
          end
        else
          begin
            ID := 0;
            Descricao := '';
            Complemento := '';
          end;
      end
    else
      begin
        ID := FPesquisa.qrPesquisaINDICE.Value;
        Descricao := FPesquisa.qrPesquisaDESCRICAO.Value;
        Complemento := FPesquisa.qrPesquisaCOMPLEMENTO.Value;
      end;

    FPesquisa.Release;
    FPesquisa := nil;
  except
    on E: Exception do
      begin
        msg := pAnsichar(E.Message);
        Application.MessageBox(pchar(msg), pWidechar(application.title),
        mb_DefButton2 + mb_IconError + mb_TaskModal);
        FPesquisa.Release;
        FPesquisa := nil;
      end;
  end;
end;


procedure TFmenu.Produtos1Click(Sender: TObject);
begin
  Application.CreateForm(TFprodutos,Fprodutos);
  dm.FdProdutos.Active := false;
  dm.FdProdutos.Active := true;
  dm.FdProdutos.Last;
  dm.FdProdutos.First;
  Fprodutos.ShowModal;
  FreeAndNil(Fprodutos);
end;

end.
