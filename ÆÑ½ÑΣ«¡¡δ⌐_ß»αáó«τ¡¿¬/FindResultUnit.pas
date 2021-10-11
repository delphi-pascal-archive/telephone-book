unit FindResultUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TFindResultform = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindResultform: TFindResultform;

implementation

uses DataModuleUnit;

{$R *.dfm}

end.
