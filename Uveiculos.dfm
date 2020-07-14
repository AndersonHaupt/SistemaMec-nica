object FVeiculos: TFVeiculos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ve'#237'culos'
  ClientHeight = 471
  ClientWidth = 694
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
  PixelsPerInch = 96
  TextHeight = 18
  object PnlIncluir: TPanel
    Left = 0
    Top = 41
    Width = 694
    Height = 385
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 8
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
    object Label2: TLabel
      Left = 161
      Top = 8
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
    object Label3: TLabel
      Left = 393
      Top = 8
      Width = 86
      Height = 18
      Caption = 'Fabricante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 72
      Width = 32
      Height = 18
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 161
      Top = 72
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
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 129
      Height = 26
      DataField = 'PLACA'
      DataSource = DM.DsVeiculos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 161
      Top = 32
      Width = 210
      Height = 26
      DataField = 'MODELO'
      DataSource = DM.DsVeiculos
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 393
      Top = 32
      Width = 210
      Height = 26
      DataField = 'FABRICANTE'
      DataSource = DM.DsVeiculos
      TabOrder = 2
    end
    object JvDBCalcEdit2: TJvDBCalcEdit
      Left = 161
      Top = 96
      Width = 210
      Height = 26
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      DataField = 'KM'
      DataSource = DM.DsVeiculos
    end
    object JvDBCalcEdit1: TJvDBCalcEdit
      Left = 16
      Top = 96
      Width = 129
      Height = 26
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      DataField = 'ANO'
      DataSource = DM.DsVeiculos
    end
  end
  object pnlgrid: TPanel
    Left = 0
    Top = 41
    Width = 694
    Height = 385
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 692
      Height = 383
      Align = alClient
      DataSource = DM.DsVeiculos
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
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
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
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABRICANTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Fabricante'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Modelo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Ano'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
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
          Visible = True
        end>
    end
  end
  object pnlbtn: TPanel
    Left = 0
    Top = 426
    Width = 694
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
  object pnltopo: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 41
    Align = alTop
    TabOrder = 1
    object lbnome: TLabel
      Left = 7
      Top = 17
      Width = 60
      Height = 18
      Caption = 'lbnome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
