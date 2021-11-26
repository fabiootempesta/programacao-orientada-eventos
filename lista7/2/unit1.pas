unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  cont: Integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  StringGrid1.ColCount:=StringGrid1.ColCount+1;
  for cont:=0 to StringGrid1.RowCount-1 do
    StringGrid1.Cells[StringGrid1.ColCount-1,cont]:=IntToStr(cont+1)+','+IntToStr(StringGrid1.ColCount);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if(StringGrid1.ColCount>1) then
    StringGrid1.ColCount:=StringGrid1.ColCount-1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  StringGrid1.RowCount:=StringGrid1.RowCount+1;
  for cont:=0 to StringGrid1.ColCount-1 do
    StringGrid1.Cells[cont,StringGrid1.RowCount-1]:=IntToStr(StringGrid1.RowCount)+','+IntToStr(cont+1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if(StringGrid1.RowCount>1) then
    StringGrid1.RowCount:=StringGrid1.RowCount-1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.ColCount:=1;
  StringGrid1.RowCount:=1;
  StringGrid1.Cells[0,0]:='1,1';
end;

end.
