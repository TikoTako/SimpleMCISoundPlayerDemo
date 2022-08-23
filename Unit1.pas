unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    ListBox1: TListBox;
    AddButton: TButton;
    PlayButton: TButton;
    StopButton: TButton;
    RemoveButton: TButton;
    TrackBar1: TTrackBar;
    procedure FormCreate(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure RemoveButtonClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure PlayButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Caption := DirectoryListBox1.Directory;
end;

procedure TMainForm.DirectoryListBox1Change(Sender: TObject);
begin
  Caption := DirectoryListBox1.Directory;
end;

procedure TMainForm.AddButtonClick(Sender: TObject);
begin
  { TODO : Add to list and player }
end;

procedure TMainForm.RemoveButtonClick(Sender: TObject);
begin
  { TODO : Remove from list and player }
end;

procedure TMainForm.FileListBox1DblClick(Sender: TObject);
begin
  { TODO : Add id not in list remove if in list }
end;

procedure TMainForm.TrackBar1Change(Sender: TObject);
begin
  { TODO : Change volume of selected file }
end;

procedure TMainForm.PlayButtonClick(Sender: TObject);
begin
  { TODO : Play selected file }
end;

procedure TMainForm.StopButtonClick(Sender: TObject);
begin
  { TODO : Stop selected file }
end;

procedure TMainForm.ListBox1DblClick(Sender: TObject);
begin
  { TODO : Stop if play and play if not }
end;

end.
