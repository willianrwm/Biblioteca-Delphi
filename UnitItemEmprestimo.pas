unit UnitItemEmprestimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, DB, StdCtrls, Grids, DBGrids, DBTables, ExtCtrls,
  IBCustomDataSet, IBTable, IBDatabase, IBQuery, IBUpdateSQL;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    EditPesquisaAcervo: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    DataSourceAssociado: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DataSourceAcervo: TDataSource;
    EditPesquisaAssociado: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    IBTableEmprestimo: TIBTable;
    IBTableEmprestimoID_EMPRESTIMO: TIntegerField;
    IBTableEmprestimoEMP_DATAEMPRESTIMO: TDateField;
    IBTableEmprestimoID_ASSOCIADO: TIntegerField;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    IBTableItem: TIBTable;
    IBTableItemID_ACERVO: TIntegerField;
    IBTableItemID_EMPRESTIMO: TIntegerField;
    IBTableItemITE_DATADEVOLUCAO: TDateField;
    IBTableItemID_MULTA: TIntegerField;
    DBEdit4: TDBEdit;
    DataSource3: TDataSource;
    DBEdit6: TDBEdit;
    IBQuery2: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    IBQuery2ID_MULTA: TIntegerField;
    DBEdit7: TDBEdit;
    DataSource4: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery3: TIBQuery;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure EditPesquisaAssociadoChange(Sender: TObject);
    procedure EditPesquisaAcervoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitMulta;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
idemprestimo, dataemp, idassociado, idacervo, datadevol, idmulta :string;
begin
idemprestimo := DBedit1.Text;
dataemp := DBedit2.Text;
idassociado := DBedit3.Text;
idacervo := DBedit4.Text;
datadevol := DBedit6.Text;
idmulta := DBEdit7.Text;

if ((idemprestimo<>'') AND (dataemp<>'') AND (idassociado<>'') AND (idacervo<>'')
   AND (datadevol<>'') AND (idmulta<>'')) then
     begin
     IBQuery2ID_MULTA.AsString := idmulta;
     IBQuery2.Post;
     IBQuery2.Refresh;

     IBTableEmprestimoID_EMPRESTIMO.AsString := idemprestimo;
     IBTableEmprestimoEMP_DATAEMPRESTIMO.AsString := dataemp;
     IBTableEmprestimoID_ASSOCIADO.AsString := idassociado;
     IBTableEmprestimo.Post;
     IBTableEmprestimo.Refresh;

     IBTableItemID_ACERVO.AsString := idacervo;
     IBTableItemID_EMPRESTIMO.AsString := idemprestimo;
     IBTableItemITE_DATADEVOLUCAO.AsString := datadevol;
     IBTableItemID_MULTA.AsString := idmulta;
     IBTableItem.Post;
     IBTableItem.Refresh;


DBGrid1.Enabled := False;
DBGrid2.Enabled := False;
Label1.Enabled := False;
Label3.Enabled := False;
Label5.Enabled := False;
Label8.Enabled := False;
Button1.Enabled := False;
Button2.Enabled := False;
Button3.Enabled := True;
Button4.Enabled := True;
DBEdit2.Enabled := False;
DBEdit6.Enabled := False;
editpesquisaassociado.Enabled := False;
editpesquisaacervo.Enabled := False;

     end
        else
                MessageDlg('Informe todos os campos!',mtCustom,[mbOK], 0);


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
IBQuery2.Cancel;

DBGrid1.Enabled := False;
DBGrid2.Enabled := False;
Label1.Enabled := False;
Label3.Enabled := False;
Label5.Enabled := False;
Label8.Enabled := False;
Button1.Enabled := False;
Button2.Enabled := False;
Button3.Enabled := True;
Button4.Enabled := True;
DBEdit2.Enabled := False;
DBEdit6.Enabled := False;
editpesquisaassociado.Enabled := False;
editpesquisaacervo.Enabled := False;

IBTableEmprestimo.Cancel;
IBTableItem.Cancel;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
FormMulta.ShowModal();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
DBGrid1.Enabled := True;
DBGrid2.Enabled := True;
Label1.Enabled := True;
Label2.Enabled := True;
Label3.Enabled := True;
Label5.Enabled := True;
Label8.Enabled := True;
Button1.Enabled := True;
Button2.Enabled := True;
Button3.Enabled := False;
Button4.Enabled := False;
DBEdit2.Enabled := True;
DBEdit6.Enabled := True;
editpesquisaassociado.Enabled := True;
editpesquisaacervo.Enabled := True;

IBTableEmprestimo.Insert;
IBTableItem.Insert;

IBQuery2.Insert;
end;


procedure TForm1.DBEdit7Change(Sender: TObject);
begin
DBEdit1.Text := DBEdit7.Text;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
DBEdit4.Text:=DBgrid1.Columns[0].Field.AsString;
end;

procedure TForm1.DBGrid2CellClick(Column: TColumn);
begin
DBEdit3.Text:=DBgrid2.Columns[0].Field.AsString;
end;



procedure TForm1.EditPesquisaAcervoChange(Sender: TObject);
var
BuscaAcervo: string;
begin
BuscaAcervo:= EditPesquisaAcervo.Text;

        IBQuery3.Active:=False;
        IBQuery3.SQL.Clear;
        IBQuery3.SQL.Add('Select * from ACERVO where ACE_TITULO LIKE ' + #39 + BuscaAcervo + #37 + #39 + ' ORDER BY ACE_TITULO');
        IBQuery3.Active := True;
end;

procedure TForm1.EditPesquisaAssociadoChange(Sender: TObject);
var
BuscaAssociado: string;
begin
BuscaAssociado:= EditPesquisaAssociado.Text;

        IBQuery1.Active:=False;
        IBQuery1.SQL.Clear;
        IBQuery1.SQL.Add('Select * from ASSOCIADO where ASS_NOME LIKE ' + #39 + BuscaAssociado + #37 + #39 + ' ORDER BY ASS_NOME');
        IBQuery1.Active := True;
end;

end.
