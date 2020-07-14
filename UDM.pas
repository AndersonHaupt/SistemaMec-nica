unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    fdcon: TFDConnection;
    FdClientes: TFDQuery;
    FdClientesINDICE: TIntegerField;
    FdClientesNOME: TStringField;
    FdClientesCNPJ_CPF: TStringField;
    FdClientesTELEFONE: TStringField;
    FdClientesOBS: TStringField;
    FdClientesTIPO: TIntegerField;
    FdClientesPERC_COMISSAO: TFloatField;
    FdClientesSALARIO_BASE: TFloatField;
    FdClientesENDERECO: TStringField;
    DsClientes: TDataSource;
    FdClientesFIL: TStringField;
    FDVeiculos: TFDQuery;
    FDVeiculosINDICE: TIntegerField;
    FDVeiculosCOD_CLIENTE: TIntegerField;
    FDVeiculosPLACA: TStringField;
    FDVeiculosFABRICANTE: TStringField;
    FDVeiculosMODELO: TStringField;
    FDVeiculosKM: TFloatField;
    DsVeiculos: TDataSource;
    FDVeiculosANO: TFloatField;
    FdProdutos: TFDQuery;
    FdProdutosINDICE: TIntegerField;
    FdProdutosDESCRICAO: TStringField;
    FdProdutosQUANTIDADE_ESTOQUE: TFloatField;
    FdProdutosVALOR_COMPRA: TFloatField;
    FdProdutosVALOR_VENDA: TFloatField;
    FdProdutosMARCA: TStringField;
    DSprodutos: TDataSource;
    FdProdutosFIL: TStringField;
    FdOs: TFDQuery;
    FdOsINDICE: TIntegerField;
    FdOsCOD_CLIENTE: TIntegerField;
    FdOsNOME_CLIENTE: TStringField;
    FdOsCPF_CNPJ: TStringField;
    FdOsTELEFONE: TStringField;
    FdOsCOD_VEICULO: TIntegerField;
    FdOsPLACA_VEICULO: TStringField;
    FdOsMODELO_VEICULO: TStringField;
    FdOsKM: TFloatField;
    FdOsDATA: TDateField;
    FdOsVALOR_TOTAL: TFloatField;
    FdOsSTATUS: TIntegerField;
    FdOsOBSERVACAO: TStringField;
    Dsos: TDataSource;
    FdProdutos_os: TFDQuery;
    FdProdutos_osINDICE: TIntegerField;
    FdProdutos_osCOD_PRODUTO: TIntegerField;
    FdProdutos_osDESCRICAO: TStringField;
    FdProdutos_osQUANTIDADE: TFloatField;
    FdProdutos_osVLR_UNITARIO: TFloatField;
    FdProdutos_osVLR_TOTAL: TFloatField;
    FdProdutos_osDESCONTO: TFloatField;
    FdProdutos_osCOD_OS: TIntegerField;
    DsProdutos_os: TDataSource;
    FdSErvicos_os: TFDQuery;
    FdSErvicos_osINDICE: TIntegerField;
    FdSErvicos_osDESCRICAO: TStringField;
    FdSErvicos_osQUANTIDADE: TFloatField;
    FdSErvicos_osVLR_UNITARIO: TFloatField;
    FdSErvicos_osVLR_TOTAL: TFloatField;
    FdSErvicos_osCOD_OS: TIntegerField;
    FdSErvicos_osDESCONTO: TFloatField;
    FdSErvicos_osPER_COMISSAO: TFloatField;
    FdSErvicos_osVALOR_COMISSAO: TFloatField;
    Dsservicosos: TDataSource;
    FdOsENDERECO: TStringField;
    FdOsFIL: TStringField;
    FdProdutos_osT_QTD: TAggregateField;
    FdProdutos_osT_VLR: TAggregateField;
    FdOsDESCONTO: TFloatField;
    FdOsTOTAL_GERAL: TFloatField;
    FdSErvicos_osT_QTD: TAggregateField;
    FdSErvicos_osT_VLR: TAggregateField;
    FdOsCOD_FUNCIONARIO: TIntegerField;
    FdOsFUNCIONARIO: TStringField;
    FdOsOBS: TStringField;
    procedure FdClientesCalcFields(DataSet: TDataSet);
    procedure FdProdutosCalcFields(DataSet: TDataSet);
    procedure FdOsCalcFields(DataSet: TDataSet);
    procedure FdClientesAfterClose(DataSet: TDataSet);
    procedure FdOsAfterClose(DataSet: TDataSet);
    procedure FdProdutosAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.FdClientesAfterClose(DataSet: TDataSet);
begin
  FdClientes.Filter := '';
  FdClientes.Filtered := false;
end;

procedure TDM.FdClientesCalcFields(DataSet: TDataSet);
VAR
  J :INTEGER;
begin
    FdClientesFil.Clear;

  for j := 0 to FdClientes.FieldDefs.Count - 1 do
    begin
      if FdClientes.Fields[J].AsString <> 'FIL' then
        FdClientesFil.Value := FdClientesFil.Text + FdClientes.Fields[J].AsString;
    end;
end;

procedure TDM.FdOsAfterClose(DataSet: TDataSet);
begin
  FdOs.Filter := '';
  FdOs.Filtered := false;
end;

procedure TDM.FdOsCalcFields(DataSet: TDataSet);
VAR
  J :INTEGER;
begin
    FdosFil.Clear;

  for j := 0 to Fdos.FieldDefs.Count - 1 do
    begin
      if Fdos.Fields[J].AsString <> 'FIL' then
        FdosFil.Value := FdosFil.Text + Fdos.Fields[J].AsString;
    end;
end;

procedure TDM.FdProdutosAfterClose(DataSet: TDataSet);
begin
  FdProdutos.Filter := '';
  FdProdutos.Filtered := false;
end;

procedure TDM.FdProdutosCalcFields(DataSet: TDataSet);
VAR
  J :INTEGER;
begin
    FdProdutosFil.Clear;

  for j := 0 to FdProdutos.FieldDefs.Count - 1 do
    begin
      if FdProdutos.Fields[J].AsString <> 'FIL' then
        FdProdutosFil.Value := FdProdutosFil.Text + FdProdutos.Fields[J].AsString;
    end;
end;

end.
