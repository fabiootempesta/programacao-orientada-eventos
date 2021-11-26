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
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormActivate(Sender: TObject);
begin
  ListBox1.Items.Add('A');
  ListBox1.Items.Add('B');
  ListBox1.Items.Add('C');
  ListBox1.Items.Add('D');
  ListBox1.Items.Add('E');
  ListBox1.Items.Add('F');
  ListBox1.Items.Add('G');
  ListBox1.Items.Add('H');
  ListBox1.Items.Add('I');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex <> -1 then begin
    ListBox2.Items.Add(ListBox1.Items[ListBox1.ItemIndex]);
    ListBox1.Items.Delete(ListBox1.ItemIndex);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if ListBox2.ItemIndex <> -1 then begin
    ListBox1.Items.Add(ListBox2.Items[ListBox2.ItemIndex]);
    ListBox2.Items.Delete(ListBox2.ItemIndex);
  end;
end;

end.

