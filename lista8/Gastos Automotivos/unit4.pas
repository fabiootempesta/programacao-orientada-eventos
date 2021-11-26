unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBGrids;

type

  { TFormCadCategoria }

  TFormCadCategoria = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
  private

  public

  end;

var
  FormCadCategoria: TFormCadCategoria;

implementation

{$R *.lfm}

{ TFormCadCategoria }



end.

