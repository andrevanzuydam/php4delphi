object frmPHPDemo: TfrmPHPDemo
  Left = 299
  Top = 239
  Caption = 'psvPHP demo'
  ClientHeight = 502
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 480
    Top = 0
    Width = 4
    Height = 461
    Align = alRight
    ExplicitLeft = 484
    ExplicitHeight = 465
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 461
    Width = 771
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 460
    ExplicitWidth = 767
    object Panel2: TPanel
      Left = 586
      Top = 0
      Width = 185
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 582
      object btnExecuteCode: TButton
        Left = 88
        Top = 8
        Width = 87
        Height = 25
        Caption = 'Execute Code'
        TabOrder = 0
        OnClick = btnExecuteCodeClick
      end
      object btnExecuteFile: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Execute File'
        TabOrder = 1
        OnClick = btnExecuteFileClick
      end
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 480
    Height = 461
    Align = alClient
    TabOrder = 1
    ControlData = {
      4C0000009C310000A52F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel3: TPanel
    Left = 484
    Top = 0
    Width = 287
    Height = 461
    Align = alRight
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitLeft = 480
    ExplicitHeight = 460
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 285
      Height = 13
      Align = alTop
      Caption = '  PHP code'
      ExplicitWidth = 55
    end
    object Label2: TLabel
      Left = 1
      Top = 291
      Width = 285
      Height = 13
      Align = alBottom
      Caption = '  Result values'
      ExplicitTop = 290
      ExplicitWidth = 70
    end
    object memPHPCode: TMemo
      Left = 1
      Top = 14
      Width = 285
      Height = 277
      Align = alClient
      Lines.Strings = (
        'echo "Before function declaration...<br>\n";'
        ''
        'function print_something_multiple_times($something,$times)'
        '{'
        
          '  echo "----<br>\nIn function, printing the string \"$something\' +
          '" $times times<br>\n";'
        '  for ($i=0; $i<$times; $i++) {'
        '    echo "$i) $something<br>\n";'
        '  }'
        '  echo "Done with function...<br>\n-----<br>\n";'
        '}'
        ''
        'function some_other_function()'
        '{'
        
          '  echo "This is some other function, to ensure more than just on' +
          'e function works fine...<br>\n";'
        '}'
        ''
        ''
        'echo "After function declaration...<br>\n";'
        ''
        'echo "Calling function for the first time...<br>\n";'
        'print_something_multiple_times($test,10);'
        'echo "Returned from function call...<br>\n";'
        ''
        'echo "Calling the function for the second time...<br>\n";'
        
          'print_something_multiple_times("This like, really works and stuf' +
          'f...",3);'
        'echo "Returned from function call...<br>\n";'
        ''
        'some_other_function();'
        ''
        '$test = "I don'#39't believe";'
        '$tool = "PHP";')
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
      ExplicitHeight = 276
    end
    object lbVariables: TListBox
      Left = 1
      Top = 304
      Width = 285
      Height = 156
      Align = alBottom
      ItemHeight = 13
      TabOrder = 1
      ExplicitTop = 303
    end
  end
  object psvPHP: TpsvPHP
    Constants = <>
    Variables = <
      item
        Name = 'test'
        Value = 'This works!'
      end
      item
        Name = 'tool'
        Value = 'Delphi'
      end>
    HTMLErrors = True
    HandleErrors = False
    OnLogMessage = psvPHPLogMessage
    DLLFolder = 'D:\php\php8.2.5'
    Left = 116
    Top = 28
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.php'
    Filter = 'PHP script (*.php)|*.php|Any File (*.*)|*.*'
    Left = 196
    Top = 132
  end
end
