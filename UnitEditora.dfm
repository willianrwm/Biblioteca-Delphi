object FormEditora: TFormEditora
  Left = 0
  Top = 0
  Caption = 'Editora'
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
    Width = 75
    Height = 13
    Caption = 'RAZ'#195'O SOCIAL'
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
        FieldName = 'ID_EDITORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EDI_RAZAOSOCIAL'
        Width = 138
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
    DataField = 'EDI_RAZAOSOCIAL'
    DataSource = DataSource1
    TabOrder = 2
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_EDITORA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EDI_RAZAOSOCIAL'
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_EDITORA'
        Fields = 'ID_EDITORA'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'EDITORA'
    Left = 40
    Top = 136
    object IBTable1ID_EDITORA: TIntegerField
      FieldName = 'ID_EDITORA'
      Required = True
    end
    object IBTable1EDI_RAZAOSOCIAL: TIBStringField
      FieldName = 'EDI_RAZAOSOCIAL'
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
