object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 510
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 8
    Width = 329
    Height = 433
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 320
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 128
    object cdsID: TIntegerField
      FieldName = 'ID'
    end
    object cdsName: TStringField
      FieldName = 'Name'
      Size = 5000
    end
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 256
    Top = 144
  end
end
