object ResultForm: TResultForm
  Left = 210
  Top = 132
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  ClientHeight = 536
  ClientWidth = 856
  Color = clBtnFace
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
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 96
    Top = 8
    Width = 27
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555555555555555555555555555555555550000000000
      5555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8B8B0550FBF0000000
      000550BFBFBFBFB0555550FBFBFBFBF0555550BFBFBF00055555550BFBF05555
      5555557000075555555555555555555555555555555555555555}
    OnClick = LoadFromFileClick
  end
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 198
    Height = 16
    Caption = #1055#1088#1080#1079#1085#1072#1082#1080' '#1076#1091#1073#1083#1080#1088#1086#1074#1072#1085#1080#1103': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DoubleKeys: TLabel
    Left = 220
    Top = 39
    Width = 202
    Height = 16
    Caption = ' '#1048#1084#1103' '#1056#1072#1079#1084#1077#1088' '#1057#1086#1076#1077#1088#1078#1080#1084#1086#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 18
    Width = 77
    Height = 16
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
  end
  object SpeedButton2: TSpeedButton
    Left = 128
    Top = 8
    Width = 28
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333300007777777003300000788888800030000078008880003000007800888
      0003000007888888000300000000000000030000000000000003000FFFFFFFFF
      0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF
      0003000FFFFFFFFF0703000FFFFFFFFF00033009999999990033}
    OnClick = SaveToFileClick
  end
  object Label3: TLabel
    Left = 170
    Top = 18
    Width = 41
    Height = 16
    Caption = #1060#1072#1081#1083':'
  end
  object SpeedButton3: TSpeedButton
    Left = 224
    Top = 8
    Width = 25
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555500000000005555500B8B8B8B8B000000B0B8B8B8B8B0FF00FB0B8B8B8B8
      B0F00BFB0000000000F00FBFBF0FFFFFFFF00BFBFB0F000000F00FBFBF0FFFFF
      FFF050FBFB0F000000F05700000FFFFFFFF05555550F00FF00005555550FFFFF
      0F055555550FFFFF005555555500000005555555555555555555}
    OnClick = OpenClick
  end
  object SpeedButton4: TSpeedButton
    Left = 256
    Top = 8
    Width = 25
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555500000000005555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8
      B8B0550FBF0000000000500BFBFBFBFB05550B0FBFBFBFBF05550F0BFBFBF000
      55550BF0BFBF0B0555550FB700007F0555550BFBFBFBFB0555550FBFBFBFBF05
      5555000000000055555550FBFB05555555555700007555555555}
    OnClick = OpenFolderClick
  end
  object SpeedButton5: TSpeedButton
    Left = 288
    Top = 8
    Width = 25
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      333333333333333333333300000000000033330FFFFFFFFFF033330000000000
      0033333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    OnClick = DeleteFromListClick
  end
  object SpeedButton6: TSpeedButton
    Left = 320
    Top = 8
    Width = 25
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333999333333399933339993333399933333399933399
      9333333339993999333333333399999333333333333999333333333333999993
      3333333339993999333333339993339993333339993333399933339993333333
      9993333333333333333333333333333333333333333333333333}
    OnClick = DeleteToRecyleClick
  end
  object Label4: TLabel
    Left = 362
    Top = 18
    Width = 85
    Height = 16
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072':'
  end
  object DoublesList: TStringGrid
    Left = 6
    Top = 64
    Width = 843
    Height = 465
    Color = clWhite
    DefaultRowHeight = 17
    FixedColor = clSilver
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    PopupMenu = PopupMenu
    TabOrder = 0
    OnDblClick = OpenClick
    ColWidths = (
      66
      130
      79
      111
      419)
  end
  object Button1: TButton
    Left = 456
    Top = 8
    Width = 81
    Height = 25
    Caption = #1043#1088#1091#1087#1087#1072
    TabOrder = 1
    OnClick = ByGroupClick
  end
  object Button2: TButton
    Left = 544
    Top = 8
    Width = 65
    Height = 25
    Caption = #1048#1084#1103
    TabOrder = 2
    OnClick = ByNameClick
  end
  object Button3: TButton
    Left = 616
    Top = 8
    Width = 81
    Height = 25
    Caption = #1056#1072#1079#1084#1077#1088
    TabOrder = 3
    OnClick = BySizeClick
  end
  object Button4: TButton
    Left = 704
    Top = 8
    Width = 73
    Height = 25
    Caption = #1042#1088#1077#1084#1103
    TabOrder = 4
    OnClick = ByTimeClick
  end
  object Button5: TButton
    Left = 784
    Top = 8
    Width = 65
    Height = 25
    Caption = #1055#1072#1087#1082#1072
    TabOrder = 5
    OnClick = ByFolderClick
  end
  object MainMenu: TMainMenu
    Left = 16
    Top = 168
    object N1: TMenuItem
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      object LoadFromFile: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555550000000000
          5555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8B8B0550FBF0000000
          000550BFBFBFBFB0555550FBFBFBFBF0555550BFBFBF00055555550BFBF05555
          5555557000075555555555555555555555555555555555555555}
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072
        OnClick = LoadFromFileClick
      end
      object SaveToFile: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333300007777777003300000788888800030000078008880003000007800888
          0003000007888888000300000000000000030000000000000003000FFFFFFFFF
          0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF
          0003000FFFFFFFFF0703000FFFFFFFFF00033009999999990033}
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
        OnClick = SaveToFileClick
      end
      object CloseResult: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = CloseResultClick
      end
    end
    object _File: TMenuItem
      Caption = #1060#1072#1081#1083
      object Open: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555500000000005555500B8B8B8B8B000000B0B8B8B8B8B0FF00FB0B8B8B8B8
          B0F00BFB0000000000F00FBFBF0FFFFFFFF00BFBFB0F000000F00FBFBF0FFFFF
          FFF050FBFB0F000000F05700000FFFFFFFF05555550F00FF00005555550FFFFF
          0F055555550FFFFF005555555500000005555555555555555555}
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = OpenClick
      end
      object OpenFolder: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555500000000005555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8
          B8B0550FBF0000000000500BFBFBFBFB05550B0FBFBFBFBF05550F0BFBFBF000
          55550BF0BFBF0B0555550FB700007F0555550BFBFBFBFB0555550FBFBFBFBF05
          5555000000000055555550FBFB05555555555700007555555555}
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091
        OnClick = OpenFolderClick
      end
      object DeleteFromList: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333333333333300000000000033330FFFFFFFFFF033330000000000
          0033333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072
        OnClick = DeleteFromListClick
      end
      object DeleteToRecyle: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333999333333399933339993333399933333399933399
          9333333339993999333333333399999333333333333999333333333333999993
          3333333339993999333333339993339993333339993333399933339993333333
          9993333333333333333333333333333333333333333333333333}
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089' '#1076#1080#1089#1082#1072
        OnClick = DeleteToRecyleClick
      end
    end
    object _Sort: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object ByGroup: TMenuItem
        Caption = #1055#1086' '#1075#1088#1091#1087#1087#1077
        OnClick = ByGroupClick
      end
      object ByName: TMenuItem
        Caption = #1055#1086' '#1080#1084#1077#1085#1080
        OnClick = ByNameClick
      end
      object BySize: TMenuItem
        Caption = #1055#1086' '#1088#1072#1079#1084#1077#1088#1091
        OnClick = BySizeClick
      end
      object ByTime: TMenuItem
        Caption = #1055#1086' '#1074#1088#1077#1084#1077#1085#1080
        OnClick = ByTimeClick
      end
      object ByFolder: TMenuItem
        Caption = #1055#1086' '#1087#1072#1087#1082#1077
        OnClick = ByFolderClick
      end
    end
  end
  object OpenResultDialog: TOpenDialog
    DefaultExt = 'adr'
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1103' (*.adr)|*.adr'
    Left = 48
    Top = 168
  end
  object SaveResultDialog: TSaveDialog
    DefaultExt = '*.adr'
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1103' (*.adr)|*.adr'
    Left = 80
    Top = 168
  end
  object PopupMenu: TPopupMenu
    Left = 112
    Top = 168
    object N2: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555500000000005555500B8B8B8B8B000000B0B8B8B8B8B0FF00FB0B8B8B8B8
        B0F00BFB0000000000F00FBFBF0FFFFFFFF00BFBFB0F000000F00FBFBF0FFFFF
        FFF050FBFB0F000000F05700000FFFFFFFF05555550F00FF00005555550FFFFF
        0F055555550FFFFF005555555500000005555555555555555555}
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      OnClick = OpenClick
    end
    object N3: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555500000000005555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8
        B8B0550FBF0000000000500BFBFBFBFB05550B0FBFBFBFBF05550F0BFBFBF000
        55550BF0BFBF0B0555550FB700007F0555550BFBFBFBFB0555550FBFBFBFBF05
        5555000000000055555550FBFB05555555555700007555555555}
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091
      OnClick = OpenFolderClick
    end
    object N4: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333333333333300000000000033330FFFFFFFFFF033330000000000
        0033333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072
      OnClick = DeleteFromListClick
    end
    object N5: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333999333333399933339993333399933333399933399
        9333333339993999333333333399999333333333333999333333333333999993
        3333333339993999333333339993339993333339993333399933339993333333
        9993333333333333333333333333333333333333333333333333}
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089' '#1076#1080#1089#1082#1072
      OnClick = DeleteToRecyleClick
    end
  end
end
