object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'MainForm'
  ClientHeight = 242
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object FileListBox1: TFileListBox
    Left = 295
    Top = 8
    Width = 281
    Height = 201
    ItemHeight = 15
    Mask = '*.mp3'
    TabOrder = 0
    OnDblClick = FileListBox1DblClick
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 8
    Width = 281
    Height = 201
    FileList = FileListBox1
    TabOrder = 1
    OnChange = DirectoryListBox1Change
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 215
    Width = 281
    Height = 21
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 295
    Top = 215
    Width = 281
    Height = 23
    FileList = FileListBox1
    Filter = 'MP3 files (*.mp3)|*.mp3'
    TabOrder = 3
  end
  object ListBox1: TListBox
    Left = 631
    Top = 8
    Width = 281
    Height = 201
    ItemHeight = 15
    TabOrder = 4
    OnClick = ListBox1Click
    OnDblClick = ListBox1DblClick
  end
  object AddButton: TButton
    Left = 582
    Top = 8
    Width = 43
    Height = 98
    Caption = 'ADD >'
    TabOrder = 5
    OnClick = AddButtonClick
  end
  object PlayButton: TButton
    Left = 631
    Top = 215
    Width = 90
    Height = 23
    Caption = 'Play'
    TabOrder = 6
    OnClick = PlayRewindStopButtonClick
  end
  object StopButton: TButton
    Left = 823
    Top = 215
    Width = 90
    Height = 23
    Caption = 'Stop'
    TabOrder = 7
    OnClick = PlayRewindStopButtonClick
  end
  object RemoveButton: TButton
    Left = 582
    Top = 112
    Width = 43
    Height = 97
    Caption = '< REM'
    TabOrder = 8
    OnClick = RemoveButtonClick
  end
  object VolumeBar: TTrackBar
    Left = 918
    Top = 8
    Width = 35
    Height = 201
    Max = 1000
    Orientation = trVertical
    Frequency = 10
    Position = 800
    TabOrder = 9
    TickMarks = tmBoth
    OnChange = VolumeBarChange
  end
  object RewindButton: TButton
    Left = 727
    Top = 215
    Width = 90
    Height = 23
    Caption = 'Rewind'
    TabOrder = 10
    OnClick = PlayRewindStopButtonClick
  end
end
