program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Androidapi.JNI.Toast in '..\Nova pasta\Androidapi.JNI.Toast.pas',
  FMX.Helpers.Android in '..\Nova pasta\FMX.Helpers.Android.pas',
  FMX.StatusBar in '..\Nova pasta\FMX.StatusBar.pas',
  FMX.FontGlyphs.Android in 'FMX.FontGlyphs.Android.pas',
  Unit2 in 'Unit2.pas' {Form2},
  MultiDetailAppearanceU in 'C:\Users\rafae\Downloads\ListViewMultiDetailAppearance\MultiDetailAppearanceU.pas',
  FMX.GifUtils in 'FMX.GifUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
