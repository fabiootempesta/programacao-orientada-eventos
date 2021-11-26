program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, Unit1, Unit2, zcomponent, Unit3, Unit4, Unit5, Unit6,
  unit7;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TtDataPrincipal, tDataPrincipal);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadAlunos, FormCadAlunos);
  Application.CreateForm(TFormCadProf, FormCadProf);
  Application.CreateForm(TFormCadDisciplinas, FormCadDisciplinas);
  Application.CreateForm(TFormLancamentoNota, FormLancamentoNota);
  Application.CreateForm(TFormConsultas, FormConsultas);
  Application.Run;
end.

