object FormAcervo: TFormAcervo
  Left = 0
  Top = 0
  Caption = 'Cadastro de Acervo'
  ClientHeight = 447
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 26
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object Label3: TLabel
    Left = 328
    Top = 48
    Width = 86
    Height = 13
    Caption = 'Quantidade de Ex'
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 72
    Height = 13
    Caption = 'Data de Edi'#231#227'o'
  end
  object Label5: TLabel
    Left = 160
    Top = 136
    Width = 73
    Height = 13
    Caption = 'Local de Edi'#231#227'o'
  end
  object Label6: TLabel
    Left = 8
    Top = 184
    Width = 23
    Height = 13
    Caption = 'ISBN'
  end
  object Label9: TLabel
    Left = 328
    Top = 93
    Width = 70
    Height = 13
    Caption = 'C'#243'digo Editora'
  end
  object Label11: TLabel
    Left = 8
    Top = 93
    Width = 27
    Height = 13
    Caption = 'Autor'
  end
  object Panel1: TPanel
    Left = 2
    Top = 8
    Width = 457
    Height = 233
    TabOrder = 0
    object Button5: TButton
      Left = 286
      Top = 100
      Width = 26
      Height = 23
      Caption = '+'
      Enabled = False
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 411
      Top = 100
      Width = 26
      Height = 23
      Caption = '+'
      Enabled = False
      TabOrder = 1
      OnClick = Button6Click
    end
    object EditTemp: TEdit
      Left = 256
      Top = 80
      Width = 29
      Height = 21
      Enabled = False
      TabOrder = 2
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 247
    Width = 454
    Height = 157
    DataSource = DataSourceMestr
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ACERVO'
        Title.Caption = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_TITULO'
        Title.Caption = 'T'#237'tulo'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_QTDEEXEMPLAR'
        Title.Caption = 'Exemplares'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_DATAEDICAO'
        Title.Caption = 'Data Edi'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_LOCALEDICAO'
        Title.Caption = 'Local Edi'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_ISBN'
        Title.Caption = 'ISBN'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_EDITORA'
        Title.Caption = 'Editora'
        Width = 40
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 66
    Width = 305
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 328
    Top = 66
    Width = 86
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 8
    Top = 109
    Width = 281
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 328
    Top = 109
    Width = 86
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 160
    Top = 155
    Width = 254
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object Edit7: TEdit
    Left = 8
    Top = 200
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 7
  end
  object Button1: TButton
    Left = 8
    Top = 416
    Width = 75
    Height = 25
    Caption = 'NOVO'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 416
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    Enabled = False
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 416
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    Enabled = False
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 416
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    Enabled = False
    TabOrder = 12
    OnClick = Button4Click
  end
  object Edit8: TEdit
    Left = 8
    Top = 21
    Width = 27
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Button7: TButton
    Left = 364
    Top = 416
    Width = 75
    Height = 25
    Caption = 'EXCLUIR'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button7Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 155
    Width = 121
    Height = 21
    Date = 42005.260419074070000000
    Time = 42005.260419074070000000
    Enabled = False
    TabOrder = 14
  end
  object DBEdit1: TDBEdit
    Left = 41
    Top = 21
    Width = 25
    Height = 21
    DataField = 'ID_ACERVO'
    DataSource = DataSource1
    TabOrder = 15
    Visible = False
  end
  object DataSourceMestr: TDataSource
    DataSet = IBTableAcervo
    Left = 400
    Top = 336
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      
        'SELECT aut.ID_ACERVO, aut.ID_AUTOR, ato.AUT_NOME FROM AUTORIA au' +
        't, AUTOR ato')
    Left = 120
    Top = 104
    object IBQuery1ID_ACERVO: TIntegerField
      FieldName = 'ID_ACERVO'
      Origin = '"AUTORIA"."ID_ACERVO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1ID_AUTOR: TIntegerField
      FieldName = 'ID_AUTOR'
      Origin = '"AUTORIA"."ID_AUTOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1AUT_NOME: TIBStringField
      FieldName = 'AUT_NOME'
      Origin = '"AUTOR"."AUT_NOME"'
      Size = 100
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'C:\Users\Karpa\Documents\RAD Studio\Proj_Biblioteca\FIREBIRD\BIB' +
      'LIOTECA.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey;')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 328
    Top = 336
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 264
    Top = 336
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_AUTOR,'
      '  ID_ACERVO'
      'from AUTORIA '
      'where'
      '  ID_ACERVO = :ID_ACERVO')
    ModifySQL.Strings = (
      'update AUTORIA'
      'set'
      '  ID_ACERVO = :ID_ACERVO,'
      '  ID_AUTOR = :ID_AUTOR'
      'where'
      '  ID_ACERVO = :OLD_ID_ACERVO')
    InsertSQL.Strings = (
      'insert into AUTORIA'
      '  (ID_ACERVO, ID_AUTOR)'
      'values'
      '  (:ID_ACERVO, :ID_AUTOR)')
    DeleteSQL.Strings = (
      'delete from AUTORIA'
      'where'
      '  ID_ACERVO = :OLD_ID_ACERVO')
    Left = 448
    Top = 416
  end
  object IBTableAcervo: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_ACERVO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACE_TITULO'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ACE_QTDEEXEMPLAR'
        DataType = ftSmallint
      end
      item
        Name = 'ACE_DATAEDICAO'
        DataType = ftDate
      end
      item
        Name = 'ACE_LOCALEDICAO'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ACE_ISBN'
        DataType = ftSmallint
      end
      item
        Name = 'ID_EDITORA'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_ACERVO'
        Fields = 'ID_ACERVO'
        Options = [ixUnique]
      end
      item
        Name = 'FK_ACERVO_1'
        Fields = 'ID_EDITORA'
      end>
    StoreDefs = True
    TableName = 'ACERVO'
    Left = 176
    Top = 336
    object IBTableAcervoID_ACERVO: TIntegerField
      FieldName = 'ID_ACERVO'
      Required = True
    end
    object IBTableAcervoACE_TITULO: TIBStringField
      FieldName = 'ACE_TITULO'
      Size = 100
    end
    object IBTableAcervoACE_QTDEEXEMPLAR: TSmallintField
      FieldName = 'ACE_QTDEEXEMPLAR'
    end
    object IBTableAcervoACE_DATAEDICAO: TDateField
      FieldName = 'ACE_DATAEDICAO'
    end
    object IBTableAcervoACE_LOCALEDICAO: TIBStringField
      FieldName = 'ACE_LOCALEDICAO'
      Size = 100
    end
    object IBTableAcervoACE_ISBN: TSmallintField
      FieldName = 'ACE_ISBN'
    end
    object IBTableAcervoID_EDITORA: TIntegerField
      FieldName = 'ID_EDITORA'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT * FROM AUTORIA')
    UpdateObject = IBUpdateSQL1
    Left = 192
    Top = 408
    object IBQuery2ID_AUTOR: TIntegerField
      FieldName = 'ID_AUTOR'
      Origin = '"AUTORIA"."ID_AUTOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2ID_ACERVO: TIntegerField
      FieldName = 'ID_ACERVO'
      Origin = '"AUTORIA"."ID_ACERVO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object IBQuery3: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT ID_ACERVO FROM ACERVO')
    UpdateObject = IBUpdateSQL2
    GeneratorField.Field = 'ID_ACERVO'
    GeneratorField.Generator = 'GEN_ACERVO_ID'
    Left = 72
    Top = 16
    object IBQuery3ID_ACERVO: TIntegerField
      FieldName = 'ID_ACERVO'
      Origin = '"ACERVO"."ID_ACERVO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery3
    Left = 96
    Top = 16
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ACERVO'
      'from ACERVO '
      'where'
      '  ID_ACERVO = :ID_ACERVO')
    ModifySQL.Strings = (
      'update ACERVO'
      'set'
      '  ID_ACERVO = :ID_ACERVO'
      'where'
      '  ID_ACERVO = :OLD_ID_ACERVO')
    InsertSQL.Strings = (
      'insert into ACERVO'
      '  (ID_ACERVO)'
      'values'
      '  (:ID_ACERVO)')
    DeleteSQL.Strings = (
      'delete from ACERVO'
      'where'
      '  ID_ACERVO = :OLD_ID_ACERVO')
    Left = 120
    Top = 16
  end
end
