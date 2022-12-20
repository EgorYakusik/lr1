unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ShellAPI, Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;



implementation

uses Unit2, Unit5;

{$R *.dfm}



procedure TForm1.Image3Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Вы уверены что хотите закрыть программу?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Тест состоит из 20 вопросов. За каждый правильный ответ +0.5 балла'+#13+' Желаем удачи!',
    mtInformation, [mbOk], 0) = mrOk then begin
    Form5.show;
    Form1.Visible:= False;
    Form5.Image4.Visible:=True;
    Form5.Image3.Visible:=False;
    Form5.Label2.Caption:='Чтобы начать тест нажмите на кнопку Тест.';
end;
end;
procedure TForm1.Image6Click(Sender: TObject);
begin
form2.show;
form1.Visible:= False;
end;

procedure TForm1.FormCreate(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
Image1.Picture.LoadFromFile(path+'\images\menu2.jpg');
Image2.Transparent:=True;
Image2.Picture.LoadFromFile(path+'\images\\Gerb.bmp');
Image3.Transparent:=True;
Image3.Picture.LoadFromFile(path+'\btn\btn2.bmp');
Image5.Transparent:=True;
Image5.Picture.LoadFromFile(path+'\btn\btn5.bmp');
Image6.Transparent:=True;
Image6.Picture.LoadFromFile(path+'\btn\btn3.bmp');
end;

procedure TForm1.C1Click(Sender: TObject);
begin
ShellExecute(0,Pchar('Open'),PChar('Справка.chm'),nil,nil,SW_SHOW);
end;

end.
