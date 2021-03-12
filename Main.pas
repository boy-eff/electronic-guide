unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  Vcl.Imaging.jpeg;

const arrSize = 4;
type
  TMainForm = class(TForm)
    Panel1: TPanel;
    CheckListBox1: TCheckListBox;
    Panel2: TPanel;
    Image1: TImage;
    procedure InfoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);

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
var
  MainForm: TMainForm;
  arrOfLandmarks : array[1..arrSize] of landmark;

implementation

uses Information,Unit1;

{$R *.dfm}


procedure TMainForm.Button1Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TMainForm.CheckListBox1ClickCheck(Sender: TObject);
var i : integer;
buff : string;
x,y : integer;
begin
  i := 0;
  buff := CheckListBox1.Items[CheckListBox1.ItemIndex];
  while ArrOfLandmarks[i].name <> buff do inc(i);
  x := ArrOfLandmarks[i].x;
  y := ArrOfLandmarks[i].y;
  if CheckListBox1.Checked[CheckListBox1.ItemIndex] then
  begin
  Image1.Canvas.Brush.Color := clRed;
  Image1.Canvas.Ellipse(x - 10,y - 10,x + 10,y + 10);
  end
  else
  begin
    Image1.Canvas.Brush.Color := clWhite;
    Image1.Canvas.Ellipse(x - 10,y - 10,x + 10,y + 10);
  end;


  
end;

procedure TMainForm.CheckListBox1DblClick(Sender: TObject);
begin
  if CheckListBox1.ItemIndex <> -1 then
    InfoForm.ShowModal
  else ShowMessage('������� �������� ������');
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
    CheckListBox1.Items.Add(ArrOfLandmarks[i].name);

    Image1.Canvas.Brush.Color := clWhite;
    for i := 1 to arrSize do
    begin
    x := arrOfLandmarks[i].x;
    y := arrOfLandmarks[i].y;
    Image1.Canvas.Ellipse(x - 10,y - 10,x + 10,y + 10);
    end;
      





end;

procedure TMainForm.InfoClick(Sender: TObject);
begin
  if CheckListBox1.ItemIndex <> -1 then
  InfoForm.ShowModal
  else ShowMessage('������� �������� ������');
end;

end.
