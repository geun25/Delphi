unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    //StrList 사용
  finally
    StrList.Free;
  end;
end;

procedure TForm6.Button2Click(Sender: TObject);
var
  I, Idx: Integer;
  Str: string;
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    StrList.Add('항목1');
    StrList.Add('항목2');
    StrList.Add('항목3');

    StrList.Delete(2);

    StrList.Insert(2, 'Item3');

    StrList[0] := 'Item1';

    for I := 0 to StrList.Count - 1 do
    begin
      Str := StrList[I];
      if Pos('Item', Str) > 0 then
        Memo1.Lines.Add('[' + IntToStr(I) + ']' + Str);
    end;

    Idx := StrList.IndexOf('Item3');
    Memo1.Lines.Add(Format('[%s]는 %d번째에 있습니다.', ['Items3', Idx]));

    Idx := StrList.IndexOf('Item6');
    if Idx = -1 then
      Memo1.Lines.Add(Format('[%s]은 없습니다.', ['Item6']));
  finally
    StrList.Free;
  end;
end;

procedure TForm6.Button3Click(Sender: TObject);
var
  Str: string;
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    StrList.Values['name'] := '도근';
    StrList.Values['job'] := '학생';
    StrList.Values['age'] := '비밀';

    ShowMessage(StrList.Values['name']);

    Memo1.Lines.Clear;

    Memo1.Lines.Add('[Text]');
    Str := StrList.Text;
    Memo1.Lines.Add(Str);

    Memo1.Lines.Add('[CommaText]');
    Str := StrList.CommaText;
    Memo1.Lines.Add(Str);

    Memo1.Lines.Add('[DelimitedText]');
    StrList.Delimiter := '|';
    Str := StrList.DelimitedText;
    Memo1.Lines.Add(Str);
  finally

  end;
end;

end.
