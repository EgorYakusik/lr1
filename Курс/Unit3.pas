unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Memo1: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1, Unit4;

{$R *.dfm}




procedure TForm3.FormCreate(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
Image1.Picture.LoadFromFile(path+'\btn\\btn2.bmp');
Image1.Transparent:=True;
Image2.Picture.LoadFromFile(path+'\btn\btn4.bmp');
Image2.Transparent:=True;
Image3.Picture.LoadFromFile(path+'\btn\btn6.bmp');
Image3.Transparent:=True;
Image4.Picture.LoadFromFile(path+'\btn\btn7.bmp');
Image4.Transparent:=True;
Image5.Picture.LoadFromFile(path+'\btn\btn7.bmp');
Image5.Transparent:=True;
Image6.Picture.LoadFromFile(path+'\btn\btn7.bmp');
Image6.Transparent:=True;
Image7.Picture.LoadFromFile(path+'\btn\btn7.bmp');
Image7.Transparent:=True;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Вы уверены что хотите закрыть программу?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
Form2.show;
Form2.Visible:=True;
Form3.Visible:=False;
Edit1.text:='';
end;

procedure TForm3.Image3Click(Sender: TObject);
var Find:string;
i:integer;
begin
find:=Edit1.Text;
For i:=0 to Memo1.Lines.Count-1 do
If Pos(FIND, Memo1.Lines.Text)<>0
Then
Begin
Memo1.SetFocus();
Memo1.SelStart:=Pos(FIND,Memo1.Lines.Text)-1;
Memo1.SelLength:=Length(FIND);
end;
end;

procedure TForm3.Image4Click(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
form4.Image1.Picture.LoadFromFile(path+'\images\Grav1.jpg');
Form4.Show;
Form4.Visible:=True;
end;

procedure TForm3.Image5Click(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
form4.Image1.Picture.LoadFromFile(path+'\images\Grav2.jpg');
Form4.Show;
Form4.Visible:=True;
end;

procedure TForm3.Image6Click(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
form4.Image1.Picture.LoadFromFile(path+'\images\Тема 4.1.jpg');
Form4.Show;
Form4.Visible:=True;
end;

procedure TForm3.Image7Click(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
form4.Image1.Picture.LoadFromFile(path+'\images\Тема 4.2.jpg');
Form4.Show;
Form4.Visible:=True;
end;

end.
