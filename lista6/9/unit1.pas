unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckGroup1: TCheckGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure CheckGroup1ItemClick(Sender: TObject; Index: integer);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  norte,nord,co,sud,sul: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CheckGroup1ItemClick(Sender: TObject; Index: integer);
begin
  if CheckGroup1.Checked[Index]=True then begin
    if ((Index=0)or(Index=2)or(Index=3)or(Index=13)or(Index=21)or(Index=22)or(Index=26)) then begin

      norte:=norte+1;
      Label1.Caption:='Norte: ' + IntToStr(norte);
    end;
    if ((Index=1)or(Index=4)or(Index=5)or(Index=9)or(Index=14)or(Index=16)or(Index=17)or(Index=19)or(Index=25)) then begin

      nord:=nord+1;
      Label2.Caption:='Nordeste: ' + IntToStr(nord);
    end;
    if ((Index=6)or(Index=8)or(Index=10)or(Index=11)) then begin

      co:=co+1;
      Label3.Caption:='Centro-Oeste: ' + IntToStr(co);
    end;
    if ((Index=7)or(Index=12)or(Index=18)or(Index=24)) then begin

      sud:=sud+1;
      Label4.Caption:='Sudeste: ' + IntToStr(sud);
    end;
    if ((Index=15)or(Index=20)or(Index=23)) then begin

      sul:=sul+1;
      Label5.Caption:='Sul: ' + IntToStr(sul);
    end;
  end else begin
    if ((Index=0)or(Index=2)or(Index=3)or(Index=13)or(Index=21)or(Index=22)or(Index=26)) then begin

      norte:=norte-1;
      Label1.Caption:='Norte: ' + IntToStr(norte);
    end;
    if ((Index=1)or(Index=4)or(Index=5)or(Index=9)or(Index=14)or(Index=16)or(Index=17)or(Index=19)or(Index=25)) then begin

      nord:=nord-1;
      Label2.Caption:='Nordeste: ' + IntToStr(nord);
    end;
    if ((Index=6)or(Index=8)or(Index=10)or(Index=11)) then begin

      co:=co-1;
      Label3.Caption:='Centro-Oeste: ' + IntToStr(co);
    end;
    if ((Index=7)or(Index=12)or(Index=18)or(Index=24)) then begin

      sud:=sud-1;
      Label4.Caption:='Sudeste: ' + IntToStr(sud);
    end;
    if ((Index=15)or(Index=20)or(Index=23)) then begin

      sul:=sul-1;
      Label5.Caption:='Sul: ' + IntToStr(sul);
    end;
  end;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  norte:=0;
  nord:=0;
  sud:=0;
  sul:=0;
  co:=0;
end;



end.

