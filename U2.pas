unit U2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    btnClose: TButton;
    lbl2: TLabel;
    pnlTL: TPanel;
    pnlTR: TPanel;
    pnlLL: TPanel;
    pnlLR: TPanel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure pnlTLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Umain;

{$R *.dfm}

procedure TForm2.btnCloseClick(Sender: TObject);
begin

  Close;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//  Release;

end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#27 then Close;

end;

procedure TForm2.FormResize(Sender: TObject);
begin

//  lbl2.Caption:=  'Top : '+Form1.MonitorKedua.top.ToString+', Left : '+Form1.MonitorKedua.Left.ToString;

end;

procedure TForm2.pnlTLClick(Sender: TObject);
begin

  MessageDlg(
    'Top : '+Form2.top.ToString+', Left : '+Form2.Left.ToString+#13+
    'Width : '+Form2.Width.ToString+', height : '+Form2.Height.ToString,
    TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);

end;

end.
