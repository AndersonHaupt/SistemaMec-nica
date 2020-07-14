unit Uveiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFVeiculos = class(TForm)
    pnlbtn: TPanel;
    BtnnovoGravar: TButton;
    btnexcluircancelar: TButton;
    btnalterar: TButton;
    pnltopo: TPanel;
    lbnome: TLabel;
    PnlIncluir: TPanel;
    pnlgrid: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    procedure BtnnovoGravarClick(Sender: TObject);
    procedure btnexcluircancelarClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure IncAlt();
    procedure gravcanc();
    { Public declarations }
  end;

var
  FVeiculos: TFVeiculos;

implementation

{$R *.dfm}

uses UDM;

{ TFVeiculos }

procedure TFVeiculos.btnalterarClick(Sender: TObject);
begin
 DM.FDVeiculos.Edit;
 IncAlt;
end;

procedure TFVeiculos.btnexcluircancelarClick(Sender: TObject);
begin
  if btnexcluircancelar.Caption = 'Cancelar' then
    begin
      dm.FDVeiculos.Cancel;
      gravcanc;
    end
  else
  begin
    if Application.MessageBox('Você está preste a excluir um veículo! Confirma a exclusão?', pWidechar(application.title),
    mb_YesNo + mb_DefButton2 + mb_IconQuestion + mb_TaskModal) = idYes then
      begin
        dm.FDVeiculos.Delete;
      end;
  end;
end;

procedure TFVeiculos.BtnnovoGravarClick(Sender: TObject);
begin
  if BtnnovoGravar.Caption = 'Novo' then
    begin
      DM.FDVeiculos.Insert;
      DM.FDVeiculosCOD_CLIENTE.Value := DM.FdClientesINDICE.Value;
      IncAlt;
      DBEdit1.SetFocus;
    end
  else
    begin
      gravcanc;
      dm.FDVeiculos.Post;
    end;
end;

procedure TFVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFVeiculos.gravcanc;
begin
  pnlincluir.Visible := false;
  pnlgrid.Visible := true;
  BtnnovoGravar.Caption := 'Novo';
  btnexcluircancelar.Caption := 'Excluir';
  PNLTOPO.Enabled := true;
  btnalterar.Enabled := TRUE;
end;

procedure TFVeiculos.IncAlt;
begin
  pnlincluir.Visible := true;
  pnlgrid.Visible := false;
  BtnnovoGravar.Caption := 'Gravar';
  btnexcluircancelar.Caption := 'Cancelar';
  pNLtopo.Enabled := FALSE;
  btnalterar.Enabled := FALSE;
end;

end.
