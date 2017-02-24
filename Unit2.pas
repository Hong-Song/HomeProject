unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBClient, StdCtrls;

type
  TForm2 = class(TForm)
    cds: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    cdsID: TIntegerField;
    cdsName: TStringField;
    procedure FormCreate(Sender: TObject);
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
var
  i, iLast: Integer;
  s: String;
begin
  cds.Last;
  iLast := cds.FieldByName('ID').AsInteger;
  for i := iLast + 1 to iLast + 10000 do
  begin
    cds.Append;
    cds.FieldByName('ID').AsInteger := i;
    s := IntToStr(i);
    cds.FieldByName('Name').AsString := StringOfChar(s[1],5000);
    cds.Post;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  cds.CreateDataSet;
  cds.Open;
end;

end.
