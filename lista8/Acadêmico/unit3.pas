unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids, DBDateTimePicker, DB;

type

  { TFormCadAlunos }

  TFormCadAlunos = class(TForm)
    DBDateTimePicker1: TDBDateTimePicker;
    DBEdit1: TDBEdit;
    DBEditSexo: TDBEdit;
    DBEditNomeAluno: TDBEdit;
    DBEditNumMatriculaAluno: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  FormCadAlunos: TFormCadAlunos;

implementation

uses Unit2;
{$R *.lfm}

{ TFormCadAlunos }

procedure TFormCadAlunos.FormActivate(Sender: TObject);
begin
  with TDataPrincipal.ZQueryConsulta do
    if (DBEditNumMatriculaAluno.Text<>'') then begin
      DBGrid1.Clear();
      Close();
      SQL.Clear();
      SQL.Add('SELECT disciplina.id_disciplina AS IDDiscplina, disciplina.nome_disciplina AS Nome, disciplina_aluno.nota AS Nota FROM disciplina,disciplina_aluno WHERE disciplina_aluno.matricula_aluno=:tbedit AND disciplina.id_disciplina=disciplina_aluno.id_disciplina');
      ParamByName('tbedit').AsInteger:=StrToInt(DBEditNumMatriculaAluno.Text);
      Open();
      DBGrid1.Columns.Items[0].FieldName:='IDDiscplina';
      DBGrid1.Columns.Items[1].FieldName:='Nome';
      DBGrid1.Columns.Items[2].FieldName:='Nota';

    end;
end;


procedure TFormCadAlunos.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
  with tDataPrincipal.ZQueryConsulta do begin
    if (DBEditNumMatriculaAluno.Text<>'') then begin
      DBGrid1.Clear();
      Close();
      SQL.Clear();
      SQL.Add('SELECT disciplina.id_disciplina AS IDDiscplina, disciplina.nome_disciplina AS Nome, disciplina_aluno.nota AS Nota FROM disciplina,disciplina_aluno WHERE disciplina_aluno.matricula_aluno=:tbedit AND disciplina.id_disciplina=disciplina_aluno.id_disciplina');
      ParamByName('tbedit').AsInteger:=StrToInt(DBEditNumMatriculaAluno.Text);
      Open();
    end;
  end;
end;
end.

