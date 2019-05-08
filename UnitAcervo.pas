unit UnitAcervo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, DBTables, Grids, DBGrids, ExtCtrls,
  IBCustomDataSet, IBDatabase, IBQuery, IBTable, ComCtrls, IBUpdateSQL;

type
  TFormAcervo = class(TForm)
    Label1: TLabel;
    DataSourceMestr: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    IBQuery1: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit8: TEdit;
    Button7: TButton;
    DateTimePicker1: TDateTimePicker;
    EditTemp: TEdit;
    IBUpdateSQL1: TIBUpdateSQL;
    IBTableAcervo: TIBTable;
    IBTableAcervoID_ACERVO: TIntegerField;
    IBTableAcervoACE_TITULO: TIBStringField;
    IBTableAcervoACE_QTDEEXEMPLAR: TSmallintField;
    IBTableAcervoACE_DATAEDICAO: TDateField;
    IBTableAcervoACE_LOCALEDICAO: TIBStringField;
    IBTableAcervoACE_ISBN: TSmallintField;
    IBTableAcervoID_EDITORA: TIntegerField;
    IBQuery1ID_ACERVO: TIntegerField;
    IBQuery1ID_AUTOR: TIntegerField;
    IBQuery1AUT_NOME: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery2ID_AUTOR: TIntegerField;
    IBQuery2ID_ACERVO: TIntegerField;
    IBQuery3: TIBQuery;
    IBQuery3ID_ACERVO: TIntegerField;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    IBUpdateSQL2: TIBUpdateSQL;
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAcervo: TFormAcervo;
implementation

uses UnitAutor, UnitEditora;

{$R *.dfm}



procedure TFormAcervo.Button1Click(Sender: TObject);
begin
  IBTableAcervo.Insert;
  IBQuery2.Insert;
  IBQuery3.Insert;

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  EditTemp.Clear;

  Edit8.Text:=DBEdit1.Text;

  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  DateTimePicker1.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Button5.Enabled:=True;
  Button6.Enabled:=True;
  Button2.Enabled:=True;
  Button4.Enabled:=True;
  Button1.Enabled:=False;
  Button3.Enabled:=False;
  Button7.Enabled:=False;

end;

procedure TFormAcervo.Button2Click(Sender: TObject);
var
titulo,quantidade,autor,ideditora,local,isbn,idacervo: string;
data:string;
begin
IBQuery3.Cancel;
     idacervo:= Edit8.Text;
     titulo:= Edit1.Text;
     quantidade:= Edit2.Text;
     data:= datetostr(DateTimePicker1.Date);
     local:= Edit6.Text;
     isbn:= Edit7.Text;
     ideditora:= Edit4.Text;
     autor:= EditTemp.Text;

     if ((titulo<>'') AND (quantidade<>'') AND (autor<>'') AND (ideditora<>'') AND (data<>'')
     AND (local<>'') AND (isbn<>'') )
     then
     begin

     IBTableAcervoID_ACERVO.AsString := idacervo;
     IBTableAcervoACE_TITULO.AsString := titulo;
     IBTableAcervoACE_QTDEEXEMPLAR.AsString := quantidade;
     IBTableAcervoACE_DATAEDICAO.AsString := data;
     IBTableAcervoACE_LOCALEDICAO.AsString := local;
     IBTableAcervoACE_ISBN.AsString := isbn;
     IBTableAcervoID_EDITORA.AsString := ideditora;
     IBTableAcervo.Post;
     IBTableAcervo.Refresh;

     IBQuery2ID_ACERVO.AsString := idacervo;
     IBQuery2ID_AUTOR.AsString := autor;
     IBQuery2.Post;
     IBQuery2.Refresh;

     Edit1.Enabled:=False;
     Edit2.Enabled:=False;
     Edit3.Enabled:=False;
     Edit4.Enabled:=False;
     DateTimePicker1.Enabled:=False;
     Edit6.Enabled:=False;
     Edit7.Enabled:=False;
     Button5.Enabled:=False;
     Button6.Enabled:=False;
     Button2.Enabled:=False;
     Button4.Enabled:=False;
     Button1.Enabled:=True;
     end
        else
                MessageDlg('Informe todos os campos!',mtCustom,[mbOK], 0);
