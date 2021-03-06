unit Information;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TInfoForm = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

uses Main;

{$R *.dfm}

procedure TInfoForm.Button1Click(Sender: TObject);
begin
  Information.InfoForm.Close;
end;

procedure TInfoForm.FormShow(Sender: TObject);
var i : integer;
begin
  for I := 1 to Main.arrSize do
  if (Main.arrOfLandmarks[i].name = MainForm.CheckListBox1.Items[MainForm.CheckListBox1.ItemIndex]) then
  begin
  Memo1.Text := Main.arrOfLandmarks[i].shortDesc;
  Image1.Picture.LoadFromFile(Main.arrOfLandmarks[i].image);
  InfoForm.Caption := Main.arrOfLandmarks[i].name;
  break;
  end;


end;

end.
