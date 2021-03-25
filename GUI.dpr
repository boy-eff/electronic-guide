program GUI;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Information in 'Information.pas' {InfoForm},
  SelectionOfStartAndEndPoints in 'SelectionOfStartAndEndPoints.pas' {Form1},
  RouteChoice in 'RouteChoice.pas' {RouteChoiceForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TRouteChoiceForm, RouteChoiceForm);
  Application.Run;
end.
