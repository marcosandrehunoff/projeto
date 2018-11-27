inherited DmCadastro: TDmCadastro
  OldCreateOrder = True
  object QryEntidade: TFDQuery
    Connection = DmConexao.FDConnection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'SEQ_ENT_ID'
    UpdateOptions.AutoIncFields = 'ENT_ID'
    SQL.Strings = (
      'select * from entidade')
    Left = 48
    Top = 56
    object QryEntidadeENT_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ENT_ID'
      Origin = 'ENT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEntidadeENT_CLIENTE: TSmallintField
      DisplayLabel = 'CLIENTE'
      FieldName = 'ENT_CLIENTE'
      Origin = 'ENT_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QryEntidadeENT_FORNECEDOR: TSmallintField
      DisplayLabel = 'FORNECEDOR'
      FieldName = 'ENT_FORNECEDOR'
      Origin = 'ENT_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object QryEntidadeENT_TIPO_PESSOA: TStringField
      DisplayLabel = 'TIPO PESSOA'
      FieldName = 'ENT_TIPO_PESSOA'
      Origin = 'ENT_TIPO_PESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryEntidadeENT_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'ENT_NOME'
      Origin = 'ENT_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryEntidadeENT_CPFCNPJ: TStringField
      DisplayLabel = 'CPFCNPJ'
      FieldName = 'ENT_CPFCNPJ'
      Origin = 'ENT_CPFCNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object QryEntidadeENT_ENDERECO: TStringField
      DisplayLabel = 'ENDERECO'
      FieldName = 'ENT_ENDERECO'
      Origin = 'ENT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QryEntidadeENT_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'ENT_CEP'
      Origin = 'ENT_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryEntidadeENT_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'ENT_CIDADE'
      Origin = 'ENT_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryEntidadeENT_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ENT_UF'
      Origin = 'ENT_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object QryCategoria: TFDQuery
    Connection = DmConexao.FDConnection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'SEQ_CAT_ID'
    UpdateOptions.AutoIncFields = 'CAT_ID'
    SQL.Strings = (
      'select * from categoria')
    Left = 124
    Top = 56
    object QryCategoriaCAT_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'CAT_ID'
      Origin = 'CAT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCategoriaCAT_DESCRICAO: TStringField
      DisplayLabel = 'DESCRICAO'
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CAT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryCategoriaCAT_TIPO: TStringField
      DisplayLabel = 'TIPO'
      FieldName = 'CAT_TIPO'
      Origin = 'CAT_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object QryContasPagar: TFDQuery
    Connection = DmConexao.FDConnection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'SEQ_COP_ID'
    UpdateOptions.AutoIncFields = 'COP_ID'
    SQL.Strings = (
      'SELECT CONTA_PAGAR.COP_ID,'#10'    '
      '       CONTA_PAGAR.ENT_ID,'
      '       CONTA_PAGAR.CAT_ID,      '
      '       CONTA_PAGAR.COP_VALOR,'
      '       CONTA_PAGAR.COP_VENCIMENTO,'#10
      '       CONTA_PAGAR.COP_DESCRICAO,'
      '       CONTA_PAGAR.COP_PGTO_DATA,'
      '       CONTA_PAGAR.COP_PGTO_VALOR,'#10
      '       CONTA_PAGAR.COP_PGTO_JURO,'
      '       CONTA_PAGAR.COP_PGTO_DESC,'
      '       CONTA_PAGAR.COP_TOTAL,'
      '       ENTIDADE.ENT_NOME,'
      '       CATEGORIA.CAT_DESCRICAO'
      'FROM CONTA_PAGAR'
      'INNER JOIN ENTIDADE ON (CONTA_PAGAR.ENT_ID = ENTIDADE.ENT_ID)'
      'INNER JOIN CATEGORIA ON (CONTA_PAGAR.CAT_ID = CATEGORIA.CAT_ID)')
    Left = 208
    Top = 56
    object QryContasPagarCOP_ID: TFDAutoIncField
      FieldName = 'COP_ID'
      Origin = 'COP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object QryContasPagarENT_ID: TIntegerField
      FieldName = 'ENT_ID'
      Origin = 'ENT_ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryContasPagarCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = 'CAT_ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryContasPagarCOP_VALOR: TBCDField
      FieldName = 'COP_VALOR'
      Origin = 'COP_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryContasPagarCOP_VENCIMENTO: TDateField
      FieldName = 'COP_VENCIMENTO'
      Origin = 'COP_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasPagarCOP_DESCRICAO: TStringField
      FieldName = 'COP_DESCRICAO'
      Origin = 'COP_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryContasPagarCOP_PGTO_DATA: TDateField
      FieldName = 'COP_PGTO_DATA'
      Origin = 'COP_PGTO_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContasPagarCOP_PGTO_VALOR: TBCDField
      FieldName = 'COP_PGTO_VALOR'
      Origin = 'COP_PGTO_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryContasPagarCOP_PGTO_JURO: TBCDField
      FieldName = 'COP_PGTO_JURO'
      Origin = 'COP_PGTO_JURO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryContasPagarCOP_PGTO_DESC: TBCDField
      FieldName = 'COP_PGTO_DESC'
      Origin = 'COP_PGTO_DESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryContasPagarCOP_TOTAL: TBCDField
      FieldName = 'COP_TOTAL'
      Origin = 'COP_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryContasPagarENT_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENT_NOME'
      Origin = 'ENT_NOME'
      ProviderFlags = []
      Size = 60
    end
    object QryContasPagarCAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CAT_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
  end
  object QryContasReceber: TFDQuery
    Connection = DmConexao.FDConnection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'SEQ_COR_ID'
    UpdateOptions.AutoIncFields = 'COR_ID'
    SQL.Strings = (
      'SELECT CONTA_RECEBER.COR_ID,'#10'    '
      '       CONTA_RECEBER.ENT_ID,'
      '       CONTA_RECEBER.CAT_ID,      '
      '       CONTA_RECEBER.COR_VALOR,'
      '       CONTA_RECEBER.COR_VENCIMENTO,'#10
      '       CONTA_RECEBER.COR_DESCRICAO,'
      '       CONTA_RECEBER.COR_PGTO_DATA,'
      '       CONTA_RECEBER.COR_PGTO_VALOR,'#10
      '       CONTA_RECEBER.COR_PGTO_JURO,'
      '       CONTA_RECEBER.COR_PGTO_DESC,'
      '       CONTA_RECEBER.COR_TOTAL,'#13#10#10
      '       CATEGORIA.CAT_DESCRICAO,'
      '       ENTIDADE.ENT_NOME'
      'FROM CONTA_RECEBER'
      'INNER JOIN ENTIDADE ON (CONTA_RECEBER.ENT_ID = ENTIDADE.ENT_ID)'
      
        'INNER JOIN CATEGORIA ON (CONTA_RECEBER.CAT_ID = CATEGORIA.CAT_ID' +
        ')')
    Left = 304
    Top = 56
    object QryContasReceberCOR_ID: TFDAutoIncField
      DisplayLabel = 'ID CONTA RECEBER'
      FieldName = 'COR_ID'
      Origin = 'COR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object QryContasReceberENT_ID: TIntegerField
      DisplayLabel = 'ID ENTIDADE'
      FieldName = 'ENT_ID'
      Origin = 'ENT_ID'
      Required = True
    end
    object QryContasReceberCAT_ID: TIntegerField
      DisplayLabel = 'ID CATEGORIA'
      FieldName = 'CAT_ID'
      Origin = 'CAT_ID'
      Required = True
    end
    object QryContasReceberCOR_VALOR: TBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'COR_VALOR'
      Origin = 'COR_VALOR'
      Precision = 18
      Size = 2
    end
    object QryContasReceberCOR_VENCIMENTO: TDateField
      DisplayLabel = 'VENCIMENTO'
      FieldName = 'COR_VENCIMENTO'
      Origin = 'COR_VENCIMENTO'
    end
    object QryContasReceberCOR_DESCRICAO: TStringField
      DisplayLabel = 'DESCRICAO'
      FieldName = 'COR_DESCRICAO'
      Origin = 'COR_DESCRICAO'
      Size = 60
    end
    object QryContasReceberCOR_PGTO_DATA: TDateField
      DisplayLabel = 'DATA PAGAMENTO'
      FieldName = 'COR_PGTO_DATA'
      Origin = 'COR_PGTO_DATA'
    end
    object QryContasReceberCOR_PGTO_VALOR: TBCDField
      DisplayLabel = 'VALOR PAGAMENTO'
      FieldName = 'COR_PGTO_VALOR'
      Origin = 'COR_PGTO_VALOR'
      Precision = 18
      Size = 2
    end
    object QryContasReceberCOR_PGTO_JURO: TBCDField
      DisplayLabel = 'JURO PAGAMENTO'
      FieldName = 'COR_PGTO_JURO'
      Origin = 'COR_PGTO_JURO'
      Precision = 18
      Size = 2
    end
    object QryContasReceberCOR_PGTO_DESC: TBCDField
      DisplayLabel = 'DESCONTO PAGAMENTO'
      FieldName = 'COR_PGTO_DESC'
      Origin = 'COR_PGTO_DESC'
      Precision = 18
      Size = 2
    end
    object QryContasReceberCOR_TOTAL: TBCDField
      DisplayLabel = 'TOTAL'
      FieldName = 'COR_TOTAL'
      Origin = 'COR_TOTAL'
      Precision = 18
      Size = 2
    end
    object QryContasReceberENT_NOME: TStringField
      FieldName = 'ENT_NOME'
    end
    object QryContasReceberCAT_NOME: TStringField
      FieldName = 'CAT_DESCRICAO'
    end
  end
end
