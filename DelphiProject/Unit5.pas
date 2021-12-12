unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    edtNum: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  I, Num, Sum: Integer;
begin
  if not TryStrToInt(edtNum.Text, Num) then
  begin
    ShowMessage('숫자를 입력하세요.');
    edtNum.SetFocus;
    Exit;
  end;

  Sum := 0;
  for I := 1 to Num do
    Sum := Sum + I;

  Memo1.Lines.Add(Format('1부터 %d까지의 합은 %d입니다.', [Num, Sum]));

end;

end.
