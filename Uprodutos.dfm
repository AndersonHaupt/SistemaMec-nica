object Fprodutos: TFprodutos
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos'
  ClientHeight = 571
  ClientWidth = 894
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object pnlgrid: TPanel
    Left = 0
    Top = 41
    Width = 894
    Height = 485
    Align = alClient
    TabOrder = 2
    object gridcliente: TDBGrid
      Left = 1
      Top = 1
      Width = 892
      Height = 483
      Align = alClient
      DataSource = DM.DSprodutos
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
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o'
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
          FieldName = 'MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Marca'
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
          FieldName = 'VALOR_COMPRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Valor Compra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Valor Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE_ESTOQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Estoque'
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
  object pnlincluir: TPanel
    Left = 0
    Top = 41
    Width = 894
    Height = 485
    Align = alClient
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 18
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 424
      Top = 16
      Width = 49
      Height = 18
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 85
      Width = 196
      Height = 18
      Caption = 'Quantidade em estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 238
      Top = 85
      Width = 136
      Height = 18
      Caption = 'Valor de Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 424
      Top = 85
      Width = 123
      Height = 18
      Caption = 'Valor de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 402
      Height = 26
      DataField = 'DESCRICAO'
      DataSource = DM.DSprodutos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 424
      Top = 40
      Width = 202
      Height = 26
      DataField = 'MARCA'
      DataSource = DM.DSprodutos
      TabOrder = 1
    end
    object JvDBCalcEdit1: TJvDBCalcEdit
      Left = 16
      Top = 109
      Width = 196
      Height = 26
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      DataField = 'QUANTIDADE_ESTOQUE'
      DataSource = DM.DSprodutos
    end
    object JvDBCalcEdit2: TJvDBCalcEdit
      Left = 238
      Top = 109
      Width = 180
      Height = 26
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      DataField = 'VALOR_COMPRA'
      DataSource = DM.DSprodutos
    end
    object JvDBCalcEdit3: TJvDBCalcEdit
      Left = 424
      Top = 109
      Width = 202
      Height = 26
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      DataField = 'VALOR_VENDA'
      DataSource = DM.DSprodutos
    end
  end
  object pnlbtn: TPanel
    Left = 0
    Top = 526
    Width = 894
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
  end
  object plntopo: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 41
    Align = alTop
    TabOrder = 1
    object Edpesquisa: TEdit
      Left = 7
      Top = 8
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
  end
end
