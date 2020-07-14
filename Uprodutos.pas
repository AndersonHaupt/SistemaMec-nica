unit Uprodutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, JvExStdCtrls, JvCombobox,
  JvDBCombobox, Vcl.Buttons, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TFprodutos = class(TForm)
    pnlbtn: TPanel;
    BtnnovoGravar: TButton;
    btnexcluircancelar: TButton;
    btnalterar: TButton;
    plntopo: TPanel;
    Edpesquisa: TEdit;
    Button1: TButton;
    pnlgrid: TPanel;
    gridcliente: TDBGrid;
    pnlincluir: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label3: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label5: TLabel;
    JvDBCalcEdit3: TJvDBCalcEdit;
    procedure BtnnovoGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnexcluircancelarClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure IncAlt();
    procedure gravcanc();
    { Public declarations }
  end;

var
  Fprodutos: TFprodutos;

implementation

{$R *.dfm}

uses UDM, Uveiculos;

{ TFclientes }

procedure TFprodutos.btnalterarClick(Sender: TObject);
begin
 DM.FdProdutos.Edit;
 IncAlt;
end;

procedure TFprodutos.btnexcluircancelarClick(Sender: TObject);
begin
  if btnexcluircancelar.Caption = 'Cancelar' then
    begin
      DM.FdProdutos.Cancel;
      gravcanc;
    end
  else
    begin
      if Application.MessageBox('Você está preste a excluir um produto! Confirma a exclusão?', pWidechar(application.title),
      mb_YesNo + mb_DefButton2 + mb_IconQuestion + mb_TaskModal) = idYes then
        begin
          dm.FdProdutos.Delete;
        end;
    end;
end;

procedure TFprodutos.BtnnovoGravarClick(Sender: TObject);
begin
  if BtnnovoGravar.Caption = 'Novo' then
    begin
      DM.FdProdutos.insert;
      IncAlt;
      DBEdit1.SetFocus;
    end
  else
    begin
      DM.FdProdutos.post;
      gravcanc;
    end;
end;

procedure TFprodutos.Button1Click(Sender: TObject);
begin
  DM.FdProdutos.Filtered := False;
  if edpesquisa.Text <> '' then
    DM.FdProdutos.Filter := 'UPPER(Fil) like ' + QuotedStr('%' + AnsiUpperCase(edpesquisa.Text) + '%')
  else
    DM.FdProdutos.Filter := '';
  DM.FdProdutos.Filtered := true;
end;

procedure TFprodutos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFprodutos.FormShow(Sender: TObject);
begin
  gravcanc;
end;

procedure TFprodutos.gravcanc;
begin
  pnlincluir.Visible := false;
  pnlgrid.Visible := true;
  BtnnovoGravar.Caption := 'Novo';
  btnexcluircancelar.Caption := 'Excluir';
  plntopo.Enabled := true;
  btnalterar.Enabled := TRUE;
end;

procedure TFprodutos.IncAlt;
begin
  pnlincluir.Visible := true;
  pnlgrid.Visible := false;
  BtnnovoGravar.Caption := 'Gravar';
  btnexcluircancelar.Caption := 'Cancelar';
  plntopo.Enabled := FALSE;
  btnalterar.Enabled := FALSE;
end;

end.
