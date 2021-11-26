unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, Forms, SysUtils, DBExtCtrls, db, FileUtil, ZConnection, ZDataset, ZSqlUpdate, ZSequence;

type

  { TtDataPrincipal }

  TtDataPrincipal = class(TDataModule)
    SourceEdita: TDataSource;
    SourceConsulta: TDataSource;
    SourceAluno: TDataSource;
    SourceProfessor: TDataSource;
    SourceDisciplina: TDataSource;
    SourceDisciplina_Aluno: TDataSource;
    ZConPrincipal: TZConnection;
    ZQuery1: TZQuery;
    ZQueryDisciplina: TZQuery;
    ZQueryDisciplina_Aluno: TZQuery;
    ZQueryProfessor: TZQuery;
    ZQueryAluno: TZQuery;
    ZQueryConsulta: TZReadOnlyQuery;
    ZUpdateAluno: TZUpdateSQL;
    ZUpdateProfessor: TZUpdateSQL;
    ZUpdateDisciplina: TZUpdateSQL;
    ZUpdateDisciplina_Aluno: TZUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
    procedure ZQueryDisciplina_AlunoAfterPost(DataSet: TDataSet);
  private

  public

  end;

var
  tDataPrincipal: TtDataPrincipal;

implementation
uses Unit6;
//uses Classes, SysUtils, DB, ZConnection, ZDataset, ZSqlUpdate;

{$R *.lfm}

function getSourceAluno():TDataSource;

begin

end;

{ TtDataPrincipal }

procedure TtDataPrincipal.DataModuleCreate(Sender: TObject);
var
DBDir, DBName: String;
begin
  DBDir := ExtractFilePath(Application.ExeName);
  DBName := DBDir + DirectorySeparator + 'teste.db';
  ZConPrincipal.Database := DBName;
  ZConPrincipal.Connect();
  ZQueryAluno.Open();
  ZQueryProfessor.Open();
  ZQueryDisciplina.Open();
  ZQueryDisciplina_Aluno.Open();

end;








procedure TtDataPrincipal.ZQueryDisciplina_AlunoAfterPost(DataSet: TDataSet);
var
  teste:String;
begin
  with FormLancamentoNota.DBLookupComboBox1 do begin
    teste:=KeyValue;
    ZQuery1.Close();
    ZQuery1.SQL.Clear();
    ZQuery1.SQL.Add('UPDATE aluno SET media=(SELECT AVG(nota) FROM disciplina_aluno WHERE disciplina_aluno.matricula_aluno=:id1 ) WHERE matricula_aluno=:id2');
    ZQuery1.ParamByName('id1').AsString:=teste;
    ZQuery1.ParamByName('id2').AsString:=teste;
    ZQuery1.ExecSQL;
  end;
end;

end.

