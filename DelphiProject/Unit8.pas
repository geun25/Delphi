unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure WriteLog(AValue: string);
    procedure StrDef(AStr: string = '');
    procedure StrsDef(AStr1: string = 'a'; AStr2: string = 'b');
    procedure IntDef(ANum: Integer = 0);
    procedure IntsDef(ANum1: Integer; ANum2: Integer = 0);


    function DoubleByVal(X: Integer): Integer;
    function DoubleByRef(var X: Integer): Integer;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
  I, J, V, R: Integer;
begin
  I := 4;
  J := 4;
  V := DoubleByVal(I);
  R := DoubleByRef(J);

  WriteLog('V= ' + IntToStr(V) + ', I = ' + IntToStr(I));
  WriteLog('R= ' + IntToStr(R) + ', J = ' + IntToStr(J));
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  StrDef('¾È³ç');
  StrDef;

  StrsDef('¾È³ç', 'ÇÏ¼¼¿ä');
  StrsDef('¾È³ç');
  StrsDef;

  IntDef(10);
  IntDef;
  IntsDef(10);
  IntsDef(10, 20);
end;

function TForm8.DoubleByRef(var X: Integer): Integer;
begin
  X := X * 2;
  Result := X;
end;

function TForm8.DoubleByVal(X: Integer): Integer;
begin
  X := X * 2;
  Result := X;
end;

procedure TForm8.IntDef(ANum: Integer);
begin
  WriteLog('IntDef = ' + IntToStr(ANum));
end;

procedure TForm8.IntsDef(ANum1, ANum2: Integer);
begin

end;

procedure TForm8.StrDef(AStr: string);
begin
  WriteLog('StrDef = ' + AStr);
end;

procedure TForm8.StrsDef(AStr1, AStr2: string);
begin
  WriteLog('StrsDef = ' + AStr1 + ', ' + AStr2);
end;

procedure TForm8.WriteLog(AValue: string);
var
  S: string;
begin
  S := FormatDateTime('HH:NN:SS', Now) + ' ' + AValue;
  Memo1.Lines.Add(S);
end;

end.
