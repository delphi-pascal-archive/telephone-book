unit RedUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, jpeg;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
if DataModule1.BookTable.Modified then
DataModule1.BookTable.Post;
Close;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
DataModule1.BookTable.Cancel;
Close;
end;

end.
