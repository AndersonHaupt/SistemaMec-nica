object FPesquisa: TFPesquisa
  Left = 505
  Top = 214
  ActiveControl = edtpesq
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 356
  ClientWidth = 479
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  DesignSize = (
    479
    356)
  PixelsPerInch = 96
  TextHeight = 13
  object lbTopo: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 23
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 10
    Top = 35
    Width = 18
    Height = 18
    AutoSize = True
    Picture.Data = {
      07544269746D617026040000424D260400000000000036000000280000001200
      0000120000000100180000000000F00300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFE3CEB7
      786E7D7C6B6DDEC5ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF7D6D70537EB4546EB07B6A
      6ADCC3AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFA8D9FF4CAFFF3C85DF546EB0736B77DDC5ACFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFE4F3FFA8D9FF4CAFFF3C85DF546EB07B6A6AE5D2BFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      E4F3FFA8D9FF4CAFFF3C85DF636E93736C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFE4F3FFA8D9
      FF4CAFFF4879C7726D7DB6A492DAC6BDC9AB9EBF9B8BC9AB9EDAC6BDEFE7E3FF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE4F3FFA8D9FF726E7E9F
      876D876D51E2BA98F3D6AAFDF2C1F3EAC1E2D1B2C7A79AE7D9D4FFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4A08E8D7256F0C69BFFDBA9
      FFEDBBFFFDCEFFFFE1FFFFEBF0E7CDC5A599EFE6E2FFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD8C2BBDFC59CFFD4A1FFDDABFFF0BFFFFFD3FFFF
      EBFFFFFEFFFFEBE0CFB0D8C2BBFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC4A49AF0DCA6FFD4A1FFDBA9FFEDBBFFFDCEFFFFE1FFFFEBFFFFE1F2
      E9C0C4A49AFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB79084FB
      EBADFED8A1FFD6A4FFE4B2FFF4C2FFFDCEFFFFD3FFFDCEFDF2C0B79084FFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1A098F0DBA6FEF3D4FFD4A1
      FFD9A7FFE4B2FFEDBBFFF0BFFFEDBBF1D4A9C1A098FFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD4BDB7DCC199FEF6D7FFF7E9FFD4A1FFD6A4FFDB
      A9FFDDABFFDBA9DDB494D4BDB7FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFECE2E0BC9992F5EBD1FFFDF5FEF3D4FED8A1FFD4A1FFD4A1EDC299BC
      9992ECE2E0FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2
      D2D0BB9891DABF98EFDAA5FBEBADEFDAA5DABF98BB9891E2D2D0FFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE1E0D1B9B6
      BC9994AF857FBC9994D1B9B6EBE1E0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
  end
  object btnCancelar: TButton
    Left = 396
    Top = 324
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 0
  end
  object btnConfirmar: TButton
    Left = 317
    Top = 324
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Confirmar'
    ModalResult = 1
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 64
    Width = 462
    Height = 257
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsPesquisa
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = dbgrd1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'INDICE'
        Title.Caption = 'C'#243'digo'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 210
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Complemento'
        Width = 150
        Visible = True
      end>
  end
  object edtpesq: TEdit
    Left = 35
    Top = 35
    Width = 434
    Height = 21
    TabOrder = 3
    OnChange = edtpesqChange
    OnKeyUp = edtpesqKeyUp
  end
  object dsPesquisa: TDataSource
    DataSet = qrPesquisa
    Left = 40
    Top = 320
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    OnCalcFields = cdsPesquisaCalcFields
    Left = 72
    Top = 320
    object cdsPesquisaINDICE: TIntegerField
      FieldName = 'INDICE'
      Required = True
    end
    object cdsPesquisaDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsPesquisaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 18
    end
    object cdsPesquisaFIL: TWideStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIL'
      Size = 1000
    end
  end
  object dspPesquisa: TDataSetProvider
    Options = [poAllowCommandText]
    Left = 104
    Top = 320
  end
  object qrPesquisa: TFDQuery
    OnCalcFields = qrPesquisaCalcFields
    Connection = DM.fdcon
    SQL.Strings = (
      
        'select indice, CAST (placa AS VARCHAR(100)) as descricao , cast ' +
        ' (cod_cliente as varchar(100)) as complemento from  veiculos')
    Left = 144
    Top = 216
    object qrPesquisaINDICE: TIntegerField
      FieldName = 'INDICE'
      Origin = 'INDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrPesquisaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qrPesquisaFIL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIL'
      Size = 10000
    end
    object qrPesquisaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
