object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 519
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grpConectar: TGroupBox
    Left = 112
    Top = 32
    Width = 233
    Height = 153
    Caption = 'Conectar'
    TabOrder = 0
    object lblIP: TLabel
      Left = 48
      Top = 37
      Width = 10
      Height = 13
      Caption = 'IP'
    end
    object lblPorta: TLabel
      Left = 40
      Top = 71
      Width = 26
      Height = 13
      Caption = 'Porta'
    end
    object btnConectar: TButton
      Left = 118
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 0
      OnClick = btnConectarClick
    end
    object edtIP: TEdit
      Left = 72
      Top = 34
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '127.0.0.1'
    end
    object edtPorta: TEdit
      Left = 72
      Top = 68
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '3030'
    end
  end
  object grpEnviar: TGroupBox
    Left = 112
    Top = 207
    Width = 233
    Height = 105
    Caption = 'Enviar'
    TabOrder = 1
    Visible = False
    object edtComando: TEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 39
      AutoSize = False
      TabOrder = 0
      Text = 'Mensagem Cliente'
    end
    object btnEnviar: TButton
      Left = 155
      Top = 40
      Width = 75
      Height = 41
      Caption = 'Enviar'
      TabOrder = 1
      OnClick = btnEnviarClick
    end
  end
  object grpReceber: TGroupBox
    Left = 0
    Top = 346
    Width = 454
    Height = 148
    Align = alCustom
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Dados Recebidos'
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    TabOrder = 2
    object lstRecebeCMD: TListBox
      Left = 5
      Top = 18
      Width = 444
      Height = 128
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 500
    Width = 454
    Height = 19
    Panels = <
      item
        Text = 'Status'
        Width = 50
      end
      item
        Text = 'Desconectado'
        Width = 50
      end>
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '127.0.0.1'
    Port = 3030
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 408
    Top = 8
  end
end
