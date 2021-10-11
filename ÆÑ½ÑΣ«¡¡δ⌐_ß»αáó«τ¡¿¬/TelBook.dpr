program TelBook;

uses
  Forms,
  BookTel in 'BookTel.pas' {Form1},
  DataModuleUnit in 'DataModuleUnit.pas' {DataModule1: TDataModule},
  TownBookUnit in 'TownBookUnit.pas' {TownBookForm},
  EditRecordUnit in 'EditRecordUnit.pas' {EditRecordForm},
  FindResultUnit in 'FindResultUnit.pas' {FindResultform},
  PhoneUnit in 'PhoneUnit.pas' {PhoneEditForm},
  Pro in 'Pro.pas' {AboutForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TTownBookForm, TownBookForm);
  Application.CreateForm(TEditRecordForm, EditRecordForm);
  Application.CreateForm(TFindResultform, FindResultform);
  Application.CreateForm(TPhoneEditForm, PhoneEditForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
