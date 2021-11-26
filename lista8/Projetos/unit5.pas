unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls;

type

  { TFormProjeto }

  TFormProjeto = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
  private

  public

  end;

var
  FormProjeto: TFormProjeto;

implementation

{$R *.lfm}

end.

