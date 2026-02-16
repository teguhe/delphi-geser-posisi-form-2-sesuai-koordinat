unit Umain;

interface

uses

  //additional
  System.Net.HttpClient, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  System.IOUtils, Vcl.Imaging.pnglang,


  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvBadge, AdvGlowButton;

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
    chkMex: TCheckBox;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    lbl1: TLabel;
    lbl2: TLabel;
    edPrefix: TEdit;
    edText: TEdit;
    img1: TImage;

    procedure DownloadImageFromURL(const AURL: string; AImage: TImage);
    procedure SaveImageToFile(AImage: TImage; const AFileName: string);
    procedure LoadImageToFile(AImage: TImage; const AFileName: string);

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.DownloadImageFromURL(const AURL: string; AImage: TImage);
var
  HTTP: THTTPClient;
  Response: IHTTPResponse;
  MS: TMemoryStream;
begin
  HTTP := THTTPClient.Create;
  MS := TMemoryStream.Create;
  try
    try
      // Mengambil data dari URL
      Response := HTTP.Get(AURL, MS);

      if Response.StatusCode = 200 then
      begin
        MS.Position := 0; // Reset posisi stream ke awal
        AImage.Picture.LoadFromStream(MS);
      end
      else
        ShowMessage('Gagal mengambil gambar. Kode: ' + Response.StatusCode.ToString);
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
  finally
    MS.Free;
    HTTP.Free;
  end;
end;

procedure TForm1.SaveImageToFile(AImage: TImage; const AFileName: string);
var
  AppPath, FolderPath, FullPath: string;
begin
  // 1. Mendapatkan path direktori aplikasi
  AppPath := ExtractFilePath(ParamStr(0));

  // 2. Menentukan path folder 'image'
  FolderPath := TPath.Combine(AppPath, 'image');

  // 3. Membuat folder 'image' jika belum ada
  if not TDirectory.Exists(FolderPath) then
    TDirectory.CreateDirectory(FolderPath);

  // 4. Menentukan path lengkap file yang akan disimpan
  FullPath := TPath.Combine(FolderPath, AFileName);

  // 5. Menyimpan gambar ke file
  AImage.Picture.SaveToFile(FullPath);

  //ShowMessage('Gambar berhasil disimpan di: ' + FullPath);
end;

procedure TForm1.LoadImageToFile(AImage: TImage; const AFileName: string);
var
  AppPath, FolderPath, FullPath: string;
begin
  // 1. Mendapatkan path direktori aplikasi
  AppPath := ExtractFilePath(ParamStr(0));

  // 2. Menentukan path folder 'image'
  FolderPath := TPath.Combine(AppPath, 'image');

  // 3. Membuat folder 'image' jika belum ada
  if not TDirectory.Exists(FolderPath) then
    TDirectory.CreateDirectory(FolderPath);

  // 4. Menentukan path lengkap file yang akan disimpan
  FullPath := TPath.Combine(FolderPath, AFileName);

  // 5. Menyimpan gambar ke file
  AImage.Picture.SaveToFile(FullPath);

  //ShowMessage('Gambar berhasil disimpan di: ' + FullPath);
end;

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

procedure TForm1.Button2Click(Sender: TObject);
begin

  Button3.Caption     := edPrefix.Text;
  Button3.Notes.Text  := edText.Text;

  //http://localhost/aaa/index.php?&radius=20&color=ff5500&width=20&height=20&input='+edPrefix.Text

  DownloadImageFromURL('http://localhost/aaa/index.php?&radius=20&color=ff5500&width=20&height=20&input='+edPrefix.Text, Img1);
  SaveImageToFile(Img1, edPrefix.Text+'.jpg');
  //img1.

  Button3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'/image/'+edPrefix.Text+'.jpg');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  Position  := poScreenCenter;
  BorderStyle := bsDialog;

  cbBorderStyle.ItemIndex:=3;
  cbMonitor.ItemIndex:=1;

end;

end.
