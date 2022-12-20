object Form3: TForm3
  Left = 251
  Top = 133
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1077#1084
  ClientHeight = 513
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1027
    Height = 490
    TabOrder = 0
    object Image1: TImage
      Left = 40
      Top = 184
      Width = 160
      Height = 64
      Cursor = crHandPoint
      OnClick = Image1Click
    end
    object Image2: TImage
      Left = 40
      Top = 112
      Width = 160
      Height = 64
      Cursor = crHandPoint
      OnClick = Image2Click
    end
    object Image3: TImage
      Left = 40
      Top = 40
      Width = 160
      Height = 64
      Cursor = crHandPoint
      IncrementalDisplay = True
      OnClick = Image3Click
    end
    object Image4: TImage
      Left = 40
      Top = 272
      Width = 160
      Height = 64
      Cursor = crHandPoint
      IncrementalDisplay = True
      OnClick = Image4Click
    end
    object Image5: TImage
      Left = 40
      Top = 272
      Width = 160
      Height = 64
      Cursor = crHandPoint
      IncrementalDisplay = True
      OnClick = Image5Click
    end
    object Image6: TImage
      Left = 40
      Top = 272
      Width = 160
      Height = 64
      Cursor = crHandPoint
      IncrementalDisplay = True
      OnClick = Image6Click
    end
    object Image7: TImage
      Left = 40
      Top = 344
      Width = 160
      Height = 64
      Cursor = crHandPoint
      IncrementalDisplay = True
      OnClick = Image7Click
    end
    object Memo1: TMemo
      Left = 248
      Top = 8
      Width = 775
      Height = 500
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = []
      Lines.Strings = (
        '                                          ')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 233
      Height = 21
      TabOrder = 0
    end
  end
end
