object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TRIVIA'
  ClientHeight = 539
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Contador: TLabel
      Left = 344
      Top = 58
      Width = 50
      Height = 15
      Margins.Left = 100
      Margins.Top = 20
      Margins.Right = 100
      Alignment = taCenter
      Caption = 'Contador'
    end
    object Pesquisa: TEdit
      AlignWithMargins = True
      Left = 100
      Top = 20
      Width = 567
      Height = 38
      Margins.Left = 100
      Margins.Top = 20
      Margins.Right = 100
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Digite um texto para pesquisar'
      OnKeyDown = PesquisaKeyDown
    end
  end
  object PnCentral: TPanel
    Left = 0
    Top = 73
    Width = 767
    Height = 466
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 145
  end
end
