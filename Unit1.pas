﻿unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, AndroidTTS, FMX.Layouts, FMX.Effects,System.DateUtils,
  FMX.Objects, System.Notification, FMX.MultiView, FMX.TabControl, FMX.DialogService,
  FMX.Ani, FMX.Filter.Effects, FMX.ListBox, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.DbxSqlite, Data.FMTBcd, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Sensors,
  System.Sensors.Components,unit2, MultiDetailAppearanceU, FMX.ZMaterialEdit,
  FMX.ZNativeDrawFigure, FMX.ZMaterialActionButton,System.Math;

type
  TForm1 = class(TForm)
    AndroidTTS1: TAndroidTTS;
    Label1: TLabel;
    Layout3: TLayout;
    button1: TButton;
    Label2: TLabel;
    Timer1: TTimer;
    Layout2: TLayout;
    Label4: TLabel;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    NotificationCenter1: TNotificationCenter;
    Button2: TButton;
    MultiView1: TMultiView;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Rectangle4: TRectangle;
    label3: TLabel;
    Button4: TButton;
    ShadowEffect1: TShadowEffect;
    opcoes: TRectangle;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ScrollBox1: TScrollBox;
    BancodadosConnection: TSQLConnection;
    BindingsList1: TBindingsList;
    ExerciciosTable: TSQLDataSet;
    BindSourceDB1: TBindSourceDB;
    QueryCaminhada: TSQLQuery;
    QueryCorrida: TSQLQuery;
    QueryTudo: TSQLQuery;
    QueryUpdate: TSQLQuery;
    VertScrollBox1: TVertScrollBox;
    Layout5: TLayout;
    ShadowEffect3: TShadowEffect;
    Layout6: TLayout;
    ShadowEffect4: TShadowEffect;
    Layout7: TLayout;
    SpeedButton1: TSpeedButton;
    ShadowEffect5: TShadowEffect;
    Rectangle6: TRectangle;
    Label6: TLabel;
    Layout8: TLayout;
    SpeedButton2: TSpeedButton;
    TabItem3: TTabItem;
    Rectangle7: TRectangle;
    Label7: TLabel;
    Button5: TButton;
    ScrollBox2: TScrollBox;
    Rectangle8: TRectangle;
    ShadowEffect6: TShadowEffect;
    ListBoxItem2: TListBoxItem;
    TabItem4: TTabItem;
    Rectangle9: TRectangle;
    Label8: TLabel;
    Button6: TButton;
    ShadowEffect7: TShadowEffect;
    ScrollBox3: TScrollBox;
    Rectangle10: TRectangle;
    ListView2: TListView;
    ListBoxItem3: TListBoxItem;
    InserirEstatistica: TSQLQuery;
    TreinosTable: TSQLDataSet;
    Historico: TSQLQuery;
    Label9: TLabel;
    Label10: TLabel;
    StyleBook1: TStyleBook;
    Button3: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Deletar: TSQLQuery;
    Layout9: TLayout;
    BitmapListAnimation1: TBitmapListAnimation;
    Image2: TImage;
    Image3: TImage;
    Label11: TLabel;
    treino_pref: TRectangle;
    Label5: TLabel;
    Layout10: TLayout;
    Image4: TImage;
    InvertEffect1: TInvertEffect;
    Layout11: TLayout;
    ShadowEffect8: TShadowEffect;
    ListBox2: TListBox;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListView1: TListView;
    procedure Timer1Timer(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);

    procedure BancodadosConnectionBeforeConnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListView2PullRefresh(Sender: TObject);
    procedure historico_mostra();
    procedure estatistica_mostra();
    procedure ListView2DeletingItem(Sender: TObject; AIndex: Integer;
      var ACanDelete: Boolean);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure falar(texto:string);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);




  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TempoInicio: TDateTime ;
  contador:integer;
  TempoPausado: TDateTime;
  modo: integer;
  ultimo:string;

  corrida:integer;
  caminhada:integer;
  total:integer;
  inicio:string;
  mudo:boolean;

