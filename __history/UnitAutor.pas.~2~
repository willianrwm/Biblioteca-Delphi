unit UnitAutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBDatabase, IBTable,
  ExtCtrls, Grids, DBGrids;

type
  TFormAutor = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTable1ID_AUTOR: TIntegerField;
    IBTable1AUT_NOME: TIBStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAutor: TFormAutor;

implementation

uses UnitAcervo;

{$R *.dfm}

procedure TFormAutor.DBGrid1CellClick(Column: TColumn);
begin
FormAcervo.Edit3.Text := DBGrid1.DataSource.DataSet.FieldByName('AUT_NOME').AsString;
FormAcervo.EditTemp.Text := DBGrid1.DataSource.DataSet.FieldByName('ID_AUTOR').AsString;
FormAutor.Close;
end;

end.
