program Project7;

uses
  Vcl.Forms,
  Projeto7 in 'Projeto7.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
