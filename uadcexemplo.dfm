object FadcExemplo: TFadcExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento de Servi'#231'o'
  ClientHeight = 228
  ClientWidth = 523
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
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 132
    Height = 18
    Caption = 'Digite o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 94
    Height = 18
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 175
    Top = 96
    Width = 116
    Height = 18
    Caption = 'Valor Unit'#225'rio '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 342
    Top = 96
    Width = 88
    Height = 18
    Caption = 'Valor Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edproduto: TEdit
    Left = 8
    Top = 48
    Width = 495
    Height = 26
    TabOrder = 0
    OnEnter = EdprodutoEnter
    OnExit = EdprodutoExit
  end
  object dbqtd: TJvCalcEdit
    Left = 8
    Top = 119
    Width = 161
    Height = 26
    DisplayFormat = ',0.00;-,.00'
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
    OnExit = dbqtdExit
  end
  object dbunit: TJvCalcEdit
    Left = 175
    Top = 119
    Width = 161
    Height = 26
    DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    OnExit = dbunitExit
  end
  object dbtotal: TJvCalcEdit
    Left = 342
    Top = 119
    Width = 161
    Height = 26
    DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object Button1: TButton
    Left = 396
    Top = 176
    Width = 107
    Height = 44
    Caption = 'Adicionar'
    ModalResult = 1
    TabOrder = 4
  end
  object Button2: TButton
    Left = 276
    Top = 176
    Width = 107
    Height = 44
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 5
  end
  object FDQuery1: TFDQuery
    Left = 400
  end
end
