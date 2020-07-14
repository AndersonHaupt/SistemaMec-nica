unit Uclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, JvExStdCtrls, JvCombobox,
  JvDBCombobox, Vcl.Buttons, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TfEXEMPLO = class(TForm)
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
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBTIPO: TJvDBComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    btnveiculos: TBitBtn;
    PNLFUNCI: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    procedure BtnnovoGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnexcluircancelarClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBTIPOChange(Sender: TObject);
    procedure btnveiculosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure IncAlt();
    procedure gravcanc();
    { Public declarations }
  end;

var
  fEXEMPLO: TfEXEMPLO;

implementation

{$R *.dfm}

uses UDM, Uveiculos;

{ TFclientes }

procedure TfEXEMPLO.btnalterarClick(Sender: TObject);
begin
 DM.FdClientes.Edit;
 IncAlt;
 DBTIPO.OnChange(self);
end;

procedure TfEXEMPLO.btnexcluircancelarClick(Sender: TObject);
begin
  if btnexcluircancelar.Caption = 'Cancelar' then
    begin
      DM.FdClientes.Cancel;
      gravcanc;
    end
  else
    begin
      if Application.MessageBox('Você está preste a excluir uma entidade! Confirma a exclusão?', pWidechar(application.title),
      mb_YesNo + mb_DefButton2 + mb_IconQuestion + mb_TaskModal) = idYes then
        begin
          dm.FdClientes.Delete;
        end;
    end;
end;

procedure TfEXEMPLO.BtnnovoGravarClick(Sender: TObject);
begin
  if BtnnovoGravar.Caption = 'Novo' then
    begin
      DM.FdClientes.insert;
      dm.FdClientesTIPO.Value := 0;
      DBTIPO.OnChange(self);
      IncAlt;
      DBEdit1.SetFocus;
    end
  else
    begin
      DM.FdClientes.post;
      gravcanc;
    end;
end;

procedure TfEXEMPLO.btnveiculosClick(Sender: TObject);
begin
  Application.CreateForm(TFVeiculos,FVeiculos);
  DM.FDVeiculos.Active := FALSE;
  DM.FDVeiculos.Params[0].Value := DM.FdClientesINDICE.Value;
  DM.FDVeiculos.Active := TRUE;
  DM.FDVeiculos.Last;
  DM.FDVeiculos.First;
  FVeiculos.gravcanc;
  FVeiculos.lbnome.Caption := DM.FdClientesNOME.Value;
  FVeiculos.ShowModal;
  FreeAndNil(FVeiculos);
end;

procedure TfEXEMPLO.Button1Click(Sender: TObject);
begin
  DM.FdClientes.Filtered := False;
  if edpesquisa.Text <> '' then
    DM.FdClientes.Filter := 'UPPER(Fil) like ' + QuotedStr('%' + AnsiUpperCase(edpesquisa.Text) + '%')
  else
    DM.FdClientes.Filter := '';
  DM.FdClientes.Filtered := true;
end;

procedure TfEXEMPLO.DBTIPOChange(Sender: TObject);
begin
  PNLFUNCI.Visible := (DBTIPO.ItemIndex = 2);
end;

procedure TfEXEMPLO.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfEXEMPLO.FormShow(Sender: TObject);
begin
  gravcanc;
end;

procedure TfEXEMPLO.gravcanc;
begin
  pnlincluir.Visible := false;
  pnlgrid.Visible := true;
  BtnnovoGravar.Caption := 'Novo';
  btnexcluircancelar.Caption := 'Excluir';
  plntopo.Enabled := true;
  btnalterar.Enabled := TRUE;
  btnveiculos.Enabled := true;
end;

procedure TfEXEMPLO.IncAlt;
begin
  pnlincluir.Visible := true;
  pnlgrid.Visible := false;
  BtnnovoGravar.Caption := 'Gravar';
  btnexcluircancelar.Caption := 'Cancelar';
  plntopo.Enabled := FALSE;
  btnalterar.Enabled := FALSE;
  btnveiculos.Enabled := false;
end;

end.
