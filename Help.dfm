object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1055#1086#1084#1086#1097#1100
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 185
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 503
      Height = 183
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 422
    Top = 198
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
end
