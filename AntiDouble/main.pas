unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,
  AddFolder, Result, Help, Shared, jpeg, ExtCtrls;

type
  TMainForm = class(TForm)
    FoldersListBox: TListBox;
    AddButton: TButton;
    Label1: TLabel;
    RemoveButton: TButton;
    ScanSubfoldersCheckBox: TCheckBox;
    DoubleIndicationsBox: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    StartButton: TButton;
    AboutButton: TButton;
    HelpButton: TButton;
    OperationName: TLabel;
    ProgressStaus: TLabel;
    ResultButton: TButton;
    procedure AddButtonClick(Sender: TObject);
    procedure RemoveButtonClick(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure ResultButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AboutButtonClick(Sender: TObject);
    procedure HelpButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TProgressThread = class(TThread)
    procedure Execute; override;
  end;

const
  BufferSize = 128*1024;  

var
  MainForm: TMainForm;
  ProgressThread: TProgressThread;
  Buffer1, Buffer2: array [0..BufferSize - 1] of Byte;
  
implementation

{$R XP.RES}
{$R *.dfm}

procedure TProgressThread.Execute;
var
  i, j, k, BytesInBuffer, n, DoubleNumber: Cardinal;
  F: TSearchRec;
  SearchResult: Integer;
  S1, S2: String;
  F1, F2: File;
  l: Boolean;
procedure ProgressTerminate;
begin
  SetLength(FoldersTree, 0);
  SetLength(FilesList, 0);
  MainForm.StartButton.Caption := 'Начать сканирование';
  MainForm.StartButton.Tag := 0;
  MainForm.OperationName.Caption := 'Сканирование прервано';
  MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
  MainForm.ProgressStaus.Caption := '';
  MainForm.Repaint;
end;
begin

  MainForm.OperationName.Caption := 'Сканирование папок';
  MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
  MainForm.ProgressStaus.Caption := '';
  MainForm.Repaint;
  i := 1;
  while (i < Length(FoldersTree)) and (not ProgressThreadTerminated) do
  begin
    Str(i, S1);
    Str(Length(FoldersTree) - 1, S2);
    MainForm.ProgressStaus.Caption := S1 + ' из ' + S2 + ' ';
    SearchResult := FindFirst(GetPath(i) + '*', faAnyFile, F);
    while (SearchResult = 0) and (not ProgressThreadTerminated) do
    begin
      if (F.Name <> '.') and (F.Name <> '..') then
        if (F.Attr and faDirectory) = faDirectory  then
        begin
          if ScanSubfolders then
          begin
            SetLength(FoldersTree, Length(FoldersTree) + 1);
            FoldersTree[Length(FoldersTree) - 1].Name := F.Name;
            FoldersTree[Length(FoldersTree) - 1].Parent := i;
          end;
        end  
        else
        begin
          SetLength(FilesList, Length(FilesList) + 1);
          FilesList[Length(FilesList) - 1].Double := 0;
          FilesList[Length(FilesList) - 1].Folder := i;
          FilesList[Length(FilesList) - 1].Time := F.Time;
          FilesList[Length(FilesList) - 1].Size := F.Size;
          FilesList[Length(FilesList) - 1].Name := F.Name;
        end;
      SearchResult := FindNext(F);
    end;
    FindClose(F);
    Inc(i);
  end;

  if ProgressThreadTerminated then
  begin
    ProgressTerminate;
    Exit;
  end;

  if Length(FilesList) < 2 then
  begin
    MainForm.OperationName.Caption := 'Дублирующихся файлов не найдено';
    MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
    MainForm.ProgressStaus.Caption := '';
    MainForm.Repaint;
    MainForm.StartButton.Caption := 'Начать сканирование';
    MainForm.StartButton.Tag := 0;
    Exit;
  end;

  MainForm.OperationName.Caption := 'Сравнение файлов';
  MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
  MainForm.ProgressStaus.Caption := '';
  MainForm.Repaint;
  DoubleNumber := 0;
  for i := 0 to Length(FilesList) - 1 do
  begin
    if ProgressThreadTerminated then Break;
    Str(i, S1);
    Str(Length(FilesList) - 1, S2);
    MainForm.ProgressStaus.Caption := S1 + ' из ' + S2 + ' ';
    if FilesList[i].Double = 0 then
      for j := i + 1 to Length(FilesList) - 1 do
      begin
        if ProgressThreadTerminated then Break;
        if FilesList[j].Double <> 0 then Continue;
        if DoubleIndications.Size and (FilesList[i].Size <> FilesList[j].Size) then Continue;
        if DoubleIndications.Name and (AnsiCompareText(FilesList[i].Name, FilesList[j].Name) <> 0) then Continue;
        if DoubleIndications.Contents then
        begin
          if FilesList[i].Size <> FilesList[j].Size then Continue;
          l := False;
          FileMode := fmOpenRead;	
          AssignFile(F1, GetPath(FilesList[i].Folder) + FilesList[i].Name);
          AssignFile(F2, GetPath(FilesList[j].Folder) + FilesList[j].Name);
          Reset(F1, 1);
          Reset(F2, 1);
          BytesInBuffer := 0;
          for k := 1 to FilesList[i].Size do
          begin
            if BytesInBuffer = 0 then
            begin
              if (FilesList[i].Size - k + 1) >= BufferSize then
              begin
                BlockRead(F1, Buffer1, BufferSize);
                BlockRead(F2, Buffer2, BufferSize);
                n := 0;
              end
              else
              begin
                BlockRead(F1, Buffer1, FilesList[i].Size - k + 1);
                BlockRead(F2, Buffer2, FilesList[i].Size - k + 1);
                n := 0;
              end;
            end;
            if Buffer1[n] <> Buffer2[n] then
            begin
              l := True;
              Break;
            end;
            Inc(n);
            Dec(BytesInBuffer);
          end;
          CloseFile(F1);
          CloseFile(F2);
          FileMode := fmOpenReadWrite;
          if l then Continue;
        end;
        if FilesList[i].Double = 0 then Inc(DoubleNumber);
        FilesList[i].Double := DoubleNumber;
        FilesList[j].Double := DoubleNumber;
      end;
  end;

  if ProgressThreadTerminated then
  begin
    ProgressTerminate;
    Exit;
  end;

  MainForm.OperationName.Caption := 'Обработка результата';
  MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
  MainForm.ProgressStaus.Caption := '';
  MainForm.Repaint;
  i := Length(FilesList);
  while (i <> 0)  and (not ProgressThreadTerminated) do
  begin
    Dec(i);
    Str(i, S1);
    MainForm.ProgressStaus.Caption := S1 + ' ';
    if FilesList[i].Double = 0 then DeleteItem(i);
  end;

  if ProgressThreadTerminated then
  begin
    ProgressTerminate;
    Exit;
  end;

  MainForm.OperationName.Caption := 'Сортировка';
  MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
  MainForm.ProgressStaus.Caption := '';
  MainForm.Repaint;
  SortBy('Double');

  Str(Length(FilesList), S1);
  Str(DoubleNumber, S2);
  MainForm.OperationName.Caption := 'Найдено ' + S1 + ' дублирующихся файлов';
  MainForm.ProgressStaus.Left := MainForm.OperationName.Width + 15;
  MainForm.ProgressStaus.Caption := '';
  MainForm.Repaint;

  MainForm.StartButton.Caption := 'Начать сканирование';
  MainForm.StartButton.Tag := 0;
  ISResult := True;

end;

procedure TMainForm.AddButtonClick(Sender: TObject);
var
  i: Integer;
  l: Boolean;
begin
  if StartButton.Tag = 1 then Exit;
  if AddFolderDialog = nil then AddFolderDialog := TAddFolderDialog.Create(MainForm);
  if AddFolderDialog.ShowModal <> mrOk then Exit;
  if AddFolderDialog.Path[Length(AddFolderDialog.Path)] <> '\' then AddFolderDialog.Path := AddFolderDialog.Path + '\';
  if Copy(AddFolderDialog.Path, 2, 2) = ':\' then
  begin
    l := True;
    for i := 0 to FoldersListBox.Count - 1 do
      if  AddFolderDialog.Path = FoldersListBox.Items.Strings[i] then l := False;
    if l then
    begin
      FoldersListBox.Items.Add(AddFolderDialog.Path);
      FoldersListBox.Sorted := True;
    end;
  end;
  if FoldersListBox.Count > 0 then StartButton.Enabled := True;
end;

procedure TMainForm.RemoveButtonClick(Sender: TObject);
begin
  if StartButton.Tag = 1 then Exit;
  FoldersListBox.Items.Delete(FoldersListBox.ItemIndex);
  if FoldersListBox.Count = 0 then StartButton.Enabled := False;
end;

procedure TMainForm.StartButtonClick(Sender: TObject);
var
  i, j: Integer;
  l: Boolean;
begin
  if StartButton.Tag = 1 then
  begin
    ProgressThreadTerminated := True;
    Exit;
  end;

  if FoldersListBox.Count = 0 then Exit;

  DoubleIndications.Name := CheckBox1.Checked;
  DoubleIndications.Size := CheckBox2.Checked;
  DoubleIndications.Contents := CheckBox3.Checked;
  ScanSubfolders := ScanSubfoldersCheckBox.Checked;
  ISResult := False;

  SetLength(FoldersTree, 1);
  SetLength(FilesList, 0);

  if ScanSubfolders then
    for i := 0 to FoldersListBox.Count - 1 do
    begin
      l := True;
      for j := 0 to i - 1 do
        if (Length(FoldersListBox.Items[i]) > Length(FoldersListBox.Items[j])) and (Copy(FoldersListBox.Items[i], 1,   Length(FoldersListBox.Items[j])) = FoldersListBox.Items[j]) then l := False;
      if l then
      begin
        SetLength(FoldersTree, Length(FoldersTree) + 1);
        FoldersTree[Length(FoldersTree)-1].Parent := 0;
        FoldersTree[Length(FoldersTree)-1].Name := Copy(FoldersListBox.Items[i], 1, Length(FoldersListBox.Items[i]) - 1);
      end;
    end
  else
    for i := 0 to FoldersListBox.Count - 1 do
    begin
      SetLength(FoldersTree, Length(FoldersTree) + 1);
      FoldersTree[i + 1].Parent := 0;
      FoldersTree[i + 1].Name := Copy(FoldersListBox.Items[i], 1, Length(FoldersListBox.Items[i]) - 1);
    end;

  StartButton.Caption := 'Остановить сканирование';
  StartButton.Tag := 1;

  ProgressThreadTerminated := False;
  ProgressThread := TProgressThread.Create(False);
  
end;

procedure TMainForm.ResultButtonClick(Sender: TObject);
begin
  if StartButton.Tag = 1 then Exit;
  MainForm.Visible := False;
  ResultForm.ShowModal;
  MainForm.Visible := True;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ProgressThreadTerminated := True;
end;

procedure TMainForm.AboutButtonClick(Sender: TObject);
begin
  MessageBox(Handle, 'АнтиДубль 01.2005'#13#13'(c) Andrei512, 2005 г.'#13#13'http://Andrei512.narod.ru'#13'http://Andrei512.fatal.ru'#13#13'Andrei512@narod.ru', 'О программе', MB_OK);
end;

procedure TMainForm.HelpButtonClick(Sender: TObject);
begin
  HelpForm.Show;
end;

end.
