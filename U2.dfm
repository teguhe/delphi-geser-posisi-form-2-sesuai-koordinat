object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 458
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  DesignSize = (
    669
    458)
  TextHeight = 15
  object lbl1: TLabel
    Left = 160
    Top = 174
    Width = 359
    Height = 128
    Caption = 'FORM 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 24
    Top = 224
    Width = 19
    Height = 15
    Caption = 'lbl2'
  end
  object btnClose: TButton
    Left = 24
    Top = 174
    Width = 75
    Height = 25
    Caption = 'btnClose'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object pnlTL: TPanel
    Left = 0
    Top = 8
    Width = 73
    Height = 41
    Caption = 'TL'
    TabOrder = 1
    OnClick = pnlTLClick
  end
  object pnlTR: TPanel
    Left = 588
    Top = 8
    Width = 73
    Height = 41
    Anchors = [akTop, akRight]
    Caption = 'TR'
    TabOrder = 2
    OnClick = pnlTLClick
    ExplicitLeft = 584
  end
  object pnlLL: TPanel
    Left = 0
    Top = 413
    Width = 73
    Height = 41
    Anchors = [akLeft, akBottom]
    Caption = 'LL'
    TabOrder = 3
    OnClick = pnlTLClick
    ExplicitTop = 412
  end
  object pnlLR: TPanel
    Left = 588
    Top = 413
    Width = 73
    Height = 41
    Anchors = [akRight, akBottom]
    Caption = 'LR'
    TabOrder = 4
    OnClick = pnlTLClick
    ExplicitLeft = 584
    ExplicitTop = 412
  end
end
