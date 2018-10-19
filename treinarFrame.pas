unit treinarFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Ani, FMX.Objects, FMX.Layouts;

type
  TTreinar = class(TFrame)
    Cronometro: TCircle;
    CronometroProgresso: TArc;
    FloatAnimation1: TFloatAnimation;
    CronometroTempo: TText;
    CronometroTreino: TText;
    Layout1: TLayout;
    Layout2: TLayout;
    Play: TImage;
    Pause: TImage;
    Stop: TImage;
    BitmapAnimation1: TBitmapAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}



end.
