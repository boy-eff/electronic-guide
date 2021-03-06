unit RouteChoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TRouteChoiceForm = class(TForm)
    ListBox1: TListBox;
    Up: TBitBtn;
    Down: TBitBtn;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure UpClick(Sender: TObject);
    procedure DownClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RouteChoiceForm: TRouteChoiceForm;

implementation

uses Main;

{$R *.dfm}



procedure TRouteChoiceForm.DownClick(Sender: TObject);
begin
  if ListBox1.ItemIndex < ListBox1.Items.Count - 1 then
  ListBox1.Items.Exchange(ListBox1.ItemIndex,ListBox1.ItemIndex + 1);
end;

procedure TRouteChoiceForm.FormHide(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure TRouteChoiceForm.FormShow(Sender: TObject);
var i : integer;
begin
  for i := 0 to Main.arrSize - 1 do
  begin
    if MainForm.CheckListBox1.Checked[i] then
    begin
      ListBox1.Items.Add(MainForm.CheckListBox1.Items[i]);
    end;
  end;

end;

procedure TRouteChoiceForm.UpClick(Sender: TObject);
begin
  if ListBox1.ItemIndex > 0 then
  ListBox1.Items.Exchange(ListBox1.ItemIndex,ListBox1.ItemIndex - 1);
end;

end.
