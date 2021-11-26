unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBGrids, DBDateTimePicker;

type

  { TFormVisualizador }

  TFormVisualizador = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  FormVisualizador: TFormVisualizador;

implementation
uses Unit2;

{$R *.lfm}

{ TFormVisualizador }

procedure TFormVisualizador.Button1Click(Sender: TObject);
begin
  with DataModule1.ZQueryConsulta1 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT funcionario.nome_funcionario AS Nome, funcionario.salario AS Salario, departamento.nome_departamento AS Departamento, projeto_funcionario.horas_trabalhadas AS HorasTrabalhadas FROM projeto_funcionario,funcionario,departamento WHERE funcionario.id_funcionario=projeto_funcionario.id_funcionario AND funcionario.id_departamento=departamento.id_departamento AND projeto_funcionario.id_projeto=:label');
    ParamByName('label').AsString:=DBLookupComboBox1.KeyValue;
    Open();
  end;

end;

procedure TFormVisualizador.Button2Click(Sender: TObject);
begin
   with DataModule1.ZQueryConsulta4 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT*FROM departamento WHERE nome_departamento LIKE ' + QuotedStr('%') + '||:nome||' + QuotedStr('%'));
    ParamByName('nome').AsString:=Edit2.Text;
    Open();
   end;
end;

procedure TFormVisualizador.Button3Click(Sender: TObject);
begin
   with DataModule1.ZQueryConsulta2 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT*FROM funcionario WHERE id_departamento=:label');
    ParamByName('label').AsString:=DBLookupComboBox2.KeyValue;
    Open();
   end;
end;

procedure TFormVisualizador.Button4Click(Sender: TObject);
begin
   with DataModule1.ZQueryConsulta3 do begin
    Close();
    SQL.Clear();
    SQL.Add('SELECT*FROM funcionario WHERE nome_funcionario LIKE ' + QuotedStr('%') + '||:nome||' + QuotedStr('%'));
    ParamByName('nome').AsString:=Edit1.Text;
    Open();
   end;
end;

end.

