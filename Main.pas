unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  Vcl.Imaging.jpeg, Vcl.Menus, Vcl.Imaging.pngimage;

const arrSize = 4;
type
  TMainForm = class(TForm)
    Panel1: TPanel;
    CheckListBox1: TCheckListBox;
    Panel2: TPanel;
    Image1: TImage;
    SelectButton: TButton;
    MainMenu1: TMainMenu;
    Edit1: TMenuItem;
    Add1: TMenuItem;
    Delete1: TMenuItem;
    Edit2: TMenuItem;
    Clear1: TMenuItem;
    Help1: TMenuItem;
    Info1: TMenuItem;
    Image2: TImage;
    procedure InfoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);
    procedure SelectButtonClick(Sender: TObject);
    procedure Info1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  landmark = record
  x : integer;
  y : integer;
  image : string;
  name : string;
  shortDesc : string;
  id : word;
  end;
  type TArrLandmarks = array[1..arrSize] of landmark;
  TArrRoute = array[1..15] of byte;
var
  MainForm: TMainForm;
  arrOfLandmarks : TArrLandmarks;
  arrOfRoute : TArrRoute;
  RouteSize : byte = 1;


implementation

uses Information,SelectionOfStartAndEndPoints,Help,RouteChoice;

{$R *.dfm}

procedure DrawCircle(x,y : integer; colour : TColor; canvas : TCanvas);
  var i : integer;
begin
  canvas.Brush.Color := colour;
  canvas.Ellipse(x - 10,y - 10,x + 10,y + 10);
end;

procedure TMainForm.CheckListBox1ClickCheck(Sender: TObject);
var i : integer;
j : byte;
buff : string;
begin
  i := 1;
  buff := CheckListBox1.Items[CheckListBox1.ItemIndex];
  while ArrOfLandmarks[i].name <> buff do inc(i);

  if CheckListBox1.Checked[CheckListBox1.ItemIndex] then
  begin
  DrawCircle(arrOfLandmarks[i].x,arrOfLandmarks[i].y,clRed,Image2.Canvas);
  end
  else
  begin
    DrawCircle(arrOfLandmarks[i].x,arrOfLandmarks[i].y,clWhite,Image2.Canvas);
  end;


  
end;

procedure TMainForm.CheckListBox1DblClick(Sender: TObject);
begin
  if CheckListBox1.ItemIndex <> -1 then
    InfoForm.ShowModal
  else ShowMessage('??????? ???????? ??????');
end;

procedure TMainForm.Delete1Click(Sender: TObject);
  var i,x,y : integer;
begin
  for i := 0 to arrSize - 1 do
  CheckListBox1.CheckAll(cbUnchecked);
  for i := 1 to arrSize do DrawCircle(arrOfLandmarks[i].x,arrOfLandmarks[i].y,clWhite,Image2.Canvas);
  CheckListBox1.ItemIndex := -1;
end;



procedure TMainForm.FormShow(Sender: TObject);
  var
  i : integer;
  f : textFile;
  x,y : integer;
begin
  AssignFile(f,'test.txt');
  Reset(f);
  for I := 1 to arrSize do
  begin
    readln(f,arrOfLandmarks[i].name);
  end;
  CloseFile(f);
  for i := 1 to arrSize do
    begin
      arrOfLandmarks[i].image := 'images/' + arrOfLandmarks[i].name + '.jpg';
      arrOfLandmarks[i].id := i;
    end;
  for i := 1 to arrSize do
    begin
      AssignFile(f,'describes/' + arrOfLandmarks[i].name + '.txt');
      Reset(f);
      while not eof(f) do
      begin
        readln(f,arrOfLandmarks[i].shortDesc);
      end;
      Closefile(f);

    end;
    for i := 1 to arrSize do
    begin
      AssignFile(f,'coordinates/' + arrOfLandmarks[i].name + '.txt');
      Reset(f);
        readln(f,arrOfLandmarks[i].x);
        readln(f,arrOfLandmarks[i].y);
      Closefile(f);

    end;
    for i := 1 to arrSize do
    begin
    CheckListBox1.Items.Add(ArrOfLandmarks[i].name);
    DrawCircle(arrOfLandmarks[i].x,arrOfLandmarks[i].y,clWhite,Image2.Canvas);
    end;
      





end;

procedure TMainForm.Info1Click(Sender: TObject);
begin
  Help.Form2.ShowModal;
end;

procedure TMainForm.InfoClick(Sender: TObject);
begin
  if CheckListBox1.ItemIndex <> -1 then
  InfoForm.ShowModal
  else ShowMessage('??????? ???????? ??????');
end;

procedure TMainForm.SelectButtonClick(Sender: TObject);
begin
  RouteChoiceForm.ShowModal;
end;

end.
