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
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private

  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation
Uses Unit3,Unit4,Unit5,Unit6,Unit7;
{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
  FormDepartamento.ShowModal();
end;

procedure TFormPrincipal.Button3Click(Sender: TObject);
begin
  FormProjeto.ShowModal();
end;

procedure TFormPrincipal.Button4Click(Sender: TObject);
begin
  FormProjFunc.ShowModal();
end;

procedure TFormPrincipal.Button5Click(Sender: TObject);
begin
  FormVisualizador.ShowModal();
end;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  FormFuncionario.ShowModal();
end;

end.

