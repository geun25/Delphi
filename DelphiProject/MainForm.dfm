object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 37
    Width = 33
    Height = 13
    Caption = #47112#51060#48660
  end
  object Edit1: TEdit
    Left = 56
    Top = 56
    Width = 105
    Height = 21
    TabOrder = 0
    Text = #50504#45397#54616#49464#50836'.'
  end
  object Button1: TButton
    Left = 192
    Top = 36
    Width = 89
    Height = 41
    Caption = #48260#53948
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 56
    Top = 83
    Width = 225
    Height = 73
    Lines.Strings = (
      #52395' '#48264#51704' '#51460
      #46160#48264#51760' '#51460
      ''
      #45348#48264#51760' '#51460)
    TabOrder = 2
  end
end
