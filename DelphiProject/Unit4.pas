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
    ShowMessage('���� �ϳ��� �Է��ϼ���.');
    edtChar.SetFocus;
    Exit;
  end;

  Ch := edtChar.Text[1];
  case Ch of
  'a'..'z': CharType := '�ҹ���';
  'A'..'Z': CharType := '�빮��';
  '0'..'9': CharType := '����';
  else      CharType := '��Ÿ����';
  end;

  Memo1.Lines.Add(Format('''%s''�� %s�Դϴ�.', [Ch, CharType]));
end;

end.