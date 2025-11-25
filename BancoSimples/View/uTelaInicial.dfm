object frmTelaInicial: TfrmTelaInicial
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 401
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblValor: TLabel
    Left = 30
    Top = 97
    Width = 84
    Height = 15
    Caption = 'Informe o valor:'
  end
  object lblConferirSaldo: TLabel
    Left = 30
    Top = 240
    Width = 77
    Height = 15
    Caption = 'Conferir saldo:'
  end
  object lblOperacao: TLabel
    Left = 30
    Top = 167
    Width = 167
    Height = 15
    Caption = 'Selecionar a opera'#231#227'o desejada:'
  end
  object lblSair: TLabel
    Left = 32
    Top = 339
    Width = 155
    Height = 15
    Caption = 'Sair da conta com seguran'#231'a:'
  end
  object edtValor: TEdit
    Left = 30
    Top = 118
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 0
  end
  object btnDepositar: TButton
    Left = 30
    Top = 199
    Width = 79
    Height = 25
    Caption = 'Depositar'
    TabOrder = 1
    OnClick = btnDepositarClick
  end
  object btnSacar: TButton
    Left = 115
    Top = 199
    Width = 77
    Height = 25
    Caption = 'Sacar'
    TabOrder = 2
    OnClick = btnSacarClick
  end
  object btnSaldo: TButton
    Left = 30
    Top = 261
    Width = 79
    Height = 25
    Caption = 'Saldo'
    TabOrder = 3
    OnClick = btnSaldoClick
  end
  object pnlSaudacao: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 81
    Align = alTop
    TabOrder = 4
    object lblSaudacao: TLabel
      Left = 20
      Top = 13
      Width = 64
      Height = 15
      Caption = 'lblSaudacao'
    end
    object lblNumeroConta: TLabel
      Left = 20
      Top = 34
      Width = 89
      Height = 15
      Caption = 'lblNumeroConta'
    end
    object lblSaldo: TLabel
      Left = 20
      Top = 55
      Width = 42
      Height = 15
      Caption = 'lblSaldo'
    end
  end
  object btnSair: TButton
    Left = 32
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
end
