object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 118
  ClientWidth = 224
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
    Left = 44
    Top = 40
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Edit1: TEdit
    Left = 74
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 74
    Top = 64
    Width = 80
    Height = 25
    Caption = 'Maior que 10 ?'
    TabOrder = 1
    OnClick = Button1Click
  end
end
