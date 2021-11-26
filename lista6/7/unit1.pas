unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ButtonVerificar: TButton;
    ButtonAddI: TButton;
    ButtonAddF: TButton;
    EditPalavra: TEdit;
    MemoLinhas: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonAddFClick(Sender: TObject);
    procedure ButtonAddIClick(Sender: TObject);
    procedure ButtonVerificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  MemoLinhas.Lines.Clear;
end;

procedure TForm1.ButtonAddFClick(Sender: TObject);
begin
  MemoLinhas.Lines.Add(EditPalavra.Text);
  EditPalavra.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Número de linhas: '+IntToStr(MemoLinhas.Lines.Count));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MemoLinhas.Lines.Clear;
end;

procedure TForm1.ButtonAddIClick(Sender: TObject);
begin
  MemoLinhas.Lines.Insert(0, EditPalavra.Text);
  EditPalavra.Clear;
end;

procedure TForm1.ButtonVerificarClick(Sender: TObject);
begin
  if(MemoLinhas.Lines.IndexOf(EditPalavra.Text)=-1) then
    ShowMessage('Não consta na lista!')
  else
    ShowMessage('Texto encontrado na posição: '+IntToStr(MemoLinhas.Lines.IndexOf(EditPalavra.Text)));
end;

end.

