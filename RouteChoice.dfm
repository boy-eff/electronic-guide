object RouteChoiceForm: TRouteChoiceForm
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1084#1072#1088#1096#1088#1091#1090#1072
  ClientHeight = 231
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 231
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 305
    object ListBox1: TListBox
      Left = 0
      Top = 0
      Width = 161
      Height = 231
      Align = alLeft
      ItemHeight = 13
      TabOrder = 0
    end
    object Down: TBitBtn
      Left = 168
      Top = 39
      Width = 25
      Height = 25
      Caption = 'Down'
      TabOrder = 1
      OnClick = DownClick
    end
    object Up: TBitBtn
      Left = 168
      Top = 8
      Width = 25
      Height = 25
      Caption = 'Up'
      TabOrder = 2
      OnClick = UpClick
    end
    object Button1: TButton
      Left = 184
      Top = 190
      Width = 97
      Height = 25
      Caption = #1054#1087#1090#1080#1084#1080#1079#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 3
    end
    object Button2: TButton
      Left = 184
      Top = 159
      Width = 97
      Height = 25
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
      TabOrder = 4
    end
  end
  object Button3: TButton
    Left = 184
    Top = 128
    Width = 97
    Height = 25
    Caption = #1048#1079#1073#1088#1072#1085#1085#1086#1077
    TabOrder = 1
  end
end
