unit TownBookUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TTownBookForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TownBookForm: TTownBookForm;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TTownBookForm.BitBtn1Click(Sender: TObject);
begin
DataModule1.TownTable.Insert;
DBGrid1.SetFocus;
end;

procedure TTownBookForm.BitBtn2Click(Sender: TObject);
begin
if DataModule1.TownTable.Modified Then
DataModule1.TownTable.Post;
end;

procedure TTownBookForm.BitBtn3Click(Sender: TObject);
begin
DataModule1.TownTable.Delete;
end;

end.
