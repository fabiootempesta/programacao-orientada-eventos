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
    EditNomeCarro: TEdit;
    EditIDItem: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure EditNomeCarroChange(Sender: TObject);

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
  with DataModule1.ZQueryConsulta do begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT*FROM carro WHERE den_carro LIKE ' + QuotedStr('%') + '||:nome||' + QuotedStr('%'));
      ParamByName('nome').AsString := EditNomeCarro.Text;
      Open();
    end;
end;

procedure TFormConsultas.Button3Click(Sender: TObject);
begin
   with DataModule1.ZQueryConsulta do begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT*FROM item WHERE id_item=:ID');
      ParamByName('ID').AsString:= EditIDItem.Text;
      Open();
    end;
end;

procedure TFormConsultas.Button4Click(Sender: TObject);
begin
   with DataModule1.ZQueryConsulta do begin
      Close();
      SQL.Clear();
      SQL.Add('SELECT*FROM gasto WHERE data BETWEEN :inicio AND :fim');
      ParamByName('inicio').AsDate := DateInicio.Date;
      ParamByName('fim').AsDate := DateFim.Date;
      Open();
    end;
end;

procedure TFormConsultas.EditNomeCarroChange(Sender: TObject);
begin
  //EditNomeCarro.Text:='';
end;


end.


