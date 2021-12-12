unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    edtChar: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
type
  TMyEnum = (meFirst, meSecond, meThird);
var
  Enum: TMyEnum;
  Ch: Char;
  EnumValue, CharType: string;
begin
  Enum := meFirst;
  case Enum of
    meFirst: EnumValue := 'First';
    meSecond: EnumValue := 'Second';
    meThird: EnumValue := 'Third';
  end;

  if(edtChar.Text = '') or (Length(edtChar.Text)<> 1) then
  begin
    ShowMessage('문자 하나를 입력하세요.');
    edtChar.SetFocus;
    Exit;
  end;

  Ch := edtChar.Text[1];
  case Ch of
  'a'..'z': CharType := '소문자';
  'A'..'Z': CharType := '대문자';
  '0'..'9': CharType := '숫자';
  else      CharType := '기타문자';
  end;

  Memo1.Lines.Add(Format('''%s''는 %s입니다.', [Ch, CharType]));
end;

end.