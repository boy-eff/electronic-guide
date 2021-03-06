unit SelectionOfStartAndEndPoints;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Background: TPanel;
    StartComboBox: TComboBox;
    StartOfRoute: TLabel;
    EndComboBox: TComboBox;
    EndOfRoute: TLabel;
    PlotRouteButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Main;

{$R *.dfm}

procedure TForm1.FormHide(Sender: TObject);
begin
  StartComboBox.Clear;
  EndComboBox.Clear;
end;

procedure TForm1.FormShow(Sender: TObject);
var i : integer;
begin
  for i := 0 to Main.arrSize - 1 do
  begin
    if MainForm.CheckListBox1.Checked[i] then
    begin
      StartComboBox.Items.Add(MainForm.CheckListBox1.Items[i]);
      EndComboBox.Items.Add(MainForm.CheckListBox1.Items[i]);
    end;
  end;
    
end;

end.
