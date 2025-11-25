unit uGerenciadorContas;

interface

uses
  System.Generics.Collections, uContaBancaria;

type
  TGerenciadorContas = class
  private
    FContas: TObjectList<TContaBancaria>;
    FUltimoNumero: Integer;
    function ExisteCPF(const ACPF: string): Boolean;
    function GerarNumeroConta: string;
  public
    constructor Create;
    destructor Destroy; override;

    function CriarConta(const ATitular, ACPF: string): TContaBancaria;
    function LoginConta(const ANumeroConta: string): TContaBancaria;
  end;

implementation

uses
  System.SysUtils;

constructor TGerenciadorContas.Create;
begin
  FContas := TObjectList<TContaBancaria>.Create(True);
  FUltimoNumero := 0;
end;

destructor TGerenciadorContas.Destroy;
begin
  FContas.Free;
  inherited;
end;

function TGerenciadorContas.GerarNumeroConta: string;
begin
  Inc(FUltimoNumero);
  Result := Format('%.4d', [FUltimoNumero]);
end;

function TGerenciadorContas.ExisteCPF(const ACPF: string): Boolean;
var
  ContaBancaria: TContaBancaria;
begin
  Result := False;
  for ContaBancaria in FContas do
    if ContaBancaria.CPF = ACPF then
      Exit(True);
end;

function TGerenciadorContas.CriarConta(const ATitular, ACPF: string): TContaBancaria;
var
  Numero: string;
begin
  if Trim(ACPF) = '' then
    raise Exception.Create('CPF inválido.');

  if ExisteCPF(ACPF) then
    raise Exception.Create('CPF já cadastrado!');

  Numero := GerarNumeroConta;
  Result := TContaBancaria.Create(Numero, ATitular, ACPF);
  FContas.Add(Result);
end;

function TGerenciadorContas.LoginConta(const ANumeroConta: string): TContaBancaria;
var
  ContaBancaria: TContaBancaria;
begin
  Result := nil;
  for ContaBancaria in FContas do
    if ContaBancaria.NumeroConta = ANumeroConta then
      Exit(ContaBancaria);
end;

end.

