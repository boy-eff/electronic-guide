object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 231
  ClientWidth = 241
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
  object Background: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 231
    Align = alClient
    BevelOuter = bvNone
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    object StartOfRoute: TLabel
      Left = 24
      Top = 13
      Width = 90
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086' '#1084#1072#1088#1096#1088#1091#1090#1072
    end
    object EndOfRoute: TLabel
      Left = 24
      Top = 69
      Width = 84
      Height = 13
      Caption = #1050#1086#1085#1077#1094' '#1084#1072#1088#1096#1088#1091#1090#1072
    end
    object StartComboBox: TComboBox
      Left = 24
      Top = 32
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object EndComboBox: TComboBox
      Left = 24
      Top = 88
      Width = 185
      Height = 21
      TabOrder = 1
    end
  end
  object PlotRouteButton: TButton
    Left = 32
    Top = 198
    Width = 162
    Height = 25
    Caption = #1055#1088#1086#1083#1086#1078#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
    TabOrder = 1
  end
end
