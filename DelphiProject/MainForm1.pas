unit MainForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    editName: TEdit;
    Button5: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
var
  Str: string;
  Num: Integer;
begin
  Num := Length('안녕하세요');
  Memo1.Lines.Add('문자열의 길이:' + IntToStr(Num));
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Str := '안녕하세요';
  Num := Length(Str);
  Memo1.Lines.Add(IntToStr(Num));
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Str := '안녕하세요';

  Num := Pos('하', Str);
  Memo1.Lines.Add('하의 위치:' + IntToStr(Num));
  Pos('cd', 'abcdef', 3)
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
  Idx, Len: Integer;
begin
  Str := '안녕하세요';
  Idx := Pos('하', Str);
  Len := Pos('요', Str) - Idx + 1;

  Str := Copy(Str, Idx, Len);
  Memo1.Lines.Add('하에서 요까지:' + Str);
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  Msg, Msg2: string;
  Name: string;
begin
  Msg := Memo2.Lines.Text;
  Name := editName.Text;

  Msg2 := StringReplace(Msg, '[Name]', Name, [rfRePlaceAll]);

  ShowMessage(Msg2);
end;

end.
