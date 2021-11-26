program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, datetimectrls, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6,
  Unit7
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadCarro, FormCadCarro);
  Application.CreateForm(TFormCadCategoria, FormCadCategoria);
  Application.CreateForm(TFormCadGasto, FormCadGasto);
  Application.CreateForm(TFormCadItem, FormCadItem);
  Application.CreateForm(TFormConsultas, FormConsultas);
  Application.Run;
end.

