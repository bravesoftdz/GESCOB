object fCamGest: TfCamGest
  Left = 267
  Top = 304
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cambiar Tipo De Gesti'#243'n'
  ClientHeight = 164
  ClientWidth = 541
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = -1
    Width = 531
    Height = 161
    TabOrder = 0
    object Label6: TLabel
      Left = 7
      Top = 119
      Width = 95
      Height = 14
      AutoSize = False
      Caption = 'Tipo De Gesti'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 95
      Height = 16
      AutoSize = False
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 144
      Top = 11
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Apellidos y Nombres'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 56
      Width = 95
      Height = 16
      AutoSize = False
      Caption = 'Telefono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 160
      Top = 55
      Width = 95
      Height = 16
      AutoSize = False
      Caption = 'Direcci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object BitGrabar: TBitBtn
      Left = 312
      Top = 133
      Width = 75
      Height = 25
      Caption = '&Grabar'
      TabOrder = 0
      OnClick = BitGrabarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object BitSalir: TBitBtn
      Left = 396
      Top = 133
      Width = 78
      Height = 25
      Caption = '&Salir'
      TabOrder = 1
      OnClick = BitSalirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object Panel3: TPanel
      Left = 52
      Top = 134
      Width = 202
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 2
      object EdtDesGest: TEdit
        Left = 0
        Top = 0
        Width = 200
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblDist: TwwDBLookupCombo
      Left = 8
      Top = 134
      Width = 41
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'IDDIST'#9'3'#9'Codigo'#9'F'
        'DESDIST'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTPension
      LookupField = 'IDDIST'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblDistChange
    end
    object Panel1: TPanel
      Left = 7
      Top = 27
      Width = 123
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 4
      object EdtAsoCodMod: TEdit
        Left = 0
        Top = 0
        Width = 121
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 72
      Width = 143
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 5
      object EdtTelf: TEdit
        Left = 0
        Top = 0
        Width = 140
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 143
      Top = 27
      Width = 345
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 6
      object EdtAsoApeNom: TEdit
        Left = 0
        Top = 0
        Width = 344
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 158
      Top = 72
      Width = 364
      Height = 54
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 7
      object mDireccion: TMemo
        Left = 1
        Top = 1
        Width = 361
        Height = 53
        BevelKind = bkFlat
        TabOrder = 0
      end
    end
  end
end