implementation

{$R *.fmx}
{$R *.iPhone.fmx IOS}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.GGlass.fmx ANDROID}
{$R *.Surface.fmx MSWINDOWS}
{$R *.iPhone47in.fmx IOS}
{$R *.Moto360.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses
  FGX.Toasts, FGX.Graphics, FMX.VirtualKeyboard,Androidapi.JNI.Toast,FMX.Helpers.Android,FMX.StatusBar,
  Androidapi.JNI,
  Androidapi.JNI.App,
  Androidapi.NativeWindow,
  Androidapi.JNIBridge,
  Androidapi.NativeActivity,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os,
  Androidapi.Helpers, Androidapi.JNI.Widget;
 const
  SecPerDay = 86400;
  SecPerHour = 3600;
  SecPerMinute = 60;
  var
   media:double;
   quant:integer;
  function tempo(seconds:integer):string;
 var
 Hours,Minutes:integer;
 strmin,strhora,strsec:string;
 dd,hh,mm,ss:integer;

begin

  dd := Seconds div SecPerDay;
  hh := (Seconds mod SecPerDay) div SecPerHour;
  mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMinute;
  ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMinute;


  strhora:=' horas ';
  strmin:=' minutos ';
  strsec:=' segundos ';

  if hh = 1 then
    strhora:=' hora ';
  if mm = 1 then
    strmin:=' minuto ';
  if ss = 1 then
    strsec:=' segundo ';

  if hh <> 0 then
  begin
    if ss <> 0 then
    begin
        if mm <> 0 then
    begin
      Result:= IntToStr(mm)+strmin+IntToStr(ss)+strsec;
    end
    else
    Result:= IntToStr(ss)+strsec;
        Result:= InttoStr(hh)+strhora+IntToStr(mm)+strmin+IntToStr(ss)+strsec;

    end
    else
    begin

     Result:= InttoStr(hh)+strhora+IntToStr(mm)+strmin;
    end;

  end;



      if ss <> 0 then
    begin
          Result:= IntToStr(mm)+strmin+IntToStr(ss)+strsec;
    end
    else
    begin
       Result:= IntToStr(mm)+strmin;
    end;


end;



function SecondToTime(const Seconds: Cardinal): Double;
var
  ms, ss, mm, hh, dd: Cardinal;
begin
  dd := Seconds div SecPerDay;
  hh := (Seconds mod SecPerDay) div SecPerHour;
  mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMinute;
  ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMinute;
  ms := 0;
  Result := dd + EncodeTime(hh, mm, ss, ms);
end;

procedure TForm1.historico_mostra();
var rec,i:integer;
LItem:TListViewItem;
ini,fim:string;
begin
Listview2.Items.Clear;
treinostable.Open;
 Historico.Open;
   try

       rec := historico.RecordCount;
        i:=0;
        quant :=0;

       begin

       ListView2.BeginUpdate;
       Historico.First;
        while not Historico.Eof do
        begin
          LItem:= listview2.Items.Add;
          ini:= Historico.Fields[1].AsString;
          fim:= Historico.Fields[2].AsString;
          LItem.Text:= 'Treino por '+tempo(Historico.Fields[3].AsInteger);
          LItem.Data[TMultiDetailAppearanceNames.Detail1]:= 'Inicio: '+ini;
          LItem.Data[TMultiDetailAppearanceNames.Detail2]:= 'Fim: '+fim;
          LItem.Data[TMultiDetailAppearanceNames.Detail3]:= 'Total: '+tempo(Historico.Fields[3].AsInteger);
          i:=i+1;
          Historico.Next;
        end;
             quant:=i;
             media:= quant/i;
       end;
  finally

  ListView2.EndUpdate;
  Historico.Close;
  treinostable.close;
  end;
  end;

 procedure TForm1.estatistica_mostra();
 var
i:integer;
tmp:double;
begin
  treinostable.Open;
  Historico.Open;
   try
        i:=0;
        quant :=0;

       begin

       Historico.First;
        while not Historico.Eof do
        begin
           quant:= quant+ Historico.Fields[3].AsInteger;
          i:=i+1;
          Historico.Next;
        end;

             media:= quant/i;
       end;
   finally

      if not IsNaN(media/60) then
     begin
     tmp:= quant/60;
     label9.Text:= tmp.ToString+' minutos de treino decorridos';
     label10.Text:= 'A média de minutos por treinamento é '+floattostr(media/60);
     label11.Text:= 'Total de exercicios realizados '+i.ToString;
     Historico.Close;
     treinostable.close;
     end;
   end;
end;

procedure notifica(numero:integer;corpo:string);
var
  MyNotification: TNotification;
  central : TNotificationCenter;
begin
  // Create an instance of TNotification
  central := TNotificationCenter.Create(nil);
  MyNotification := central.CreateNotification;
  try
      // --- your code goes here ---
      // Set the icon or notification number
      MyNotification.Number :=numero;
      // Set the alert message
      MyNotification.AlertBody := corpo;
      // Note: You must send the notification to the notification center for the Icon Badge Number to be displayed.
      central.PresentNotification(MyNotification);
  finally
    MyNotification.DisposeOf;
  end;
end;

procedure TForm1.falar(texto:string);
begin
if(mudo=false) then
begin
AndroidTts1.Speak(texto);
exit;
end;
exit;
end;

procedure TForm1.BancodadosConnectionBeforeConnect(Sender: TObject);
begin
BancodadosConnection.Params.Values['Database'] := GetHomePath +PathDelim + 'banco.db3';
end;

procedure TForm1.button1Click(Sender: TObject);
begin
if(modo=0)then
begin
if label2.Text= '00:00:00' then
begin
inicio:= FormatDateTime('DD/MM/YYYY', Now) + ' ' + FormatDateTime('hh:nn:ss', Now);
end;


   falar('Exercício iniciado');

 button1.StyleLookup:= 'pausetoolbutton';
TempoInicio:= Now;
timer1.Enabled:=true;
button3.Enabled:=false;
speedbutton3.Enabled:=false;
  modo := 1;


  exit;
end;

if(modo=1)then
begin

TempoPausado:= Now;
button1.StyleLookup:= 'playtoolbutton';

timer1.Enabled:= False;
button3.Enabled:=true;
button3.Enabled:=true;
modo:= 0;
 falar('Exercício pausado');
exit;
end;

end;

function converte(texto:string;pos1:integer;pos2:integer):string;
var
temp:string;
temp2:integer;
begin
 temp := Copy(texto,pos1,pos2);
 temp2:= strtoint(temp);
 Result:= inttostr(temp2);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
minuto:integer;
h:string;
m:string;
s:string;
texto:string;
sqltxt:string;
begin

 texto:= 'Exercício terminado ';
 h:= converte(label2.Text,1,2)+' horas decorridas';
 m:= converte(label2.Text,4,2)+' minutos decorridos';
 s:= converte(label2.Text,7,2)+' segundos decorridos';
 if(h<>'0 horas decorridas')then
 texto:= texto+h;
 if(m<>'0 minutos decorridos')then
 texto:= texto+m;
 if(m<>'0 segundos decorridos')then
 texto:= texto+s;
falar(texto);


 TreinosTable.Open;
try
    inicio:= FormatDateTime('DD/MM/YYYY', Now) + ' ' + FormatDateTime('hh:nn:ss', Now);
          sqltxt:='INSERT INTO treinos (inicio, fim, total) VALUES (:value1, :value2, :value3);';
          InserirEstatistica.SQL.Text:= sqltxt;
         InserirEstatistica.Params.ParamByName('value1').Value := inicio;
         InserirEstatistica.Params.ParamByName('value2').Value := FormatDateTime('DD/MM/YYYY', Now) + ' ' + FormatDateTime('hh:nn:ss', Now);
         InserirEstatistica.Params.ParamByName('value3').Value := contador;
         InserirEstatistica.ExecSQL;
finally
 TreinosTable.Close;
end;

contador:=0;
label2.Text := formatdatetime('tt', SecondToTime(contador));
label4.Text:= '';
button3.Enabled:=false;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := tabcontrol1.TabIndex-1;
end;



procedure TForm1.Button5Click(Sender: TObject);
begin
FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := tabcontrol1.TabIndex-2;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
  var
 LItem: TListViewItem;
 rec:integer;
ini,fim:string;
i:integer;
begin
TJAndroidThemeHelper.ThemeID := TJAlertDialog.JavaClass.THEME_DEVICE_DEFAULT_LIGHT;

 mudo:= false;
 image3.Visible:=true;
modo := 0;
TempoPausado:= 0;


historico_mostra();


  ExerciciosTable.Open;



Listview1.Items.Clear;
 QueryTudo.Open;
   try

       rec := QueryTudo.RecordCount;

       if rec>0 then
       begin

       ListView1.BeginUpdate;
       QueryTudo.First;
        while not QueryTudo.Eof do
        begin
          LItem:= listview1.Items.Add;

          LItem.Text:= QueryTudo.Fields[1].AsString;
          LItem.Detail:= tempo(QueryTudo.Fields[2].AsInteger);
          QueryTudo.Next;
        end;

       end;
  finally
  ListView1.EndUpdate;
  QueryTudo.Close;
  end;


 try
        QueryCorrida.ExecSQL();
        QueryCorrida.Close;
        QueryCorrida.Open;
    corrida:= QueryCorrida.Fields[0].AsInteger;
       QueryCorrida.Close;
  except
    on e: Exception do
    begin
         SHowMessage('Houve um erro '+e.Message);
    end;

end;



try
        QueryCaminhada.ExecSQL();
        QueryCaminhada.Close;
        QueryCaminhada.Open;
    caminhada:= QueryCaminhada.Fields[0].AsInteger;
       QueryCaminhada.Close;
  except
    on e: Exception do
    begin
         SHowMessage('Houve um erro '+e.Message);
    end;

end;
  total:=20;

     label5.Text:='Vou alternar corrida e caminhada sendo '+tempo(caminhada)+' de caminhada '+tempo(corrida)+' corrida por '+IntToStr(total)+' minutos';
end;
procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
if Key = vkHardwareBack then
begin
// handle it
if(TabControl1.TabIndex<>0) then
begin
  FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := 0;
end;
Key := 0;
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
BancodadosConnection.Open;


end;

function IsEmptyOrNull(const Value: Variant): Boolean;
begin
  Result := VarIsClear(Value) or VarIsEmpty(Value) or VarIsNull(Value) or (VarCompareValue(Value, Unassigned) = vrEqual);
  if (not Result) and VarIsStr(Value) then
    Result := Value = '';
end;


procedure TForm1.Image1Click(Sender: TObject);
 var
 numero:integer;
 sqltxt:string;
a:string;
begin


    TDialogService.InputQuery(
    'Editar Preferências',
    ['Tempo de caminhada (segundos)', 'Tempo de corrida (segundos)', 'Tempo total de exercício (minutos)'],                                    //Label
    ['', '', ''],                                                                        //textBox
    procedure(const AResult: TModalResult; const AValues: array of string)
    begin
      if TryStrToInt(AValues[0],numero)and TryStrToInt(AValues[1],numero)and TryStrToInt(AValues[2],numero) then
      begin
      corrida:=StrToInt(AValues[0]);
      caminhada:=StrToInt(AValues[1]);
      total:=StrToInt(AValues[2]);
          label5.Text:='Vou alternar corrida e caminhada sendo '+tempo(caminhada)+' caminhada '+tempo(corrida)+' corrida por '+IntToStr(total)+' minutos';


try
          sqltxt:='UPDATE exercicios SET tempo = :corrida where nome="Corrida"';
          QueryUpdate.SQL.Text:= sqltxt;
         QueryUpdate.Params.ParamByName('corrida').Value := corrida;
         QueryUpdate.ExecSQL;
finally

end;

try
          sqltxt:='UPDATE exercicios SET tempo = :caminhada where nome="Caminhada"';
          QueryUpdate.SQL.Text:= sqltxt;
         QueryUpdate.Params.ParamByName('caminhada').Value := caminhada;
         QueryUpdate.ExecSQL;
        TfgToast.Show('Dados atualizados com sucesso');
finally

end;



      end
      else
      begin
      if IsEmptyOrNull(AValues[0]) and IsEmptyOrNull(AValues[1]) and IsEmptyOrNull(AValues[2])then
      begin
        exit;
      end;
       falar('Algum valor inserido era inválido, certifique-se de que você preencheu com um número');
        TfgToast.Show('Algum valor inserido era inválido, certifique-se de que você preencheu com um número');
      end;
    end);

end;

procedure TForm1.Image1MouseEnter(Sender: TObject);
begin
InvertEffect1.Enabled:=true;
end;

procedure TForm1.Image1MouseLeave(Sender: TObject);
begin
InvertEffect1.Enabled:=false;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
image2.Visible:=false;
image3.Visible:=true;
mudo := false;

end;

procedure TForm1.Image3Click(Sender: TObject);
begin
image3.Visible:=false;
image2.Visible:=true;
mudo:=true;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
ShadowEffect5.Opacity:= 0.6;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := tabcontrol1.TabIndex+1;

multiview1.HideMaster;

end;



procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
estatistica_mostra();

FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := tabcontrol1.TabIndex+2;
multiview1.HideMaster;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);

