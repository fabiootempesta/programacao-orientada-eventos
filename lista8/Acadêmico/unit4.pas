unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids;

type

  { TFormCadProf }

  TFormCadProf = class(TForm)
    DBEditAreaProf: TDBEdit;
    DBEditNomeProf: TDBEdit;
    DBEditNumMatriculaProfessor: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  FormCadProf: TFormCadProf;

implementation
uses Unit2;
{$R *.lfm}

{ TFormCadProf }

procedure TFormCadProf.FormActivate(Sender: TObject);
begin
  with TDataPrincipal.ZQueryConsulta do
    if (DBEditNumMatriculaProfessor.Text<>'') then begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT id_disciplina, nome_disciplina, carga_horaria FROM disciplina WHERE id_professor=:tbedit');
      ParamByName('tbedit').AsInteger:=StrToInt(DBEditNumMatriculaProfessor.Text);
      Open();
      DBGrid1.Columns.Items[0].FieldName:='id_disciplina';
      DBGrid1.Columns.Items[1].FieldName:='nome_disciplina';
      DBGrid1.Columns.Items[2].FieldName:='carga_horaria';

    end;
end;

procedure TFormCadProf.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
  with TDataPrincipal.ZQueryConsulta do
    if (DBEditNumMatriculaProfessor.Text<>'') then begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT id_disciplina, nome_disciplina, carga_horaria FROM disciplina WHERE id_professor=:tbedit');
      ParamByName('tbedit').AsInteger:=StrToInt(DBEditNumMatriculaProfessor.Text);
      Open();
      DBGrid1.Columns.Items[0].FieldName:='id_disciplina';
      DBGrid1.Columns.Items[1].FieldName:='nome_disciplina';
      DBGrid1.Columns.Items[2].FieldName:='carga_horaria';

    end;
end;

end.

