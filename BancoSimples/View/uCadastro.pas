unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uContaBancaria, uDM, Vcl.ExtCtrls;

type
  TfrmCadastro = class(TForm)
    lblTitularConta: TLabel;
    edtNomeTitular: TEdit;
    btnCriarConta: TButton;
    lblMensagemNome: TLabel;
    edtCPF: TEdit;
    lblCPF: TLabel;
    lblTitulo: TLabel;
    btnVoltar: TButton;
    pnlPrincipal: TPanel;
    lblMensagemCPF: TLabel;
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    function ValidarCamposObrigatorios: Boolean;
  public
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses
  uTelaInicial, uLogin;

{$R *.dfm}

procedure TfrmCadastro.btnCriarContaClick(Sender: TObject);
var
  Conta: TContaBancaria;
  Mensagem: string;
begin
  if not ValidarCamposObrigatorios then
    Exit;

  try
    lblMensagemNome.Caption := '';

    Conta := DM.Banco.CriarConta(edtNomeTitular.Text, edtCPF.Text);

    Mensagem := 'Conta criada com sucesso!' + sLineBreak +
                'Titular: ' + Conta.Titular + sLineBreak +
                'CPF: ' + Conta.CPF + sLineBreak +
                'Número da conta: ' + Conta.NumeroConta;

    ShowMessage(Mensagem);

    edtNomeTitular.Text := '';
    edtCPF.Text := '';

    frmTelaInicial.DefinirFormLogin(frmLogin);
    frmTelaInicial.DefinirConta(Conta);

    frmTelaInicial.Show;
    Self.Hide;

  except
    on E: Exception do
    begin
      ShowMessage('Falha na criação da conta: ' + E.Message);
      edtNomeTitular.SetFocus;
    end;
  end;
end;

function TfrmCadastro.ValidarCamposObrigatorios: Boolean;
begin
  lblMensagemNome.Caption := '';
  lblMensagemCPF.Caption := '';

  if Trim(edtNomeTitular.Text) = '' then
  begin
    lblMensagemNome.Caption := 'Informe o nome do titular.';
    edtNomeTitular.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtCPF.Text) = '' then
  begin
    lblMensagemCPF.Caption := 'Informe o CPF.';
    edtCPF.SetFocus;
    Result := False;
    Exit;
  end;

  Result := True;
end;

procedure TfrmCadastro.btnVoltarClick(Sender: TObject);
begin
  frmLogin.Show;
  Self.Hide;
end;

end.

