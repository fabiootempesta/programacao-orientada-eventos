unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Top:=Top-5;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Top:=Top+5;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Left:=Left-5;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Left:=Left+5;
end;

end.

