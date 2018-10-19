unit dashboardFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Effects, FMX.Filter.Effects, FMX.Controls.Presentation,
  FMX.Objects, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TDashBoard = class(TFrame)
    Barra: TRectangle;
    SpeedButton1: TSpeedButton;
    CorIcone: TFillRGBEffect;
    ShadowEffect1: TShadowEffect;
    Card1: TRectangle;
    UltimosTreinos: TLayout;
    Label1: TLabel;
    Layout2: TLayout;
    Image1: TImage;
    Label2: TLabel;
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Top: TLayout;
    Image2: TImage;
    Label3: TLabel;
    Info1: TSpeedButton;
    CorIcone2: TFillRGBEffect;
    Info2: TSpeedButton;
    FillRGBEffect1: TFillRGBEffect;
    Bottom: TLayout;
    Image3: TImage;
    ListView1: TListView;
    Corpo: TLayout;
    ListView2: TListView;
    Image4: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}


end.
