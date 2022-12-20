unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Image4: TImage;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  f:textfile;
  s, path:string;
  Nvern, ball:integer;
  ball2:real;
implementation

uses Unit1;

{$R *.dfm}


procedure TForm5.Image1Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Прервать тест и закрыть программу?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Вы уверены что хотите прервать тест? (Результат не сохранится)',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    form5.close;
    form1.show;
    form1.visible:=True;
    Label1.Caption:='';
    RadioGroup1.Items.clear;
    RadioGroup1.caption:='';
    end;
end;

procedure TForm5.FormCreate(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
Image1.Picture.LoadFromFile(path+'\btn\\btn2.bmp');
Image1.Transparent:=True;
Image2.Picture.LoadFromFile(path+'\btn\btn4.bmp');
Image2.Transparent:=True;
Image3.Picture.LoadFromFile(path+'\btn\btn8.bmp');
Image3.Transparent:=True;
Image4.Picture.LoadFromFile(path+'\btn\btn5.bmp');
Image4.Transparent:=True;
end;

procedure TForm5.Image3Click(Sender: TObject);
begin
if (RadioGroup1.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup1.ItemIndex = Nvern-1 then ball:=ball+1; //Если выбранный вариант соответствует
RadioGroup1.Items.Clear; //номеру верного ответа то балл прибавляется
Repeat //и очищается поле для следующего вопроса
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup1.Caption:=Utf8ToAnsi(s);
end
else if s[1]='*' then begin
delete(s,1,1);

Nvern:=StrToInt(s);
end
else RadioGroup1.Items.Add(Utf8ToAnsi(s));
readln(f,s);
until (s[1]='-') or (Eof(f));
end
//Если конец файла достигнут, значит вопросы закончились
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if RadioGroup1.ItemIndex = Nvern-1 then ball:=ball+1;
ball2:=ball/2;
Label1.Caption:='Правильных ответов: '+IntToStr(ball)+#13+ 'Оценка: '+floattostr(ball2);
Label2.Caption:='Тест пройден!';
CloseFile(f);
image3.Visible:=false;
image4.Visible:=True;
RadioGroup1.Items.clear;
RadioGroup1.caption:='';
end;
end;
procedure TForm5.Image4Click(Sender: TObject);
begin
path:=ExtractFileDir(Application.ExeName);

AssignFile(F,path +'\history\Тест.txt');
reset(f);
readln(f,s);
ball:=0;
repeat
if (s[1]='-') then
begin
delete(s,1,1);
Form5.RadioGroup1.Caption:=Utf8ToAnsi(s);
end
else if s[1]='*' then
begin
delete(s,1,1);
Nvern:=StrToInt(s);
end

else Form5.RadioGroup1.Items.Add(Utf8ToAnsi(s));
readln(f,s);
until (s[1]='-') or (Eof(f));
if (Form5.RadioGroup1.ItemIndex>-1) and (not Eof(f)) then begin
if Form5.RadioGroup1.ItemIndex = Nvern-1 then ball:=ball+1; //Если выбранный вариант соответствует
Form5.RadioGroup1.Items.Clear; //номеру верного ответа то балл прибавляется
Repeat //и очищается поле для следующего вопроса
if (s[1]='-') then begin
delete(s,1,1);
Form5.RadioGroup1.Caption:=Utf8ToAnsi(s);
end
else if s[1]='*' then begin
delete(s,1,1);

Nvern:=StrToInt(s);

end

else Form5.RadioGroup1.Items.Add(Utf8ToAnsi(s));
readln(f,s);
until (s[1]='-') or (Eof(f));
end;
image4.Visible:=False;
image3.Visible:=True;
label1.Caption:='';
label2.Caption:='После выбора ответа нажмите Результат.';
end;



end.




