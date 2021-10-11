object AddFolderDialog: TAddFolderDialog
  Left = 438
  Top = 169
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1087#1072#1087#1082#1080
  ClientHeight = 368
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object ShellTreeView: TShellTreeView
    Left = 8
    Top = 8
    Width = 345
    Height = 321
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    UseShellImages = True
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 0
  end
  object OkButton: TButton
    Left = 256
    Top = 336
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 1
    TabOrder = 1
    OnClick = OkButtonClick
  end
  object CancelButton: TButton
    Left = 152
    Top = 336
    Width = 97
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
