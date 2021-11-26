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
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  total: Integer;
  ver,cont,teste: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

  Val(Edit1.Text,total,ver);
  if(ver=0) then begin
    cont+=1;
    teste:=StrToInt(Edit1.Text);
    total+=teste;         //nao consegui entender o porquê de isso nao der certo

    ListBox1.Items.Add(Edit1.Text);

    Label1.Caption:='Total: '+IntToStr(total)+' teste1 '+IntToStr(cont)+' teste2 '+IntToStr(teste);
    Edit1.Text:='';

  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Label1.Caption:='Total: '+IntToStr(total)+' teste1 '+IntToStr(cont)+' teste2 '+IntToStr(teste);
end;

end.

