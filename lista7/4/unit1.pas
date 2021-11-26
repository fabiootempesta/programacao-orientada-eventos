unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, Spin, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    StringGrid1: TStringGrid;

    procedure FormActivate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure StringGrid1CheckboxToggled(sender: TObject; aCol, aRow: Integer;
      aState: TCheckboxState);
  private

  public

  end;

var
  Form1: TForm1;
  num: Real;
  erro:Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  StringGrid1.RowCount:=SpinEdit1.Value+1;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  StringGrid1.RowCount:=2;
end;



procedure TForm1.StringGrid1CheckboxToggled(sender: TObject; aCol,
  aRow: Integer; aState: TCheckboxState);
var
  teste: Real;
begin
  erro := 0;
  if StringGrid1.Cells[aCol, aRow] = '1' then begin
    Val(StringGrid1.Cells[aCol + 1, aRow], teste, erro);
    if (erro=0) then
      num+=teste;
  end;
  if StringGrid1.Cells[aCol,aRow]='0' then begin
    Val(StringGrid1.Cells[aCol+1,aRow],teste,erro);
    if (erro=0) then
      num-=teste;
  end;






  Label1.Caption:=FloatToStr(num);
end;

end.

