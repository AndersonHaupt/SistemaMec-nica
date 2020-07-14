object fOS: TfOS
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento de  Ordem de Servi'#231'o'
  ClientHeight = 571
  ClientWidth = 1094
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object plntopo: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 41
    Align = alTop
    TabOrder = 1
    object Edpesquisa: TEdit
      Left = 7
      Top = 10
      Width = 336
      Height = 26
      TabOrder = 0
    end
    object Button1: TButton
      Left = 349
      Top = 5
      Width = 97
      Height = 33
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CBTIPO: TComboBox
      Left = 468
      Top = 9
      Width = 145
      Height = 26
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 2
      Text = 'Finalizadas'
      OnChange = CBTIPOChange
      Items.Strings = (
        'Abertas'
        'Finalizadas'
        '<<Todas>>')
    end
  end
  object pnlgrid: TPanel
    Left = 0
    Top = 41
    Width = 1094
    Height = 485
    Align = alClient
    TabOrder = 2
    object gridcliente: TDBGrid
      Left = 1
      Top = 1
      Width = 1092
      Height = 483
      Align = alClient
      DataSource = DM.Dsos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDblClick = btnalterarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'INDICE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Cod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA_VEICULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Placa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'CNPJ/CPF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Telefone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end>
    end
  end
  object pnlincluir: TPanel
    Left = 0
    Top = 41
    Width = 1094
    Height = 485
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 450
      Top = -1
      Width = 56
      Height = 18
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 51
      Width = 84
      Height = 18
      Caption = 'CPF/CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 238
      Top = 51
      Width = 75
      Height = 18
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 559
      Top = 51
      Width = 70
      Height = 18
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 152
      Top = -1
      Width = 54
      Height = 18
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 290
      Top = -1
      Width = 43
      Height = 18
      Caption = 'Placa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 810
      Top = 51
      Width = 26
      Height = 18
      Caption = 'KM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = -1
      Width = 39
      Height = 18
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 810
      Top = -1
      Width = 58
      Height = 18
      Caption = 'Modelo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 16
      Top = 98
      Width = 183
      Height = 18
      Caption = 'Mec'#226'nico Respons'#225'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 376
      Top = 98
      Width = 97
      Height = 18
      Caption = 'Observa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 450
      Top = 18
      Width = 354
      Height = 26
      DataField = 'NOME_CLIENTE'
      DataSource = DM.Dsos
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 70
      Width = 216
      Height = 26
      DataField = 'CPF_CNPJ'
      DataSource = DM.Dsos
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 238
      Top = 70
      Width = 315
      Height = 26
      DataField = 'ENDERECO'
      DataSource = DM.Dsos
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 559
      Top = 70
      Width = 245
      Height = 26
      DataField = 'TELEFONE'
      DataSource = DM.Dsos
      TabOrder = 5
    end
    object DBTIPO: TJvDBComboBox
      Left = 152
      Top = 18
      Width = 132
      Height = 26
      DataField = 'STATUS'
      DataSource = DM.Dsos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      Items.Strings = (
        'Aberta'
        'Finalizada')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object DBEdit5: TDBEdit
      Left = 290
      Top = 18
      Width = 154
      Height = 26
      DataField = 'PLACA_VEICULO'
      DataSource = DM.Dsos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object JvDBCalcEdit1: TJvDBCalcEdit
      Left = 810
      Top = 70
      Width = 202
      Height = 26
      TabOrder = 6
      Value = 2100.000000000000000000
      DecimalPlacesAlwaysShown = False
      DataField = 'KM'
      DataSource = DM.Dsos
    end
    object GroupBox1: TGroupBox
      Left = 34
      Top = 143
      Width = 489
      Height = 242
      Caption = 'Produtos'
      TabOrder = 15
      object DBGrid2: TDBGrid
        Left = 2
        Top = 20
        Width = 485
        Height = 220
        Align = alClient
        DataSource = DM.DsProdutos_os
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDblClick = Button4Click
        Columns = <
          item
            Expanded = False
            FieldName = 'INDICE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Cod.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 572
      Top = 143
      Width = 489
      Height = 240
      Caption = 'Servi'#231'os'
      TabOrder = 16
      object DBGrid3: TDBGrid
        Left = 2
        Top = 20
        Width = 485
        Height = 218
        Align = alClient
        DataSource = DM.Dsservicosos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'INDICE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Cod.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Servi'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end>
      end
    end
    object Button2: TButton
      Left = 1
      Top = 152
      Width = 30
      Height = 25
      Hint = 'Adicionar Produto...'
      Caption = '+'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1
      Top = 183
      Width = 30
      Height = 25
      Hint = 'Remover Produto...'
      Caption = '-'
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1
      Top = 214
      Width = 30
      Height = 25
      Hint = 'Editar Produto...'
      Caption = 'E'
      TabOrder = 11
      OnClick = Button4Click
    end
    object GroupBox3: TGroupBox
      Left = 37
      Top = 391
      Width = 333
      Height = 89
      Caption = 'Total de produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 17
      object Label8: TLabel
        Left = 8
        Top = 30
        Width = 140
        Height = 18
        Caption = 'Quantidade Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 176
        Top = 29
        Width = 88
        Height = 18
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 8
        Top = 55
        Width = 140
        Height = 17
        DataField = 'T_QTD'
        DataSource = DM.DsProdutos_os
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object DBText2: TDBText
        Left = 176
        Top = 55
        Width = 140
        Height = 17
        DataField = 'T_VLR'
        DataSource = DM.DsProdutos_os
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
    end
    object GroupBox4: TGroupBox
      Left = 376
      Top = 391
      Width = 345
      Height = 89
      Caption = 'Total de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 18
      object Label11: TLabel
        Left = 4
        Top = 29
        Width = 140
        Height = 18
        Caption = 'Quantidade Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 181
        Top = 29
        Width = 88
        Height = 18
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 4
        Top = 55
        Width = 140
        Height = 17
        DataField = 'T_QTD'
        DataSource = DM.Dsservicosos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object DBText4: TDBText
        Left = 181
        Top = 55
        Width = 140
        Height = 17
        DataField = 'T_VLR'
        DataSource = DM.Dsservicosos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
    end
    object GroupBox5: TGroupBox
      Left = 726
      Top = 391
      Width = 331
      Height = 89
      Caption = 'Total Geral'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 19
      object Label13: TLabel
        Left = 3
        Top = 30
        Width = 76
        Height = 18
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 170
        Top = 30
        Width = 89
        Height = 18
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvDBCalcEdit6: TJvDBCalcEdit
        Left = 3
        Top = 53
        Width = 153
        Height = 26
        DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Value = 19.000000000000000000
        DecimalPlacesAlwaysShown = False
        OnExit = JvDBCalcEdit6Exit
        DataField = 'DESCONTO'
        DataSource = DM.Dsos
      end
      object JvDBCalcEdit7: TJvDBCalcEdit
        Left = 170
        Top = 53
        Width = 153
        Height = 26
        DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Value = 87.000000000000000000
        DecimalPlacesAlwaysShown = False
        DataField = 'VALOR_TOTAL'
        DataSource = DM.Dsos
      end
    end
    object Button7: TButton
      Left = 536
      Top = 152
      Width = 30
      Height = 25
      Hint = 'Adicionar Servi'#231'o...'
      Caption = '+'
      TabOrder = 12
      OnClick = Button7Click
    end
    object Button6: TButton
      Left = 536
      Top = 183
      Width = 30
      Height = 25
      Hint = 'Remover Servi'#231'o...'
      Caption = '-'
      TabOrder = 13
      OnClick = Button6Click
    end
    object Button5: TButton
      Left = 536
      Top = 214
      Width = 30
      Height = 25
      Hint = 'Editar Servi'#231'o...'
      Caption = 'E'
      TabOrder = 14
      OnClick = Button5Click
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 16
      Top = 18
      Width = 130
      Height = 26
      DataField = 'DATA'
      DataSource = DM.Dsos
      ShowNullDate = False
      TabOrder = 20
    end
    object DBEdit6: TDBEdit
      Left = 810
      Top = 18
      Width = 202
      Height = 26
      DataField = 'MODELO_VEICULO'
      DataSource = DM.Dsos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 120
      Width = 354
      Height = 26
      DataField = 'FUNCIONARIO'
      DataSource = DM.Dsos
      TabOrder = 7
      OnEnter = DBEdit7Enter
      OnExit = DBEdit7Exit
    end
    object DBEdit8: TDBEdit
      Left = 376
      Top = 120
      Width = 636
      Height = 26
      DataField = 'OBS'
      DataSource = DM.Dsos
      TabOrder = 8
    end
  end
  object pnlbtn: TPanel
    Left = 0
    Top = 526
    Width = 1094
    Height = 45
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object BtnnovoGravar: TButton
      Left = 16
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = BtnnovoGravarClick
    end
    object btnexcluircancelar: TButton
      Left = 127
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = btnexcluircancelarClick
    end
    object btnalterar: TButton
      Left = 238
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = btnalterarClick
    end
    object Button8: TButton
      Left = 349
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = Button8Click
    end
  end
  object FDQuery1: TFDQuery
    Left = 624
    Top = 144
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM.Dsos
    UserName = 'dsos'
    Left = 656
    Top = 104
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDICE'
      FieldName = 'INDICE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 120
      DisplayWidth = 120
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'TELEFONE'
      FieldName = 'TELEFONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VEICULO'
      FieldName = 'COD_VEICULO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'PLACA_VEICULO'
      FieldName = 'PLACA_VEICULO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'MODELO_VEICULO'
      FieldName = 'MODELO_VEICULO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'KM'
      FieldName = 'KM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_TOTAL'
      FieldName = 'VALOR_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'FIL'
      FieldName = 'FIL'
      FieldLength = 10000
      DisplayWidth = 10000
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_GERAL'
      FieldName = 'TOTAL_GERAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_FUNCIONARIO'
      FieldName = 'COD_FUNCIONARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'FUNCIONARIO'
      FieldName = 'FUNCIONARIO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 19
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DM.Dsservicosos
    UserName = 'dosservicos'
    Left = 656
    Top = 168
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DM.DsProdutos_os
    UserName = 'dsprodutosos'
    Left = 656
    Top = 232
    object ppDBPipeline3ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDICE'
      FieldName = 'INDICE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline3ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline3ppField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 2
    end
    object ppDBPipeline3ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline3ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_UNITARIO'
      FieldName = 'VLR_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline3ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_TOTAL'
      FieldName = 'VLR_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline3ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline3ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_OS'
      FieldName = 'COD_OS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Sele'#231#227'o Autom'#225'tica'
    PrinterSetup.DocumentName = 'Recibo'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\ValesFuncionario\RELVALES.rtm'
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomPercentage = 120
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowAutoSearchDialog = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 688
    Top = 48
    Version = '19.04'
    mmColumnWidth = 197300
    object ppHeaderBand1: TppHeaderBand
      Save = True
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 63236
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 263
        mmTop = 37846
        mmWidth = 193940
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1584
        mmLeft = 263
        mmTop = 44988
        mmWidth = 194205
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 38650
        mmWidth = 194205
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'MOTOCAS E MOTONETAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 73819
        mmTop = 0
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'AV JOAQUIM SOCREPPA , 890'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 69586
        mmTop = 5821
        mmWidth = 56091
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = '(66) 9 9203-8500'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 82021
        mmTop = 11377
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 263
        mmTop = 46865
        mmWidth = 133350
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable3'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 263
        mmTop = 51628
        mmWidth = 133350
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable4: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable4'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 263
        mmTop = 56126
        mmWidth = 133350
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 60873
        mmWidth = 193940
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        AutoSize = True
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D616765DD2C0000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108007700D3030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FDFCA28A2800A28A2800A28A2800A29AD20423DE8F333F85003A8AE33E2E
          FED17E01F801A6ADE78EBC69E15F075ABA348926B5AAC1622455EA57CC60580C
          8E99EB5F26FC5BFF0083917F631F83C655BBF8D5A3EB53424831E876575A9924
          1C603451953F5CE2803EE5CD05B15F92BE37FF0083C97F65BD1B5F3A7787FC2D
          F19BC652B8C41369BA0DA4514EFD9409EEA3979FFAE67E86B00FFC1D3DE3EF14
          5F341E0FFD86BE387883CC03C8334B3DB9753C827CBB1942FE67EB401FB139E6
          8CE2BF2062FF008381FF006BCD658369FF00F04EAF891E5F51E7EAD76ADFAE9C
          2A49BFE0BE3FB65C2BBA4FF8275F8FF6F7C6B3747F9585007EBCEE14BBB9AFC7
          8BFF00F83983E3E780E1F33C5BFF0004FBF8C5A6C79FF5B6F7F77228FC0E9A07
          E39A7C5FF07887C2DF00C11C5F13BE01FC7AF01EA5360C76E34EB4991C773BAE
          26B66FC90D007EC2515F9C3F0C3FE0EB6FD8BFE23BDBC771E3CD7BC2F3CCA18C
          7AD7876EA2111F46789648F23D988AFA97E08FFC1513F675FDA3DA38FC13F1A3
          E1CEBB71310A96C9AE430DCB92400045232BE4920636E726803DE68A6F99C7DD
          6A0499F5A00751451400514514005145140051451400514514005145794FED79
          FB6BFC2FFD847E14DC78D7E2B78C34DF086811318E292E4979EF64009F2ADE14
          0649A4239DA8AC71C9C0E6803D589C0AF0CFDB1BFE0A51F043F603D03EDDF163
          E22787BC2B2C8824834E79BCFD4AED4EEC18ED630D3303B48DC176E46335F86D
          FB607FC1CDDFB447FC14BBE28FFC2A5FD8F7C13E26F0ADBEB05E182EED605BBF
          14EA1164665CAEE8AC100FBCCACC5339F38575DFB38FFC1B07E19F84BE17BAF8
          DFFB7EFC63B7B3599D6EF51D2DB5EC2F9CFF0036CBED52562D3CC70418EDF392
          A76CAE2803D27E3BFF00C1DF9AA7C63F1E7FC211FB287C05F13FC42F105D065B
          7BFD6E291DDF04A978F4EB4DF2347828DE649347B790C83AD64697FB21FF00C1
          5A3FE0A5252EBC79F15ADFF678F0A5E90EF6763A81D26EE38C91F2AC3601A727
          04FC934C80E0826BDBBF6B3FF829CF803FE08FFF00B3EF85EDFF0064FF00D9C7
          45D67C07E2DD1ECAF6D3E20D8F9365E0C89679CDADBB5E5F47BA7B89D640C241
          72F1B82465D896C7947FC14A3E2F7ED55E3BFDB3F57F0CDBFC60F117C25F14F8
          23E0658FC54F0CF863C2978ABA2F88F59B4689B56B477E1AFA318BAD88C194A4
          4095C070C00FF087FC1AEDFB27FC1EF8B9A5E9BFB407ED1DABF8E7E22F8AE646
          874DD435CB4D06E35A9DC921842F24B74E5CA3007CD3B8F0096C57B67C2AFD9E
          7FE099FF00B3A7EDF7A6FECC7A5FC29F06EADF192E094FB2F883429B5A821736
          6D7EA24B8BD0F0876840DA17249645EA6BE45F0D7C18F873FF000573FDBC7E26
          EA9E24D4ACFC0DAE7C7EF83FE13F8BFE0DF1C7982EEE3E1F5DE94F6F6FAADADA
          BB3C2D959639D1B0546DB567E0015C77FC15D3F686F879F00BFE0A997DF17BC3
          BE2BB5D73C4D66FF000FBE26787B57D32D1AFAD7C476B6AB75A6EA912CD0878E
          3492136F36E73B0FD99A3196600807E8CFEC17FF0005AFF855F13FF6B2F0D7C2
          3F037C07D73E1BF80FE205DEB3A5F837C5F1D859E9FA5788EFB49DCD7512DB42
          14A2041956DCCFB9D15A35C961FA4C8772F5AFC38D2BE29597FC1373F6C9B1F1
          57C27F897E18F893F03F56F8ECBE15F10F83F5EF08F97A9FC35D4BC411CB76F2
          6917ECA19AD9E303E68DB6B08E204499771FB90A36AD007E7C68BFB73FED51F1
          6FFE0AC3F143E10F80BC2BF07EE7E13FC1FD7F41B7F116A5AA4D7706B82C350B
          182EDDA102531C92AABCD8251470A31D4D7E836771EF5F8777775F08F4FF00F8
          39A3F6879BE28FC62F15FC31D4ACB5FF00025CF85347D335C9AC2CBC5F7DFD97
          678B7BA851489D0379230D8004AC33C9AFDC2070C73E9401F9BFFB417FC16FBC
          45F02BFE0BA9E13FD97E4F0EF86A6F87FAC69515DEA9ADC9E7AEA5A7CCF63757
          59043F945008A2C8299C17E7A63CB7F66AFF0083A023F8D1FB17FC6AF8B5E27F
          84F6AB65E03F1069FE16F0DE89A5EAED35C78C6F750925582DC9921DB0811A6F
          76F9FE50F8463B51BE43FF0082E5FC31F1578D3F6DDFDA73C71E0998DAF8C3C3
          BF11FE1CF8334BB889499618F51F0BDEC3261B076EE96F234E9CE47700573DE0
          FF0082BA3FC3AF8ABE0EF86BA6C30E9FE0F9BF6CBD2BC1E9092A0CD1785F4F82
          C2599CE305A46B83231FE267271DA803EBFD7FF6F6FD87FE367ECDDE20F1C7ED
          01FB235AF82758F0B78CA5F02F8C6CCF822D353BCF0EEA49179ACD25F5AA4728
          833FBBDE42319015084618F03E20FF008255FF00C12C7F6CCF81963F123C23E3
          E9BE11F87FC49ADCBE1FD3B523AFC9A54326A0B1C72BC0B06A6AC0EC4950923E
          55DD82C0D791F88FC777DE2CFF00823A7ED25AA472DCC9A8FED8DFB4FBF86B46
          9AC48897CA93518A66954B7DE89D2D67878E32E01E335DD7FC158B4BF0278A7F
          6B5FDA357C47A0E8FAB7803F63DF80A9E1FD22C6EEC2392D4F8B35F58A2B5BBD
          AA8079BFE930724964921475208C800DE93FE0DE4FDAF3F628D2ECF56FD90FF6
          BCD4B54F0C8885D59681AA5FCFA75A4B1BED2BE5A2B5C58DC6E0C583B2443078
          CE7270EFFF00E0BDFF00B797FC12DAF22B5FDA9FF67C83C5DE1B86410BF882DA
          13A6F9A4FCAA45F5B2CD664924614C6A5B18C8E4D78EF8F3FE0A23E2FF00F827
          87ED4BFB34F8562F1078AF4CF08FECE7F07574AF14DB2DE4B0E9FAAF892F7C37
          75A9C7652A6F09385696C1112453B1D08001515F6C68DFF0587F8F7F08349F84
          FF00096FBE125D7ED41E37B7F8576DE36F8C2BA72456BA869D15FBA986148510
          C32CA96F2A8921F2BF781908232D401EF5FB10FF00C1CC5FB2AFEDAF7367A5C7
          E30B8F86FE26BB3B1749F19C69A7176E784B9577B66CE381E6063C7CA0F15F7F
          5ADD25E429244C924522874743B95C1E4107A10477AFC58FDADFFE092DFB067F
          C149FE39EB9F0F7C23AD69BFB3BFED25696965777DE1EB0863B458AE2EACE1B9
          4864D3C95B69E44495048B6522B072DB896CD7C5DACEA7FB7EFF00C1B0DE2F85
          6E35097C6DF04D2E521B7324B36ADE13BA42CA42286C4BA74CDCAE079796CE3C
          D001201FD3E515F9F3FF00049CFF00838B3E0AFF00C150134FF0D49337C37F8B
          13651BC2BABDC2B26A0E064B585CE02DC291FC0C125055BE42A03B7E8221CAD0
          03A8A28A0028A28A0028271413815E4DFB707ED83E15FD83BF659F197C56F193
          BFF62F846C4DC9B78DC2CBA84E48482DA3278F325959106781BB27806803C33F
          E0B25FF0596F007FC123FE0847A9EB0B1F88FE21788A2913C31E16866092DF38
          041B89CF58AD51B019F04B13B541392BFCF5FECF1FB3D7ED3DFF0007427EDAD7
          DAE78A3C4771FD87A3B03AAEBF77148343F07DA39045A595B83B7CD6032B0A90
          CE41791C7CD2578DE8F1FC64FF0083807FE0A856B6F7F7FF006AF1A7C4AD48AB
          4CCB24961E19D363CB3044C9296D6D08621739623925DCB1FEB9BF621FD8A3C0
          DFF04FFF00D9AFC3BF0BFE1EE9B158687A0C23CDB8645FB56AB7240F36EEE180
          1BE6918649E800555015554007C43F0DEFFF00679FF8239FC1BF89DF04FF0065
          8B6F02F8B3F695F0978465F115EE8FA9DE6759F13C96E8CEE2E6E51732CD147E
          64AB628C9B558ED58C3B3D7C69F13BF6FEBAFF0082D77FC125743F1F6A7E1FD0
          75AF8DDFB26F89AC3C7DE2BF04DFD8ACFA678E3468C4914D3C76AFB91A09227C
          BE52411B43226312A93EF3FF000714FF00C1296C74FF00885A1FED89F0F6CBC4
          1A5F883C0B2A4BE3D6F0949F65D6459C78116BD665480D796580CEAFF2CD1280
          CD188CB1F8CFF624FD9D3E2F7C3BF8AB7527816CFC35E2BF8A1E1E8AE7E20FC3
          1BFD3235B5F0AFC70F04DF4E89AD68386D88811E78674B59007B7796E519136C
          6CA01F487EC97E0FF0378E75EF8ABFB1FD8DD4337ECF3FB61782E6F89FF036E2
          E954C3E1DB9994CB73A5ED05C2496B70A1C460EE88D9B0625E4CD737E08F18FC
          42F8D5FB1F7ECD9F1D34AF04EB1E3AF8D3FB11F8AEEFE177C52F0969A16E358D
          5F4609F61B843180C653E4AA2B2B29DC65B86276AB1AFAA3F63EFF0083769BE0
          C7ED4FF0FF00E216A9F14FC5C9F0DBE16EA77BE26F87FF000BDE38DBFE109BCD
          444725CD9C97CB2C9E7C31BAEDC20024F2D4963B9F7FE917827E0FF857E1A6A7
          AE5EF86FC33E1DF0F5E789EFDB55D667D334E86D24D5AF1FEFDCDC346A0CD337
          432392C7D6803F0D7F652FF82337ED33E36FD8FF00E1CF8B3C0367A2FC21F1FF
          008235EF17687A4786FE25BCCE973E0AD6D085B6BAFB3C4E7CC86592E1846D02
          07F3DA4F93CB447FB03F650FF83733C37F093E16E9BA3F8E7C75A878A6EAEFE0
          BDEFC20D7E3B3B25821B88AEB566D4CDCC3239670606610C5B97EEC6AD85FB83
          F4B150834EA00F867C29FF0006F0FECD3A07C6EF03FC44D47C3FE21F1378ABC0
          9A668D616B36ABAC4925B5FC9A4DA456965777302858E49D218225CE02131825
          092C4FDCA99DBCD2D1401E6BE20FD8FBE13F8B3E28C9E37D57E16FC39D4FC693
          4B0CF27882EFC356736A8F242AAB0B9B9688CA5A35440A4B65422818C0C7A231
          207E1EBF854AC70A6BE68FF82A47ED69F15BF635FD9EF4EF157C22F833A97C6E
          F105C6B70E9F79A358C922C96568F14CCD73B63477601D234E1703CDC9C0A00F
          5ED47F66BF877AC788356D52EFE1FF00826EB54D7B51B1D5F53BD9B43B592E35
          1BDB1DBF62BA99CA6E926B7DABE548C4B45B46D2B8AF0FFDA47FE08B7FB39FED
          4FF0BF54F09F89BE1FC70E9FAB78B6F3C733CDA6DFDC59DD0D6AEC28BABC122B
          E434A15432FDC3B54ED04023CBBFE08E5FF05C5D37FE0A4FA27C49D27C71E118
          7E0FFC40F84F7CB6FAF6937DA80F26289E57895F74AB1B46E92C662911C7CAFB
          79F9B68FBDED2EE3BEB58E68648E686650F1C88C195D48C8208E08239C8A00F9
          175CFF00822E7C2393E1CFECF7E0DF0FFF006E785FC1BFB39F89D3C57A1E8F6B
          3ADC43AA5DABB485AF1A60CF21695E490952BCC8D8E3007CA1FB54FF00C101BE
          317C6FFDB83E206A5A7FC4DF06C9FB3DFC6AF1968DE32F1EE8D7B6B3A788A71A
          6E5A3D3A0611B45240C4000BCB184CA9D8DE50DFFADB45007E01FED29FF04A8F
          1AEA3F0DFE14EB5F193C3F2693AD7C48FDA07C43F127E23F9689750F863C3D69
          6D3482DE4B989DE2F2458583BC472807DA563C065AF4CFF820AF846FBF6D3FDA
          27C71FB5C68FFB4647E1EF1178DBC5F7B7DE33F86B6C96B77B3C350096DF4BB4
          BB576325AB46114A4ABB9440A8A082491FB597100B988A32AB230C32B0C861DC
          115F3E7C50FF0082677C33F107C2EF8B5A3F80745D27E0FF00893E3268EFA3EB
          9E28F08E976F67A8C88C1C173B54296224704E031DE4EE0D86001F95BAF43F05
          7FE0A11F12BF684FDBA3F690D327BAF817F0EEF2DBC15F09EC6191ADAEB5D6D3
          6E5653716E6264FB5497775BA24DDBD409E68CB0583727BEFF00C1213F6F2F8F
          7FB767C6CFDA334AFDA0B49F86FF00F0A43C3D6C64D5AC2FEDE3687C2925C45B
          DB429A475586E2382D031BA3329D921605B04AAFCF7FF0579FF826DFC52FD9C3
          E0DF86E5F0F6A3A8699F0B7F677B4D0346F817E1FF0005DBB5E5FEB5E2DB8B98
          CCBAC6AF1BC46185C4DE7B173952668C2B89247DFC6FC7AF15782BE13FFC11BF
          C3BF0F7C33AF789FC49E13F06FC6ED2747F8EFA95BC6F66BF166FAED85CEAF06
          9F7A1B75D88E5C5BB118622DA36F9A3D8F20079DFF00C1593FE0803E12D73E1C
          DEFED37FB0DF8834FF0019F802C2792F755F0F78775037D2E8D242DBA49F4E91
          097658CE19A027CC8C00C9B94855F5DFF837FBFE0E7FBCF106B7A2FC13FDA635
          D6BBBABD923B0F0D78FEF641BDE43F2A5B6A9231E4B1C2ADD1C9C91E6E72641F
          A4FF00F049FF00F82550FF00827778F3E3778923D5B478ACFE2B7897FB4349F0
          D7876CE5D3B42F0FE9916E5B554B59092B74C8FF00BD39C70AA32064FE347FC1
          D5DFF045AB1FD91BE2547FB407C33D2E1D3FE1EF8EAFFECFE22D26D62DB0E83A
          B4996F3A300616DEE30C768E1250C0615D15403FA670E3F1F4A757E38FFC1A89
          FF00058BD43F6BCF84375F017E236A92EA1F103E1CD90B9D0752B99B7CDAE68C
          A553CB909E5A6B662ABBBAB46F1E7E64666FD8EA0028A28A0046FBB5F817FF00
          07B27ED6DA9699A6FC1FF81FA6DECB6FA7EA42E7C5FAEC28D85BAD8C2DAC55B1
          D554FDAD8A9E09F2CF5506BF7D1B95AFE5E7FE0F37B0BAB7FF0082A2F856E268
          E45B7B8F00D9790EC3E47DB77781B07D8F5FAD007D43FF000651FEC77A7DA780
          3E2AFC76D4ACE19B56BEBE8FC1DA24B247F3DA5BC6897178C87D25792D978E47
          D9C8E86BF7997A57E48FFC1AD53EBDAA7FC106B5AB4F015DE936FE3A8F57F114
          3A4497FF0035ADB6A6D129B56B80013E587311618276F635EC7FB33785FF00E0
          A6765A16A8BF10BC59FB2CDCDD7DA00B333586A32CA10672736A224DA78C020B
          75CE381401FA037B650EA56735BDC431DC5BCC8639639177248A460A90782083
          820F045795FEC89FB117C3CFD863E1C5C784FE1CE9373A4F87E4D5EF75882CE6
          BB92E63D3A4BB94CB2436CAE48820070AB1C61570A09DCC598FE41FF00C15EFC
          11FF00051AD5FF006E5F83AFF0BAE350BBF1E47E1BBBF36E7E1C35DD8785827D
          A662AB7875197EC7E76C273E71008F2F0090B5E29FF0447F06FF00C143B4AFF8
          2A6FC3D93E25CBFB4927816DEEEF3FE1283E34BFD4E5D19AD44128903FDA59A1
          673214D98CB6FDA54F19001FD21C4300FD69D4D87EED3A800A466C7E74B59FE2
          DB8D4AD3C2DA94DA3DADB5EEAF0DACAF636F7331861B89C2131A3B804A2B3601
          600E012706803E71F167FC161BE00783BE17FC42F145F78F74DD361F871AD6A9
          E1ABFB6D5C369535E6AB605D66B4B5FB484172C5D0AAB45BD7240241E2BF36FE
          1E7FC1EF1F0D756F16DB5BF8ABE0678DB43D0E4244F7BA6EB76DA95C43E8440F
          1C0187AFEF011D81AF86FF006D7F82BE20F863FB6149AAFED61A16A1FB46FED3
          7F11B5079BC3FF0008BC35ABDC7F64E8B672CA4C2F733DA7EF70F8710D95AED2
          5019659549D8F9FF001D3E15786FE0E69FA4D87ED61FB0ACDF013C21E29916D7
          4FF1E7806E351B7BBD09E45CC65E1B8B9B9B6BA640199E09364CCAA718230403
          F6A3F696FF00839F3F64DF801F00BC3BE38D33C6571F1227F1629361E1EF0C47
          1C9ABDB80A496BC867922FB22AB610F9A43924EC470188FCEDF895FF0007BDF8
          B2E75E93FE10DF80FE1DB3D3032F97FDB3AFCD7370C31CE7CA8E35193D319C0E
          39EB5ED9FF0004A8FF0082687ECDBF18FF00640F197C11F137C3EF875F14BE28
          7C1C7BBD7F46F144534D25BF8D2C3578DAE749D511E1912410BC69140F6C5CF9
          6F6CDFC4E49FCC8FD8035BF0DFC73F0E7ED01A978E7E06FC17FEC1F85BF0F350
          BC8E68347B8B5B81AF4F3C563A4C09209CFEF24BB99405652AC1586012180078
          97FC14BBE385BFED95F156E7F682F0EF841BC0167F17AEA587C45A2D84A1B4F5
          D6ED8446E5A22A89BC4EAF05D37980B99E699893906BFADDFF00825669D75A47
          FC131BF677B5BE86EADEFADFE1AF8763B88AE559668E41A6DB86570DF3060720
          83C83C57E307FC1C3BE00F80FF00B12FFC12F3E067ECC1E17F0BF93F192CDEC7
          C53669A15AA0B88A65B6F22FEFAFA41995DEE886000F999ADD0E55215539BFB2
          5FFC1C43FB737C3BFD9AF43F8D5E31F857E1BF8A5FB3CE8B711E81ABEB3A6451
          C37F6AF6E2186479DE19A47B6958BC6DBEE2058DDA55DB85602803FA2CA2BCBF
          F639FDADFC1DFB74FECDBE13F8ABE01BC9EF3C2FE2FB53716DE7C5E55C5B3A3B
          473412A721658A549236C12B94254B290C7D42800A28A2802392D96546565565
          6EA18641AF85FE09FF00C1BDFF0002FE08FED72BF14ACE5F166ADA5E97ACCFE2
          7F0D781F54D49AE7C33E15D627DBE6EA16B6ADC79C4A2142FBBCB29195E638CA
          7DC1E23BEBAD33C3D7F736367FDA17D6F6F2496F6BBC47F699154958F71E1771
          0064F4CD7E41FC45FF0082D6FEDEDE19D5AD6DF41FD8975AF11432D8DBDC5CCC
          BE1ED6EDD6CEE5E3569AD3E751E698642D1F9C9FBB9366F4F948A00FD86FF575
          E3DFB7DFECA9A3FEDBDFB1B7C48F859ADDBC535BF8C742B8B4B679013F63BC08
          5ED6E571CEE8AE162900E84A60820907F187F6D8FF0082EEFF00C145349FD997
          C597573FB2DEAFF05F4E8AD7179E311A06A2F26870B3046951A7CC51B1DC1448
          CA76EEC8C1008FB9FF00E0DFAF8B7E1EF881F0F35DB5F0F7ED5DF103F69755B1
          B1D435383C55A5DD34DE15BC9958C9125F4E819839C8F219DF6888150A371600
          FE68FF00E09B5FB4C6B9FF0004FEFF00828D7C33F1D249369B71E0FF00144369
          ADC381BA4B2793ECD7F6EC1B232D6EF32671F2B61860A835FDB95B5C2DCC0924
          6CB2472286465390C0F20E6BF856FDAA668352FDB27E23C960035B5C78CF536B
          708382A6FA4DB8FC08C57F71FF000C2292DFE1C787E39959658F4CB6570DF783
          089739A00DEA28A280061915F877FF0007A4FEC517FE3EF819F0D7E3AE8F6BE7
          2F806E66F0F78871F796CEF191ED663CFDC8E7478C8009CDDA9E8A48FDC4AE3F
          F681F817E18FDA6FE0AF89BE1FF8D34D8F57F0B78BB4F974CD4AD58EDF322917
          04AB75575386561CAB2A91C8A00FC17FF832BFF6DFB1F0EF8BBE267ECFDAC5D2
          C33788593C5DE1A420FEFA68A3F26FA2CF42C625B691578E2294F3DBFA168C7C
          833D7BD7F1A5FB67FEC91F17FF00E0805FF051CD266B1BCB9B7BEF0CEA235DF0
          4789C438B6D76CD5C856201C6769314F09391B9872AEACDFD487FC1287FE0A8D
          E05FF82A9FECBBA778E3C31716D63E22B148ED7C53E1EF3775C6817DB7E6420E
          0B42F82D1C8061D78E195D5403E9F380290B29A463F29AF972E7FE0A8DE1BB5F
          F829F5BFECC6DE15F1249A95D6966E63F13C6AADA52DF8B47BE3A7BF42B27D8D
          0CBB813D40C0CE6803EA507228AC3F0F7C47F0FF008AB5FD5F49D2F5CD2352D5
          7C3F2AC1AA59DADE4735C69D23286559914968D8A904060320E6B6BCD5A00753
          65FB94EA6BAEE1F8D007E0CE91E2783F67CFF83B07E3F7FC2C3D7F49F09F88BE
          24780EE74FF867E22D5E38C5AD86A17367A7AD94C9230658B6C56F7706E232EC
          19304C983F9F7FF0529FF82477ED35FB2DFC16D53E247ED19F17BC21706E350F
          2EC349D4FC6F77AC6B3E2499A56024B48446EACA41794B48E9B1376EDAD843FD
          207FC14EFF00E08E7F06BFE0AC1E0ED36CFE2469B7F63E20D043AE91E24D1A54
          B7D52C118E4C5B995925849E4C722B0072576B126BE49FD97BFE0D19F823F093
          E2C69BE2CF895E36F1C7C6C3A1BA3E9DA46B8EB6FA6AEC39413221679954807C
          BDEB1B630CACA4A900FC75F07FFC11B3F6D2FD9F3F679F86BF137E10E9BF1227
          5F8E3E196BDD46D7C17712C377A65919E39AD61BB7B7972567885BDCA838DBBB
          6300E8C07A47FC128FFE094BFB65E87FB547877C0FE28F867F11BC27F07FC77E
          27D1B54F887FDAB6696F65A85A6977AB7E865965563BD644254290CECC14E41A
          FEA7AD6CD2C608E18638E286150888836AA28180001C003D2A475C8FC6803F0A
          7F6CEF15785FF65EFF0083B87C23E32F8D91DAD9FC3EF19784E3B0F0FEABA9BF
          FC4BEC1E5D365B1DCE4FCAA9F68F3E36CF09F690E703E6AEABF670FD8EE2FF00
          821A7ECE5FB64DD7C56F1C7C3BD43F669F8896976FE06D1E3BEFB66A1ACB4CB3
          C36F1F97E580CEF1490C2CA8586E8CBFCA8A5CFE94FF00C144BFE0985F08FF00
          E0A87F07A0F07FC56D0E6BC5D3656B9D2358D3E516DAAE87330DACD6F3608DAC
          301A37578DF6A1642C8857E03F837FF06707C11F08FC46B1D4BC77F123E23FC4
          9F0CE93297B3F0E5DCA9636C532488A596226429D33E5188923A8CE2803B0FF8
          33FBE1EF89BC11FF00048F8B50D71668B4BF1578BF52D53418E4C1CDA2886D9E
          45E7215AE2DE7001C7DD240C3027F546B27C15E09D2BE1CF84F4BD0741D36CB4
          7D1345B58ECAC2C6D2158A0B382350A91A22E02AAA80001D856B500145359F69
          ACFF0014F8BF4AF03F87EEF56D6B52B1D1F4AB04F36EAF2F6E12DEDED93FBCF2
          390AA391C923AD0068EE1464135F31FF00C140FF00E0A5DA2FEC25E0DF87BAA5
          BF83FC4FF132E3E23EA86D34CB3F0C2ACEE6D22B67BCBABD04677C715AC724A1
          5412E17AA8CB0FA6237E73CED23382314011EADA6DBEB3A75C59DE410DD5A5DC
          4F0CF04D18923991810CACA7219482410460835F2CFF00C148FF00686F02FF00
          C1277FE09C9F133C75A0E87E1DF0A8B3D3E68745D3B4AD3A1B486FB59B94F22D
          418E30A1BF78519DBA88E373C85C57D43AF6BD63E1BD16F354D4AF2DB4FD3B4E
          81EE6EAEAE6558A1B68914B3C8EEC70AAAA0924900019E95FCA4FF00C1C5BFF0
          594B8FF82AA7ED2BA6FC3FF86B2DDDF7C23F03DF1B7D123B785FCEF156A4E7CB
          6BDF2F1B8A9CF970211BB6966201936A807CEBFF00045CFD8D754FF82807FC14
          DBE17F82D61379A647ACC5E21F12CF2B36134CB49167BA2CDC90D20510A9FF00
          9E932678C9AFED311718FE5E95F9A1FF0006D87FC119E6FF008265FECDB71E2E
          F1DD8A43F193E24451CBAB42D866F0F588F9A1D3C1048F33399252382E553911
          066FD31A0028A28A00291D77AE2968A00F01FF00828B7FC138BE19FF00C14DBF
          67DBCF87BF1234B69E1CB5C693AB5B6D4D4740BADA40B8B7908383D0321CA3AF
          0C08C63F9A6F8DBFB2B7ED55FF0006C17ED7F67E3CF0CDEC93786EEE46B3D3FC
          4F6B6CD3E83E28B5255DACAFE1CE62738198A42AE190BC4E4A0907F5ACCA1AB1
          3E237C33F0EFC5FF0004EA5E1BF15685A3F893C3FAC42D6F7DA6EA9689776977
          19E0AC91B82AC3D88A00F8BFFE0921FF0005F2F83BFF000552F0A5AE976B7B07
          81FE2BDBC2A752F076A770165948C032D8CAC02DD444E785C4A98F9D141566F2
          3FD947E0AF8FBC57FF0007027C53D6BC59E01F1568FE17F04DC6B7E26D37C437
          B6DFF12BD566D4AC742D2AC16D26C7CEC2D2C2FCBA824233B8382715F39FFC14
          83FE0CFBB1BED7AE3C75FB28F8A24F076B56F21BD8BC29ABDF4A2DA395482A2C
          6F799613FDD598B0CE3F7883A790FECFFF00F07087ED7DFF000485F165AFC39F
          DB03E1978A7C61A2DB1F26DB53D553ECDAD041B8661BF1BADF514CA9F999999B
          07F7A718001F7EFF00C1296CA3F0FF00C56FDB3BF68ED77E1E58E9F6FAB78C3C
          42744F1EDAF8805D2F8BF45D36F6F20100B349585B8B7FB021F31D15A6F3B209
          5028D7BFE0A37F177F642FF822EFECCFE38B5D3E0F8B1F193E295869CCEBE229
          DE16BC59349BBD62E247F2406775B6B631200325A48C9DC720F49FB27FEDFDFB
          1F7FC1423F639F147C13F81BE3EF0CFC2F6F18685AA69917866E6CD348D47489
          350499A7786D25658E760F3C8EC2DDDD324FCC2AD7FC1473F640F8EDE1AF853F
          B2FC1FB3AD8E95E22F117C13BA3A39B8D424B6B76D3A29B4593484D5D63B9CC5
          21B612B4A6221C924615803800FAA759FDB1344F0A7C53F837E09D5749D6E0F1
          27C69B1BFBCD3218A2478B4EFB159C575702E58B82A02CAA80A86CB9030339AD
          8F87DFB5BFC37F8A9F1575EF02E81E32D0F51F197866E6EAD352D196629796D2
          5A8B5371FBB600B2C7F6DB4DCEB95067419C9AF0DF8C7E19D43C6BFF000597F8
          028D0DF7D87C0BF0CFC61ACCB786D985B4F35D5D68B6423120013CCC6E7280E4
          019C006BE2FF00F82467C32D6A5FF82FFF00ED21F10B52D405C693E28B6F17AE
          8F6CA3E58041E28B6D2E67F42CDFD9310CFF00B38A00FD7DB2D6ED7539EE23B6
          BAB6B892D5FCB9923943B42DFDD603953EC6AC79BED5F949FF0006EBF8D6C7E2
          3FED9FFB746BFA7DF4DA85BEBDF1267D437303B115B53D5D210871865FB3C701
          DC383B88EAA40F40FF0083907F6C1F19FEC5DF05BE06F8A3C15AEF8834392DBE
          275B5F6B29A4DC346FA8E9569A75F5CDD5BCA81809A1289B9A36CAB796A7A806
          803F46BCEA532EDFA76F7AFCA2FD9E3F6A9F8B97BFF06FF7C2DF883AD78DBC50
          7E24EB1F122CF4AD4B58B8B8125FB40DE396B092D9D981F97ECE0C257A05E2BA
          8D1FF6B4F890DFF04F0FD80FC572F8D35C935FF88DF14FC33A378A2FBCD5F3B5
          DB4BA8B51134139C7CC8C523240C12516803F4D7CDCEEE3EE9C523CE2342CD85
          41C9627000F5AF847F6FEF0878BEF7FE0ADBFB1DAE95F14BE247867C23E2ABFD
          6ADF59F0DE8DAB35AE97A9BE99A7CBA942D3C43E59048E9E5C8181DD18C0DA7E
          6AD2F016A9A96BDFF053CFDB1BC1F3DD5E4DA75F7C3EF0BDF5A4124ECD14066B
          5D4ADDFCB52709B8C409DA0648C9A00FAEF43F8C9E13F1378BFF00E11FD37C51
          E1ED475E3603551A75AEA314D746CCC862171E5AB16F28C8AC9BF1B772919C82
          2BCD3E17FF00C142BE19FC7AB4F8C0BE01D627F156A5F042F2EF4AF13D92585C
          D9BDB5FDBACA5ED95A78D049F342EA1E3DC848C862306BF1BBFE0D79B0F19F84
          BF6FAD2348F118B77D2B49F8373E87A4CB18CB3DB3DEE99E218379FEF08BC46A
          98E71E5E335F4BFF00C1112E356D17FE0A4FFB657866FB485D3F43F1A78835BD
          574BBC132CB16B0F67E26D66C6E24751FEAE48FCC8A1287929123F4706803D43
          E1EFFC1627C65FB5AFFC127FF68AF8B5E1CF04DD7C2FF88FF0BF42BBBDD3B4FB
          B963D5BCA8A4D1E0D52C2F87C82372F6D7292796CA402A03020E2B8BFDB37C1B
          F10BC5DFF06D3FC4ED2BE3678AAD7E20F89ACF4C1A8DCEB9A7AA7DA753D3E3D5
          6DEFECA49A30A8B1DC8B4F24346070547CCD9DE5DFF0443FF8277F8FBE0CFECD
          1F1CBE18FC44F09EAFE19F057C58D2ED67B637F2C66EE3BB9EC26D2B54859431
          95577DA24F10202082E600A721957BEFD9FF00F642F873FF0004CDFF0082707C
          42F87FFB587C66F0AF89B49F895A95D5EF89F53D4EE46810DF432D9DB58A5ADB
          AC6E9316FB3D945CC47CC672E464F2403C57E33DCDB7ED91FF0006E57C23F19D
          9F827E2A78BBC49E097B18B45FF843679B4FF196817F6377368AF750288DDA49
          222AEB2C4576B2191B726D5953EF9B3FDAA747FD8FFF00610F07F8EBF688F136
          9BE06BDD2FC31A7BF896E7539B321BF16D1F9F12226E79E7326E023895DD9B85
          04D7E547ED4BFF00075DFC2DFD9FB47B8F86BFB1AFC2F1E2CD42E2E6792D354B
          8D325B1D25EEEE1DE69A686C942DD5CC8F2BB3B193CA2CE5D8EECE4F83FC26FF
          008218FEDB3FF05B3F8B36BF123F6A8F176B7E01F0C48C1E14D7942EA3140586
          62B1D2536A59AE377FAD111CE18AC8493401E7FF00F056AFF82F0FC59FF82D47
          C4E87E02FECFFE1DF13587C38F105E25A41A3DA41BB5AF19C81C157BAD8488AD
          C101BC90DB001BE5638023FD1CFF00820AFF00C1B57A3FFC13FEF34DF8B1F192
          3D37C4DF1955167D334E8DC4FA7F834B29C956FBB3DD8C90651948C8FDDE4FEF
          0FDBDFF04ECFF824DFC11FF8261F80DB49F85FE1386DF55BC40BA9F88F5122EB
          5AD588E3F7B7040DA9C711441220724264B13F49EC19E9400D11720E7DFA53E8
          A2800A28A2800A28A2800A28A2800C573BF14FE11F857E377836E3C3BE32F0DE
          87E2AD06EFFD769FAAD8C7796D270464A4808C804F38C8C9AE8A8A00FCA6FDB2
          FF00E0D11FD9A3F687BD9B56F87B27893E0AEBD23349B7459FEDDA4C8E4E7735
          A5C12C98E81609624033F29E31F3D59FFC12DBFE0A8DFF0004DF4DBF033E3A59
          FC5AF0CD9F1068BA8EA11333C7C6145BEA80C51F1FF3CE753F2F07B57EEF5140
          1F88D69FF07257ED65FB245F7D8BF696FD8C7C4763142CD1BEB1E1EB3BEB0B39
          59465BCB6956E20970B824A5C63E80F1E97FB3FF00FC1D3FFB116A9E29FED3D5
          747F13FC29D79E3B9825BABDF0A99C224F706EA605ACBCD73E65C334ADF2659C
          963C9AFD6A6837C6CACAACAC0820F208F715E57F14FF00612F82DF1C5645F187
          C25F873E24F38E5DEFFC3D6B348E7A72C533FAD007C87FB007ED9BFF0004F1F8
          14356BAF83FF001B3E1BF85E2D5EC2D2CAE20D7BC5B369CA61825B8962548F53
          7460C1EF2763B46E25F9E9C7A47EDD1F033E09FF00C14F344F055B5D7C66F094
          5A5F87DB559624D2F58B1BC4D516FF004AB9D35B9F33F816E99C15CE4A81C673
          597F11FF00E0DC0FD8A7E295DACDA87C06F0F593C7F7468FA96A1A429FAADADC
          46A7F115E2BE34FF0083403F63DF14EA925C58597C4AF0CC721CADBE99E26F32
          38BFDD37314CFF009B1A00F6AF88DFF04D38BC59FF0004C2BEF80BE12F8B567A
          2EB70F896E7C5BA278AE3B589D74FBC7F11CDAEC00C0242196392458B86E426E
          C7F0D53F8C9FF04A35F1F7FC13D7E04FC14F0DFC6493C13AE7C0ED6346D7EC7C
          5B0594575713DE58413A348B0B4AAA9BE49D9C6598280061ABE7BBCFF83383F6
          7957C69FF143F680D3E1FF009E6BAFD8301FF9242A24FF0083383E02EEF9FE2F
          7ED04CBDC7F6E580CFFE49D007DE5F1CFC01E03F17FC73F82BE3AD7BE24E89A3
          EA1F06B50D46FADE19EFED634D5DAF34B9F4E91642EE0A604FE602B9E571DF35
          E7BE2BFDA5BF64BF80DFB4FF008EBE2A6BDFB437C34D2BC57E2EF0CE9DE1CD5B
          4BB9F1B699B16D6CA5BA92278AD94FDA3CD6377286219810A98552093F3158FF
          00C19C1FB2A23AC9A8788BE356B122F5377E23B4F9BFEF8B353FAD7AA7827FE0
          D63FD88FC1D0DAF9DF096F35CB9B521BED1A978AF5576988FEFC6970911FA6CC
          7B50078F785FFE0B31FF0004CFFD81EE74DBAF02788DB5AF10787F4C4D16DAE3
          46D1B55D4EFBEC821B68047F6AB9558DC795696C849949DB020EC2B82D6FFE0E
          D8D2BC5B732E8BFB39FECB7F11FC7FA96A172CF0A0B6FB3ADCDC4AECCCDE459C
          73BBBBB12C7A33127BF35FA3DF0CBFE0907FB2FF00C1DBA8EE3C3BF013E16D85
          C458DB33E8305C4A31FEDC8ACC7F135EF5E17F06693E08D316C744D2B4DD1ACD
          385B7B1B64B7897D30A800FD2803F11756F895FF00057EFF008290F93FD87E11
          D07F667F07DF26DF35921D26F02EF3CC82E5E7D4124C1EB1C71290A3804F3A7F
          07BFE0CFD9BE2D78C21F167ED41F1FFC69F1175C9487B9B5D1E560D21EBE5B5E
          DDF9B214EC4246871D194E08FDBA518A5A00F01FD8F3FE097FF00FF609B3853E
          14FC2FF0DF85AF2352ADA9F94D79AA481B21835DCECF39041231BF1838C638AF
          7EC5145001D28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A00FFFD9}
        mmHeight = 31485
        mmLeft = 265
        mmTop = 0
        mmWidth = 55827
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 33602
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 9791
        mmTop = 33602
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1588
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline3
          PrinterSetup.BinName = 'Sele'#231#227'o Autom'#225'tica'
          PrinterSetup.DocumentName = 'Recibo'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline3'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 12171
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label1'
              Border.mmPadding = 0
              Caption = 'PRODUTOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5027
              mmLeft = 265
              mmTop = 0
              mmWidth = 20637
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 7408
              mmWidth = 16404
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label4'
              Border.mmPadding = 0
              Caption = 'QUANTIDADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 110596
              mmTop = 7408
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label5'
              Border.mmPadding = 0
              Caption = 'VALOR UNIT'#193'RIO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 141552
              mmTop = 7408
              mmWidth = 24871
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              Border.mmPadding = 0
              Caption = 'VALOR TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 175419
              mmTop = 7408
              mmWidth = 19579
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 789
              mmLeft = 265
              mmTop = 11395
              mmWidth = 193940
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'DESCRICAO'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4498
              mmLeft = 265
              mmTop = 530
              mmWidth = 89694
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'QUANTIDADE'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4498
              mmLeft = 106089
              mmTop = 529
              mmWidth = 22754
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'VLR_UNITARIO'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4498
              mmLeft = 142346
              mmTop = 530
              mmWidth = 22754
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'VLR_TOTAL'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4498
              mmLeft = 171450
              mmTop = 529
              mmWidth = 22754
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 789
              mmLeft = 265
              mmTop = 5035
              mmWidth = 193940
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              Border.mmPadding = 0
              Caption = 'TOTAL DE PRODUTOS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3968
              mmLeft = 79640
              mmTop = 265
              mmWidth = 30691
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'QUANTIDADE'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4498
              mmLeft = 111650
              mmTop = 265
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'VLR_TOTAL'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4498
              mmLeft = 177007
              mmTop = 265
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line3'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 789
              mmLeft = 265
              mmTop = 254
              mmWidth = 193940
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Sele'#231#227'o Autom'#225'tica'
          PrinterSetup.DocumentName = 'Recibo'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13494
            mmPrintPosition = 0
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label2'
              Border.mmPadding = 0
              Caption = 'SERVI'#199'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 529
              mmWidth = 17992
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label8'
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 8731
              mmWidth = 16404
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label9'
              Border.mmPadding = 0
              Caption = 'QUANTIDADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3968
              mmLeft = 110596
              mmTop = 8467
              mmWidth = 19315
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label10'
              Border.mmPadding = 0
              Caption = 'VALOR UNIT'#193'RIO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3968
              mmLeft = 141552
              mmTop = 8467
              mmWidth = 24871
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label11'
              Border.mmPadding = 0
              Caption = 'VALOR TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3968
              mmLeft = 175419
              mmTop = 8467
              mmWidth = 19579
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line7'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 789
              mmLeft = 265
              mmTop = 12455
              mmWidth = 193940
              BandType = 1
              LayerName = PageLayer1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'DESCRICAO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4498
              mmLeft = 794
              mmTop = 0
              mmWidth = 100806
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'QUANTIDADE'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4498
              mmLeft = 106098
              mmTop = 0
              mmWidth = 22754
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'VLR_UNITARIO'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4498
              mmLeft = 142346
              mmTop = 0
              mmWidth = 22754
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'VLR_TOTAL'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4498
              mmLeft = 171450
              mmTop = 0
              mmWidth = 22754
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 265
              mmTop = 3969
              mmWidth = 193940
              BandType = 4
              LayerName = PageLayer1
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label12'
              Border.mmPadding = 0
              Caption = 'TOTAL DE SERVI'#199'OS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3968
              mmLeft = 80433
              mmTop = 265
              mmWidth = 29105
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'QUANTIDADE'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4498
              mmLeft = 111654
              mmTop = 265
              mmWidth = 17198
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc6'
              Border.mmPadding = 0
              DataField = 'VLR_TOTAL'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tw Cen MT'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4498
              mmLeft = 177008
              mmTop = 0
              mmWidth = 17198
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line4'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 789
              mmLeft = 265
              mmTop = 0
              mmWidth = 193940
              BandType = 7
              LayerName = PageLayer1
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'PageLayer1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 165362
        mmTop = 1324
        mmWidth = 9790
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 158747
        mmTop = 6351
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'TOTAL GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155572
        mmTop = 10849
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'TOTAL_GERAL'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 175416
        mmTop = 795
        mmWidth = 18785
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 175416
        mmTop = 5822
        mmWidth = 18785
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 175416
        mmTop = 10320
        mmWidth = 18785
        BandType = 7
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 1588
        mmTop = 794
        mmWidth = 192881
        BandType = 7
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 52917
        mmTop = 17463
        mmWidth = 74877
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Mec'#226'nico Renspons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 73819
        mmTop = 25665
        mmWidth = 31221
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'FUNCIONARIO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 52917
        mmTop = 19315
        mmWidth = 74877
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'OBS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 12700
        mmLeft = 17993
        mmTop = 2912
        mmWidth = 68527
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3968
        mmLeft = 0
        mmTop = 2117
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' :=    '#39'Ordem de Servi'#231'o '#39'+    FormatCurr('#39'000000'#39', dsos['#39'INDICE' +
          #39']);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' :=  '#39'CLIENTE: '#39' +   dsos['#39'NOME_CLIENTE'#39']  + '#39' - TELEFONE: '#39' + d' +
          'sos['#39'TELEFONE'#39']'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable3OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable3OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' := '#39'ENDERE'#199'O: '#39' +dsos['#39'ENDERECO'#39']  '#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable3'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable4OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable4OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' :='#39'PLACA: '#39' + dsos['#39'PLACA_VEICULO'#39'] + '#39' - MODELO: '#39' +    dsos['#39 +
          'MODELO_VEICULO'#39']'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable4'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline4: TppDBPipeline
    UserName = 'DBPipeline4'
    Left = 640
    Top = 304
  end
end
