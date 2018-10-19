unit gettingstartedFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ImgList, FMX.Layouts, System.ImageList, FMX.Controls.Presentation,
  FMX.Effects, FMX.Objects;

type
  TFrame2 = class(TFrame)
    Rectangle1: TRectangle;
    Barra: TRectangle;
    ShadowEffect1: TShadowEffect;
    Label1: TLabel;
    ImageList1: TImageList;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Button1: TButton;
    Glyph1: TGlyph;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
