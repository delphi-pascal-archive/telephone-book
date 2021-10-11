object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 347
  Top = 274
  Height = 239
  Width = 384
  object BookName: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=datab' +
      'ase.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:Sy' +
      'stem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database P' +
      'assword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mo' +
      'de=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk T' +
      'ransactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Creat' +
      'e System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLE' +
      'DB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without ' +
      'Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object BookTable1: TADOTable
    Active = True
    Connection = BookName
    CursorType = ctStatic
    OnFilterRecord = BookTable1FilterRecord
    TableName = #1076#1086#1074#1110#1076#1085#1080#1082
    Left = 32
    Top = 128
    object BookTable1key1: TAutoIncField
      FieldName = 'key1'
      ReadOnly = True
      Visible = False
    end
    object BookTable1DSDesigner: TWideStringField
      DisplayWidth = 15
      FieldName = #1087#1088#1110#1079#1074#1080#1097#1077
      Size = 50
    end
    object BookTable1DSDesigner2: TWideStringField
      DisplayWidth = 15
      FieldName = #1110#1084#1103
      Size = 50
    end
    object BookTable1email: TWideStringField
      DisplayWidth = 20
      FieldName = 'e-mail'
      Size = 25
    end
    object BookTable1DSDesigner4: TIntegerField
      FieldName = #1084#1110#1089#1090#1086
      Visible = False
    end
    object BookTable1Town: TStringField
      DisplayLabel = #1052#1110#1089#1090#1086
      FieldKind = fkLookup
      FieldName = 'Town'
      LookupDataSet = TownTable
      LookupKeyFields = 'Key1'
      LookupResultField = #1085#1072#1079#1074#1072' '#1084#1110#1089#1090#1072
      KeyFields = #1084#1110#1089#1090#1086
      Lookup = True
    end
    object BookTable1DSDesigner5: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1085#1072#1088#1086#1076#1078'.'
      FieldName = #1076#1072#1090#1072
      DisplayFormat = 'dddddd'
      EditMask = '99/99/9999;1;_'
    end
    object BookTable1Color: TWideStringField
      FieldName = 'Color'
      Visible = False
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = BookTable1
    Left = 24
    Top = 72
  end
  object TownSourse: TDataSource
    DataSet = TownTable
    Left = 96
    Top = 56
  end
  object TownTable: TADOTable
    Active = True
    Connection = BookName
    CursorType = ctStatic
    TableName = #1076#1086#1074#1110#1076#1085#1080#1082' '#1084#1110#1089#1090
    Left = 96
    Top = 120
    object TownTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object TownTableDSDesigner: TWideStringField
      FieldName = #1085#1072#1079#1074#1072' '#1084#1110#1089#1090#1072
      Size = 30
    end
  end
  object TelephonSource: TDataSource
    DataSet = TelephonTable
    Left = 272
    Top = 64
  end
  object FindSource: TDataSource
    DataSet = FindQuery
    Left = 176
    Top = 128
  end
  object TelephonTable: TADOTable
    Active = True
    Connection = BookName
    CursorType = ctStatic
    IndexFieldNames = 'LinkKey'
    MasterFields = 'key1'
    MasterSource = DataSource1
    TableName = #1058#1077#1083#1077#1092#1086#1085#1080
    Left = 288
    Top = 128
    object TelephonTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object TelephonTableLinkKey: TIntegerField
      FieldName = 'LinkKey'
      Visible = False
    end
    object TelephonTableDSDesigner: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 10
    end
    object TelephonTableDSDesigner2: TBooleanField
      FieldName = #1052#1086#1073#1110#1083#1100#1085#1080#1082
      DisplayValues = #1058#1072#1082';'#1053#1110
    end
  end
  object FindQuery: TADOQuery
    Connection = BookName
    Parameters = <
      item
        Name = 'Telephone'
        DataType = ftString
        Size = 7
        Value = '3-21-21'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM '#1044#1086#1074#1110#1076#1085#1080#1082', '#1058#1077#1083#1077#1092#1086#1085#1080
      'WHERE '#1058#1077#1083#1077#1092#1086#1085' LIKE :Telephone'
      ' AND '#1044#1086#1074#1110#1076#1085#1080#1082'.Key1='#1058#1077#1083#1077#1092#1086#1085#1080'.LinkKey')
    Left = 184
    Top = 64
    object FindQueryKey1: TAutoIncField
      FieldName = #1044#1086#1074#1110#1076#1085#1080#1082'.Key1'
      ReadOnly = True
      Visible = False
    end
    object FindQueryDSDesigner: TWideStringField
      DisplayWidth = 15
      FieldName = #1087#1088#1110#1079#1074#1080#1097#1077
      Size = 50
    end
    object FindQueryDSDesigner2: TWideStringField
      DisplayWidth = 15
      FieldName = #1110#1084#1103
      Size = 50
    end
    object FindQueryemail: TWideStringField
      FieldName = 'e-mail'
      Size = 25
    end
    object FindQueryDSDesigner3: TIntegerField
      FieldName = #1084#1110#1089#1090#1086
      Visible = False
    end
    object FindQueryDSDesigner4: TDateTimeField
      FieldName = #1076#1072#1090#1072
      DisplayFormat = 'dddddd'
      EditMask = '99/99/9999'
    end
    object FindQueryTown: TStringField
      DisplayLabel = #1052#1110#1089#1090#1086
      FieldKind = fkLookup
      FieldName = 'Town'
      LookupDataSet = TownTable
      LookupKeyFields = 'Key1'
      LookupResultField = #1085#1072#1079#1074#1072' '#1084#1110#1089#1090#1072
      KeyFields = #1084#1110#1089#1090#1086
      Lookup = True
    end
    object FindQueryKey12: TAutoIncField
      FieldName = #1058#1077#1083#1077#1092#1086#1085#1080'.Key1'
      ReadOnly = True
      Visible = False
    end
    object FindQueryLinkKey: TIntegerField
      FieldName = 'LinkKey'
      Visible = False
    end
    object FindQueryDSDesigner5: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 10
    end
    object FindQueryDSDesigner6: TBooleanField
      FieldName = #1052#1086#1073#1110#1083#1100#1085#1080#1082
      DisplayValues = #1058#1072#1082';'#1053#1110
    end
  end
end
