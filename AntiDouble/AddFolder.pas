unit AddFolder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, StdCtrls;

type
  TAddFolderDialog = class(TForm)
    ShellTreeView: TShellTreeView;
    OkButton: TButton;
    CancelButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    Path: String;
  end;

var
  AddFolderDialog: TAddFolderDialog;

implementation

{$R *.dfm}

procedure TAddFolderDialog.FormShow(Sender: TObject);
begin
  Path := '';
end;

procedure TAddFolderDialog.OkButtonClick(Sender: TObject);
begin
  Path := ShellTreeView.Path;
end;

end.
