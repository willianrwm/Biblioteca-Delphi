program Project1;

uses
  Forms,
  UnitAssociado in 'UnitAssociado.pas' {FormAssociado},
  UnitAcervo in 'UnitAcervo.pas' {FormAcervo},
  UnitMulta in 'UnitMulta.pas' {FormMulta},
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitItemEmprestimo in 'UnitItemEmprestimo.pas' {Form1},
  UnitAutor in 'UnitAutor.pas' {FormAutor},
  UnitEditora in 'UnitEditora.pas' {FormEditora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormAssociado, FormAssociado);
  Application.CreateForm(TFormAcervo, FormAcervo);
  Application.CreateForm(TFormMulta, FormMulta);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormAutor, FormAutor);
  Application.CreateForm(TFormEditora, FormEditora);
  Application.Run;
end.
