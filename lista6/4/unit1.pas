unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if(Key.ToString='37') then
    Left:=Left-5;
  if(Key.ToString='38') then
    Top:=Top-5;
  if(Key.ToString='39') then
    Left:=Left+5;
  if(Key.ToString='40') then
    Top:=Top+5;
end;

end.

