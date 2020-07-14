unit UOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, JvExStdCtrls, JvCombobox,
  JvDBCombobox, Vcl.Buttons, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ppParameter, raCodMod, ppModule, ppBands, ppDesignLayer, ppCtrls, ppReport,
  ppStrtch, ppSubRpt, Vcl.Imaging.jpeg, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe;


type
  TfOS = class(TForm)
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
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBTIPO: TJvDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button7: TButton;
    Button6: TButton;
    Button5: TButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    JvDBCalcEdit6: TJvDBCalcEdit;
    Label13: TLabel;
    Label14: TLabel;
    JvDBCalcEdit7: TJvDBCalcEdit;
    FDQuery1: TFDQuery;
    Label9: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    Button8: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    CBTIPO: TComboBox;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppVariable1: TppVariable;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppLine10: TppLine;
    ppImage1: TppImage;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine5: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine6: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine3: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine7: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine8: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLabel12: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine9: TppLine;
    ppDBText12: TppDBText;
    ppLabel20: TppLabel;
    ppLine11: TppLine;
    ppLabel17: TppLabel;
    ppDBText13: TppDBText;
    raCodeModule1: TraCodeModule;
    raProgramInfo1: TraProgramInfo;
    raProgramInfo2: TraProgramInfo;
    raProgramInfo3: TraProgramInfo;
    raProgramInfo4: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText14: TppDBText;
    ppLabel21: TppLabel;
    ppDBPipeline4: TppDBPipeline;
    procedure BtnnovoGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnexcluircancelarClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure JvDBCalcEdit6Exit(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CBTIPOChange(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
  private
    { Private declarations }
  public
    ALT :STRING;
    procedure IncAlt();
    procedure gravcanc();
    { Public declarations }
  end;

var
  fOS: TfOS;

implementation

{$R *.dfm}

uses UDM, Uveiculos, Umenu, UAdcprodutos, Uadcservico;

{ TFclientes }

procedure TfOS.btnalterarClick(Sender: TObject);
begin
 DM.FdOs.Edit;
 dm.FdProdutos_os.Active := false;
 dm.FdProdutos_os.Params[0].Value := dm.FdOsINDICE.Value;
 dm.FdProdutos_os.Active := true;
 dm.FdSErvicos_os.Active := false;
 dm.FdSErvicos_os.Params[0].Value := dm.FdOsINDICE.Value;
 dm.FdSErvicos_os.Active := true;
 IncAlt;
end;

procedure TfOS.btnexcluircancelarClick(Sender: TObject);
begin
  if btnexcluircancelar.Caption = 'Cancelar' then
    begin
      DM.FdOs.Cancel;
      gravcanc;
    end
  else
    begin
      if Application.MessageBox('Você está preste a excluir uma Os! Confirma a exclusão?', pWidechar(application.title),
      mb_YesNo + mb_DefButton2 + mb_IconQuestion + mb_TaskModal) = idYes then
        begin
          dm.FdOs.Delete;
        end;
    end;
end;

procedure TfOS.BtnnovoGravarClick(Sender: TObject);
begin
  if BtnnovoGravar.Caption = 'Novo' then
    begin
      DM.FdOs.insert;
      dm.FdProdutos_os.Active := false;
      dm.FdProdutos_os.Params[0].Value := dm.FdOsINDICE.Value;
      dm.FdProdutos_os.Active := true;
      dm.FdSErvicos_os.Active := false;
      dm.FdSErvicos_os.Params[0].Value := dm.FdOsINDICE.Value;
      dm.FdSErvicos_os.Active := true;
      DM.FdOsSTATUS.Value := 0;
      DM.FdOsDATA.Value := DATE;
      IncAlt;
      DBEdit5.SetFocus;
    end
  else
    begin
      DM.FDVeiculos.Active := FALSE;
      DM.FDVeiculos.SQL.Clear;
      DM.FDVeiculos.SQL.Add('select *from veiculos where INDICE = :ID');
      DM.FDVeiculos.Params[0].Value := DM.FdOsCOD_VEICULO.Value;
      DM.FDVeiculos.Active := TRUE;
      DM.FDVeiculos.Edit;
      if dm.FDVeiculosKM.Value > dm.FdOsKM.Value  then
        begin
          application.MessageBox('Km indicado errado!', pWidechar(application.title), mb_iconexclamation + mb_taskmodal);
          JvDBCalcEdit1.SetFocus;
          exit;
        end
      else
        dm.FDVeiculoskm.Value := dm.FdOsKM.Value;
      dm.FDVeiculos.Post;

      DM.FdOs.post;
      gravcanc;
    end;
end;

procedure TfOS.Button1Click(Sender: TObject);
begin
  DM.FdOs.Filtered := False;
  if edpesquisa.Text <> '' then
    DM.FdOs.Filter := 'UPPER(Fil) like ' + QuotedStr('%' + AnsiUpperCase(edpesquisa.Text) + '%')
  else
    DM.FdOs.Filter := '';
  DM.FdOs.Filtered := true;
end;

procedure TfOS.Button2Click(Sender: TObject);
begin
  if DM.FdOs.State IN [DSINSERT] then
    BEGIN
      DM.FdOs.Post;
      DM.FdOs.Edit;
    END;
  Application.CreateForm(TFAdcprodutos,FAdcprodutos);
  dm.FdProdutos_os.Active := false;
  dm.FdProdutos_os.Params[0].Value := dm.FdOsINDICE.Value;
  dm.FdProdutos_os.Active := true;
  dm.FdProdutos_os.Insert;
  FAdcprodutos.ShowModal;
  if FAdcprodutos.ModalResult = mrok then
    begin
      dm.FdProdutos_osCOD_OS.Value := DM.FdOsINDICE.Value;
      dm.FdProdutos_osDESCRICAO.Value := FAdcprodutos.DESCRICAO;
      dm.FdProdutos_osQUANTIDADE.Value := FAdcprodutos.dbqtd.Value;
      dm.FdProdutos_osVLR_UNITARIO.Value := FAdcprodutos.dbunit.Value;
      dm.FdProdutos_osVLR_TOTAL.Value := FAdcprodutos.dbtotal.Value;
      dm.FdProdutos_os.Post;
    end
  ELSE
    DM.FdProdutos_os.Cancel;

  DM.FdProdutos_os.Refresh;
  if   DM.FdSErvicos_oS.RecordCount > 0  then
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdProdutos_osT_VLR.Value + DM.FdSErvicos_osT_VLR.Value;
      DM.FdOsVALOR_TOTAL.Value := DM.FdProdutos_osT_VLR.Value + DM.FdSErvicos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END
  ELSE
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdProdutos_osT_VLR.Value ;
      DM.FdOsVALOR_TOTAL.Value := DM.FdProdutos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END;
  DM.FdOs.Post;
  DM.FdOs.Edit;
  FreeAndNil(FAdcprodutos);
end;

procedure TfOS.Button3Click(Sender: TObject);
begin
  if Application.MessageBox('Você está preste a excluir um produto! Confirma a exclusão?', pWidechar(application.title),
  mb_YesNo + mb_DefButton2 + mb_IconQuestion + mb_TaskModal) = idYes then
    begin
      DM.FdOsTOTAL_GERAL.Value := DM.FdOsTOTAL_GERAL.Value  - DM.FdProdutos_osVLR_TOTAL.Value ;
      DM.FdOsVALOR_TOTAL.Value := DM.FdOsVALOR_TOTAL.Value - - DM.FdProdutos_osVLR_TOTAL.Value;
      dm.FdProdutos_os.Delete;
    end;
end;

procedure TfOS.Button4Click(Sender: TObject);
begin
  Application.CreateForm(TFAdcprodutos,FAdcprodutos);
  dm.FdProdutos_os.EDIT;
  FAdcprodutos.Edproduto.Text := DM.FdProdutos_osDESCRICAO.Value;
  FAdcprodutos.dbqtd.Value := DM.FdProdutos_osQUANTIDADE.Value;
  FAdcprodutos.dbunit.Value := DM.FdProdutos_osVLR_UNITARIO.Value;
  FAdcprodutos.dbtotal.Value := DM.FdProdutos_osVLR_TOTAL.Value;
  FAdcprodutos.ShowModal;
  if FAdcprodutos.ModalResult = mrok then
    begin
      dm.FdProdutos_osCOD_OS.Value := DM.FdOsINDICE.Value;
      dm.FdProdutos_osDESCRICAO.Value := FAdcprodutos.Edproduto.Text;
      dm.FdProdutos_osQUANTIDADE.Value := FAdcprodutos.dbqtd.Value;
      dm.FdProdutos_osVLR_UNITARIO.Value := FAdcprodutos.dbunit.Value;
      dm.FdProdutos_osVLR_TOTAL.Value := FAdcprodutos.dbtotal.Value;
      dm.FdProdutos_os.Post;
    end
  ELSE
    DM.FdProdutos_os.Cancel;

  DM.FdProdutos_os.Refresh;
  if  DM.FdSErvicos_oS.RecordCount > 0 then
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdProdutos_osT_VLR.Value + DM.FdSErvicos_osT_VLR.Value;
      DM.FdOsVALOR_TOTAL.Value := DM.FdProdutos_osT_VLR.Value + DM.FdSErvicos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END
  ELSE
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdProdutos_osT_VLR.Value ;
      DM.FdOsVALOR_TOTAL.Value := DM.FdProdutos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END;
  DM.FdOs.Post;
  DM.FdOs.Edit;
  FreeAndNil(FAdcprodutos);
end;

procedure TfOS.Button5Click(Sender: TObject);
begin
  Application.CreateForm(TFadcServico,FadcServico);
  dm.FdSErvicos_os.EDIT;
  FadcServico.Edproduto.Text := DM.FdSErvicos_osDESCRICAO.Value;
  FadcServico.dbqtd.Value := DM.FdSErvicos_osQUANTIDADE.Value;
  FadcServico.dbunit.Value := DM.FdSErvicos_osVLR_UNITARIO.Value;
  FadcServico.dbtotal.Value := DM.FdSErvicos_osVLR_TOTAL.Value;
  FadcServico.ShowModal;
  if FadcServico.ModalResult = mrok then
    begin
      dm.FdSErvicos_osCOD_OS.Value := DM.FdOsINDICE.Value;
      dm.FdSErvicos_osDESCRICAO.Value := FadcServico.Edproduto.Text;
      dm.FdSErvicos_osQUANTIDADE.Value := FadcServico.dbqtd.Value;
      dm.FdSErvicos_osVLR_UNITARIO.Value := FadcServico.dbunit.Value;
      dm.FdSErvicos_osVLR_TOTAL.Value := FadcServico.dbtotal.Value;
      dm.FdSErvicos_os.Post;
    end
  ELSE
    DM.FdSErvicos_os.Cancel;

  DM.FdSErvicos_os.Refresh;
  if  DM.FdProdutos_os.RecordCount = 0 then
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdSErvicos_osT_VLR.Value;
      DM.FdOsVALOR_TOTAL.Value :=  DM.FdSErvicos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END
  ELSE
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdProdutos_osT_VLR.Value + DM.FdSErvicos_osT_VLR.Value ;
      DM.FdOsVALOR_TOTAL.Value := DM.FdProdutos_osT_VLR.Value  + DM.FdSErvicos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END;
  DM.FdOs.Post;
  DM.FdOs.Edit;
  FreeAndNil(FadcServico);
end;

procedure TfOS.Button6Click(Sender: TObject);
begin
  if Application.MessageBox('Você está preste a excluir um Serviço! Confirma a exclusão?', pWidechar(application.title),
  mb_YesNo + mb_DefButton2 + mb_IconQuestion + mb_TaskModal) = idYes then
    begin
      DM.FdOsTOTAL_GERAL.Value := DM.FdOsTOTAL_GERAL.ValuE - DM.FdSErvicos_osVLR_TOTAL.VALUE;
      DM.FdOsVALOR_TOTAL.Value := DM.FdOsVALOR_TOTAL.Value - DM.FdSErvicos_osVLR_TOTAL.VALUE; ;
      dm.FdSErvicos_os.Delete;
    end;
end;

procedure TfOS.Button7Click(Sender: TObject);
begin
  if DM.FdOs.State IN [DSINSERT] then
    BEGIN
      DM.FdOs.Post;
      DM.FdOs.Edit;
    END;
  Application.CreateForm(TFadcServico,FadcServico);
  dm.FdSErvicos_os.Active := false;
  dm.FdSErvicos_os.Params[0].Value := dm.FdOsINDICE.Value;
  dm.FdSErvicos_os.Active := true;
  dm.FdSErvicos_os.Insert;
  FadcServico.ShowModal;
  if FadcServico.ModalResult = mrok then
    begin
      dm.FdSErvicos_osCOD_OS.Value := DM.FdOsINDICE.Value;
      dm.FdSErvicos_osDESCRICAO.Value := FadcServico.Edproduto.Text;
      dm.FdSErvicos_osQUANTIDADE.Value := FadcServico.dbqtd.Value;
      dm.FdSErvicos_osVLR_UNITARIO.Value := FadcServico.dbunit.Value;
      dm.FdSErvicos_osVLR_TOTAL.Value := FadcServico.dbtotal.Value;
      DM.FdSErvicos_os.Post;
    end
  ELSE
    DM.FdSErvicos_os.Cancel;

  DM.FdSErvicos_os.Refresh;
  if  DM.FdProdutos_os.RecordCount = 0 then
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdSErvicos_osT_VLR.Value;
      DM.FdOsVALOR_TOTAL.Value :=  DM.FdSErvicos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END
  ELSE
    BEGIN
      DM.FdOsTOTAL_GERAL.Value := DM.FdProdutos_osT_VLR.Value + DM.FdSErvicos_osT_VLR.Value ;
      DM.FdOsVALOR_TOTAL.Value := DM.FdProdutos_osT_VLR.Value  + DM.FdSErvicos_osT_VLR.Value - DM.FdOsDESCONTO.Value;
    END;
  DM.FdOs.Post;
  DM.FdOs.Edit;
  FreeAndNil(FadcServico);
end;

procedure TfOS.Button8Click(Sender: TObject);
begin
  dm.FdProdutos_os.Active := false;
  dm.FdProdutos_os.Params[0].Value := dm.FdOsINDICE.Value;
  dm.FdProdutos_os.Active := true;
  dm.FdSErvicos_os.Active := false;
  dm.FdSErvicos_os.Params[0].Value := dm.FdOsINDICE.Value;
  dm.FdSErvicos_os.Active := true;
  ppReport1.PrinterSetup.DocumentName := 'Os- ' + dm.FdOsINDICE.AsString;
  ppReport1.Print;
end;

procedure TfOS.CBTIPOChange(Sender: TObject);
begin
  dm.FdOs.Active := false;
  dm.FdOs.SQL.Clear;
  dm.FdOs.SQL.Add('select *from os');
  if CBTIPO.ItemIndex = 0 then
    begin
      dm.FdOs.SQL.Add(' where status = 0 ');
    end ;
  if CBTIPO.ItemIndex = 1 then
    begin
      dm.FdOs.SQL.Add(' where status = 1 ');
    end;
  dm.FdOs.SQL.Add(' order by indice ');
  dm.FdOs.Active := true;
  dm.FdOs.Last;
  dm.FdOs.First;
end;

procedure TfOS.DBEdit5Enter(Sender: TObject);
begin
  ALT := DBEdit5.Text;
end;

procedure TfOS.DBEdit5Exit(Sender: TObject);
VAR
  SQL,DESCRICAO,COMPLEMENTO :STRING;
  cod_placa :integer;
  fdcod :Tfdquery;
begin
  if ALT <> DBEdit5.Text then
    BEGIN
      sql := 'select veiculos.indice, placa as descricao , nome as complemento from  veiculos inner join clientes on (clientes.indice = veiculos.cod_cliente)';
      Fmenu.Pesquisa(sql,DBEdit5.Text,'Pesquisa de Placas',3,cod_placa,descricao,COMPLEMENTO);
      if cod_placa <> 0  then
        begin
          fdcod := Tfdquery.Create(self);
          fdcod.Connection := dm.fdcon;
          fdcod.Active := false;
          fdcod.SQL.Add('select cod_cliente,km,modelo from veiculos where indice = :cod');
          fdcod.Params[0].Value := cod_placa;
          fdcod.Active := true;
          dm.FdClientes.Active := false;
          dm.FdClientes.Active := true;
          dm.FdClientes.Locate('indice',fdcod.FieldByName('cod_cliente').Value,[]);
          dm.FdOsCOD_CLIENTE.Value := dm.FdClientesINDICE.Value;
          dm.FdOsNOME_CLIENTE.Value := dm.FdClientesNOME.Value;
          dm.FdOsCPF_CNPJ.Value := dm.FdClientesCNPJ_CPF.Value;
          dm.FdOsTELEFONE.Value := dm.FdClientesTELEFONE.Value;
          dm.FdOsENDERECO.Value := dm.FdClientesENDERECO.Value;
          dm.FdOsKM.Value :=  fdcod.FieldByName('km').Value;
          dm.FdOsMODELO_VEICULO.Value := fdcod.FieldByName('MODELO').Value;
          dm.FdOsCOD_VEICULO.Value := cod_placa;
          DM.FdOsPLACA_VEICULO.Value := DESCRICAO;
          FreeAndNil(fdcod);
        end;
    END;

end;

procedure TfOS.DBEdit7Enter(Sender: TObject);
begin
  ALT := DBEdit7.Text;
end;

procedure TfOS.DBEdit7Exit(Sender: TObject);
VAR
  SQL,DESCRICAO,COMPLEMENTO :STRING;
  cod_placa :integer;
  fdcod :Tfdquery;
begin
  if ALT <> DBEdit7.Text then
    BEGIN
      sql := 'select indice, clientes.nome as descricao, cnpj_cpf as complemento from clientes WHERE TIPO = 2';
      Fmenu.Pesquisa(sql,DBEdit7.Text,'Pesquisa de Placas',3,cod_placa,descricao,COMPLEMENTO);
      if cod_placa <> 0 then
        begin
          DM.FdOsCOD_FUNCIONARIO.Value := cod_placa;
          dm.FdOsFUNCIONARIO.Value := DESCRICAO;
        end;

    END;


end;

procedure TfOS.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfOS.FormShow(Sender: TObject);
begin
  gravcanc;
end;

procedure TfOS.gravcanc;
begin
  pnlincluir.Visible := false;
  pnlgrid.Visible := true;
  BtnnovoGravar.Caption := 'Novo';
  btnexcluircancelar.Caption := 'Excluir';
  plntopo.Enabled := true;
  btnalterar.Enabled := TRUE;

end;

procedure TfOS.IncAlt;
begin
  pnlincluir.Visible := true;
  pnlgrid.Visible := false;
  BtnnovoGravar.Caption := 'Gravar';
  btnexcluircancelar.Caption := 'Cancelar';
  plntopo.Enabled := FALSE;
  btnalterar.Enabled := FALSE;
end;

procedure TfOS.JvDBCalcEdit6Exit(Sender: TObject);
begin
  DM.FdOsVALOR_TOTAL.Value := DM.FdOsTOTAL_GERAL.Value - DM.FdOsDESCONTO.Value;
end;

end.
