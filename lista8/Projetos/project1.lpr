program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, Unit1, Unit2, zcomponent, Unit3, Unit4, Unit5, Unit6,
  Unit7
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormDepartamento, FormDepartamento);
  Application.CreateForm(TFormFuncionario, FormFuncionario);
  Application.CreateForm(TFormProjeto, FormProjeto);
  Application.CreateForm(TFormProjFunc, FormProjFunc);
  Application.CreateForm(TFormVisualizador, FormVisualizador);
  Application.Run;
end.

