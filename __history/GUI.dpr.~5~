program GUI;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Information in 'Information.pas' {InfoForm},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