end;

procedure TFormAcervo.Button3Click(Sender: TObject);
begin
IBTableAcervo.Edit;
IBQuery2.Edit;

  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  DateTimePicker1.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Button5.Enabled:=True;
  Button6.Enabled:=True;
  Button2.Enabled:=True;
  Button4.Enabled:=True;
end;

procedure TFormAcervo.Button4Click(Sender: TObject);
begin
IBTableAcervo.Cancel;
IBQuery2.Cancel;

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  EditTemp.Clear;
  Edit1.Enabled:=False;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False;
  DateTimePicker1.Enabled:=False;
  Edit6.Enabled:=False;
  Edit7.Enabled:=False;
  Button2.Enabled:=False;
  Button4.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
  Button1.Enabled:=True;
end;

procedure TFormAcervo.Button5Click(Sender: TObject);
begin
FormAutor.ShowModal;
end;

procedure TFormAcervo.Button6Click(Sender: TObject);
begin
FormEditora.ShowModal;
end;

procedure TFormAcervo.Button7Click(Sender: TObject);
begin
 IBQuery2.Delete;
 IBTableAcervo.Delete;

end;

procedure TFormAcervo.DBGrid1CellClick(Column: TColumn);
var
sql, sql2,
titulo,quantidade,autor,ideditora,data,local,isbn,idacervo: string;
begin
    titulo := DBGrid1.DataSource.DataSet.FieldByName('ACE_TITULO').AsString;
    quantidade := DBGrid1.DataSource.DataSet.FieldByName('ACE_QTDEEXEMPLAR').AsString;
    ideditora := DBGrid1.DataSource.DataSet.FieldByName('ID_EDITORA').AsString;
    data := DBGrid1.DataSource.DataSet.FieldByName('ACE_DATAEDICAO').AsString;
    local := DBGrid1.DataSource.DataSet.FieldByName('ACE_LOCALEDICAO').AsString;
    isbn := DBGrid1.DataSource.DataSet.FieldByName('ACE_ISBN').AsString;
    idacervo := DBGrid1.DataSource.DataSet.FieldByName('ID_ACERVO').AsString;

    DateTimePicker1.Date := strtodate(data);
    Edit8.Text := idacervo;
    Edit1.Text := titulo;
    Edit2.Text := quantidade;
    Edit4.Text := ideditora;
    Edit6.Text := local;
    Edit7.Text := isbn;


//==============================================================================

sql:='SELECT aut.id_acervo, aut.id_autor, ato.aut_nome '+
     'FROM acervo acer '+
     'INNER JOIN autoria aut ON aut.id_acervo = acer.id_acervo '+
     'INNER JOIN autor ato ON ato.id_autor = aut.id_autor '+
     'WHERE aut.id_acervo = '+ #39 + Edit8.Text + #39;


     IBQuery1.Close;
     IBQuery1.SQL.Clear;
     IBQuery1.SQL.Add(sql);
     IBQuery1.Open;

     Edit3.Text:=IBQuery1.FieldByName('aut_nome').AsString;

//==============================================================================

//==============================================================================

sql2:='SELECT aut.id_acervo, aut.id_autor '+
     'FROM acervo acer '+
     'INNER JOIN autoria aut ON aut.id_acervo = acer.id_acervo '+
     'INNER JOIN autor ato ON ato.id_autor = aut.id_autor '+
     'WHERE aut.id_acervo = '+ #39 + Edit8.Text + #39;


     IBQuery2.Close;
     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Add(sql);
     IBQuery2.Open;

//==============================================================================

    Button1.Enabled := True;
    Button3.Enabled := True;
    Button7.Enabled := True;

end;

end.
