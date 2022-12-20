unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure TForm4.FormCreate(Sender: TObject);
var path:string;
begin
path:=ExtractFileDir(Application.ExeName);
Image2.Picture.LoadFromFile(path+'\btn\\btn4.bmp');
Image2.Transparent:=True;
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
Form4.close;
end;

end.
