unit UnitAssociado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  IBCustomDataSet, IBDatabase, IBQuery, IBTable, IBUpdateSQL;

type
  TFormAssociado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    IBTable1ID_ASSOCIADO: TIntegerField;
    IBTable1ASS_NOME: TIBStringField;
    IBTable1ASS_EMAIL: TIBStringField;
    IBTable1ASS_TELEFONE: TIBStringField;
    IBTable1ASS_UF: TIBStringField;
    IBTable1ASS_CEP: TIBStringField;
    IBTable1ASS_BAIRRO: TIBStringField;
    IBTable1ASS_NROENDERECO: TSmallintField;
    IBTable1ASS_CIDADE: TIBStringField;
    IBTable1ASS_RUA: TIBStringField;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    IBQuery1: TIBQuery;
    IBQuery1ID_ASSOCIADO: TIntegerField;
    DBEdit11: TDBEdit;
    DataSource2: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button7: TButton;
    IBUpdateSQL1: TIBUpdateSQL;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAssociado: TFormAssociado;

implementation

{$R *.dfm}

procedure TFormAssociado.Button1Click(Sender: TObject);
begin
IBTable1.Insert;
IBQuery1.Insert;

  Button2.Enabled:=True;
  Button4.Enabled:=True;
  Button1.Enabled:=False;
  Button3.Enabled:=False;
  Button7.Enabled:=False;

  DBEdit2.Enabled:=True;
  DBEdit3.Enabled:=True;
  DBEdit4.Enabled:=True;
  DBEdit5.Enabled:=True;
  DBEdit6.Enabled:=True;
  DBEdit7.Enabled:=True;
  DBEdit8.Enabled:=True;
  DBEdit9.Enabled:=True;
  DBEdit10.Enabled:=True;

DBEdit1.Text := DBEdit11.Text;
end;

procedure TFormAssociado.Button2Click(Sender: TObject);
var
id, nome, email, telefone, uf, cep, bairro, numero, cidade, rua :string;
begin
IBQuery1.Cancel;

     id:= DBEdit1.Text;
     nome:= DBEdit2.Text;
     email:= DBEdit3.Text;
     telefone:= DBEdit4.Text;
     uf:= DBEdit5.Text;
     cep:= DBEdit6.Text;
     bairro:= DBEdit7.Text;
     numero:= DBEdit8.Text;
     cidade:= DBEdit9.Text;
     rua:= DBEdit10.Text;

     if ((id<>'') AND (nome<>'') AND (email<>'') AND (telefone<>'') AND (uf<>'')
     AND (cep<>'') AND (bairro<>'') AND (numero<>'') AND (cidade<>'') AND (rua<>''))
     then
     begin

     IBTable1ID_ASSOCIADO.AsString := id;
     IBTable1ASS_NOME.AsString := nome;
     IBTable1ASS_EMAIL.AsString := email;
     IBTable1ASS_TELEFONE.AsString := telefone;
     IBTable1ASS_UF.AsString := uf;
     IBTable1ASS_CEP.AsString := cep;
     IBTable1ASS_BAIRRO.AsString := bairro;
     IBTable1ASS_NROENDERECO.AsString := numero;
     IBTable1ASS_CIDADE.AsString := cidade;
     IBTable1ASS_RUA.AsString := rua;

     IBTable1.Post;
     IBTable1.Refresh;

     Button2.Enabled:=False;
     Button4.Enabled:=False;
     Button1.Enabled:=True;

     DBEdit2.Enabled:=False;
     DBEdit3.Enabled:=False;
     DBEdit4.Enabled:=False;
     DBEdit5.Enabled:=False;
     DBEdit6.Enabled:=False;
     DBEdit7.Enabled:=False;
     DBEdit8.Enabled:=False;
     DBEdit9.Enabled:=False;
     DBEdit10.Enabled:=False;
     end
        else
                MessageDlg('Informe todos os campos!',mtCustom,[mbOK], 0);
end;

procedure TFormAssociado.Button3Click(Sender: TObject);
begin
IBTable1.Edit;

  Button2.Enabled:=True;
  Button4.Enabled:=True;

  DBEdit2.Enabled:=True;
  DBEdit3.Enabled:=True;
  DBEdit4.Enabled:=True;
  DBEdit5.Enabled:=True;
  DBEdit6.Enabled:=True;
  DBEdit7.Enabled:=True;
  DBEdit8.Enabled:=True;
  DBEdit9.Enabled:=True;
  DBEdit10.Enabled:=True;
end;

procedure TFormAssociado.Button4Click(Sender: TObject);
begin
IBTable1.Cancel;

  Button2.Enabled:=False;
  Button3.Enabled:=False;
  Button4.Enabled:=False;
  Button7.Enabled:=False;
  Button1.Enabled:=True;

  DBEdit2.Enabled:=False;
  DBEdit3.Enabled:=False;
  DBEdit4.Enabled:=False;
  DBEdit5.Enabled:=False;
  DBEdit6.Enabled:=False;
  DBEdit7.Enabled:=False;
  DBEdit8.Enabled:=False;
  DBEdit9.Enabled:=False;
  DBEdit10.Enabled:=False;
end;

procedure TFormAssociado.Button7Click(Sender: TObject);
begin
IBTable1.Delete;
end;

procedure TFormAssociado.DBGrid1CellClick(Column: TColumn);
begin
Button3.Enabled := True;
Button4.Enabled := True;
Button7.Enabled := True;
end;

end.
