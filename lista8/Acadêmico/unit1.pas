unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private

  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses Unit3,Unit4,Unit5,Unit6,Unit7;
{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  FormCadAlunos.ShowModal();
end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
  FormCadProf.ShowModal();
end;

procedure TFormPrincipal.Button3Click(Sender: TObject);
begin
  FormCadDisciplinas.ShowModal();
end;

procedure TFormPrincipal.Button4Click(Sender: TObject);
begin
  FormLancamentoNota.ShowModal();
end;

procedure TFormPrincipal.Button5Click(Sender: TObject);
begin
  FormConsultas.ShowModal();
end;

procedure TFormPrincipal.Button6Click(Sender: TObject);
begin
  //FormMostraProfessores.ShowModal();
end;

procedure TFormPrincipal.Button7Click(Sender: TObject);
begin
  //FormMostraDisciplinas.ShowModal();
end;

procedure TFormPrincipal.Button8Click(Sender: TObject);
begin
  //FormMostraNotas.ShowModal();
end;

end.

