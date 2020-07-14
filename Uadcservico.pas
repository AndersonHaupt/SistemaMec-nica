unit Uadcservico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFadcServico = class(TForm)
    Edproduto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbqtd: TJvCalcEdit;
    dbunit: TJvCalcEdit;
    dbtotal: TJvCalcEdit;
    Button1: TButton;
    Button2: TButton;
    FDQuery1: TFDQuery;
    procedure EdprodutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbqtdExit(Sender: TObject);
    procedure dbunitExit(Sender: TObject);
    procedure EdprodutoEnter(Sender: TObject);
  private
    { Private declarations }
  public
   COD_PRODUTO :INTEGER;
   DESCRICAO,COMPLEMENTO,ALT :STRING;
    { Public declarations }
  end;

var
  FadcServico: TFadcServico;

implementation

{$R *.dfm}

uses uPesquisa, Umenu, UDM;

procedure TFadcServico.dbqtdExit(Sender: TObject);
begin
  dbtotal.Value := dbqtd.Value * dbunit.Value;
end;

procedure TFadcServico.dbunitExit(Sender: TObject);
begin
  dbtotal.Value := dbunit.Value * dbqtd.Value;
end;

procedure TFadcServico.EdprodutoEnter(Sender: TObject);
begin
  ALT := Edproduto.Text;
end;

procedure TFadcServico.EdprodutoExit(Sender: TObject);
VAR
  SQL :STRING;
  VLR :Extended;
  fDVLAOR :tFDQUERY;
begin

end;

procedure TFadcServico.FormKeyPress(Sender: TObject; var Key: Char);
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
