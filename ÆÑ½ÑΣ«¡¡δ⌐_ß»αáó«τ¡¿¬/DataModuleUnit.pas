unit DataModuleUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDataModule1 = class(TDataModule)
    BookName: TADOConnection;
    BookTable1: TADOTable;
    DataSource1: TDataSource;
    BookTable1key1: TAutoIncField;
    BookTable1DSDesigner: TWideStringField;
    BookTable1DSDesigner2: TWideStringField;
    BookTable1email: TWideStringField;
    BookTable1DSDesigner4: TIntegerField;
    BookTable1DSDesigner5: TDateTimeField;
    TownSourse: TDataSource;
    TownTable: TADOTable;
    TownTableKey1: TAutoIncField;
    TownTableDSDesigner: TWideStringField;
    BookTable1Town: TStringField;
    TelephonSource: TDataSource;
    FindSource: TDataSource;
    TelephonTable: TADOTable;
    TelephonTableKey1: TAutoIncField;
    TelephonTableLinkKey: TIntegerField;
    TelephonTableDSDesigner: TWideStringField;
    TelephonTableDSDesigner2: TBooleanField;
    FindQuery: TADOQuery;
    FindQueryKey1: TAutoIncField;
    FindQueryDSDesigner: TWideStringField;
    FindQueryDSDesigner2: TWideStringField;
    FindQueryemail: TWideStringField;
    FindQueryDSDesigner3: TIntegerField;
    FindQueryDSDesigner4: TDateTimeField;
    FindQueryKey12: TAutoIncField;
    FindQueryLinkKey: TIntegerField;
    FindQueryDSDesigner5: TWideStringField;
    FindQueryDSDesigner6: TBooleanField;
    FindQueryTown: TStringField;
    BookTable1Color: TWideStringField;
    procedure BookTable1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses BookTel;

{$R *.DFM}

procedure TDataModule1.BookTable1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept:=false;
if Copy(BookTable1DsDesigner.AsString,1,Length(Form1.FindEdit.Text))=
Form1.FindEdit.Text then
Accept:=True; 
end;

end.
