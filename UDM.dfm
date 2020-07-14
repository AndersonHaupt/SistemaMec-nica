object DM: TDM
  OldCreateOrder = False
  Height = 307
  Width = 660
  object fdcon: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=D:\Antigo\PcNovo\Arquivos Pessoal\SisteMecanica\BSSIS.F' +
        'DB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FdClientes: TFDQuery
    AfterClose = FdClientesAfterClose
    OnCalcFields = FdClientesCalcFields
    Connection = fdcon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_CLIENTES_ID'
    UpdateOptions.UpdateTableName = 'CLIENTES'
    UpdateOptions.KeyFields = 'INDICE'
    SQL.Strings = (
      'select *from clientes order by nome')
    Left = 32
    Top = 96
    object FdClientesINDICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'INDICE'
      Origin = 'INDICE'
      Required = True
    end
    object FdClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 120
    end
    object FdClientesCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'CNPJ_CPF'
      Size = 30
    end
    object FdClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object FdClientesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 500
    end
    object FdClientesTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object FdClientesPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      Origin = 'PERC_COMISSAO'
    end
    object FdClientesSALARIO_BASE: TFloatField
      FieldName = 'SALARIO_BASE'
      Origin = 'SALARIO_BASE'
    end
    object FdClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object FdClientesFIL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIL'
      Size = 10000
    end
  end
  object DsClientes: TDataSource
    DataSet = FdClientes
    Left = 24
    Top = 144
  end
  object FDVeiculos: TFDQuery
    Connection = fdcon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_VEICULOS_ID'
    UpdateOptions.UpdateTableName = 'VEICULOS'
    UpdateOptions.KeyFields = 'INDICE'
    SQL.Strings = (
      'select *from veiculos where cod_cliente = :cod_cliente')
    Left = 88
    Top = 96
    ParamData = <
      item
        Name = 'COD_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDVeiculosINDICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'INDICE'
      Origin = 'INDICE'
      Required = True
    end
    object FDVeiculosCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FDVeiculosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 8
    end
    object FDVeiculosFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 120
    end
    object FDVeiculosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 120
    end
    object FDVeiculosKM: TFloatField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object FDVeiculosANO: TFloatField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
  end
  object DsVeiculos: TDataSource
    DataSet = FDVeiculos
    Left = 88
    Top = 144
  end
  object FdProdutos: TFDQuery
    AfterClose = FdProdutosAfterClose
    OnCalcFields = FdProdutosCalcFields
    Connection = fdcon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_PRODUTOS_ID'
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    UpdateOptions.KeyFields = 'INDICE'
    SQL.Strings = (
      'select *from produtos')
    Left = 144
    Top = 96
    object FdProdutosINDICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'INDICE'
      Origin = 'INDICE'
      Required = True
    end
    object FdProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object FdProdutosQUANTIDADE_ESTOQUE: TFloatField
      FieldName = 'QUANTIDADE_ESTOQUE'
      Origin = 'QUANTIDADE_ESTOQUE'
    end
    object FdProdutosVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdProdutosVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 120
    end
    object FdProdutosFIL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIL'
      Size = 10000
    end
  end
  object DSprodutos: TDataSource
    DataSet = FdProdutos
    Left = 144
    Top = 152
  end
  object FdOs: TFDQuery
    AfterClose = FdOsAfterClose
    OnCalcFields = FdOsCalcFields
    Connection = fdcon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_OS_ID'
    UpdateOptions.UpdateTableName = 'OS'
    UpdateOptions.KeyFields = 'INDICE'
    SQL.Strings = (
      'select *from os')
    Left = 200
    Top = 104
    object FdOsINDICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'INDICE'
      Origin = 'INDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object FdOsCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FdOsNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 120
    end
    object FdOsCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 30
    end
    object FdOsTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object FdOsCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      Origin = 'COD_VEICULO'
    end
    object FdOsPLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Origin = 'PLACA_VEICULO'
    end
    object FdOsMODELO_VEICULO: TStringField
      FieldName = 'MODELO_VEICULO'
      Origin = 'MODELO_VEICULO'
      Size = 120
    end
    object FdOsKM: TFloatField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object FdOsDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FdOsVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdOsSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object FdOsOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 300
    end
    object FdOsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object FdOsFIL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIL'
      Size = 10000
    end
    object FdOsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object FdOsTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      Origin = 'TOTAL_GERAL'
    end
    object FdOsCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
    end
    object FdOsFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 120
    end
    object FdOsOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 120
    end
  end
  object Dsos: TDataSource
    DataSet = FdOs
    Left = 200
    Top = 160
  end
  object FdProdutos_os: TFDQuery
    AutoCalcFields = False
    AggregatesActive = True
    Connection = fdcon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_PRODUTOS_OS_ID'
    UpdateOptions.UpdateTableName = 'PRODUTOS_OS'
    UpdateOptions.KeyFields = 'INDICE'
    SQL.Strings = (
      'select *from PRODUTOS_OS where cod_os = :cod_os')
    Left = 272
    Top = 104
    ParamData = <
      item
        Name = 'COD_OS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FdProdutos_osINDICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'INDICE'
      Origin = 'INDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdProdutos_osCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
    end
    object FdProdutos_osDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object FdProdutos_osQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = ' ,0.00; ,0.00'
    end
    object FdProdutos_osVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      Origin = 'VLR_UNITARIO'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdProdutos_osVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdProdutos_osDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object FdProdutos_osCOD_OS: TIntegerField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object FdProdutos_osT_QTD: TAggregateField
      FieldName = 'T_QTD'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;- ,0.00'
      Expression = 'SUM(QUANTIDADE)'
    end
    object FdProdutos_osT_VLR: TAggregateField
      FieldName = 'T_VLR'
      Active = True
      DisplayName = ''
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Expression = 'SUM(VLR_TOTAL)'
    end
  end
  object DsProdutos_os: TDataSource
    DataSet = FdProdutos_os
    Left = 272
    Top = 168
  end
  object FdSErvicos_os: TFDQuery
    AggregatesActive = True
    Connection = fdcon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_SERVICOS_OS_ID'
    UpdateOptions.UpdateTableName = 'SERVICOS_OS'
    UpdateOptions.KeyFields = 'INDICE'
    SQL.Strings = (
      'select *from SERVICOS_OS where cod_os = :cod_os')
    Left = 336
    Top = 120
    ParamData = <
      item
        Name = 'COD_OS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FdSErvicos_osINDICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'INDICE'
      Origin = 'INDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdSErvicos_osDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object FdSErvicos_osQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = ' ,0.00;- ,0.00'
    end
    object FdSErvicos_osVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      Origin = 'VLR_UNITARIO'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdSErvicos_osVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    end
    object FdSErvicos_osCOD_OS: TIntegerField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object FdSErvicos_osDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object FdSErvicos_osPER_COMISSAO: TFloatField
      FieldName = 'PER_COMISSAO'
      Origin = 'PER_COMISSAO'
    end
    object FdSErvicos_osVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
    end
    object FdSErvicos_osT_QTD: TAggregateField
      FieldName = 'T_QTD'
      Active = True
      DisplayName = ''
      DisplayFormat = ' ,0.00;- ,0.00'
      Expression = 'SUM(QUANTIDADE)'
    end
    object FdSErvicos_osT_VLR: TAggregateField
      FieldName = 'T_VLR'
      Active = True
      DisplayName = ''
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Expression = 'SUM(VLR_TOTAL)'
    end
  end
  object Dsservicosos: TDataSource
    DataSet = FdSErvicos_os
    Left = 336
    Top = 176
  end
end
