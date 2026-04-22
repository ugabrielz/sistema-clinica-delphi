object DM1: TDM1
  Height = 523
  Width = 726
  object conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 144
    Top = 112
  end
  object tbPacientes: TFDTable
    Active = True
    AfterInsert = tbPacientesAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.paciente'
    Left = 352
    Top = 128
    object tbPacientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object tbPacientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientescpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbPacientescelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##)#####-####;1;_'
      Size = 16
    end
    object tbPacientesdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.agendamento'
    Left = 352
    Top = 232
  end
  object dsPaciente: TDataSource
    DataSet = tbPacientes
    Left = 448
    Top = 128
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 456
    Top = 232
  end
end
