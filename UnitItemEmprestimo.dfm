object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empr'#233'stimo'
  ClientHeight = 320
  ClientWidth = 760
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
    Left = 392
    Top = 52
    Width = 83
    Height = 13
    Caption = 'Pesquisar Acervo'
    Enabled = False
  end
  object Label5: TLabel
    Left = 8
    Top = 52
    Width = 140
    Height = 13
    Caption = 'Pesquisar nome do associado'
    Enabled = False
  end
  object Label2: TLabel
    Left = 8
    Top = 9
    Width = 11
    Height = 13
    Caption = 'ID'
    Enabled = False
  end
  object Label3: TLabel
    Left = 24
    Top = 224
    Width = 96
    Height = 13
    Caption = 'Data do empr'#233'stimo'
    Enabled = False
  end
  object Label4: TLabel
    Left = 432
    Top = 224
    Width = 76
    Height = 13
    Caption = 'ID do associado'
    Enabled = False
  end
  object Label6: TLabel
    Left = 574
    Top = 224
    Width = 62
    Height = 13
    Caption = 'ID do acervo'
    Enabled = False
  end
  object Label8: TLabel
    Left = 144
    Top = 224
    Width = 90
    Height = 13
    Caption = 'Data de devolu'#231#227'o'
    Enabled = False
  end
  object Panel2: TPanel
    Left = 8
    Top = 214
    Width = 251
    Height = 53
    TabOrder = 9
  end
  object Panel3: TPanel
    Left = 8
    Top = 273
    Width = 353
    Height = 41
    TabOrder = 10
  end
  object Panel1: TPanel
    Left = 400
    Top = 214
    Width = 289
    Height = 53
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 392
    Top = 98
    Width = 361
    Height = 103
    DataSource = DataSourceAcervo
    Enabled = False
    TabOrder = 0
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_TITULO'
        Title.Caption = 'T'#237'tulo'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE_QTDEEXEMPLAR'
        Title.Caption = 'Exemplares'
        Width = 60
        Visible = True
      end>
  end
  object EditPesquisaAcervo: TEdit
    Left = 392
    Top = 71
    Width = 361
    Height = 21
    Enabled = False
    TabOrder = 2
    OnChange = EditPesquisaAcervoChange
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 98
    Width = 369
    Height = 103
    DataSource = DataSourceAssociado
    Enabled = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ASSOCIADO'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_NOME'
        Title.Caption = 'Nome'
        Width = 300
        Visible = True
      end>
  end
  object EditPesquisaAssociado: TEdit
    Left = 8
    Top = 71
    Width = 369
    Height = 21
    Enabled = False
    TabOrder = 1
    OnChange = EditPesquisaAssociadoChange
  end
  object Button1: TButton
    Left = 105
    Top = 281
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    Enabled = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 190
    Top = 281
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    Enabled = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 275
    Top = 281
    Width = 75
    Height = 25
    Caption = 'DEVOLVER'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 20
    Top = 281
    Width = 75
    Height = 25
    Caption = 'NOVO'
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 25
    Width = 25
    Height = 21
    DataField = 'ID_EMPRESTIMO'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 240
    Width = 96
    Height = 21
    DataField = 'EMP_DATAEMPRESTIMO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 12
  end
  object DBEdit3: TDBEdit
    Left = 432
    Top = 237
    Width = 78
    Height = 21
    DataField = 'ID_ASSOCIADO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 13
  end
  object DBEdit4: TDBEdit
    Left = 574
    Top = 237
    Width = 78
    Height = 21
    DataField = 'ID_ACERVO'
    DataSource = DataSource3
    Enabled = False
    TabOrder = 14
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 240
    Width = 96
    Height = 21
    DataField = 'ITE_DATADEVOLUCAO'
    DataSource = DataSource3
    Enabled = False
    TabOrder = 15
  end
  object DBEdit7: TDBEdit
    Left = 574
    Top = 346
    Width = 40
    Height = 21
    DataField = 'ID_MULTA'
    DataSource = DataSource4
    TabOrder = 16
    OnChange = DBEdit7Change
  end
  object DataSourceAssociado: TDataSource
    DataSet = IBQuery1
    Left = 288
    Top = 164
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
    Left = 216
    Top = 4
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 264
    Top = 4
  end
  object DataSourceAcervo: TDataSource
    DataSet = IBQuery3
    Left = 624
    Top = 160
  end
  object IBTableEmprestimo: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_EMPRESTIMO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EMP_DATAEMPRESTIMO'
        DataType = ftDate
      end
      item
        Name = 'ID_ASSOCIADO'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_EMPRESTIMO'
        Fields = 'ID_EMPRESTIMO'
        Options = [ixUnique]
      end
      item
        Name = 'FK_EMPRESTIMO_1'
        Fields = 'ID_ASSOCIADO'
      end>
    StoreDefs = True
    TableName = 'EMPRESTIMO'
    Left = 264
    Top = 216
    object IBTableEmprestimoID_EMPRESTIMO: TIntegerField
      FieldName = 'ID_EMPRESTIMO'
      Required = True
    end
    object IBTableEmprestimoEMP_DATAEMPRESTIMO: TDateField
      FieldName = 'EMP_DATAEMPRESTIMO'
    end
    object IBTableEmprestimoID_ASSOCIADO: TIntegerField
      FieldName = 'ID_ASSOCIADO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTableEmprestimo
    Left = 296
    Top = 216
  end
  object IBTableItem: TIBTable
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
        Name = 'ID_EMPRESTIMO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITE_DATADEVOLUCAO'
        DataType = ftDate
      end
      item
        Name = 'ID_MULTA'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_ITEM_EMPRESTIMO'
        Fields = 'ID_ACERVO;ID_EMPRESTIMO'
        Options = [ixUnique]
      end
      item
        Name = 'FK_ITEM_EMPRESTIMO_1'
        Fields = 'ID_ACERVO'
      end
      item
        Name = 'FK_ITEM_EMPRESTIMO_2'
        Fields = 'ID_EMPRESTIMO'
      end
      item
        Name = 'FK_ITEM_EMPRESTIMO_3'
        Fields = 'ID_MULTA'
      end>
    StoreDefs = True
    TableName = 'ITEM_EMPRESTIMO'
    Left = 688
    Top = 224
    object IBTableItemID_ACERVO: TIntegerField
      FieldName = 'ID_ACERVO'
      Required = True
    end
    object IBTableItemID_EMPRESTIMO: TIntegerField
      FieldName = 'ID_EMPRESTIMO'
      Required = True
    end
    object IBTableItemITE_DATADEVOLUCAO: TDateField
      FieldName = 'ITE_DATADEVOLUCAO'
    end
    object IBTableItemID_MULTA: TIntegerField
      FieldName = 'ID_MULTA'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBTableItem
    Left = 728
    Top = 224
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT ID_MULTA FROM MULTA2')
    UpdateObject = IBUpdateSQL2
    GeneratorField.Field = 'ID_MULTA'
    GeneratorField.Generator = 'GEN_MULTA2_ID'
    Left = 616
    Top = 296
    object IBQuery2ID_MULTA: TIntegerField
      FieldName = 'ID_MULTA'
      Origin = '"MULTA2"."ID_MULTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_MULTA'
      'from MULTA2 '
      'where'
      '  ID_MULTA = :ID_MULTA')
    ModifySQL.Strings = (
      'update MULTA2'
      'set'
      '  ID_MULTA = :ID_MULTA'
      'where'
      '  ID_MULTA = :OLD_ID_MULTA')
    InsertSQL.Strings = (
      'insert into MULTA2'
      '  (ID_MULTA)'
      'values'
      '  (:ID_MULTA)')
    DeleteSQL.Strings = (
      'delete from MULTA2'
      'where'
      '  ID_MULTA = :OLD_ID_MULTA')
    Left = 568
    Top = 296
  end
  object DataSource4: TDataSource
    DataSet = IBQuery2
    Left = 656
    Top = 296
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT *FROM ASSOCIADO')
    Left = 240
    Top = 160
  end
  object IBQuery3: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT *FROM ACERVO')
    Left = 576
    Top = 160
  end
end
