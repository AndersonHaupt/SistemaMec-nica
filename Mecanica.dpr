program Mecanica;



uses
  Vcl.Forms,
  Umenu in 'Umenu.pas' {Fmenu},
  Uacessar in 'Uacessar.pas' {FAcessar},
  Uclientes in 'Uclientes.pas' {Fclientes},
  UDM in 'UDM.pas' {DM: TDataModule},
  Uveiculos in 'Uveiculos.pas' {FVeiculos},
  Vcl.Themes,
  Vcl.Styles,
  Uprodutos in 'Uprodutos.pas' {Fprodutos},
  UOS in 'UOS.pas' {fOS},
  uPesquisa in 'uPesquisa.pas' {FPesquisa},
  UAdcprodutos in 'UAdcprodutos.pas' {FadcServiço},
  Uadcservico in 'Uadcservico.pas' {FadcServico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TFmenu, Fmenu);
  Application.CreateForm(TFAcessar, FAcessar);
  Application.CreateForm(TDM, DM);
  FAcessar.ShowModal;
  FAcessar.Release;
  FAcessar := NIL;
  Application.Run;
end.
