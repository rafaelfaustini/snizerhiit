program Project6;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Main},
  treinarFrame in 'treinarFrame.pas' {Treinar: TFrame},
  dashboardFrame in 'dashboardFrame.pas' {DashBoard: TFrame},
  gettingstartedFrame in 'gettingstartedFrame.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
