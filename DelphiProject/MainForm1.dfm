object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 405
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 16
    Width = 97
    Height = 33
    Caption = #47928#51088#50676' '#54632#49688
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 55
    Width = 97
    Height = 33
    Caption = 'Length'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 94
    Width = 97
    Height = 33
    Caption = 'Pos'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 133
    Width = 97
    Height = 33
    Caption = 'Copy'
    TabOrder = 3
    OnClick = Button4Click
  end
  object editName: TEdit
    Left = 272
    Top = 184
    Width = 113
    Height = 21
    TabOrder = 4
  end
  object Button5: TButton
    Left = 272
    Top = 222
    Width = 113
    Height = 35
    Caption = #51060#47492' '#52824#54872
    TabOrder = 5
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 55
    Width = 193
    Height = 106
    TabOrder = 6
  end
  object Memo2: TMemo
    Left = 32
    Top = 184
    Width = 234
    Height = 177
    Lines.Strings = (
      '[Name]'#45784' '#50504#45397#54616#49464#50836'.'
      #45944#54028#51060' '#49688#50629#50640#49436' [Name]'#45784#51012' '#52488#45824#54633#45768#45796'.'
      ''
      '[Name]'#45784#50640#44172)
    TabOrder = 7
  end
end
