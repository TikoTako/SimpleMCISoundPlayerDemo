unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ComCtrls,
  SimpleMCISoundPlayerUnit;

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
    VolumeBar: TTrackBar;
    RewindButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure RemoveButtonClick(Sender: TObject);
    procedure VolumeBarChange(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure PlayRewindStopButtonClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  gSimpleMCISoundPlayer: TSimpleMCISoundPlayer;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  AllocConsole;
  Caption := DirectoryListBox1.Directory;
  gSimpleMCISoundPlayer := TSimpleMCISoundPlayer.Create(self);
end;

procedure TMainForm.DirectoryListBox1Change(Sender: TObject);
begin
  Caption := DirectoryListBox1.Directory;
end;

procedure TMainForm.AddButtonClick(Sender: TObject);
begin
  { Add to list and open in player }
  if FileListBox1.ItemIndex > -1 then
  begin
    ListBox1.Items.AddObject(FileListBox1.Items[FileListBox1.ItemIndex], Pointer(StrNew(PChar(FileListBox1.FileName))));
    gSimpleMCISoundPlayer.Open(FileListBox1.FileName);
  end;
end;

procedure TMainForm.RemoveButtonClick(Sender: TObject);
begin
  { Remove from list and player }
  if ListBox1.ItemIndex > -1 then
  begin
    gSimpleMCISoundPlayer.Close(PChar(ListBox1.Items.Objects[ListBox1.ItemIndex]));
    StrDispose(PChar(ListBox1.Items.Objects[ListBox1.ItemIndex]));
    ListBox1.Items.Delete(ListBox1.ItemIndex);
  end;
end;

procedure TMainForm.FileListBox1DblClick(Sender: TObject);
begin
  { TODO : Add id not in list remove if in list }
end;

procedure TMainForm.VolumeBarChange(Sender: TObject);
var
  vFile: string;
begin
  { Change volume of selected file }
  if ListBox1.ItemIndex > -1 then
  begin
    vFile := PChar(ListBox1.Items.Objects[ListBox1.ItemIndex]);
    gSimpleMCISoundPlayer.SetVolume(vFile, VolumeBar.Position);
  end;
end;

procedure TMainForm.ListBox1Click(Sender: TObject);
var
  vFile: string;
begin
  { Get the volume and set the VolumeBar }
  if ListBox1.ItemIndex > -1 then
  begin
    vFile := PChar(ListBox1.Items.Objects[ListBox1.ItemIndex]);
    VolumeBar.Position := gSimpleMCISoundPlayer.GetVolume(vFile);
  end;
end;

procedure TMainForm.ListBox1DblClick(Sender: TObject);
begin
  { TODO : Stop if play and play if not }
end;

procedure TMainForm.PlayRewindStopButtonClick(Sender: TObject);
var
  vFile: string;
  vButton: TButton;
begin
  if (Sender is TButton) and (ListBox1.ItemIndex > -1) then
  begin
    vButton := TButton(Sender);
    vFile := PChar(ListBox1.Items.Objects[ListBox1.ItemIndex]);
    if (vButton.Name = PlayButton.Name) then
      gSimpleMCISoundPlayer.Play(vFile)
    else if (vButton.Name = RewindButton.Name) then
      gSimpleMCISoundPlayer.Rewind(vFile)
    else if (vButton.Name = StopButton.Name) then
      gSimpleMCISoundPlayer.Stop(vFile);
  end;
end;

end.
