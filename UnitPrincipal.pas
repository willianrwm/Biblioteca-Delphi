unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitAssociado, UnitAcervo, UnitItemEmprestimo;

{$R *.dfm}

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
FormAssociado.ShowModal;
end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
FormAcervo.ShowModal;
end;

procedure TFormPrincipal.Button3Click(Sender: TObject);
begin
Form1.ShowModal;
end;

end.
