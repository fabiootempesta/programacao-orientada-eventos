unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids;

type

  { TFormCadDisciplinas }

  TFormCadDisciplinas = class(TForm)
    DBEdit1: TDBEdit;
    DBEditNomeDisciplina: TDBEdit;
    DBEditIdDisciplina: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  FormCadDisciplinas: TFormCadDisciplinas;

implementation
uses Unit2;
{$R *.lfm}

{ TFormCadDisciplinas }

procedure TFormCadDisciplinas.FormActivate(Sender: TObject);
begin
  ;
end;

end.

