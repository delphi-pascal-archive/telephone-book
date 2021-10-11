unit PhoneUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, jpeg;

type
  TPhoneEditForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Image1: TImage;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PhoneEditForm: TPhoneEditForm;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TPhoneEditForm.BitBtn1Click(Sender: TObject);
begin
 if DataModule1.TelephonTable.Modified then
  DataModule1.TelephonTable.Post;
end;

procedure TPhoneEditForm.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
