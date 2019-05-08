unit UnitEditora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBDatabase, IBTable,
  ExtCtrls, Grids, DBGrids;

type
  TFormEditora = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTable1ID_EDITORA: TIntegerField;
    IBTable1EDI_RAZAOSOCIAL: TIBStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditora: TFormEditora;

implementation

uses UnitAcervo;

{$R *.dfm}

procedure TFormEditora.DBGrid1CellClick(Column: TColumn);
begin
FormAcervo.Edit4.Text := DBGrid1.DataSource.DataSet.FieldByName('ID_EDITORA').AsString;
FormEditora.Close;
end;

end.
