unit uPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, StdCtrls,Vcl.Grids, DBGrids, ExtCtrls, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFPesquisa = class(TForm)
    lbTopo: TLabel;
    btnCancelar: TButton;
    btnConfirmar: TButton;
    dbgrd1: TDBGrid;
    edtpesq: TEdit;
    Image1: TImage;
    dsPesquisa: TDataSource;
    cdsPesquisa: TClientDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisaINDICE: TIntegerField;
    cdsPesquisaDESCRICAO: TWideStringField;
    cdsPesquisaCOMPLEMENTO: TWideStringField;
    cdsPesquisaFIL: TWideStringField;
    qrPesquisa: TFDQuery;
    qrPesquisaINDICE: TIntegerField;
    qrPesquisaCOMPLEMENTO: TStringField;
    qrPesquisaFIL: TStringField;
    qrPesquisaDESCRICAO: TStringField;
    procedure edtpesqKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    procedure edtpesqChange(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure qrPesquisaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisa: TFPesquisa;

implementation



{$R *.dfm}

uses UDM;


procedure TFPesquisa.edtpesqKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if KEY = VK_down then
    begin
      if qrPesquisa.RecordCount >= 1 then
        qrPesquisa.NEXT;
      dbgrd1.SetFocus;
    end;

  if key = VK_up then
    begin
      if qrPesquisa.RecordCount >= 1 then
        qrPesquisa.PRIOR;
      dbgrd1.SetFocus;
    end;
end;

procedure TFPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    btnCancelar.Click;

  if key = #13 then
    begin
      btnConfirmar.Click;
    end;
end;

procedure TFPesquisa.qrPesquisaCalcFields(DataSet: TDataSet);
var
  j : Integer;
begin
  QRPesquisaFIL.Clear;

  For J := 0 to QRPesquisa.FieldDefs.Count-1 do
    begin
      if QRPesquisa.Fields[J].FieldName <> 'FIL' then
        QRPesquisaFIL.Value := QRPesquisaFIL.Text + QRPesquisa.Fields[J].AsString;
    end;
end;

procedure TFPesquisa.cdsPesquisaCalcFields(DataSet: TDataSet);
var
  j : Integer;
begin
  cdsPesquisaFIL.Clear;

  For J := 0 to cdsPesquisa.FieldDefs.Count-1 do
    begin
      if cdsPesquisa.Fields[J].FieldName <> 'FIL' then
        cdsPesquisaFIL.Value := cdsPesquisaFIL.Text + cdsPesquisa.Fields[J].AsString;
    end;
end;

procedure TFPesquisa.dbgrd1DblClick(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure TFPesquisa.edtpesqChange(Sender: TObject);
begin
  qrPesquisa.Filtered := False;

  if (edtpesq.Text <> '') then
    qrPesquisa.Filter := 'UPPER(FIL) like '+QuotedStr('%'+UpperCase(edtpesq.Text)+'%')
  else
    qrPesquisa.Filter := '';

  qrPesquisa.Filtered := True;
end;

end.
