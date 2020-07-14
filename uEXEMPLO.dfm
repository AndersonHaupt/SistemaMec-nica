object fEXEMPLO: TfEXEMPLO
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes/Forncedores/Funcionarios'
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
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 588
      Top = 40
      Width = 202
      Height = 26
      DataField = 'CNPJ_CPF'
      TabOrder = 2
    end
    object DBTIPO: TJvDBComboBox
      Left = 16
      Top = 40
      Width = 145
      Height = 26
      DataField = 'TIPO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      Items.Strings = (
        'Clientes'
        'Fornecedores'
        'Funcionarios')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = DBTIPOChange
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 101
      Width = 553
      Height = 26
      DataField = 'ENDERECO'
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 588
      Top = 101
      Width = 202
      Height = 26
      DataField = 'TELEFONE'
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 165
      Width = 774
      Height = 89
      DataField = 'OBS'
      TabOrder = 5
    end
    object PNLFUNCI: TPanel
      Left = 1
      Top = 260
      Width = 892
      Height = 224
      Align = alBottom
      TabOrder = 6
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
      object JvDBCalcEdit1: TJvDBCalcEdit
        Left = 23
        Top = 49
        Width = 137
        Height = 26
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
        DataField = 'SALARIO_BASE'
      end
      object JvDBCalcEdit2: TJvDBCalcEdit
        Left = 199
        Top = 49
        Width = 137
        Height = 26
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
        DataField = 'PERC_COMISSAO'
      end
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
        A60C0000424DA60C000000000000360400002800000039000000240000000100
        08000000000070080000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF080707FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07A4A4A4
        A408FFFFFFFFFF000000FFFFFFFFFFFFFF075B49494949495207FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7494949494949495207
        FFFFFF000000FFFFFFFFFFFFA449525252525252524952FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52495252525B525B524949A4FFFF00
        0000FFFFFFFFFF9B495249529BF7A45B49524952FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5A495249F707F608F7A49B5249F7FF000000FFFF
        FFFFF7495249F70808FF0808F65B52499BFFFFFFFFFFFFFFF6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF749525BF6F6F7F608F7F6A4525249F6000000FFFFFFFF4952
        49F7F607A4F7A3A4F79B524949A4A4A4A4A4F7F75B5B9BA4F707070808F6FFFF
        FF08085252520708079B52529BF608A45249A4000000FFFFFFA4525149494900
        4949494951529BA4F7F7F7F7A4A449495252494949494949494949F7FFA44952
        49F7F6F749515252495207F6525252000000FFFFFFA4F6080707070707070707
        07A49BA45B5249524951525252495252525252525252524907A452524908FF5B
        525252525249F7FF5B5252000000FFFFFF52495207F75B5B5252494952525252
        525252525252525252A45B52525252524907A4525B5B525251A4525252525252
        52525B07F74952000000FFF75252524908F749A4A49B9B9BA452525252525252
        525252A352525252525252525249525249525252525BF752525152525249F7F6
        A45252000000F6525252524907FF9B525252525252A49B525252525252525251
        525252525252A45152525249F74952524907FFA449F75B525249F6FF52525200
        0000FFA449525249A4F69B49525252495207F74952525B525252525B52525252
        525251A4495251A49B5252525252075252F749525207F70749529B000000FFAC
        5152525249075BF6A45B52A45BF6525252525252525252A49BA4A45252F7529B
        F749525BFF9B52525252A4495208EDF7F7FF0852524907000000FF0849525252
        52525BF6F79BF79B9B525252525252525252525249499B5252519B5252F74949
        0707495252525252A408FFF6A4075252499BFF000000F6F6525252525252529B
        F7499B9B49525252525252525252525252524949525252525252F752529B4952
        495252490752A4A4525252525BFFFF00000049495252525252525B5249525252
        524952525252525252A45B52529BF7074949524949494908490749A4A4495252
        5B525252525B515249A4FF0000009B494952525252525B525252525249A4F751
        5252495149F607A4A40849FFFFF7A4A407F7F6A449F69B49FF9B525252525252
        525B5200F7FFFF000000FFF60807524952525B5252525252A45249515252ACA4
        524952A4F752525252A4075207F6FF5249A40700F65B52525249525B5249A4F6
        FFFFFF000000FFFFFFFFFF5249529B5252525252525249A4F7F79BF6F79B4949
        495252525251495249494952524907499B5249F7FFF6080708FFFFFFFFFFFF00
        0000FFFFFFFFFFFFF749074952525252495207FFFFFFFFFFFFFFF7A452525252
        52525252525252525252525252490707FFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFF08F75A495B9B49A4F6FFFFFF07F7A4525B52525B49525252525252
        5252525252525B5252529BF7FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFA45B5252525AFFFFFFA40000495249494908A449495252525252525252
        52525252525BF7FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF7
        5B525252A39BFFFFA4F708FFFFF6F607FFFFF6F7524949525252525252525252
        49A452A407FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF08004949494949
        4952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08A45B525252494952525252525249
        A4FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF009BA4F70708FFA452FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF089BA4F6FF52525252525B5252FFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6FFFFFFFFFFFF085BFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF6FFFF07A449524952525249A4FFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF65200A4074907F7F79B524949F7FFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF08A49BA4F7FFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        079B009BF7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
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
