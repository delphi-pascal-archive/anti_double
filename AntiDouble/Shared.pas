unit Shared;

interface

uses
  SysUtils;

var
  ISResult: Boolean;
  ProgressThreadTerminated: Boolean;
  DoubleIndications: record
    Name, Size, Contents: Boolean;
  end;
  ScanSubfolders: Boolean;
  FoldersTree: array of record
    Parent: Cardinal;
    Name: String[128];
  end;
  FilesList: array of record
    Folder: Cardinal;
    Double: Cardinal;
    Time: Integer;
    Size: Integer;
    Name: String[128];
  end;

function GetPath(i: Cardinal): String;
procedure DeleteItem(i: Cardinal);
procedure SortBy(Key: String); //Key = 'Double' or  'Name' or  'Size' or 'Time' or 'Folder'

implementation

function GetPath(i: Cardinal): String;
var
  S: String;
begin
  S := '';
  while i <> 0 do
  begin
    S := FoldersTree[i].Name + '\' + S;
    i := FoldersTree[i].Parent;
  end;
  GetPath := S;
end;

procedure DeleteItem(i: Cardinal);
var
  j: Cardinal;
begin
  if (Length(FilesList) = 0) or (i > Length(FilesList) - 1) then Exit;
  if  Length(FilesList) > 1 then
    for j := i to Length(FilesList) - 2 do FilesList[j] := FilesList[j + 1];
  SetLength(FilesList, Length(FilesList) - 1);
end;

procedure SortBy(Key: String);
var
  l, l1: Boolean;
  i, SwIndex: Cardinal;
begin
  if Length(FilesList) < 2 then Exit;
  SwIndex := Length(FilesList);
  SetLength(FilesList, Length(FilesList) + 1);
  l := True;
  while l do
  begin
    l := False;  
    for i := 0 to Length(FilesList) - 2 do
    begin
      l1 := False;
      if (Key = 'Double') and (FilesList[i].Double > FilesList[i + 1].Double) then l1 := True;
      if (Key = 'Name') and (AnsiCompareText(FilesList[i].Name, FilesList[i + 1].Name) > 0) then l1 := True;
      if (Key = 'Size') and (FilesList[i].Size > FilesList[i + 1].Size) then l1 := True;
      if (Key = 'Time') and (FilesList[i].Time > FilesList[i + 1].Time) then l1 := True;
      if (Key = 'Folder') and (AnsiCompareText(GetPath(FilesList[i].Folder), GetPath(FilesList[i + 1].Folder)) > 0) then l1 := True;
      if l1 then
      begin
        l := True;
        FilesList[SwIndex] := FilesList[i];
        FilesList[i] := FilesList[i + 1];
        FilesList[i + 1] := FilesList[SwIndex];
      end;
    end;
  end;
  SetLength(FilesList, Length(FilesList) - 1);
end;

end.
