unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBGrids;

type

  { TFormFuncionario }

  TFormFuncionario = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  FormFuncionario: TFormFuncionario;

implementation
uses Unit2;
{$R *.lfm}

{ TFormFuncionario }

procedure TFormFuncionario.FormActivate(Sender: TObject);
begin
  with DataModule1.ZQueryConsulta1 do
    if (DBEdit1.Text<>'') then begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT id_projeto, descricao_projeto FROM projeto WHERE id_funcionario_supervisor= :tbedit');
      ParamByName('tbedit').AsString:=DBEdit1.Text;
      Open();
      DBGrid1.Columns.Items[0].FieldName:='id_projeto';
      DBGrid1.Columns.Items[1].FieldName:='descricao_projeto';

    end;
end;

procedure TFormFuncionario.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
  with DataModule1.ZQueryConsulta1 do
    if (DBEdit1.Text<>'') then begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT id_projeto, descricao_projeto FROM projeto WHERE id_funcionario_supervisor= :tbedit');
      ParamByName('tbedit').AsString:=DBEdit1.Text;
      Open();
      DBGrid1.Columns.Items[0].FieldName:='id_projeto';
      DBGrid1.Columns.Items[1].FieldName:='descricao_projeto';

    end;
end;

end.

