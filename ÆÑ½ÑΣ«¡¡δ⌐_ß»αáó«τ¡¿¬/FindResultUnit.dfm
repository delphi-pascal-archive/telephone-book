object FindResultform: TFindResultform
  Left = 208
  Top = 196
  Width = 558
  Height = 325
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1080' '#1087#1086#1096#1091#1082#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 550
    Height = 298
    Align = alClient
    DataSource = DataModule1.FindSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
