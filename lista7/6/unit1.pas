unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Jogada(L, C:Integer);
    procedure StringGrid1Click(Sender: TObject);
    procedure JogadaTermina(L,C:Integer);
    function jogadaPossivel(L,C:Integer) : Boolean;
    procedure acabouJogo();
    function ContaPecas() : Integer;
  private

  public

  end;

var
  Form1: TForm1;
  JogadaIniciada : Boolean;
  LinIni, ColIni: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  JogadaIniciada:=False;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j:Integer;
begin
  for i:=0 to 6 do
    for j:=0 to 6 do
      if ((j>1) AND (j<5) OR (i>1) AND (i<5)) then
        StringGrid1.Cells[i,j]:='O';
  StringGrid1.Cells[3,3]:='.';
  Caption:='Resta 1 (Jogando)';
  Label1.Caption:='';


end;

procedure TForm1.Jogada(L, C:Integer);
begin
  if (((StringGrid1.Cells[C,L]='O')OR(StringGrid1.Cells[C,L]='.')) AND JogadaIniciada=True) then begin
    JogadaTermina(L,C);
    acabouJogo();

  end;
  if (((StringGrid1.Cells[C,L]='O')OR(StringGrid1.Cells[C,L]='.')) AND JogadaIniciada=False) then begin
    LinIni:=L;
    ColIni:=C;
    if (jogadaPossivel(L,C)) then begin
      JogadaIniciada:=True;
      Label1.Caption:='Jogada iniciada!';
    end else
      Label1.Caption:='Vc é burro?';
  end else
    JogadaIniciada:=False;


end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
  Jogada(StringGrid1.Selection.Top,StringGrid1.Selection.Left);
  Label2.Caption:='Restam: '+IntToStr(ContaPecas())+' peças!';
end;

procedure TForm1.JogadaTermina(L,C:Integer);
var
  i:Integer;
begin
  if(jogadaPossivel(L,C) AND (NOT(L=LinIni) OR NOT(C=ColIni)) AND ((L=LinIni)OR(ColIni=C))) then begin
    Label1.Caption:='Jogada feita!';
    if (L=LinIni) then begin
      for i:=0 to 2 do begin
          if(C>ColIni) then begin
            if(StringGrid1.Cells[ColIni+i,L]='O') then
              StringGrid1.Cells[ColIni+i,L]:='.'
            else
              StringGrid1.Cells[ColIni+i,L]:='O'
          end else begin
            if(StringGrid1.Cells[C+i,L]='O') then
              StringGrid1.Cells[C+i,L]:='.'
            else
              StringGrid1.Cells[C+i,L]:='O'
          end;
      end;

    end;
    if (C=ColIni) then begin
      for i:=0 to 2 do begin
          if(L>LinIni) then begin
            if(StringGrid1.Cells[ColIni,LinIni+i]='O') then
              StringGrid1.Cells[ColIni,LinIni+i]:='.'
            else
              StringGrid1.Cells[ColIni,LinIni+i]:='O'
          end else begin
            if(StringGrid1.Cells[C,L+i]='O') then
              StringGrid1.Cells[C,L+i]:='.'
            else
              StringGrid1.Cells[C,L+i]:='O'
          end;
      end;

    end;
  end else begin
    Label1.Caption:='Jogada inválida! Anta!';
  end;

end;

function TForm1.jogadaPossivel(L,C:Integer) : Boolean;
var
  possivel : Boolean;
begin
  possivel:=False;
  if StringGrid1.Cells[C,L]='.' then begin
    //jogada para cima
    if NOT(L<2) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C,L-1]='O') AND (StringGrid1.Cells[C,L-2]='O')) then
        possivel:=True;
    //jogada para baixo
    if NOT(L>4) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C,L+1]='O') AND (StringGrid1.Cells[C,L+2]='O')) then
        possivel:=True;
    //jogada para esquerda
    if NOT(C<2) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C-1,L]='O') AND (StringGrid1.Cells[C-2,L]='O')) then
        possivel:=True;
    //jogada para direita
    if NOT(C>4) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C+1,L]='O') AND (StringGrid1.Cells[C+2,L]='O')) then
        possivel:=True;
  end;
  if StringGrid1.Cells[C,L]='O' then begin
    //jogada para baixo
    if NOT(L<2) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C,L-1]='O') AND (StringGrid1.Cells[C,L-2]='.')) then
        possivel:=True;
    //jogada para cima
    if NOT(L>4) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C,L+1]='O') AND (StringGrid1.Cells[C,L+2]='.')) then
        possivel:=True;
    //jogada para esquerda
    if NOT(C<2) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C-1,L]='O') AND (StringGrid1.Cells[C-2,L]='.')) then
        possivel:=True;
    //jogada para direita
    if NOT(C>4) then //condição para nao estourar o vetor
      if ((StringGrid1.Cells[C+1,L]='O') AND (StringGrid1.Cells[C+2,L]='.')) then
        possivel:=True;
  end;
  Result:=possivel;
end;

procedure TForm1.acabouJogo();
var
  i,j:Integer;
  acabou:Boolean;
begin
  acabou:=True;
  for i:=0 to 6 do
    for j:=0 to 6 do begin
      if(jogadaPossivel(i,j))then begin
        acabou:=False;
        Break;
      end;
    end;
  if (acabou) then begin
    ShowMessage('Acabou, pressione "ok" para reiniciar!');
    Button1Click(Form1);
  end;

end;

function TForm1.ContaPecas() : Integer;
var
  i,j,x:Integer;
  acabou:Boolean;
begin
  x:=0;
  acabou:=True;
  for i:=0 to 6 do
    for j:=0 to 6 do
       if (StringGrid1.Cells[i,j] = 'O') then
        x += 1;
  Result := x;
end;

end.

