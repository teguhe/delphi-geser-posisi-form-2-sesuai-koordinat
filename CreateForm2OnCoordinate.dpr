program CreateForm2OnCoordinate;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Form1},
  U2 in 'U2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
