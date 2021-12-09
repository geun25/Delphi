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
  Num := Length('�ȳ��ϼ���');
  Memo1.Lines.Add('���ڿ��� ����:' + IntToStr(Num));
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Str := '�ȳ��ϼ���';
  Num := Length(Str);
  Memo1.Lines.Add(IntToStr(Num));
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Str := '�ȳ��ϼ���';

  Num := Pos('��', Str);
  Memo1.Lines.Add('���� ��ġ:' + IntToStr(Num));
  Pos('cd', 'abcdef', 3)
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
  Idx, Len: Integer;
begin
  Str := '�ȳ��ϼ���';
  Idx := Pos('��', Str);
  Len := Pos('��', Str) - Idx + 1;

  Str := Copy(Str, Idx, Len);
  Memo1.Lines.Add('�Ͽ��� �����:' + Str);
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