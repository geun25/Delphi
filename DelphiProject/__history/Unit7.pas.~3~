unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm7 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

type
  TUserRec = record
    Name: string;
    Job: string;
    Age: Integer;
  end;

procedure TForm7.Button1Click(Sender: TObject);
var
  I, Num: Integer;
  IntList: TList<Integer>;
  StrList: TList<string>;
  BtnList: TList<TButton>;
  RecList: TList<TUserRec>;
begin
  Memo1.Lines.Clear;

  IntList := TList<Integer>.Create;
  try
    for I := 0 to 4 do
      IntList.Add(Random(100));

    for Num in IntList do
      Memo1.Lines.Add(IntToStr(Num));

    ShowMessage(IntToStr(IntList.Items[2]));
  finally
    IntList.Free;
  end;

  BtnList := TList<TButton>.Create;
end;

procedure TForm7.Button2Click(Sender: TObject);
var
  Person: TUserRec;
  List: TList<TUserRec>;
begin
  Memo1.Lines.Clear;

  List := TList<TUserRec>.Create;
  try
    Person.Name := '홍길동';
    Person.Job := '의적';
    Person.Age := 30;
    List.Add(Person);

    Person.Name := '이순신';
    Person.Job := '장군';
    Person.Age := 53;
    List.Add(Person);

    Person.Name := '에디슨';
    Person.Job := '과학자';
    Person.Age := 84;
    List.Add(Person);

    Memo1.Lines.Add('Count = ' + IntToStr(List.Count));
    for Person in List do
    begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('이름 : ' + Person.Name);
      Memo1.Lines.Add('직업 : ' + Person.Job);
      Memo1.Lines.Add('나이 : ' + IntToStr(Person.Age));
    end;
  finally
    List.Free;
  end;
end;
end.
