unit BookTel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, Grids, DBGrids, ADODB, Menus, ImgList, ComCtrls,
  ToolWin, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ImageList1: TImageList;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    FindEdit: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    FindTelePhoneEdit: TEdit;
    DBGrid2: TDBGrid;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    Splitter1: TSplitter;
    procedure N5Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FindEditChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DataModuleUnit, TownBookUnit, EditRecordUnit, FindResultUnit, Pro;

{$R *.DFM}

procedure TForm1.N5Click(Sender: TObject);
begin
TownBookform.Showmodal;
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin

DataModule1.BookTable1.Insert;
EditRecordForm.ShowModal;

end;

procedure TForm1.N7Click(Sender: TObject);
begin
EditRecordForm.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
If Application.MessageBox(Pchar('Ви дійсно хочете вилучити '+DataModule1.BookTable1DSDesigner.AsString),
'Увага!!!',MB_OKCANCEL)=id_ok then
DataModule1.BookTable1.Delete;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
if Application.MessageBox(PChar('Ви дійсно хочете вилучити '+DataModule1.BookTable1DSDesigner.AsString), 'Увага!!!', MB_OKCANCEL)=id_OK then
  DataModule1.BookTable1.Delete;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
//DataModule1.BookTable1.IndexFieldNames:='Прізвище';
DataModule1.BookTable1.Sort:='Прізвище ASC';
end;

procedure TForm1.N12Click(Sender: TObject);
begin
//DataModule1.BookTable1.IndexFieldNames:='Телефон';
DataModule1.BookTable1.Sort:='Місто ASC';
end;

procedure TForm1.FindEditChange(Sender: TObject);
begin
if Length(FindEdit.Text)>0 then
DataModule1.BookTable1.Filtered:=True
else
DataModule1.BookTable1.Filtered:=False;
DataModule1.BookTable1.Filter:='Прізвище>'''+FindEdit.Text+'''';

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
DataModule1.FindQuery.Active:=False;
DataModule1.FindQuery.Parameters.ParamByName('TelePhone').Value:=FindTelePhoneEdit.Text;
DataModule1.FindQuery.Active:=True;
FindResultForm.ShowModal;
DataModule1.BookTable1.Refresh;
DataModule1.TelephonTable.Refresh;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
AboutForm.ShowModal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
If DataModule1.BookTable1.Modified then DataModule1.BookTable1.Post;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
DataModule1.BookTable1.Insert;
EditRecordForm.ShowModal;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
EditRecordForm.ShowModal;
end;

procedure TForm1.N18Click(Sender: TObject);
const
 MenuColors: array[0..5] of TColor =(clBlack, clRed,
       clGreen, clYellow, clBlue, clPurple);
begin
 DataModule1.BookTable1.Edit;

 DataModule1.BookTable1Color.AsString:=
    ColorToString(MenuColors[TMenuItem(Sender).Tag]);

 DataModule1.BookTable1.Post;
 //Label2.Font.Color:=ClRed;
end;



procedure TForm1.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
Label2.Font.Color:=ClBlue;
try
  DBGrid1.Canvas.Font.Style:=[];
  if (gdSelected in State) or (gdFocused in State)then
   begin
    DBGrid1.Canvas.Brush.Color:=clHighLight;
    DBGrid1.Canvas.Font.Color:=clWhite;
   end
  else
   begin
    DBGrid1.Canvas.Brush.Color:=clWhite;
    DBGrid1.Canvas.Font.Color:=clBlack;
    if DataModule1.BookTable1Color.AsString<>'' then
     DBGrid1.Canvas.Font.Color:=
        StringToColor(DataModule1.BookTable1Color.AsString);
        //Label2.Font.Color:=ClBlue;
   end;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, Field.AsString);
   except
  DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, Field.AsString);
 end;

end;

end.
