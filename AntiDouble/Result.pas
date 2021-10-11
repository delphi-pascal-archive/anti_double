unit Result;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids,
  Shared, Menus, Buttons, ShellApi;

type
  TResultForm = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    _File: TMenuItem;
    LoadFromFile: TMenuItem;
    SaveToFile: TMenuItem;
    CloseResult: TMenuItem;
    Open: TMenuItem;
    DeleteFromList: TMenuItem;
    DeleteToRecyle: TMenuItem;
    OpenFolder: TMenuItem;
    DoublesList: TStringGrid;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DoubleKeys: TLabel;
    _Sort: TMenuItem;
    ByGroup: TMenuItem;
    ByName: TMenuItem;
    BySize: TMenuItem;
    ByTime: TMenuItem;
    ByFolder: TMenuItem;
    OpenResultDialog: TOpenDialog;
    SaveResultDialog: TSaveDialog;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    PopupMenu: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ByGroupClick(Sender: TObject);
    procedure ByNameClick(Sender: TObject);
    procedure BySizeClick(Sender: TObject);
    procedure ByTimeClick(Sender: TObject);
    procedure ByFolderClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure OpenFolderClick(Sender: TObject);
    procedure DeleteFromListClick(Sender: TObject);
    procedure DeleteToRecyleClick(Sender: TObject);
    procedure SaveToFileClick(Sender: TObject);
    procedure LoadFromFileClick(Sender: TObject);
    procedure CloseResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure FillDoublesList;
  end;

var
  ResultForm: TResultForm;

implementation

{$R *.dfm}

procedure TResultForm.FillDoublesList;
var
  i: Cardinal;
  S1: String;
begin
  DoubleKeys.Caption := '';
  if DoubleIndications.Name then DoubleKeys.Caption := DoubleKeys.Caption + ' Имя';
  if DoubleIndications.Size then DoubleKeys.Caption := DoubleKeys.Caption + ' Размер';
  if DoubleIndications.Contents then DoubleKeys.Caption := DoubleKeys.Caption + ' Содержимое';
  DoublesList.RowCount := Length(FilesList) + 2;
  DoublesList.Cells[0, 0] := ' Группа';
  DoublesList.Cells[1, 0] := ' Имя';
  DoublesList.Cells[2, 0] := ' Размер';
  DoublesList.Cells[3, 0] := ' Время';
  DoublesList.Cells[4, 0] := ' Папка';
  DoublesList.Rows[1].Clear;
  if Length(FilesList) > 0 then
    for i := 0 to Length(FilesList) - 1 do
    begin
      Str(FilesList[i].Double, S1);
      DoublesList.Cells[0, i + 1] := S1;
      DoublesList.Cells[1, i + 1] := FilesList[i].Name;
      Str(FilesList[i].Size, S1);
      DoublesList.Cells[2, i + 1] := S1;
      S1 := DateTimeToStr(FileDateToDateTime(FilesList[i].Time));
      DoublesList.Cells[3, i + 1] := S1;
      DoublesList.Cells[4, i + 1] := GetPath(FilesList[i].Folder);
    end;
  if Length(FilesList) > 0 then DoublesList.RowCount := Length(FilesList) + 1;
end;

procedure TResultForm.FormShow(Sender: TObject);
begin
  FillDoublesList;
end;

procedure TResultForm.FormResize(Sender: TObject);
begin
  DoublesList.Width := ResultForm.ClientWidth - DoublesList.Left - 5;
  DoublesList.Height := ResultForm.ClientHeight - DoublesList.Top - 5;
  if DoublesList.ClientWidth > DoublesList.ColWidths[0] + DoublesList.ColWidths[1] + DoublesList.ColWidths[2] + DoublesList.ColWidths[3] + DoublesList.GridLineWidth * 5 then
    DoublesList.ColWidths[4] := DoublesList.ClientWidth - DoublesList.ColWidths[0] - DoublesList.ColWidths[1] - DoublesList.ColWidths[2] - DoublesList.ColWidths[3] - DoublesList.GridLineWidth * 5
  else
    DoublesList.ColWidths[4] := DoublesList.ColWidths[0] + DoublesList.ColWidths[1] + DoublesList.ColWidths[2] + DoublesList.ColWidths[3] + DoublesList.GridLineWidth * 5;
end;

procedure TResultForm.ByGroupClick(Sender: TObject);
begin
  SortBy('Double');
  FillDoublesList;
end;

procedure TResultForm.ByNameClick(Sender: TObject);
begin
  SortBy('Name');
  FillDoublesList;
end;

procedure TResultForm.BySizeClick(Sender: TObject);
begin
  SortBy('Size');
  FillDoublesList;
end;

