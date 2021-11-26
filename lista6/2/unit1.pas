unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  ShowMessage('Novo documento criado');
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  ShowMessage('Abrindo arquivo');
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  ShowMessage('Salvando arquivo');
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  ShowMessage('Nova planilha criada');
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

