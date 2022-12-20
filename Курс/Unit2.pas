unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, jpeg, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
Image2.Picture.LoadFromFile(path+'\images\menu2.jpg');
Image1.Picture.LoadFromFile(path+'\images\\Gerb2.bmp');
Image3.Transparent:=True;
Image3.Picture.LoadFromFile(path+'\btn\\tema1.bmp');
Image4.Transparent:=True;
Image4.Picture.LoadFromFile(path+'\btn\\tema2.bmp');
Image5.Transparent:=True;
Image5.Picture.LoadFromFile(path+'\btn\\tema3.bmp');
Image6.Transparent:=True;
Image6.Picture.LoadFromFile(path+'\btn\\tema4.bmp');
Image7.Transparent:=True;
Image7.Picture.LoadFromFile(path+'\btn\\btn2.bmp');
Image8.Transparent:=True;
Image8.Picture.LoadFromFile(path+'\btn\\btn4.bmp');
end;

procedure TForm2.Image3Click(Sender: TObject);
var
  F: TextFile;
  s: UTF8string;
  path:string;
begin
Form3.show;
Form2.Visible:=False;
path:=ExtractFileDir(Application.ExeName);
AssignFile(F,path +'\history\Тема 1.txt');
Reset(F);
Form3.Memo1.Clear;
Form3.Caption:='Тема 1';
Form3.image4.Visible:=True;
Form3.image5.Visible:=False;
Form3.image6.Visible:=False;
Form3.image7.Visible:=False;
while not Eof(F) do
begin
ReadLn(F, s);
Form3.Memo1.Lines.Append(UTF8ToAnsi(s));
end;
Form3.Memo1.SelStart:=0;
Form3.Memo1.SelLength := 0;
end;

procedure TForm2.Image7Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Вы уверены что хотите закрыть программу?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TForm2.Image8Click(Sender: TObject);
begin
Form1.show;
Form2.Visible:=False;
Form1.Visible:=True;
end;

procedure TForm2.Image4Click(Sender: TObject);
var
  F: TextFile;
  s: UTF8string;
  path:string;
begin
Form3.show;
Form2.Visible:=False;
path:=ExtractFileDir(Application.ExeName);
AssignFile(F,path +'\history\Тема 2.txt');
Reset(F);
Form3.Memo1.Clear;
Form3.Caption:='Тема 2';
Form3.image4.Visible:=False;
Form3.image5.Visible:=False;
Form3.image6.Visible:=False;
Form3.image7.Visible:=False;
while not Eof(F) do
begin
ReadLn(F, s);
Form3.Memo1.Lines.Append(UTF8ToAnsi(s));
end;
Form3.Memo1.SelStart:=0;
Form3.Memo1.SelLength := 0;
end;

procedure TForm2.Image5Click(Sender: TObject);
var
  F: TextFile;
  s: UTF8string;
  path:string;
begin
Form3.show;
Form2.Visible:=False;
path:=ExtractFileDir(Application.ExeName);
AssignFile(F,path +'\history\Тема 3.txt');
Reset(F);
Form3.Memo1.Clear;
Form3.Caption:='Тема 3';
Form3.image4.Visible:=False;
Form3.image5.Visible:=True;
Form3.image6.Visible:=False;
Form3.image7.Visible:=False;
while not Eof(F) do
begin
ReadLn(F, s);
Form3.Memo1.Lines.Append(UTF8ToAnsi(s));
end;
Form3.Memo1.SelStart:=0;
Form3.Memo1.SelLength := 0;
end;

procedure TForm2.Image6Click(Sender: TObject);
var
  F: TextFile;
  s: UTF8string;
  path:string;
begin
Form3.show;
Form2.Visible:=False;
path:=ExtractFileDir(Application.ExeName);
AssignFile(F,path +'\history\Тема 4.txt');
Reset(F);
Form3.Memo1.Clear;
Form3.Caption:='Тема 4';
Form3.image4.Visible:=False;
Form3.image5.Visible:=False;
Form3.image6.Visible:=True;
Form3.image7.Visible:=True;
while not Eof(F) do
begin
ReadLn(F, s);
Form3.Memo1.Lines.Append(UTF8ToAnsi(s));
end;
Form3.Memo1.SelStart:=0;
Form3.Memo1.SelLength := 0;
end;

end.
