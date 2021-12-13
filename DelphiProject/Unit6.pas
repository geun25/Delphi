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
    //StrList ���
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
    StrList.Add('�׸�1');
    StrList.Add('�׸�2');
    StrList.Add('�׸�3');

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
    Memo1.Lines.Add(Format('[%s]�� %d��°�� �ֽ��ϴ�.', ['Items3', Idx]));

    Idx := StrList.IndexOf('Item6');
    if Idx = -1 then
      Memo1.Lines.Add(Format('[%s]�� �����ϴ�.', ['Item6']));
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
    StrList.Values['name'] := '����';
    StrList.Values['job'] := '�л�';
    StrList.Values['age'] := '���';

    ShowMessage(StrList.Values['name']);
  finally

  end;
end;

end.