procedure TResultForm.ByTimeClick(Sender: TObject);
begin
  SortBy('Time');
  FillDoublesList;
end;

procedure TResultForm.ByFolderClick(Sender: TObject);
begin
  SortBy('Folder');
  FillDoublesList;
end;

procedure TResultForm.OpenClick(Sender: TObject);
var
  i: Cardinal;
begin
  if Length(FilesList) = 0 then Exit;
  for i := DoublesList.Selection.Top - 1 to DoublesList.Selection.Bottom - 1 do
    ShellExecute(Handle, 'open', PChar(GetPath(FilesList[i].Folder) + FilesList[i].Name), '', '', SW_Show);
end;

procedure TResultForm.OpenFolderClick(Sender: TObject);
var
  i: Cardinal;
begin
  if Length(FilesList) = 0 then Exit;
  for i := DoublesList.Selection.Top - 1 to DoublesList.Selection.Bottom - 1 do
    ShellExecute(Handle, 'open', PChar(GetPath(FilesList[i].Folder)), '', '', SW_Show);
end;

procedure TResultForm.DeleteFromListClick(Sender: TObject);
var
  i: Cardinal;
begin
  if Length(FilesList) = 0 then Exit;
  for i := DoublesList.Selection.Top - 1 to DoublesList.Selection.Bottom - 1 do
    DeleteItem(DoublesList.Selection.Top - 1);
  FillDoublesList;
end;

procedure TResultForm.DeleteToRecyleClick(Sender: TObject);
var
  i, j: Cardinal;
  SHF: TSHFileOpStruct;
  S: String;
begin
  if Length(FilesList) = 0 then Exit;
  j := DoublesList.Selection.Top - 1;
  S := '';
  FillChar(SHF, SizeOf(SHF), 0);
  SHF.Wnd := Handle;
  SHF.wFunc := FO_DELETE;
  SHF.fFlags := FOF_ALLOWUNDO;
  for i := DoublesList.Selection.Top - 1 to DoublesList.Selection.Bottom - 1 do
    S := S + GetPath(FilesList[i].Folder) + FilesList[i].Name + #0;
  SHF.pFrom := PChar(S);
  SHFileOperation(SHF);
  for i := DoublesList.Selection.Top - 1 to DoublesList.Selection.Bottom - 1 do
    if not FileExists(GetPath(FilesList[j].Folder) + FilesList[j].Name) then
      DeleteItem(j)
    else
      j := j + 1;
  FillDoublesList;
end;

procedure TResultForm.SaveToFileClick(Sender: TObject);
var
  i: Cardinal;
  F: File;
  Buf: Cardinal;
begin
  if Length(FilesList) = 0 then Exit;
  if not SaveResultDialog.Execute then Exit;
  AssignFile(F, SaveResultDialog.FileName);
  ReWrite(F, 1);
  Buf := 123456789;
  BlockWrite(F, Buf, SizeOf(Buf));
  BlockWrite(F, DoubleIndications, SizeOf(DoubleIndications));
  Buf := Length(FoldersTree);
  BlockWrite(F, Buf, SizeOf(Buf));
  for i := 0 to Length(FoldersTree) - 1 do
    BlockWrite(F, FoldersTree[i], SizeOf(FoldersTree[i]));
  Buf := Length(FilesList);
  BlockWrite(F, Buf, SizeOf(Buf));
  for i := 0 to Length(FilesList) - 1 do
    BlockWrite(F, FilesList[i], SizeOf(FilesList[i]));
  CloseFile(F);
end;

procedure TResultForm.LoadFromFileClick(Sender: TObject);
var
  i: Cardinal;
  F: File;
  Buf: Cardinal;
begin
  if not OpenResultDialog.Execute then Exit;
  AssignFile(F, OpenResultDialog.FileName);
  Reset(F, 1);
  BlockRead(F, Buf, SizeOf(Buf));
  if Buf <> 123456789 then
  begin
    CloseFile(F);
    ShowMessage('Неверный тип файла');
    Exit;
  end;
  BlockRead(F, DoubleIndications, SizeOf(DoubleIndications));
  BlockRead(F, Buf, SizeOf(Buf));
  SetLength(FoldersTree, Buf);
  for i := 0 to Length(FoldersTree) - 1 do
    BlockRead(F, FoldersTree[i], SizeOf(FoldersTree[i]));
  BlockRead(F, Buf, SizeOf(Buf));
  SetLength(FilesList, Buf);
  for i := 0 to Length(FilesList) - 1 do
    BlockRead(F, FilesList[i], SizeOf(FilesList[i]));
  CloseFile(F);
  FillDoublesList;
end;

procedure TResultForm.CloseResultClick(Sender: TObject);
begin
  Close;
end;

end.
