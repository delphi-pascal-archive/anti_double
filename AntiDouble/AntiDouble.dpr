program AntiDouble;

uses
  Forms,
  main in 'main.pas' {MainForm},
  AddFolder in 'AddFolder.pas' {AddFolderDialog},
  Result in 'Result.pas' {ResultForm},
  Shared in 'Shared.pas',
  Help in 'Help.pas' {HelpForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'јнтиƒубль';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TResultForm, ResultForm);
  Application.CreateForm(THelpForm, HelpForm);
  Application.Run;
end.
