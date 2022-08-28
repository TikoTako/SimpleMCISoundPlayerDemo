program MCIPlayerTest;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  SimpleMCISoundPlayerUnit in 'SimpleMCISoundPlayer\SimpleMCISoundPlayerUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
