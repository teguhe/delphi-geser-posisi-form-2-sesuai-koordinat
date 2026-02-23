object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Test Form 2 Position by Script'
  ClientHeight = 489
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 100
    Height = 15
    Caption = 'Form 2 Properties'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 63
    Height = 15
    Caption = 'Border Style'
  end
  object Label3: TLabel
    Left = 304
    Top = 56
    Width = 19
    Height = 15
    Caption = 'Top'
    Visible = False
  end
  object Label4: TLabel
    Left = 304
    Top = 83
    Width = 20
    Height = 15
    Caption = 'Left'
    Visible = False
  end
  object Label5: TLabel
    Left = 304
    Top = 110
    Width = 32
    Height = 15
    Caption = 'Width'
    Visible = False
  end
  object Label6: TLabel
    Left = 304
    Top = 137
    Width = 36
    Height = 15
    Caption = 'Height'
    Visible = False
  end
  object Label7: TLabel
    Left = 16
    Top = 83
    Width = 46
    Height = 15
    Caption = 'Show on'
  end
  object lbl1: TLabel
    Left = 16
    Top = 240
    Width = 30
    Height = 15
    Caption = 'Prefix'
  end
  object lbl2: TLabel
    Left = 16
    Top = 267
    Width = 22
    Height = 15
    Caption = 'Teks'
  end
  object img1: TImage
    Left = 464
    Top = 150
    Width = 105
    Height = 105
    Stretch = True
  end
  object lbl3: TLabel
    Left = 279
    Top = 383
    Width = 66
    Height = 15
    Caption = 'Keterangan :'
  end
  object Label8: TLabel
    Left = 16
    Top = 213
    Width = 82
    Height = 15
    Caption = 'URL Image App'
  end
  object cbBorderStyle: TComboBox
    Left = 112
    Top = 53
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 0
    Text = 'Dialog'
    Items.Strings = (
      'Dialog'
      'None'
      'Single'
      'Sizeable'
      'SizeToWidth'
      'ToolWindow')
  end
  object edTop: TEdit
    Left = 384
    Top = 53
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
    Visible = False
  end
  object edLeft: TEdit
    Left = 384
    Top = 80
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
    Visible = False
  end
  object edWidth: TEdit
    Left = 384
    Top = 107
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 3
    Text = '1920'
    Visible = False
  end
  object edHeight: TEdit
    Left = 384
    Top = 134
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 4
    Text = '1080'
    Visible = False
  end
  object cbMonitor: TComboBox
    Left = 112
    Top = 80
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 5
    Text = 'Monitor 1'
    Items.Strings = (
      'Monitor 1'
      'Monitor 2')
  end
  object chkMex: TCheckBox
    Left = 112
    Top = 114
    Width = 145
    Height = 17
    Caption = 'Maximize on Execute'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object Button1: TAdvGlowButton
    Left = 112
    Top = 137
    Width = 145
    Height = 41
    Caption = 'Show Form 2'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = True
    TabOrder = 7
    OnClick = Button1Click
    Appearance.BorderColor = 13087391
    Appearance.BorderColorHot = 5819121
    Appearance.BorderColorDown = 3181250
    Appearance.BorderColorChecked = 3181250
    Appearance.Color = 16643823
    Appearance.ColorTo = 15784647
    Appearance.ColorChecked = 14285309
    Appearance.ColorCheckedTo = 7131391
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7131391
    Appearance.ColorDownTo = 8122111
    Appearance.ColorHot = 9102333
    Appearance.ColorHotTo = 14285309
    Appearance.ColorMirror = 15784647
    Appearance.ColorMirrorTo = 15784647
    Appearance.ColorMirrorHot = 14285309
    Appearance.ColorMirrorHotTo = 9102333
    Appearance.ColorMirrorDown = 8122111
    Appearance.ColorMirrorDownTo = 7131391
    Appearance.ColorMirrorChecked = 7131391
    Appearance.ColorMirrorCheckedTo = 7131391
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Appearance.TextColorDisabled = 13948116
    UIStyle = tsOffice2010Blue
  end
  object Button2: TAdvGlowButton
    Left = 112
    Top = 293
    Width = 145
    Height = 49
    Caption = 'Load Text and Image >>'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = True
    TabOrder = 8
    OnClick = Button2Click
    Appearance.BorderColor = 13087391
    Appearance.BorderColorHot = 5819121
    Appearance.BorderColorDown = 3181250
    Appearance.BorderColorChecked = 3181250
    Appearance.Color = 16643823
    Appearance.ColorTo = 15784647
    Appearance.ColorChecked = 14285309
    Appearance.ColorCheckedTo = 7131391
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7131391
    Appearance.ColorDownTo = 8122111
    Appearance.ColorHot = 9102333
    Appearance.ColorHotTo = 14285309
    Appearance.ColorMirror = 15784647
    Appearance.ColorMirrorTo = 15784647
    Appearance.ColorMirrorHot = 14285309
    Appearance.ColorMirrorHotTo = 9102333
    Appearance.ColorMirrorDown = 8122111
    Appearance.ColorMirrorDownTo = 7131391
    Appearance.ColorMirrorChecked = 7131391
    Appearance.ColorMirrorCheckedTo = 7131391
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Appearance.TextColorDisabled = 13948116
    UIStyle = tsOffice2010Blue
  end
  object Button3: TAdvGlowButton
    Left = 279
    Top = 296
    Width = 266
    Height = 81
    Caption = 'Button2'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = True
    TabOrder = 9
    Appearance.BorderColor = 13087391
    Appearance.BorderColorHot = 5819121
    Appearance.BorderColorDown = 3181250
    Appearance.BorderColorChecked = 3181250
    Appearance.Color = 16643823
    Appearance.ColorTo = 15784647
    Appearance.ColorChecked = 14285309
    Appearance.ColorCheckedTo = 7131391
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7131391
    Appearance.ColorDownTo = 8122111
    Appearance.ColorHot = 9102333
    Appearance.ColorHotTo = 14285309
    Appearance.ColorMirror = 15784647
    Appearance.ColorMirrorTo = 15784647
    Appearance.ColorMirrorHot = 14285309
    Appearance.ColorMirrorHotTo = 9102333
    Appearance.ColorMirrorDown = 8122111
    Appearance.ColorMirrorDownTo = 7131391
    Appearance.ColorMirrorChecked = 7131391
    Appearance.ColorMirrorCheckedTo = 7131391
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Appearance.TextColorDisabled = 13948116
    UIStyle = tsOffice2010Blue
  end
  object edPrefix: TEdit
    Left = 112
    Top = 237
    Width = 33
    Height = 23
    TabOrder = 10
    Text = 'DK'
  end
  object edText: TEdit
    Left = 112
    Top = 264
    Width = 312
    Height = 23
    TabOrder = 11
    Text = 'Diskominfo Salatiga'
  end
  object edGenerateImageURL: TEdit
    Left = 112
    Top = 210
    Width = 312
    Height = 23
    TabOrder = 12
    Text = 'https://hilarious-gnome-335a3f.netlify.app'
  end
  object edGeneratedURL: TEdit
    Left = 112
    Top = 412
    Width = 312
    Height = 23
    TabOrder = 13
  end
end
