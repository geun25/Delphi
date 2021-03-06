unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  I, Num: Integer;
  Edit: TEdit;
  IntArray: array[0..4] of Integer;
  StrArray: array[1..7] of string;
  EditArray: array[0..1] of TEdit;
begin
  Memo1.Lines.Clear;

  IntArray[0] := 10;
  IntArray[1] := 20;

  for I := 0 to Length(IntArray) - 1 do
    IntArray[I] := Random(100);

  for Num in IntArray do
    Memo1.Lines.Add(IntToStr(Num));

  EditArray[0] := Edit1;
  EditArray[1] := Edit2;

  for Edit in EditArray do
    Memo1.Lines.Add(Edit.Text);
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  I, J: Integer;
  IntArray: array of Integer;
  StrArray: TArray<string>;

  Matrix: array of array of Integer;
begin
  Memo1.Lines.Clear;

  SetLength(IntArray, 5);
  SetLength(StrArray, Length(IntArray));

  for I := Low(IntArray) to High(IntArray) do
    StrArray[I] := IntToStr(IntArray[I]);
end;

end.
