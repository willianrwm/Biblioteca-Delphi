object FormAssociado: TFormAssociado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Associados'
  ClientHeight = 535
  ClientWidth = 516
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
    Left = 16
    Top = 15
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 16
    Top = 55
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 192
    Top = 98
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Label4: TLabel
    Left = 16
    Top = 98
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label5: TLabel
    Left = 16
    Top = 206
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label6: TLabel
    Left = 16
    Top = 163
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label7: TLabel
    Left = 16
    Top = 295
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label8: TLabel
    Left = 362
    Top = 252
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label9: TLabel
    Left = 72
    Top = 206
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label10: TLabel
    Left = 16
    Top = 252
    Width = 19
    Height = 13
    Caption = 'Rua'
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 497
    Height = 145
    TabOrder = 12
    object DBEdit11: TDBEdit
      Left = 426
      Top = 63
      Width = 28
      Height = 21
      DataField = 'ID_ASSOCIADO'
      DataSource = DataSource2
      TabOrder = 0
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 159
    Width = 497
    Height = 185
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 350
    Width = 500
    Height = 138
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
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
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_EMAIL'
        Title.Caption = 'E-Mail'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_TELEFONE'
        Title.Caption = 'Telefone'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_UF'
        Title.Caption = 'UF'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_CEP'
        Title.Caption = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_BAIRRO'
        Title.Caption = 'Bairro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_NROENDERECO'
        Title.Caption = 'N'#250'mero'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_CIDADE'
        Title.Caption = 'Cidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_RUA'
        Title.Caption = 'Rua'
        Width = 200
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 71
    Width = 304
    Height = 21
    DataField = 'ASS_NOME'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 192
    Top = 117
    Width = 304
    Height = 21
    DataField = 'ASS_EMAIL'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 117
    Width = 153
    Height = 21
    DataField = 'ASS_TELEFONE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 225
    Width = 30
    Height = 21
    DataField = 'ASS_UF'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 179
    Width = 153
    Height = 21
    DataField = 'ASS_CEP'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 314
    Width = 304
    Height = 21
    DataField = 'ASS_BAIRRO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 362
    Top = 271
    Width = 63
    Height = 21
    DataField = 'ASS_NROENDERECO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 72
    Top = 225
    Width = 304
    Height = 21
    DataField = 'ASS_CIDADE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 7
  end
  object DBEdit10: TDBEdit
    Left = 16
    Top = 271
    Width = 304
    Height = 21
    DataField = 'ASS_RUA'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 8
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 28
    Width = 28
    Height = 21
    DataField = 'ID_ASSOCIADO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 40
    Top = 494
    Width = 75
    Height = 25
    Caption = 'NOVO'
    TabOrder = 13
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 494
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    Enabled = False
    TabOrder = 14
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 494
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    Enabled = False
    TabOrder = 15
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 494
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    Enabled = False
    TabOrder = 16
    OnClick = Button4Click
  end
  object Button7: TButton
    Left = 396
    Top = 494
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
    TabOrder = 17
    OnClick = Button7Click
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
    Left = 584
    Top = 152
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 584
    Top = 208
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_ASSOCIADO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ASS_NOME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ASS_EMAIL'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ASS_TELEFONE'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'ASS_UF'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'ASS_CEP'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 9
      end
      item
        Name = 'ASS_BAIRRO'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ASS_NROENDERECO'
        DataType = ftSmallint
      end
      item
        Name = 'ASS_CIDADE'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ASS_RUA'
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_ASSOCIADO'
        Fields = 'ID_ASSOCIADO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ASSOCIADO'
    Left = 584
    Top = 264
    object IBTable1ID_ASSOCIADO: TIntegerField
      FieldName = 'ID_ASSOCIADO'
      Required = True
    end
    object IBTable1ASS_NOME: TIBStringField
      FieldName = 'ASS_NOME'
      Size = 100
    end
    object IBTable1ASS_EMAIL: TIBStringField
      FieldName = 'ASS_EMAIL'
      Size = 100
    end
    object IBTable1ASS_TELEFONE: TIBStringField
      FieldName = 'ASS_TELEFONE'
      FixedChar = True
      Size = 14
    end
    object IBTable1ASS_UF: TIBStringField
      FieldName = 'ASS_UF'
      FixedChar = True
      Size = 2
    end
    object IBTable1ASS_CEP: TIBStringField
      FieldName = 'ASS_CEP'
      FixedChar = True
      Size = 9
    end
    object IBTable1ASS_BAIRRO: TIBStringField
      FieldName = 'ASS_BAIRRO'
      Size = 100
    end
    object IBTable1ASS_NROENDERECO: TSmallintField
      FieldName = 'ASS_NROENDERECO'
    end
    object IBTable1ASS_CIDADE: TIBStringField
      FieldName = 'ASS_CIDADE'
      Size = 100
    end
    object IBTable1ASS_RUA: TIBStringField
      FieldName = 'ASS_RUA'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 584
    Top = 312
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT ID_ASSOCIADO FROM ASSOCIADO')
    UpdateObject = IBUpdateSQL1
    GeneratorField.Field = 'ID_ASSOCIADO'
    GeneratorField.Generator = 'GEN_ASSOCIADO_ID'
    Left = 416
    Top = 32
    object IBQuery1ID_ASSOCIADO: TIntegerField
      FieldName = 'ID_ASSOCIADO'
      Origin = '"ASSOCIADO"."ID_ASSOCIADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 440
    Top = 32
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ASSOCIADO'
      'from ASSOCIADO '
      'where'
      '  ID_ASSOCIADO = :ID_ASSOCIADO')
    ModifySQL.Strings = (
      'update ASSOCIADO'
      'set'
      '  ID_ASSOCIADO = :ID_ASSOCIADO'
      'where'
      '  ID_ASSOCIADO = :OLD_ID_ASSOCIADO')
    InsertSQL.Strings = (
      'insert into ASSOCIADO'
      '  (ID_ASSOCIADO)'
      'values'
      '  (:ID_ASSOCIADO)')
    DeleteSQL.Strings = (
      'delete from ASSOCIADO'
      'where'
      '  ID_ASSOCIADO = :OLD_ID_ASSOCIADO')
    Left = 464
    Top = 32
  end
end
