object FConMetGes: TFConMetGes
  Left = 495
  Top = 267
  Width = 774
  Height = 409
  Caption = 'Control de Metas por Gestor'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      758
      325)
    object Panel4: TPanel
      Left = 667
      Top = 0
      Width = 91
      Height = 325
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        91
        325)
      object lblMaestroCantRegistros: TLabel
        Left = 6
        Top = 419
        Width = 53
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = '0 Registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnMaestroAnular: TBitBtn
        Left = 6
        Top = 135
        Width = 80
        Height = 32
        Cursor = crHandPoint
        Hint = 'Anular la Meta'
        Anchors = [akTop, akRight]
        Caption = 'Anular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnMaestroAnularClick
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888800008888888888888888889800008898888888888888898800008899
          88777777777798880000889990000000000998880000888990BFFFBFFF998888
          0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
          990788880000888880999FB99F0788880000888880FC9999CF07888800008888
          80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
          0000888880999F099998888800008888999FBF0F089988880000889999000000
          8889988800008899988888888888898800008888888888888888889800008888
          88888888888888880000}
      end
      object btnMaestroCerrar: TBitBtn
        Left = 6
        Top = 102
        Width = 80
        Height = 32
        Cursor = crHandPoint
        Hint = 'Cerrar la Meta'
        Anchors = [akTop, akRight]
        Caption = 'Cerrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnMaestroCerrarClick
        Glyph.Data = {
          5A010000424D5A01000000000000760000002800000012000000130000000100
          040000000000E400000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888000000888888888888888888000000800000000000000888000000800B
          FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
          00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
          BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
          B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
          000088880EEE08778888880000008880EEE0888788888800000088880E088888
          888888000000888880888888888888000000888888888888888888000000}
      end
      object btnMaestroBuscar: TBitBtn
        Left = 6
        Top = 3
        Width = 80
        Height = 32
        Hint = 'Buscar'
        Anchors = [akTop, akRight]
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = btnMaestroBuscarClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E000000000000000000009E3737C07F7F
          C07B7BC27D7DAD6767C78383B56F6FBB7777B36D6DB36D6DC27D7DC07B7BBC77
          77BC7777C07F7F9E3737C08080FFFFFFE3EAEAEDF3F3DFE6E6D4DBDBA8B0B065
          6D6DDFE6E6B3B9B9FAFFFFE8EFEFFFFFFFFFFFFFFFFFFFC08080BC7878FFFFFF
          D2D2D2B0B0B07777770B0B0B82828227273019191D7E7E7E2A2A2AA3A3A3D0D0
          D0FFFFFFFFFFFFBC7878C58282A5ADADB3B3B3ADADADC0C0C0FFFFFFFFFFFFCE
          D287FEFFE9FFFFFF9A9A9A858585B5B5B5797979FFFFFFBE7A7AC27E7ED9E1E1
          949494EFEFEFF7F7FAE7FFE39A0B007E5F00734F00C06F26FFFFFFECECECDCDC
          DC848484CCD4D4B57070BE7A7AFFFFFFBDBDBDC5C5C5FFFFFFC40B00748F005B
          5F26919D2FA15300E99E80EEF5F9000000000000878E8E8D4848D28F8F474F4F
          0000005F5F5FDDE4EF9F5900F5FF9D626A7E000022809F00F1A78D7B83870000
          00838383BDC5C5CB87879F5A5AC7CFCF5D5D5D0F0F0F000B0F691B00AB2C3D6D
          1F1F732A2FCB1D00691F28000000838383C3C3C3C4CACAC58282A05A5AC3CACA
          FFFFFF2C2C2C4E4E4E00080D000000000000000000000000000000858585CACA
          CA969696F4FAFAAB6666B16C6CDAE1E19292929D9D9D313131FFFFFF848484E3
          E3E3FAFAFAA6A6A6979797B5B5B56F6F6FCDCDCDD3D9D9C48080C48080FDFFFF
          E5E5E5D8D8D8B7B7B7828282616161A9A9A99292925F5F5F2828287E7E7EBEBE
          BEC5C5C5EBF1F1C07C7C965050EEF5F5FFFFFFF0F0F0FBFBFBD3D3D3C8C8C89B
          9B9B9191914B4B4B9D9D9DC8C8C8C3C3C3A2A2A2F0F7F7C07C7CCE8B8B636B6B
          A1A1A1FFFFFFF9F9F9FFFFFFF9F9F9EDEDEDDFDFDFFFFFFFD2D2D24C4C4C3F3F
          3F333333CAD2D2C48080C07C7CFFFFFF0000000000008C8C8CD7D7D7EAEAEADB
          DBDB8C8C8C3A3A3A000000000000000000000000FEFFFFC07C7CC08080FFFFFF
          FFFFFF8E96960000000000000000000000000000000000000000000B14148E96
          96FFFFFFFFFFFFC080809E3737C07F7FC07B7BCC8888D08C8C6D24244B00004F
          0000450000AA6565DF9C9CD59292CA8787C07B7BC07F7F9E3737}
      end
      object btnMaestroHistorial: TBitBtn
        Left = 6
        Top = 261
        Width = 80
        Height = 32
        Cursor = crHandPoint
        Hint = 'Historial de Metas'
        Anchors = [akTop, akRight]
        Caption = 'Historial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = btnMaestroHistorialClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000E7D6CE00525A
          524A4A2121212118181810182918104A4A4A524239424A4A524239424A4A5242
          39424A4A392921D6D6DE00737B84C6BD3931391000004A9CA584B5AD00848C52
          211810B5BD4A181810B5BD4A181810B5BD4A18105AF7FF392921008C8C523942
          A5A5A5A5A5A53921216BF7F77BEFE76BF7F773EFE76BEFF773EFE76BEFEF7BE7
          E763EFF773F7EF42313100848C735A52E7CED6EFD6CE31212973EFEF21F7FF8C
          ADA55ADEDE5AD6D684A5AD6BE7DE21F7FFA5C6C652DEDE4A3931008C8431636B
          21FFFF18FFFF4A21186BF7F731ADAD427B7B21524A18A5A54273736BEFEF31B5
          AD5A292918FFFF4A3131008484396B6373EFEF6BF7EF42182173F7EF31ADB552
          8484215A5A21ADAD4A737B73EFEF29B5BD63393918F7FF4A3131008484316B6B
          84B5AD94CECE4221216BF7F729B5AD4A7B7B215A5A18ADAD4A736B73EFEF29BD
          B563313918FFF74A313100848C316B6B9CC6C663F7F742182173F7F77B8C9431
          BDB539525A39B5B529A5AD73EFE77B949C29525231FFFF4A3129008C84396363
          73EFEF6BEFEF4A211829FFFF21FFFF21F7FF29FFFF29FFFF29FFF721F7F721FF
          FF21FFFF84FFF7423131008484007B7331F7FF29FFFF4A21295A9494B5949CAD
          A59CA5949CAD9C9CA59CA5AD9494A59CA5B59C9421636B4A4242008484426363
          7BEFE773EFEF4A292910636BFFFFFFFF6B6BFFC6C6EFBDBDFF6B63EFFFFFFF63
          63FFFFFF21736B4A424200848400737339FFFF31FFFF10424A216363FFFFFFF7
          6363F7FFFFF7635AF7D6D6FFBDB5F76B73FFFFFF186B6B4A4242007B738CB5B5
          39635A315A5ACEFFFF105A63FFFFFFF76B6BFFBDB5F7D6D6FF635AF7FFFFFF6B
          63FFFFFF217373393131DEC6C6006B6300737B007373007373001810FFFFFFF7
          6363F7FFFFF7635AF7CED6F7B5B5F76B6BFFFFFF000810DED6CEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF736B6BFFFFFFFF6B6BFFC6C6FFD6D6FF6B63FFFFFFFF6B
          63FFFFFF73736BFFFFFFF7F7FFF7F7F7F7F7FFF7F7F7FFFFFF73737373737373
          8484737B84737B7B738484737373738484737373737373FFFFFF}
      end
      object btnMaestroAvance: TBitBtn
        Left = 6
        Top = 36
        Width = 80
        Height = 32
        Cursor = crHandPoint
        Hint = 'Monitorear el Avance de las Metas'
        Anchors = [akTop, akRight]
        Caption = 'Avance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnMaestroAvanceClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
          0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
          0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
          CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
          CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
          CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
          CCC77777777777777377330333333333CCC3337F33333333737F370333333333
          0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
          7777777777777777777733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnMaestroExportar: TBitBtn
        Left = 6
        Top = 225
        Width = 80
        Height = 32
        Hint = 'Exportar las Metas'
        Anchors = [akTop, akRight]
        Caption = 'Exportar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
          000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
          0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
          080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
        Spacing = 2
      end
      object btnResumen: TBitBtn
        Left = 6
        Top = 69
        Width = 80
        Height = 32
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Resumen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnResumenClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
          0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
          0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
          CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
          CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
          CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
          CCC77777777777777377330333333333CCC3337F33333333737F370333333333
          0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
          7777777777777777777733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object pctrGestor: TPageControl
      Left = 0
      Top = 0
      Width = 667
      Height = 325
      ActivePage = tsGestoresActivos
      Align = alClient
      TabOrder = 1
      OnChange = pctrGestorChange
      object tsGestoresActivos: TTabSheet
        Caption = 'Activos'
        object dbgMaestroActivos: TwwDBGrid
          Left = 0
          Top = 0
          Width = 659
          Height = 297
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFooter3DCells]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = True
          OnDblClick = dbgMaestroActivosDblClick
        end
      end
      object tsGestoresInactivos: TTabSheet
        Caption = 'Inactivos'
        ImageIndex = 1
        object dbgMaestroInactivos: TwwDBGrid
          Left = 0
          Top = 0
          Width = 659
          Height = 297
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFooter3DCells]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = True
        end
      end
    end
    object gbMaestroBuscar: TGroupBox
      Left = 518
      Top = 1
      Width = 159
      Height = 44
      Anchors = [akTop, akRight]
      Caption = 'Buscar Gestor'
      TabOrder = 2
      Visible = False
      object z2bbtnBuscar: TfcShapeBtn
        Left = 371
        Top = 11
        Width = 32
        Height = 31
        Hint = 'Buscar Asociado'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
      object edtMaestroBuscar: TEdit
        Left = 5
        Top = 16
        Width = 148
        Height = 24
        CharCase = ecUpperCase
        Color = 15794175
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = edtMaestroBuscarChange
        OnExit = edtMaestroBuscarExit
        OnKeyPress = edtMaestroBuscarKeyPress
      end
    end
  end
  object pnlControles: TPanel
    Left = 0
    Top = 325
    Width = 758
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      758
      46)
    object btnSalir: TBitBtn
      Left = 658
      Top = 7
      Width = 100
      Height = 32
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
      OnClick = btnSalirClick
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
  end
end