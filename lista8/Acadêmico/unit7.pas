unit unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  DBExtCtrls, DateTimePicker;

type

  { TFormConsultas }

  TFormConsultas = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    DateFim: TDateTimePicker;
    DateInicio: TDateTimePicker;
    DBGrid1: TDBGrid;
    EditNomeAluno: TEdit;
    EditNomeProf: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  FormConsultas: TFormConsultas;

implementation
uses Unit2;
{$R *.lfm}

{ TFormConsultas }

procedure TFormConsultas.Button1Click(Sender: TObject);
begin
  with tDataPrincipal.ZQueryConsulta do begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT*FROM aluno WHERE nome_aluno LIKE ' + QuotedStr('%') + '||:nome||' + QuotedStr('%'));
      ParamByName('nome').AsString := EditNomeAluno.Text;
      Open();
    end;
end;

procedure TFormConsultas.Button2Click(Sender: TObject);
begin
  with tDataPrincipal.ZQueryConsulta do begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT matricula_aluno AS Matricula,nome_aluno AS Nome,sexo AS Sexo,data_nascimento AS Nascimento,media AS Media FROM aluno WHERE data_nascimento BETWEEN :inicio AND :fim');
      ParamByName('inicio').AsDate := DateInicio.Date;
      ParamByName('fim').AsDate := DateFim.Date;
      Open();
    end;
end;

procedure TFormConsultas.Button3Click(Sender: TObject);
begin
  with tDataPrincipal.ZQueryConsulta do begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT*FROM professor WHERE nome_professor LIKE ' + QuotedStr('%') + '||:nome||' + QuotedStr('%'));
      ParamByName('nome').AsString := EditNomeProf.Text;
      Open();
    end;
end;

end.

