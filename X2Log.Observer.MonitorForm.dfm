object X2LogObserverMonitorForm: TX2LogObserverMonitorForm
  Left = 0
  Top = 0
  Caption = 'Live Log'
  ClientHeight = 519
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object splDetails: TSplitter
    Left = 682
    Top = 0
    Width = 6
    Height = 496
    Align = alRight
    ResizeStyle = rsUpdate
    ExplicitLeft = 637
    ExplicitHeight = 519
  end
  object pnlDetails: TPanel
    Left = 688
    Top = 0
    Width = 302
    Height = 496
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object tbDetails: TToolBar
      Left = 0
      Top = 0
      Width = 302
      Height = 22
      AutoSize = True
      ButtonWidth = 80
      Images = ilsLog
      List = True
      ShowCaptions = True
      TabOrder = 0
      OnCustomDraw = ToolbarCustomDraw
      object tbCopyDetails: TToolButton
        Left = 0
        Top = 0
        Action = actCopyDetails
        AutoSize = True
      end
      object tbSaveDetails: TToolButton
        Left = 56
        Top = 0
        Action = actSaveDetails
        AutoSize = True
      end
      object tbDetailsSep1: TToolButton
        Left = 111
        Top = 0
        Width = 8
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbWordWrap: TToolButton
        Left = 119
        Top = 0
        Action = actWordWrap
      end
    end
    object pnlBorder: TPanel
      Left = 0
      Top = 22
      Width = 302
      Height = 474
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      object hcDetails: THeaderControl
        Left = 0
        Top = 0
        Width = 298
        Height = 19
        Sections = <
          item
            AutoSize = True
            ImageIndex = -1
            Text = 'Details'
            Width = 298
          end>
        NoSizing = True
      end
      object reDetails: TRichEdit
        Left = 0
        Top = 19
        Width = 298
        Height = 451
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        PlainText = True
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
        Visible = False
      end
      object sbDetailsImage: TScrollBox
        Left = 0
        Top = 19
        Width = 298
        Height = 451
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        BorderStyle = bsNone
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        Visible = False
        object imgDetailsImage: TImage
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          AutoSize = True
        end
      end
      object vleDetailsDictionary: TValueListEditor
        Left = 0
        Top = 19
        Width = 298
        Height = 451
        Align = alClient
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAlwaysShowEditor, goThumbTracking]
        TabOrder = 3
        ExplicitTop = 0
        ColWidths = (
          150
          142)
      end
    end
  end
  object pnlLog: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 496
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object vstLog: TVirtualStringTree
      Left = 0
      Top = 22
      Width = 682
      Height = 474
      Align = alClient
      Header.AutoSizeIndex = 3
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoVisible]
      HintMode = hmTooltip
      Images = ilsLog
      TabOrder = 0
      TreeOptions.PaintOptions = [toHideFocusRect, toShowButtons, toShowDropmark, toThemeAware]
      TreeOptions.SelectionOptions = [toFullRowSelect]
      OnFocusChanged = vstLogFocusChanged
      OnFreeNode = vstLogFreeNode
      OnGetText = vstLogGetText
      OnGetImageIndex = vstLogGetImageIndex
      Columns = <
        item
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coShowDropMark, coVisible, coAllowFocus]
          Position = 0
          Width = 24
        end
        item
          Position = 1
          Width = 150
          WideText = 'Time'
        end
        item
          Position = 2
          Width = 150
          WideText = 'Category'
        end
        item
          Position = 3
          Width = 354
          WideText = 'Message'
        end>
    end
    object tbLog: TToolBar
      Left = 0
      Top = 0
      Width = 682
      Height = 22
      AutoSize = True
      ButtonWidth = 67
      Caption = 'tbLog'
      Images = ilsLog
      List = True
      ShowCaptions = True
      TabOrder = 1
      OnCustomDraw = ToolbarCustomDraw
      object tbPause: TToolButton
        Left = 0
        Top = 0
        Action = actPause
        AutoSize = True
        Style = tbsCheck
      end
      object tbClear: TToolButton
        Left = 60
        Top = 0
        Action = actClear
        AutoSize = True
      end
      object lblFilter: TLabel
        Left = 116
        Top = 0
        Width = 46
        Height = 22
        Caption = '    Filter:  '
        Layout = tlCenter
      end
      object tbShowVerbose: TToolButton
        Left = 162
        Top = 0
        Action = actShowVerbose
        AutoSize = True
        Style = tbsCheck
      end
      object tbShowInfo: TToolButton
        Left = 232
        Top = 0
        Action = actShowInfo
        AutoSize = True
        Style = tbsCheck
      end
      object tbShowWarning: TToolButton
        Left = 283
        Top = 0
        Action = actShowWarning
        AutoSize = True
        Style = tbsCheck
      end
      object tbShowError: TToolButton
        Left = 354
        Top = 0
        Action = actShowError
        AutoSize = True
        Style = tbsCheck
      end
    end
  end
  object sbStatus: TStatusBar
    AlignWithMargins = True
    Left = 0
    Top = 500
    Width = 990
    Height = 19
    Margins.Left = 0
    Margins.Top = 4
    Margins.Right = 0
    Margins.Bottom = 0
    Panels = <>
    SimplePanel = True
  end
  object ilsLog: TImageList
    Left = 448
    Top = 48
    Bitmap = {
      494C01010A004000FC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5845800D074
      1100CD6E0900D1720900C98546000000000000000000C6824500CF720D00CD6E
      0900D1720900B886590000000000000000000000000000000000C49C8800C996
      7E00C5927C00C18E7A00BD8A7800B9867600B5827400B17E7200AD7A7000A976
      6E00A5726C00A67D790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CD711100FFAD
      1400FF9F0100FFA30000E27A00000000000000000000E07E0C00FFAA0F00FF9F
      0100FFA30000D1720900000000000000000000000000C79E8900EEDACE00F9F9
      F900F9F9F900FAFAFA00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DBC7C400A67D7900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9660600FF9F
      0100FD960000FF9F0100DD7700000000000000000000D6710100FD960000FD96
      0000FF9F0100CF6D0600000000000000000000000000D29F8200FFFFFF009990
      870099948E00999794009999990099999900FFFFFF0099999900999999009999
      990099999900FFFFFF00A5726C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C35F0600F48E
      0000F48E0000FD960000DD7700000000000000000000D06A0000F6900000F48E
      0000FF9F0100C9660600000000000000000000000000D7A48400FFFFFF00FFF0
      E100FFF6EC00FFFBF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A9766E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BE5C0600EE88
      0000EC860000F48E0000D06A00000000000000000000C9660600EC860000EC86
      0000F48E0000C9660600000000000000000000000000DCA98700FFFFFF009990
      870099948E009997940099999900999999009999990099999900999999009999
      990099999900FFFFFF00AE7B7000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BE5C0600E27A
      0000E27A0000EE880000CF6D06000000000000000000C35F0600E27A0000EC86
      0000EC860000C35F0600000000000000000000000000E1AE8A00FFFFFF00FFEE
      DD00FFF4E800FFF9F300FFFDFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B3807300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B14F0600DE78
      0000DE780000E27A0000C96606000000000000000000C35F0600DD770000DD77
      0000E27A0000BE5C0600000000000000000000000000E5B28C00FFFFFF00998E
      83009991890099948E0099979400999999009999990099999900FFFFFF009999
      990099999900FFFFFF00B7847500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B14F0600D06A
      0000DD770000DD770000C35F06000000000000000000BA540100D06A0000DD77
      0000DD770000BA540100000000000000000000000000E9B68E00FFFFFF00FFEB
      D600FFEEDD00FFF4E800FFF7F000FFFBF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00BA877700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD4C0C00D172
      0900C9660600D06A0000BA5401000000000000000000B6540A00D06F0C00C966
      0600D06A0000BA540100000000000000000000000000EDBA9000FFFFFF00998B
      7C00998D800099908700FFF4E800999490009997940099989700999999009999
      990099999900FCFCFC00BE8B7900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD4C0C00D382
      3700CD721D00D0741100BE5C06000000000000000000B3561500D07F3300CD72
      1D00D0741100B14F0600000000000000000000000000F1BE9200FFFFFF00FFE4
      C700FFE9D200FFEDDA00FFF0E100FFF4E800FFF6EC00FFF9F300FFFBF700FFFB
      F700FFFBF700FAFAFA00C28F7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5491300D795
      5E00D0854400D68B4300B75A16000000000000000000B1592000D7955E00D382
      3700D68B4300AD4C0C00000000000000000000000000F5C29400FFFFFF009986
      730099897A00998C7E00998D8000FFEEDD009991890099928B0099948E009994
      8E0099948E00F9F9F900C6937D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4491900DDAD
      8700D59A6B00D9A06D00B15920000000000000000000B15D2A00DDAD8700D59A
      6B00D9A06D00A94D1500000000000000000000000000F9C69600FFFFFF00FFDC
      B800FFE0C000FFE4C700FFE7CE00FFEBD600FFEDDA00FFEEDD00FFF0E100FFF0
      E100FFF0E100F9F9F900C9967E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7522700EED8
      C600E6C4A800ECCCAF00B96939000000000000000000B7673A00EED6C100E6C4
      A800ECCCAF00AB572800000000000000000000000000E4BC9800FDE8D500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEDACE00AA817A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A16C5600A449
      19009F441200A4491900AA6544000000000000000000AA654400A44919009F44
      1200A4491900A26E580000000000000000000000000000000000E0B89500F9C6
      9600F5C29400F1BE9200EDBA9000E9B68E00E5B28C00E1AE8A00DDAA8800D9A6
      8600D5A28400AA817A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B7C6C009B7C
      6C009B7C6C009B7C6C009B7C6C009B7C6C009B7C6C009B7C6C009B7C6C009B7C
      6C009B7C6C009B7C6C0000000000000000000000000000000000AF704E00A747
      1100895E4600A7ABAB00B9B2AB00C8C7C300C9C9CC00AFAFAF0099A2A8008238
      0D00A7471100A34B2100A47763000000000000000000000000002427AE00161C
      AC005A5AA90000000000000000000000000000000000000000005353A9004F4F
      A20000000000000000000000000000000000000000009B7C6B009B7C6B009B7C
      6B009B7C6B009B7C6B009B7C6B009B7C6B009B7C6B009B7C6B009B7C6B000000
      00000000000000000000000000000000000000000000000000009B776600FFFF
      FF00FAF4E900FAF4E900FAF4E900FAF4E900FAF4E900FAF4E900FAF4E900F9EF
      E000F9EFE00097796700000000000000000000000000BC764500BE631700CD79
      27009E877000B9875900CE700D00DCAF7A00FEFFFF00FEFFFF00D9E2EA00AD70
      2400DD943500ECBE7500A4450E0000000000000000004E4EAB001844F600194D
      F8001031D2002427AE000000000000000000000000004E4EAB000928D7000928
      D7000313B3004E4EAB000000000000000000000000009B776600FFFFFF00FBF5
      EC00FBF5EC00FBF5EC00FBF5EC00FAF3E600FBF5EC00F8EDDA00977967000000
      0000000000000000000000000000000000000000000000000000A27F6F00FFFF
      FF00DDC1B400DDC1B400DDC1B400DDC1B400DDBEAD00DDBEAD00DCBAA500DCBA
      A500F9EFE00097796700000000000000000000000000C9680D00C0702800C36C
      1E00A7876B00AE7C5A00BA580900C69A6C00D9DFE500FEFFFF00F4F9FC00A363
      1D00D5872D00E5AF6900A4450E0000000000000000002022B1002451F9001F52
      FF00194DF8001744E8001017AF00000000004747AC000928D7001344F9001041
      F6000E3EF600041ABC006F6FAA000000000000000000A3807000FFFFFF00DBC3
      BB00DBC1B700DBBFB200DBBDAF00DBBDAF00DAB8A500FAF3E60097796700B081
      8F00975668009653640097566800000000000000000000000000A3807000FFFF
      FF00DBC4BD00DBC4BD00DDC1B400DDC1B400DDBEAD00DDBEAD00DCBAA500DCBA
      A500FAF4E9009B7C6C00000000000000000000000000C9680D00BB682300BF66
      1900B4906E00B37C6000AF490000B5875E00BFC6CD00D5DEE400FEFFFF00A363
      1D00D5872D00E5AF6900A4450E000000000000000000000000001832DB00295A
      FF002451F9002451F9001A4AF200060EAF000F30DD00164AFE001344F9001041
      F6000E3EF6000E3EF6002C2CA2000000000000000000A9877800FFFFFF00DBC7
      C200DBC3BB00DBC1B700DBBFB200DBBDAF00DAB8A500FBF5EC009B7C6B00E3CF
      D000E3CFD000E2C2C20096536400000000000000000000000000A9877800FFFF
      FF00DBC6C200DBC4BD00DBC4BD00DDC1B400DBBFB400DCBAA500DDBEAD00DDBE
      AD00FAF4E90097796700000000000000000000000000C9680D00BF661900BF66
      1900B07D5800C1BFBD00B0ACA80098918B009A8E8400A3978A00AEA79F009058
      1F00A7672300DA954200A4450E0000000000000000007777B3001832DB003A6F
      FF00295AFF00295AFF00295AFF002451F900194DF800194DF8001344F9001344
      F9000E3EF600161CAC00000000000000000000000000AB897A00FFFFFF00DBC7
      C200DBC3BB00DBC3BB00DBBFB200DBBDAF00DAB8A500FBF5EC009B7C6B00D4AE
      B900CB90A100E3CFD00096536400000000000000000000000000AB897A00FFFF
      FF00DBC6C200DBC6C200DBC4BD00DBC4BD00DBBFB400DCBAA500DDBEAD00DCBA
      A500FAF4E9009B7C6C00000000000000000000000000C9670A00B55D1B00B55D
      1B00BA580900BA580900BA580900C2620E00C5671000C8691300C8691300CD79
      2700D07F2A00D3893200A4450E000000000000000000000000006B6BB6001A25
      C5003A6FFF003668FF00295AFF00295AFF002451F900194DF8001F52FF00123D
      ED002427AE0000000000000000000000000000000000AB897A00FFFFFF00DBC7
      C200DBC3BB00DBC3BB00DBBFB200DBBDAF00DBBFB200FBF5EC009B7C6B00D4AE
      B900CB90A100E4D0D00096536400000000000000000000000000AB897A00FFFF
      FF00DBC6C200DBC4BD00DBC4BD00DBC4BD00DDC1B400DBBFB400DCBAA500DDBE
      AD00FAF4E9009B7C6C00000000000000000000000000C9680D00B0551400B169
      3300AF714200AF714200AF714200B0764200B0764200B0764200B0764200B076
      4200BD804100D5872D00A4450E00000000000000000000000000000000000000
      00002F2FB3002E4EE7003668FF00295AFF00295AFF002451F900123DED002C2C
      A2000000000000000000000000000000000000000000AF8F8000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFAF600FDFAF600FDFAF600FBF5EC009B7C6B00D5B1
      BC00CB90A100E4D0D00098576B00000000000000000000000000B1908000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F500FCF9F500FCF9F500FAF4
      E900FAF4E9009B7C6C00000000000000000000000000C2620E00AF490000B39D
      8900E6F2FB00E4EDF300E4EDF300E4EDF300E1E9EF00D9E2EA00DFE3E600D9E2
      EA00AD9A8A00D07F2600A4450E00000000000000000000000000000000000000
      000000000000253FDF003A6FFF003668FF00295AFF00295AFF001B46EA002427
      AE000000000000000000000000000000000000000000AF8F8000FFFFFF00DFCE
      CC00DBC7C200DBC7C200DBC3BB00DBC1B700DBBDAF00F0E8E0009F807000D5B1
      BC00CB90A100E4DBDB0096536400000000000000000000000000AF8F8000FFFF
      FF00DFCDCB00DFCDCB00DBC6C200DBC4BD00DBC4BD00DDC1B400DDBEAD00DDBE
      AD00FCF9F5009B7C6C00000000000000000000000000C9670A00A8430300B899
      8400FEFFFF00D4D3D200BEBDBC00C1BFBD00C1BFBD00C2C1C000C9C9CC00DFE3
      E600B19B8500CD792700A4450E00000000000000000000000000000000000000
      00002B2CC0004B7CFF004170FF003A6FFF003A6FFF00295AFF00295AFF001031
      D2004A4AB20000000000000000000000000000000000AF8F8000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A3807000A3807000A3807000A3807000E4DB
      DB00E4DBDB00E4D0D0009A5B6E00000000000000000000000000B1908000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F500FCF9F500FAF4
      E900F0E8E0009B7C6C00000000000000000000000000C2620E00A23C0000B899
      8400FEFFFF00E4EDF300EEEEEE00EEEEEE00EEEEEE00E5E4E300DFE3E600E5E4
      E300AD9A8A00CD792700A4450E00000000000000000000000000000000000000
      0000253FDF00527CFA004170FF003464FF000C13C1004170FF00295AFF002451
      F9000B1DC20000000000000000000000000000000000B8988800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFAF600A3807000F5E2D900B18E7E00C39C9F00D4AE
      B900CE98A700DFCECC0097566800000000000000000000000000B1908000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F500A3807000A380
      7000A3807000A3807000000000000000000000000000C2620E00A23C0000BC9C
      8A00FEFFFF00DDDCDB00C1BFBD00C2C1C000C2C1C000C1BFBD00C9C9CC00E1E9
      EF00B19B8500CD771F00A4450E00000000000000000000000000000000004F4F
      BD00527CFA005081FF004B7CFF001A25C500000000001A25C5003A6FFF002451
      F9001A4AF2001419B100000000000000000000000000B8988800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A3807000B18E7E00CFC3BD00E6E2E200A25B
      7100A25B7100A25B7100A25B7100000000000000000000000000B8988800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F500FFFFFF00A3807000F5E2
      D900B08E7D00AB9E9800000000000000000000000000C2620E009A310000BC9C
      8A00FEFFFF00FEFFFF00EEEEEE00EEEEEE00EEEEEE00E5E4E300E5E4E300EEEE
      EE00B39D8900C2701D00A9480D0000000000000000000000000000000000252D
      D6006A9CFF005788FF002B46E7006B6BB60000000000000000001A25C500295A
      FF002451F9001439DD004747AC000000000000000000B8988800B8988800AF8F
      8000B18E7E00B18E7E00AC887700A3807000CFC3BD00E6E2E200E6E2E200A25B
      7100E0C1CA00AA697E00A9919800000000000000000000000000B8988800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3807000B08E
      7D00AB9E980000000000000000000000000000000000C562060093280000BC9C
      8A00FEFFFF00E5E4E300D1CFCC00D1CFCC00C9C9CC00D1CFCC00D4D3D200E4ED
      F300B9A38C008A4F1400B0551400000000000000000000000000000000004B4B
      C8003951E2005081FF002B2CC000000000000000000000000000000000001628
      D300265AFF000F2EE3002022B100000000000000000000000000000000000000
      000000000000C194A300E6E2E200E6E2E200E6E2E200E6E2E200E6E2E200A25B
      7100AA697E00A991980000000000000000000000000000000000B8988800B898
      8800B1908000B1908000B08E7D00B08E7D00AC887700AC887700A3807000AB9E
      98000000000000000000000000000000000000000000BF8D5800C0540200C8A4
      8300D4D3D200D4D3D200D4D3D200D4D3D200C9C9CC00C8C7C300C1BFBD00BEBD
      BC00B1947B00C0540200B07D5800000000000000000000000000000000000000
      0000000000003E3EB90000000000000000000000000000000000000000006B6B
      B6002F2FB3000000000000000000000000000000000000000000000000000000
      000000000000AF728500AF728500AC6D8000AC6D8000AC6D8000A6627600A25B
      7100A99198000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C8F5C002979270014700D0014700D00277525005C8F5C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6795F00A1552D00A2481400A04615009E543000A47965000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E63B2001221BA000812
      B1000812B1000810AA00080EA600080EA600080EA600080A9D00080EA6000606
      9A00080A9D00080A9D006060A400000000000000000000000000000000000000
      00000F7D0F00088800000888000013880000217D000032720000266D0000126D
      0D00000000000000000000000000000000000000000000000000000000000000
      0000AD4F0F00BE580000C55F0000BE580000BE580000B04A0000A94300009D43
      14000000000000000000000000000000000000000000749AAC003593B9002F95
      BC002693BB002693BB001A92B9001492B9000F92B8000B91B6000B91B6000C8F
      B5000C8FB5001B80A800000000000000000000000000192CC6002441E000001E
      D700001ED7000526DB000015C9000013C7000013C7000008B7000921C7000004
      AD000009AB000004A200080EA600000000000000000000000000000000000585
      070004A00800009D010004A00800009D0100009D0100009500001E7E0000396B
      000010690200000000000000000000000000000000000000000000000000B752
      0200D56D0000D56D0000D2670000EB952800F8B04F00DC750000BE580000A943
      0000A03D0600000000000000000000000000000000003D98BD00A6EBF70084E1
      F1006CE2F10056E3F10040E9F50019F1FA002AF7F70000FEFE0000FEFE0000FE
      FE0000FEFE0000FEFE001083AB0000000000000000001C32CE00264AEE000020
      E6000533F200B0C1EF001641F100001ED7000015C9001C40E500D0DEFF002441
      E0000008B7000009AB0006069A00000000000000000000000000158816000BA8
      170004A0080036C15400DCF3E9007ADD9B00009D010000950000009D01001285
      0000396B0000126D0D0000000000000000000000000000000000B65A1000DC75
      0000D56D0000D56D0000DA985000F4FEFF00FEFFFF00FFFAE100D56D0000BE58
      0000B04A00009D4314000000000000000000000000003593B900A5E7F3007EDB
      ED0069DBEC0055DEEE0032E3FD001E374000453C380009FFFF0000FEFE0000FE
      FE0000FEFE0000FEFE000C8FB5000000000000000000213AD200294FF7000028
      F800C0C7E400F1EDE000D9DFEC000F3BF1000C34EB00E1EAFD00FFFFF900EFF8
      FF002441E0000004AD0006069A0000000000000000006097600024A82F0008A9
      1B002BB43E00F6F0F500FCF6FA00FFFEFF007ADD9B00009D0100009D01000095
      0000217D0000266D00005C8F5C000000000000000000AE795400D97E1B00DC75
      0000DC750000DC750000CA844900ECF9FF00F4FEFF00FEEED500D96D0000C862
      0000BE580000A9430000A47965000000000000000000709EB30069C3DD0089DE
      F00069DBEC005ADCED0044E3F4000B91B600129DB80008F5FC0000F4F90000FE
      FE0000FEFE0000E4EE005585A1000000000000000000213AD2002852FF00A0AC
      E200EDEADD00E4E4E300F1F0E900D4DCF300CFD9F800FFFFF900FFFFF900FFFF
      F900DEEDFF000921C700080EA60000000000000000002C8E2B0039BF4F0024A8
      2F00ECE6EA00F5EEF400FCF6FA00FFFEFF00FFFEFF007ADD9B00009F0900009D
      01000095000032720000277525000000000000000000B8662400E9912400E27C
      0000E27C0000E27C0000D96D0000CA6C1000D6853000D96D0000D56D0000C862
      0000C8620000B04A0000A1552D000000000000000000000000002F9BC50094E2
      F0007EDBED005ADCED0056E3F10032E6EB0046DCDD0016ECF70006EEF60000F4
      F90000FEFE00128AB1000000000000000000000000002945DB003764FF000533
      F200D7D7E000ECEBE500EDEDEB00F4F4F100FAF9F600FFFFF900FFFFF900FFFF
      F9002E54EC000008B700080A9D0000000000000000001E93220039BF4F00AAC9
      A700FAEAF900D1E1D1001EAF3300DAEEDD00FFFEFF00FFFEFF007ADD9B00009D
      0100009D0100297C000014700D000000000000000000C4691600ED992A00E881
      0000E8810000E8810000F4971600FFD89400FFD58F00FFC76400D96D0000D56D
      0000CE680000BE580000A24814000000000000000000000000000000000049B3
      D60087DFEF0069DBEC0058E4F6001A888E004074720026F2FE0016ECF70008F5
      FC0002C6DA006E9AAA000000000000000000000000002C48DE004473FF00003C
      FF000537F800D2D6E800EDEDEB00F4F4F100FFFFF900FFFFF900EAEFFF001D46
      EF000014D2000012BF00060CA3000000000000000000219624005DD27C0017A3
      25008EBF880011AB24001BB940000BAC2600DAEEDD00FFFEFF00FFFEFF007ADD
      9B00009D01001B86000014700D000000000000000000CA6C1000F6A73C00EF88
      0000EF880000EF880000EB952800FEFFFF00FEFFFF00FFE7B900DC750000D56D
      0000D56D0000C55F0000A248140000000000000000000000000000000000409F
      C20087DFEF007EDBED0047E8FF00243A3E003F3635001DFBFF002BE5F20021EE
      F600268CAA00000000000000000000000000000000002F4EE3004D81FF00044A
      FF00002CF600B0BAE800EDEDEB00F4F4F100F4F4F100FFFFF900D0DEFF00012D
      ED00001ED7000013C7000009AB0000000000000000002C922C0077DC95002CC5
      59001BB940002CC5590026C04E0022BB45000BAC2600DAEEDD00FFFEFF00FFFE
      FF0078DB960013880000267D26000000000000000000BF6B2000FCBA5A00F68F
      0000F7900000F68F0000E28D2500F4FEFF00FEFFFF00FFE2B200E1750000D771
      0000D56D0000C55F0000A4582B00000000000000000000000000000000000000
      000038ABD00094E2F00038D2F600211210003827260020CEDA0040E9F5001EAC
      CF0000000000000000000000000000000000000000003253E500568EFF000031
      EB00B6B8DC00ECEBE500EDEDEB00F4F4F100F4F4F100FFFFF900FFFFF900E1EA
      FD000031EB000013C7000810AA000000000000000000629C620053C66C0061D8
      890031CA630031CA63002CC5590026C04E0022BB45000BAC2600DAEEDD00FCF6
      FA00CAECD7000E8E08005C905C000000000000000000B57B4E00F8B04F00FDA9
      2C00FD960000FD960000DA842300EAF2FB00EFF2F700F5D6A900E1750000DC75
      0000D56D0000C55F0000A6795F00000000000000000000000000000000000000
      00005AA3C00082D3E80045CFF100110602002B14100023C9E50055DEEE003C92
      B7000000000000000000000000000000000000000000385AEA004F77EC009A98
      CB00EDEADD00E4E4E300F1F0E900D2D6E800DFE3F400FFFFF900FFFFF900FFFF
      F900D0DEFF000526DB000611B2000000000000000000000000001E9A230083E5
      A7004CD3790031CA630031CA630027C3530022BB45001CB53A0008A91B007ACC
      850011AB24000F7D0F0000000000000000000000000000000000D1761900FFC7
      6400FFA21300FF980000CF7A2600DFEEFE00E3EFFB00E4CBAC00E1750000DC75
      0000D7710000AE510E0000000000000000000000000000000000000000000000
      00000000000031A1C9009DE6F60031B0D30027ADCF0067E5FA0031A1C9000000
      00000000000000000000000000000000000000000000385AEA0067A4FF000F35
      D200D8D4D800ECEBE500D9D8E4000533F200003CFF00F4F4F100FFFFF900FFFF
      F9001944F9000015C9000012BF000000000000000000000000000000000024A4
      2D0083E5A7005ED8880031CA630027C3530022BB45001CB53A0016B02E000BAC
      2600058A08000000000000000000000000000000000000000000BE916D00DA84
      2300FFC76400FFAD2600DC750000CD6E0F00D5760F00DA790B00E27C0000E27C
      0000BD5700000000000000000000000000000000000000000000000000000000
      00000000000074A9BD006FC7E300A5E7F30094E2F00077D4E7005398B5000000
      000000000000000000000000000000000000000000003D60F0006DABFF00116E
      FF001136D300BDB9D4000633E300044AFF00003CFF000537F800D4DCF3000C3B
      F9000020E600001ED7000611B200000000000000000000000000000000000000
      00001E9A230056CA730077E09C005DD27C0043C8660036C154001EAA2F001588
      160000000000000000000000000000000000000000000000000000000000BE91
      6D00D1761900F8B04F00FFBF4E00FDA92C00F69A1900EF911500DA790B00BA5C
      0C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031A1C900B8E8F200B1E9F600369DC100000000000000
      00000000000000000000000000000000000000000000355DF200BAE0FF005CA0
      FF00569AFF003A60E4004584FF003F76FF003764FF00295AFF001944F9001944
      F9001D46EF001D38DB001326C300000000000000000000000000000000000000
      000000000000629C62002C922C00229A28001E9322002C922C00629C62000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B57B4E00C26F2100CD6E0F00CA6C1000BF6B2000AE7954000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003D98BD00369DC10000000000000000000000
      000000000000000000000000000000000000000000006373CE00365DEF004162
      EE00385AEA00385AEA00385AEA003253E500304DE2002945DB002945DB002441
      E000213AD2001C32CE00656DB900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000C183C00300000000
      C183800100000000C183800100000000C183800100000000C183800100000000
      C183800100000000C183800100000000C183800100000000C183800100000000
      C183800100000000C183800100000000C183800100000000C183800100000000
      C183C00300000000FFFFFFFF00000000FFFFFFFFFFFFFFFFC003C001C7CF801F
      C00380018383801FC003800181018001C0038001C0018001C003800180038001
      C0038001C0078001C0038001F00F8001C0038001F80F8001C0038001F0078001
      C0038001F0078001C0038001E0838001C0038001E0C18001C0078001E1E1F803
      C00F8001FBE7F807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF81FFFFF8001
      F00FF00F80038001E007E00780018001C003C003800180018001800180018001
      80018001C003800180018001E003800180018001E007800180018001F00F8001
      80018001F00F8001C003C003F81F8001E007C007F81F8001F00FE00FFC3F8001
      F81FF81FFE7F8001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object alLog: TActionList
    Images = ilsLog
    Left = 512
    Top = 48
    object actClear: TAction
      Caption = 'Clear'
      ImageIndex = 6
      OnExecute = actClearExecute
    end
    object actCopyDetails: TAction
      Caption = 'Copy'
      Enabled = False
      ImageIndex = 7
      OnExecute = actCopyDetailsExecute
    end
    object actSaveDetails: TAction
      Caption = 'Save'
      Enabled = False
      ImageIndex = 5
      OnExecute = actSaveDetailsExecute
    end
    object actPause: TAction
      AutoCheck = True
      Caption = 'Pause'
      ImageIndex = 8
      OnExecute = actPauseExecute
    end
    object actShowVerbose: TAction
      Caption = 'Verbose'
      Checked = True
      ImageIndex = 0
      OnExecute = actShowVerboseExecute
    end
    object actShowInfo: TAction
      Caption = 'Info'
      Checked = True
      ImageIndex = 1
      OnExecute = actShowInfoExecute
    end
    object actShowWarning: TAction
      Caption = 'Warning'
      Checked = True
      ImageIndex = 2
      OnExecute = actShowWarningExecute
    end
    object actShowError: TAction
      Caption = 'Error'
      Checked = True
      ImageIndex = 3
      OnExecute = actShowErrorExecute
    end
    object actWordWrap: TAction
      AutoCheck = True
      Caption = 'Word wrap'
      Enabled = False
      ImageIndex = 9
      OnExecute = actWordWrapExecute
    end
    object actClose: TAction
      Caption = '&Close'
      OnExecute = actCloseExecute
    end
    object actAlwaysOnTop: TAction
      Caption = 'Always on top'
      OnExecute = actAlwaysOnTopExecute
    end
    object actSaveAs: TAction
      Caption = '&Save as...'
      ImageIndex = 5
      OnExecute = actSaveAsExecute
    end
  end
  object sdDetails: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 512
    Top = 112
  end
  object mmMain: TMainMenu
    Images = ilsLog
    Left = 448
    Top = 112
    object mmMainFile: TMenuItem
      Caption = 'File'
      object mmMainFileSaveAs: TMenuItem
        Action = actSaveAs
      end
      object mmMainFileSep1: TMenuItem
        Caption = '-'
      end
      object mmMainFileClose: TMenuItem
        Action = actClose
      end
    end
    object mmMainLog: TMenuItem
      Caption = 'Log'
      object mmMainLogPause: TMenuItem
        Action = actPause
        AutoCheck = True
      end
      object mmMainLogClear: TMenuItem
        Action = actClear
      end
      object mmMainLogSep1: TMenuItem
        Caption = '-'
      end
      object mmMainLogVerbose: TMenuItem
        Action = actShowVerbose
      end
      object mmMainLogInfo: TMenuItem
        Action = actShowInfo
      end
      object mmMainLogWarning: TMenuItem
        Action = actShowWarning
      end
      object mmMainLogError: TMenuItem
        Action = actShowError
      end
    end
    object mmMainDetails: TMenuItem
      Caption = 'Details'
      object mmMainDetailsCopy: TMenuItem
        Action = actCopyDetails
      end
      object mmMainDetailsSave: TMenuItem
        Action = actSaveDetails
      end
      object mmMainDetailsSep1: TMenuItem
        Caption = '-'
      end
      object mmMainDetailsWordWrap: TMenuItem
        Action = actWordWrap
        AutoCheck = True
      end
    end
    object mmMainWindow: TMenuItem
      Caption = 'Window'
      object mmMainWindowAlwaysOnTop: TMenuItem
        Action = actAlwaysOnTop
      end
    end
  end
  object sdSaveAs: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 512
    Top = 176
  end
end