begin
historico_mostra();
FadeTransitionEffect1.Enabled:=true;
FloatAnimation1.Start;
tabcontrol1.TabIndex := tabcontrol1.TabIndex+3;
multiview1.HideMaster;
end;

procedure TForm1.ListView2DeletingItem(Sender: TObject; AIndex: Integer;
  var ACanDelete: Boolean);
var
sqltxt:string;
item:TListViewItem;
inicio:string;
finalzin:string;
begin

try
           item := ListView2.Items[AIndex];

           inicio:= item.Data[TMultiDetailAppearanceNames.Detail1].ToString;
           inicio:= trim(Copy(inicio,9,19));
           finalzin:= item.Data[TMultiDetailAppearanceNames.Detail2].ToString;
           finalzin:= trim(Copy(finalzin,6,19));
          sqltxt:='DELETE FROM treinos WHERE inicio = '+QuotedStr(inicio)+' AND fim = '+QuotedStr(finalzin);
          QueryUpdate.SQL.Text:= sqltxt;

         //QueryUpdate.Params.ParamByName('inicio').Value := inicio;
         //QueryUpdate.Params.ParamByName('finalzin').Value := finalzin;
         QueryUpdate.ExecSQL;
        // showmessage(queryUpdate.RowsAffected.ToString);

         //          LItem.Data[TMultiDetailAppearanceNames.Detail1]:= 'Inicio: '+inicio;
       //   LItem.Data[TMultiDetailAppearanceNames.Detail2]:= 'Fim: '+final;

finally
  TfgToast.Show('Treino removido com sucesso');
end;
end;

procedure TForm1.ListView2PullRefresh(Sender: TObject);
begin
historico_mostra();
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
contador:=0;
label2.Text := formatdatetime('tt', SecondToTime(contador));
label4.Text:= '';
button3.Enabled:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
minuto:integer;
velocidade:double;
coeficiente:integer;
begin

coeficiente:= trunc((corrida+caminhada)/60);
  contador:=contador+1;
label2.Text := formatdatetime('tt', SecondToTime(contador));

minuto:= trunc(contador/60) ;

if(minuto mod coeficiente = 0)then
begin
 label4.Text:='Hora de Andar !!';

end;
if(minuto mod coeficiente = (trunc(caminhada)/60)) then
begin
 label4.Text:='Hora de Correr !!';
end;
 if(ultimo <> label4.Text)then
 begin
 ultimo:= label4.Text;
 falar(label4.Text);
 notifica(0,label4.Text);

 exit;


 end;

end;

end.
