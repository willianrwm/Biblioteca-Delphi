object FormMulta: TFormMulta
  Left = 0
  Top = 0
  Caption = 'Devolu'#231#227'o'
  ClientHeight = 277
  ClientWidth = 610
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
    Left = 32
    Top = 211
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 64
    Top = 211
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label3: TLabel
    Left = 145
    Top = 211
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label4: TLabel
    Left = 8
    Top = 183
    Width = 26
    Height = 13
    Caption = 'Multa'
  end
  object Label5: TLabel
    Left = 8
    Top = 8
    Width = 123
    Height = 13
    Caption = 'Insira o ID do empr'#233'stimo'
  end
  object Panel1: TPanel
    Left = 17
    Top = 202
    Width = 209
    Height = 66
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 353
    Height = 120
    DataSource = DataSource1
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
        FieldName = 'ID_EMPRESTIMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ACERVO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITE_DATADEVOLUCAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_MULTA'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 232
    Top = 202
    Width = 129
    Height = 30
    Caption = 'DEVOLVER'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 238
    Width = 129
    Height = 30
    Caption = 'CANCELAR'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 21
    Width = 123
    Height = 21
    TabOrder = 4
    OnChange = Edit1Change
  end
  object DBGrid2: TDBGrid
    Left = 400
    Top = 48
    Width = 201
    Height = 114
    DataSource = DataSource2
    Enabled = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_EMPRESTIMO'
        Title.Caption = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMP_DATAEMPRESTIMO'
        Title.Caption = 'Data empr'#233'stimo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ASSOCIADO'
        Title.Caption = 'ID Associado'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 230
    Width = 20
    Height = 21
    DataField = 'ID_MULTA'
    Enabled = False
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 230
    Width = 67
    Height = 21
    DataField = 'MUL_VALORMULTA'
    Enabled = False
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 145
    Top = 230
    Width = 48
    Height = 21
    DataField = 'MUL_QTDEEMPRESIMOACERVO'
    Enabled = False
    TabOrder = 8
    OnChange = DBEdit3Change
  end
  object DBGrid3: TDBGrid
    Left = 400
    Top = 160
    Width = 201
    Height = 108
    DataSource = DataSource3
    Enabled = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MULTA'
        Title.Caption = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUL_VALORMULTA'
        Title.Caption = 'Valor'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUL_QTDEEMPRESIMOACERVO'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
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
    Left = 200
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 240
  end
  object DataSource1: TDataSource
    DataSet = IBQuery2
    Left = 240
    Top = 104
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    UpdateObject = IBUpdateSQL1
    Left = 512
    Top = 112
    object IBQuery1ID_EMPRESTIMO: TIntegerField
      FieldName = 'ID_EMPRESTIMO'
      Origin = '"EMPRESTIMO"."ID_EMPRESTIMO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1EMP_DATAEMPRESTIMO: TDateField
      FieldName = 'EMP_DATAEMPRESTIMO'
      Origin = '"EMPRESTIMO"."EMP_DATAEMPRESTIMO"'
    end
    object IBQuery1ID_ASSOCIADO: TIntegerField
      FieldName = 'ID_ASSOCIADO'
      Origin = '"EMPRESTIMO"."ID_ASSOCIADO"'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_EMPRESTIMO,'
      '  EMP_DATAEMPRESTIMO,'
      '  ID_ASSOCIADO'
      'from EMPRESTIMO '
      'where'
      '  ID_EMPRESTIMO = :ID_EMPRESTIMO')
    ModifySQL.Strings = (
      'update EMPRESTIMO'
      'set'
      '  EMP_DATAEMPRESTIMO = :EMP_DATAEMPRESTIMO,'
      '  ID_ASSOCIADO = :ID_ASSOCIADO,'
      '  ID_EMPRESTIMO = :ID_EMPRESTIMO'
      'where'
      '  ID_EMPRESTIMO = :OLD_ID_EMPRESTIMO')
    InsertSQL.Strings = (
      'insert into EMPRESTIMO'
      '  (EMP_DATAEMPRESTIMO, ID_ASSOCIADO, ID_EMPRESTIMO)'
      'values'
      '  (:EMP_DATAEMPRESTIMO, :ID_ASSOCIADO, :ID_EMPRESTIMO)')
    DeleteSQL.Strings = (
      'delete from EMPRESTIMO'
      'where'
      '  ID_EMPRESTIMO = :OLD_ID_EMPRESTIMO')
    Left = 552
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 464
    Top = 112
  end
  object IBQueryMulta: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    UpdateObject = IBUpdateSQL2
    Left = 472
    Top = 216
    object IBQueryMultaID_MULTA: TIntegerField
      FieldName = 'ID_MULTA'
      Origin = '"MULTA2"."ID_MULTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQueryMultaMUL_VALORMULTA: TIBBCDField
      FieldName = 'MUL_VALORMULTA'
      Origin = '"MULTA2"."MUL_VALORMULTA"'
      Precision = 9
      Size = 2
    end
    object IBQueryMultaMUL_QTDEEMPRESIMOACERVO: TSmallintField
      FieldName = 'MUL_QTDEEMPRESIMOACERVO'
      Origin = '"MULTA2"."MUL_QTDEEMPRESIMOACERVO"'
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_MULTA,'
      '  MUL_VALORMULTA,'
      '  MUL_QTDEEMPRESIMOACERVO'
      'from MULTA2 '
      'where'
      '  ID_MULTA = :ID_MULTA')
    ModifySQL.Strings = (
      'update MULTA2'
      'set'
      '  ID_MULTA = :ID_MULTA,'
      '  MUL_QTDEEMPRESIMOACERVO = :MUL_QTDEEMPRESIMOACERVO,'
      '  MUL_VALORMULTA = :MUL_VALORMULTA'
      'where'
      '  ID_MULTA = :OLD_ID_MULTA')
    InsertSQL.Strings = (
      'insert into MULTA2'
      '  (ID_MULTA, MUL_QTDEEMPRESIMOACERVO, MUL_VALORMULTA)'
      'values'
      '  (:ID_MULTA, :MUL_QTDEEMPRESIMOACERVO, :MUL_VALORMULTA)')
    DeleteSQL.Strings = (
      'delete from MULTA2'
      'where'
      '  ID_MULTA = :OLD_ID_MULTA')
    Left = 568
    Top = 216
  end
  object DataSource3: TDataSource
    DataSet = IBQueryMulta
    Left = 520
    Top = 216
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT * FROM ITEM_EMPRESTIMO')
    UpdateObject = IBUpdateSQL3
    Left = 168
    Top = 104
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ACERVO,'
      '  ID_EMPRESTIMO,'
      '  ITE_DATADEVOLUCAO,'
      '  ID_MULTA'
      'from ITEM_EMPRESTIMO '
      'where'
      '  ID_EMPRESTIMO = :ID_EMPRESTIMO')
    ModifySQL.Strings = (
      'update ITEM_EMPRESTIMO'
      'set'
      '  ID_ACERVO = :ID_ACERVO,'
      '  ID_EMPRESTIMO = :ID_EMPRESTIMO,'
      '  ID_MULTA = :ID_MULTA,'
      '  ITE_DATADEVOLUCAO = :ITE_DATADEVOLUCAO'
      'where'
      '  ID_EMPRESTIMO = :OLD_ID_EMPRESTIMO')
    InsertSQL.Strings = (
      'insert into ITEM_EMPRESTIMO'
      '  (ID_ACERVO, ID_EMPRESTIMO, ID_MULTA, ITE_DATADEVOLUCAO)'
      'values'
      '  (:ID_ACERVO, :ID_EMPRESTIMO, :ID_MULTA, :ITE_DATADEVOLUCAO)')
    DeleteSQL.Strings = (
      'delete from ITEM_EMPRESTIMO'
      'where'
      '  ID_EMPRESTIMO = :OLD_ID_EMPRESTIMO')
    Left = 104
    Top = 96
  end
end
