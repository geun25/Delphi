program StaticDynamicArray;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
