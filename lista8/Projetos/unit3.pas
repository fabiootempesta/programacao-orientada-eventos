unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBDateTimePicker;

type

  { TFormDepartamento }

  TFormDepartamento = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormDepartamento: TFormDepartamento;

implementation

{$R *.lfm}

{ TFormDepartamento }

procedure TFormDepartamento.FormCreate(Sender: TObject);
begin

end;

end.

