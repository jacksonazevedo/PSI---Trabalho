object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Servidor'
  ClientHeight = 463
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 75
    Top = 38
    Width = 265
    Height = 99
    Caption = 'Configura'#231#245'es do Servidor'
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 40
      Width = 37
      Height = 19
      Caption = 'Porta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnStartServidor: TButton
      Left = 162
      Top = 29
      Width = 95
      Height = 41
      Caption = 'Iniciar Servidor'
      TabOrder = 0
      OnClick = btnStartServidorClick
    end
    object edtPorta: TEdit
      Left = 56
      Top = 37
      Width = 92
      Height = 27
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      Text = '3030'
    end
  end
  object GroupBox2: TGroupBox
    Left = 75
    Top = 159
    Width = 265
    Height = 105
    Caption = 'Enviar Dados'
    TabOrder = 1
    Visible = False
    object Button2: TButton
      Left = 162
      Top = 40
      Width = 95
      Height = 41
      Caption = 'Enviar'
      Enabled = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 13
      Top = 46
      Width = 135
      Height = 30
      Align = alCustom
      AutoSize = False
      TabOrder = 1
      Text = 'Mensagem servidor'
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 296
    Width = 419
    Height = 167
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'Dados Recebidos'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 2
    object Memo1: TMemo
      Left = 7
      Top = 20
      Width = 405
      Height = 140
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      TabOrder = 0
    end
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 3030
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    Left = 328
  end
end
