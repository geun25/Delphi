program Project1;

uses
  Vcl.Forms,
  MainForm in '..\..\..\¹®¼­\Embarcadero\Studio\Projects\MainForm.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
