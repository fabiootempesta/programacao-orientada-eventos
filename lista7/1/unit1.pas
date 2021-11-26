unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  Form1: TForm1;
  numImg: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('1.png');
  Image1.Stretch:=True;
  numImg:=1;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  Caption:=Key.ToString;
  if(Key.ToString='37') then
    numImg-=1;
  if(Key.ToString='39') then
    numImg+=1;

  if(numImg=0) then
    numImg:=5;
  if(numImg=6) then
    numImg:=1;
  Image1.Picture.LoadFromFile(IntToStr(numImg)+'.png');
end;

end.

