object FormAutor: TFormAutor
  Left = 0
  Top = 0
  Caption = 'Autor'
  ClientHeight = 415
  ClientWidth = 256
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
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 240
    Height = 333
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
        FieldName = 'ID_AUTOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUT_NOME'
        Width = 140
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 387
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 21
    Width = 240
    Height = 21
    DataField = 'AUT_NOME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_AUTOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'AUT_NOME'
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_AUTOR'
        Fields = 'ID_AUTOR'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'AUTOR'
    Left = 40
    Top = 136
    object IBTable1ID_AUTOR: TIntegerField
      FieldName = 'ID_AUTOR'
      Required = True
    end
    object IBTable1AUT_NOME: TIBStringField
      FieldName = 'AUT_NOME'
      Size = 100
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 96
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 152
    Top = 136
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
    Left = 40
    Top = 192
  end
end
