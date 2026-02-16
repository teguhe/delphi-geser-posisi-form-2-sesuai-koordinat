object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Test Form 2 Position by Script'
  ClientHeight = 442
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
    Left = 16
    Top = 110
    Width = 20
    Height = 15
    Caption = 'Top'
    Visible = False
  end
  object Label4: TLabel
    Left = 16
    Top = 137
    Width = 20
    Height = 15
    Caption = 'Left'
    Visible = False
  end
  object Label5: TLabel
    Left = 16
    Top = 164
    Width = 32
    Height = 15
    Caption = 'Width'
    Visible = False
  end
  object Label6: TLabel
    Left = 16
    Top = 191
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
  object cbBorderStyle: TComboBox
    Left = 96
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
    Left = 96
    Top = 107
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
    Visible = False
  end
  object edLeft: TEdit
    Left = 96
    Top = 134
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
    Visible = False
  end
  object edWidth: TEdit
    Left = 96
    Top = 161
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 3
    Text = '1920'
    Visible = False
  end
  object edHeight: TEdit
    Left = 96
    Top = 188
    Width = 40
    Height = 23
    NumbersOnly = True
    TabOrder = 4
    Text = '1080'
    Visible = False
  end
  object cbMonitor: TComboBox
    Left = 96
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
  object Button1: TButton
    Left = 96
    Top = 247
    Width = 145
    Height = 25
    Caption = 'Show Form 2'
    TabOrder = 6
    OnClick = Button1Click
  end
  object chkMex: TCheckBox
    Left = 96
    Top = 217
    Width = 145
    Height = 17
    Caption = 'Maximize on Execute'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
end
