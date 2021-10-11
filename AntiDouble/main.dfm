object MainForm: TMainForm
  Left = 226
  Top = 130
  Width = 801
  Height = 339
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1040#1085#1090#1080' '#1044#1091#1073#1083#1100
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000099
    444004444000000444400449900000999B4004B4000000004B40049990000009
    9940044000000000044009990000000099990440000000000440999000000000
    0999944000000000044999400000000004499940000000000499944000000000
    0440999000000000099904400000000004B449990000000099944B4000000400
    04BBBB999004400999BBBB400040044004BBBB49994BB49994BBBB4004400440
    04BBBB409994499904BBBB400440004404BBBB404999999404BBBB404400004B
    4BBBBBB4B499994B4BBBBBB4B4000004BBBBBBBB49999994BBBBBBBB40000000
    4BBBBBB4999009994BBBBBB400000000044BB44999000099944BB44000000000
    0004409990000009990440000000000000044999000000009994400000000000
    004B9990000000000999B4000000000004B99940000000000499994000000000
    04999B400000000004B99990000000000999BB400000000004BBB99900000000
    999BB40000000000004BB4999000000999044000000000000004400990000009
    9000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFC187E187C18FF187E19FF98FF09FF91FF81F
    F81FF81FF81FF91FF89FF80FF01FB806601D9800001998100819C8100813C000
    0003E0000007F001800FF803C01FFE47E27FFE0FF07FFC1FF83FF81FF81FF81F
    F81FF81FF80FF03FFC07E27FFE67E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 247
    Height = 17
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1072#1087#1086#1082' '#1076#1083#1103' '#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OperationName: TLabel
    Left = 8
    Top = 286
    Width = 169
    Height = 16
    Caption = 'http://andrei512.narod.ru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressStaus: TLabel
    Left = 422
    Top = 286
    Width = 139
    Height = 16
    Caption = #1042#1077#1088#1089#1080#1103' '#1086#1090' 01.2005'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FoldersListBox: TListBox
    Left = 8
    Top = 32
    Width = 553
    Height = 241
    ItemHeight = 16
    TabOrder = 0
  end
  object AddButton: TButton
    Left = 568
    Top = 32
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddButtonClick
  end
  object RemoveButton: TButton
    Left = 672
    Top = 32
    Width = 113
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = RemoveButtonClick
  end
  object ScanSubfoldersCheckBox: TCheckBox
    Left = 568
    Top = 66
    Width = 201
    Height = 21
    Caption = #1057#1082#1072#1085#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1076#1087#1072#1087#1082#1080
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object DoubleIndicationsBox: TGroupBox
    Left = 568
    Top = 96
    Width = 217
    Height = 105
    Caption = #1055#1088#1080#1079#1085#1072#1082#1080' '#1076#1091#1073#1083#1080#1082#1072#1090#1072
    TabOrder = 4
    object CheckBox1: TCheckBox
      Left = 9
      Top = 22
      Width = 152
      Height = 21
      Caption = #1054#1076#1080#1085#1072#1082#1086#1074#1086#1077' '#1080#1084#1103
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 9
      Top = 49
      Width = 168
      Height = 21
      Caption = #1054#1076#1080#1085#1072#1082#1086#1074#1099#1081' '#1088#1072#1079#1084#1077#1088
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 9
      Top = 78
      Width = 200
      Height = 20
      Caption = #1054#1076#1080#1085#1072#1082#1086#1074#1086#1077' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1077
      TabOrder = 2
    end
  end
  object StartButton: TButton
    Left = 568
    Top = 214
    Width = 217
    Height = 27
    Caption = #1053#1072#1095#1072#1090#1100' '#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
    Enabled = False
    TabOrder = 5
    OnClick = StartButtonClick
  end
  object AboutButton: TButton
    Left = 568
    Top = 248
    Width = 121
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 6
    OnClick = AboutButtonClick
  end
  object HelpButton: TButton
    Left = 696
    Top = 248
    Width = 89
    Height = 25
    Caption = #1057#1087#1088#1072#1074#1082#1072
    TabOrder = 7
    OnClick = HelpButtonClick
  end
  object ResultButton: TButton
    Left = 568
    Top = 280
    Width = 217
    Height = 25
    Caption = #1057#1084#1086#1090#1088#1077#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
    TabOrder = 8
    OnClick = ResultButtonClick
  end
end
