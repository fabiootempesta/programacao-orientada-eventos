unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, Forms, SysUtils, db, FileUtil, ZConnection, ZDataset, ZSqlUpdate, ZSequence;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    SourceConsulta: TDataSource;
    DataSourceCategoria: TDataSource;
    DataSourceCarro: TDataSource;
    DataSourceItem: TDataSource;
    DataSourceGasto: TDataSource;
    ZConnection1: TZConnection;
    ZQueryConsulta: TZReadOnlyQuery;
    ZTableCarro: TZTable;
    ZTableItem: TZTable;
    ZTableGasto: TZTable;
    ZTableCategoria: TZTable;
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
  DBName := DBDir + DirectorySeparator + 'gastos.db';
  ZConnection1.Database := DBName;
  ZConnection1.Connect();
  ZTableCarro.Open();
  ZTableCategoria.Open();
  ZTableGasto.Open();
  ZTableItem.Open();
end;

end.

