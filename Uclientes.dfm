object Fclientes: TFclientes
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes/Fornecedores/Funcionarios'
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
      DataSource = DM.DsClientes
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
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Nome'
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
          FieldName = 'CNPJ_CPF'
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
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Endere'#231'o'
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
          FieldName = 'OBS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Caption = 'Obs'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
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
      Left = 167
      Top = 16
      Width = 48
      Height = 18
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 588
      Top = 16
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
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 18
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 77
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
      Left = 588
      Top = 77
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
    object Label6: TLabel
      Left = 16
      Top = 141
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
      Left = 167
      Top = 40
      Width = 402
      Height = 26
      DataField = 'NOME'
      DataSource = DM.DsClientes
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 588
      Top = 40
      Width = 202
      Height = 26
      DataField = 'CNPJ_CPF'
      DataSource = DM.DsClientes
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 101
      Width = 553
      Height = 26
      DataField = 'ENDERECO'
      DataSource = DM.DsClientes
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 588
      Top = 101
      Width = 202
      Height = 26
      DataField = 'TELEFONE'
      DataSource = DM.DsClientes
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 165
      Width = 774
      Height = 89
      DataField = 'OBS'
      DataSource = DM.DsClientes
      TabOrder = 4
    end
    object PNLFUNCI: TPanel
      Left = 1
      Top = 260
      Width = 892
      Height = 224
      Align = alBottom
      TabOrder = 5
      object Label7: TLabel
        Left = 23
        Top = 25
        Width = 101
        Height = 18
        Caption = 'Sal'#225'rio Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 199
        Top = 25
        Width = 79
        Height = 18
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object dbtipo: TJvComboBox
      Left = 48
      Top = 32
      Width = 145
      Height = 26
      TabOrder = 6
      Text = 'dbtipo'
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
    object btnveiculos: TBitBtn
      Left = 349
      Top = 1
      Width = 165
      Height = 40
      Caption = 'Ve'#237'culos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        CE010000424DCE010000000000003E0000002800000032000000320000000100
        01000000000090010000C40E0000C40E0000020000000000000000000000FFFF
        FF00FFFFFFFFFFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFF
        C000FFFFFFFFFFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFF
        C000FFFFFFFFFFFFC000FFFFFFFFFFFFC000FE1FFFFFFF3FC000F007FFFFF807
        C000E001FFFFE001C000C000FFFFC000C000C3F0FFFFC3F0C00087F87FFF87F8
        40008F3C7C1F8FFC40000E1C30070FFC00000C03F0030F9C00000C03F0030F3C
        00000E1C30030E7C00008F3C70038CFC400087F8700385F84000C3F0E00387F0
        4000C000E001CE00C000E001C001FC01C000F0078000FC03C000FE1F0000E61F
        C000FFFE00006FFFC000C7F800000FFFC000000000001FFFC0000000F80019FF
        C0008001FC0018FFC000C003FC00387FC000F80FFF00307FC000FFFFFFC0307F
        C000FFFFFFFC70FFC000FFFFFFFE71FFC000FFFFFFDE7FFFC000FFFFFF8E7FFF
        C000FFFFFFE0FFFFC000FFFFFFF9FFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFF
        C000FFFFFFFFFFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFFC000FFFFFFFFFFFF
        C000FFFFFFFFFFFFC000FFFFFFFFFFFFC000}
      ParentFont = False
      TabOrder = 3
      OnClick = btnveiculosClick
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
