unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, Forms, SysUtils, db, FileUtil, ZConnection, ZDataset, ZSqlUpdate, ZSequence;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    SourceConsulta1: TDataSource;
    SourceConsulta2: TDataSource;
    SourceConsulta3: TDataSource;
    SourceConsulta4: TDataSource;
    DataSourceDep: TDataSource;
    DataSourceFunc: TDataSource;
    DataSourceProj: TDataSource;
    DataSourceProjFunc: TDataSource;
    ZConnection1: TZConnection;
    ZQueryConsulta3: TZReadOnlyQuery;
    ZQueryConsulta2: TZReadOnlyQuery;
    ZQueryConsulta1: TZReadOnlyQuery;
    ZQueryConsulta4: TZReadOnlyQuery;
    ZTableDepartamento: TZTable;
    ZTableFunc: TZTable;
    ZTableProj: TZTable;
    ZTableProjFunc: TZTable;
    procedure DataModuleCreate(Sender: TObject);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  DBDir, DBName: String;
begin
  DBDir := ExtractFilePath(Application.ExeName);
  DBName := DBDir + DirectorySeparator + 'projetos.db';
  ZConnection1.Database := DBName;
  ZConnection1.Connect();
  ZTableFunc.Open();
  ZTableDepartamento.Open();
  ZTableProj.Open();
  ZTableProjFunc.Open();
end;

end.

