unit EditRecordUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, jpeg;

type
  TEditRecordForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBEdit5: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditRecordForm: TEditRecordForm;

implementation

uses BookTel, DataModuleUnit, PhoneUnit;

{$R *.dfm}

procedure TEditRecordForm.BitBtn1Click(Sender: TObject);
begin
If DataModule1.TelephonTable.Modified then
DataModule1.TelephonTable.Post;
Close;
end;

procedure TEditRecordForm.BitBtn2Click(Sender: TObject);
begin
DataModule1.TelephonTable.Cancel;
Close;
end;

procedure TEditRecordForm.SpeedButton1Click(Sender: TObject);
begin
 DataModule1.TelephonTable.Insert;
 PhoneEditForm.ShowModal;
end;

procedure TEditRecordForm.SpeedButton2Click(Sender: TObject);
begin
 PhoneEditForm.ShowModal;
end;

procedure TEditRecordForm.SpeedButton3Click(Sender: TObject);
begin
if Application.MessageBox(PChar('Ви дійсно хочете стерти '+DataModule1.TelephonTableDSDesigner.AsString), 'Увага!!!', MB_OKCANCEL)=id_OK then
DataModule1.TelephonTable.Delete;
end;

end.
