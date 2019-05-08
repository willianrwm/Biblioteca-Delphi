unit UnitMulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, DBTables, Grids, DBGrids, ExtCtrls,
  IBCustomDataSet, IBDatabase, IBTable, IBUpdateSQL, IBQuery;

type
  TFormMulta = class(TForm)
    DBGrid1: TDBGrid;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    IBQuery1: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource2: TDataSource;
    IBQuery1ID_EMPRESTIMO: TIntegerField;
    IBQuery1EMP_DATAEMPRESTIMO: TDateField;
    IBQuery1ID_ASSOCIADO: TIntegerField;
    IBQueryMulta: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    IBQueryMultaID_MULTA: TIntegerField;
    IBQueryMultaMUL_VALORMULTA: TIBBCDField;
    IBQueryMultaMUL_QTDEEMPRESIMOACERVO: TSmallintField;
    IBQuery2: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    procedure Button2Click(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMulta: TFormMulta;

implementation

{$R *.dfm}

procedure TFormMulta.Button1Click(Sender: TObject);
begin
IBQueryMulta.Post;
IBQueryMulta.Refresh;

IBQuery2.Delete;
IBQuery2.Refresh;

IBQuery1.Delete;
IBQuery1.Refresh;
end;

procedure TFormMulta.Button2Click(Sender: TObject);
begin
FormMulta.Close;
end;

procedure TFormMulta.DBEdit3Change(Sender: TObject);
begin
DBEdit2.Text :=  floattostr(strtofloat(DBEdit3.text) * (3.50));
end;

procedure TFormMulta.DBGrid1CellClick(Column: TColumn);
var datadev, sql, sql1 : string;
begin
DBEDit1.Text := DBGrid1.DataSource.DataSet.FieldByName('ID_MULTA').AsString;
datadev:= DBGrid1.DataSource.DataSet.FieldByName('ITE_DATADEVOLUCAO').AsString;

//==============================================================================
sql:='SELECT * '+
     'FROM EMPRESTIMO '+
     'WHERE ID_EMPRESTIMO = '+ #39 + DBEdit1.Text + #39;

     IBQuery1.Close;
     IBQuery1.SQL.Clear;
     IBQuery1.SQL.Add(sql);
     IBQuery1.Open;
//==============================================================================
//==============================================================================
sql1:='SELECT * '+
     'FROM MULTA2 '+
     'WHERE ID_MULTA = '+ #39 + DBEdit1.Text + #39;

     IBQueryMulta.Close;
     IBQueryMulta.SQL.Clear;
     IBQueryMulta.SQL.Add(sql1);
     IBQueryMulta.Open;
     IBQueryMulta.Edit;
//==============================================================================

    if datadev < DateToStr(Date) then
    begin
        DBEdit3.Text := '1';
        IBQueryMultaMUL_VALORMULTA.AsString := DBEdit2.Text;
        IBQueryMultaMUL_QTDEEMPRESIMOACERVO.AsString := DBEdit3.Text;
    end
    else
        DBEdit3.Text := '0';
        IBQueryMultaMUL_VALORMULTA.AsString := DBEdit2.Text;
        IBQueryMultaMUL_QTDEEMPRESIMOACERVO.AsString := DBEdit3.Text;
end;

procedure TFormMulta.Edit1Change(Sender: TObject);
var
strBusca: string;
begin
strBusca:= Edit1.Text;

        IBQuery2.Active:=False;
        IBQuery2.SQL.Clear;
        IBQuery2.SQL.Add('Select * from ITEM_EMPRESTIMO where ID_EMPRESTIMO LIKE ' + #39 + strBusca + #37 + #39 + ' ORDER BY ID_EMPRESTIMO');
        IBQuery2.Active := True;
end;

end.
