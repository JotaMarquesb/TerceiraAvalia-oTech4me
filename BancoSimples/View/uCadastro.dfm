object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastre sua conta'
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 401
    Align = alClient
    TabOrder = 0
    object lblTitularConta: TLabel
      Left = 85
      Top = 84
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object lblMensagemNome: TLabel
      Left = 85
      Top = 134
      Width = 3
      Height = 15
    end
    object lblTitulo: TLabel
      Left = 60
      Top = 45
      Width = 195
      Height = 15
      Caption = 'Informe os dados do titular da conta.'
    end
    object lblCPF: TLabel
      Left = 85
      Top = 159
      Width = 24
      Height = 15
      Caption = 'CPF:'
    end
    object lblMensagemCPF: TLabel
      Left = 85
      Top = 209
      Width = 3
      Height = 15
    end
    object edtNomeTitular: TEdit
      Left = 85
      Top = 105
      Width = 136
      Height = 23
      TabOrder = 0
    end
    object edtCPF: TEdit
      Left = 85
      Top = 180
      Width = 136
      Height = 23
      TabOrder = 1
    end
    object btnVoltar: TButton
      Left = 85
      Top = 266
      Width = 136
      Height = 25
      Caption = 'Voltar'
      TabOrder = 3
      OnClick = btnVoltarClick
    end
    object btnCriarConta: TButton
      Left = 85
      Top = 235
      Width = 136
      Height = 25
      Caption = 'Criar conta'
      TabOrder = 2
      OnClick = btnCriarContaClick
    end
  end
end
