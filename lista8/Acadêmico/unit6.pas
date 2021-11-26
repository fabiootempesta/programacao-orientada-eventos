unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids;

type

  { TFormLancamentoNota }

  TFormLancamentoNota = class(TForm)
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
  private

  public

  end;

var
  FormLancamentoNota: TFormLancamentoNota;

implementation
uses Unit2;
{$R *.lfm}

{ TFormLancamentoNota }

procedure TFormLancamentoNota.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
  {with tDataPrincipal do begin
    ZQueryConsulta.Close;
    ZQueryConsulta.SQL.Clear;
    ZQueryConsulta.SQL.Add('SELECT nota FROM disciplina_aluno WHERE disciplina_aluno.matricula_aluno=1');
    ZQueryConsulta.Open;
    ZQuery1.;
  end;}
end;

{ TFormLancamentoNota }



end.

