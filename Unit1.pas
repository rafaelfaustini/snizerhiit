unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Layouts, FMX.Effects,
  FMX.Filter.Effects, treinarFrame, FMX.TabControl, dashboardFrame;

type
  TMain = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Treinar1: TTreinar;
    DashBoard1: TDashBoard;
    procedure DashBoard1Image4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

procedure mudar_cronometro(arco:TArc;porcentagem:Single);
begin
 arco.EndAngle := 360 / (100 / porcentagem);
end;


procedure TMain.DashBoard1Image4Click(Sender: TObject);
begin
  Tabcontrol1.SetActiveTabWithTransition(TabItem2,TTabTransition.Slide);

end;

end.
