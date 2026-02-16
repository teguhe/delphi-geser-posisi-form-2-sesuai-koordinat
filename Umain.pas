unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbBorderStyle: TComboBox;
    Label3: TLabel;
    edTop: TEdit;
    Label4: TLabel;
    edLeft: TEdit;
    Label5: TLabel;
    edWidth: TEdit;
    Label6: TLabel;
    edHeight: TEdit;
    Label7: TLabel;
    cbMonitor: TComboBox;
    Button1: TButton;
    chkMex: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }



  end;

var
  Form1: TForm1;

implementation

uses
  U2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var MonitorKedua: TMonitor;
begin

  { TODO : check if monitor 2 exist }
  if cbMonitor.ItemIndex=1 then
  begin

    if Screen.MonitorCount > 1 then
    begin
//      MessageDlg('Monitor Kedua Tersedia!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      MonitorKedua := Screen.Monitors[1];
    end
    else
    begin
      MessageDlg('Monitor Kedua Tidak Tersedia!', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
      MonitorKedua := Screen.Monitors[0];
    end;

  end;

  { TODO : create form jika belum ada }
  if not Assigned(Form2) then
  begin
    Application.CreateForm(TForm2, Form2);
  end;
  { TODO : execute action }
  if cbBorderStyle.ItemIndex=0 then Form2.BorderStyle:=bsDialog;
  if cbBorderStyle.ItemIndex=1 then Form2.BorderStyle:=bsNone;
  if cbBorderStyle.ItemIndex=2 then Form2.BorderStyle:=bsSingle;
  if cbBorderStyle.ItemIndex=3 then Form2.BorderStyle:=bsSizeable;
  if cbBorderStyle.ItemIndex=4 then Form2.BorderStyle:=bsSizeToolWin;
  if cbBorderStyle.ItemIndex=5 then Form2.BorderStyle:=bsToolWindow;
                                 //ShowMessage(Screen.Monitors[0].Width.ToString);
  with Form2 do
  begin

    //Width   := 400;//MonitorKedua.Width;
    //Height  := 300;//MonitorKedua.Height;

    Top     := 0;//MonitorKedua.Top;
    //Left    := MonitorKedua.Left;
    //Left    := MonitorKedua.Left+Screen.Monitors[0].Width;
    Left    := 2000;//Screen.Monitors[0].Width-16;

    Form2.Position := poDesigned;
    Form2.DefaultMonitor := dmDesktop; // Prevents OS from forcing it to primary
    // 4. Use BoundsRect to set all coordinates at once
    // This is more atomic and reliable in Win 11
    Form2.BoundsRect := MonitorKedua.BoundsRect;
    // 5. Ensure it's not minimized/maximized before showing
    Form2.WindowState := wsNormal;


    if chkMex.Checked then Form2.WindowState:=TWindowState.wsMaximized;
    
    Show;

  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  Position  := poScreenCenter;
  BorderStyle := bsDialog;

  cbBorderStyle.ItemIndex:=3;
  cbMonitor.ItemIndex:=1;

end;

end.
