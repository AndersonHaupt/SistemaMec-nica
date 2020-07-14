unit UAdcprodutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFAdcprodutos = class(TForm)
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
  FAdcprodutos: TFAdcprodutos;

implementation

{$R *.dfm}

uses uPesquisa, Umenu, UDM;

procedure TFAdcprodutos.dbqtdExit(Sender: TObject);
begin
  dbtotal.Value := dbqtd.Value * dbunit.Value;
end;

procedure TFAdcprodutos.dbunitExit(Sender: TObject);
begin
  dbtotal.Value := dbunit.Value * dbqtd.Value;
end;

procedure TFAdcprodutos.EdprodutoEnter(Sender: TObject);
begin
  ALT := Edproduto.Text;
end;

procedure TFAdcprodutos.EdprodutoExit(Sender: TObject);
VAR
  SQL :STRING;
  VLR :Extended;
  fDVLAOR :tFDQUERY;
begin
  if ALT <> Edproduto.Text then
    BEGIN
      SQL := 'SELECT INDICE, DESCRICAO,   CAST(VALOR_VENDA AS VARCHAR(100) ) AS COMPLEMENTO FROM PRODUTOS';
      Fmenu.Pesquisa(sql,Edproduto.Text,'Pesquisa de Produtos',3,COD_PRODUTO,descricao,COMPLEMENTO);
      if COD_PRODUTO <> 0 then
        begin
          fDVLAOR := tFDQUERY.Create(SELF);
          fDVLAOR.Connection := DM.fdcon;
          fDVLAOR.Active := FALSE;
          fDVLAOR.SQL.Add('SELECT VALOR_VENDA FROM PRODUTOS WHERE INDICE = :D');
          fDVLAOR.Params[0].Value := COD_PRODUTO;
          fDVLAOR.Active := TRUE;
          VLR := fDVLAOR.FieldByName('VALOR_VENDA').Value;
          FreeAndNil(fDVLAOR);
          Edproduto.text := descricao;
          dm.FdProdutos_osCOD_PRODUTO.Value := cod_produto;
          dbunit.Value :=  VLR;
        end;
    END;
end;

procedure TFAdcprodutos.FormKeyPress(Sender: TObject; var Key: Char);
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
