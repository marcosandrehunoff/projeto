unit Finan.Dm.Cadastro;

interface

uses
  System.SysUtils, System.Classes, Fwk.Dm.Padrao.Dados, Finan.Dm.Conexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmCadastro = class(TFwkDmPadraoDados)
    QryEntidade: TFDQuery;
    QryEntidadeENT_ID: TIntegerField;
    QryEntidadeENT_CLIENTE: TSmallintField;
    QryEntidadeENT_FORNECEDOR: TSmallintField;
    QryEntidadeENT_TIPO_PESSOA: TStringField;
    QryEntidadeENT_NOME: TStringField;
    QryEntidadeENT_CPFCNPJ: TStringField;
    QryEntidadeENT_ENDERECO: TStringField;
    QryEntidadeENT_CEP: TStringField;
    QryEntidadeENT_CIDADE: TStringField;
    QryEntidadeENT_UF: TStringField;
    QryCategoria: TFDQuery;
    QryCategoriaCAT_ID: TIntegerField;
    QryCategoriaCAT_DESCRICAO: TStringField;
    QryCategoriaCAT_TIPO: TStringField;
    QryContasPagar: TFDQuery;
    QryContasReceber: TFDQuery;
    QryContasPagarCOP_ID: TFDAutoIncField;
    QryContasPagarENT_ID: TIntegerField;
    QryContasPagarCAT_ID: TIntegerField;
    QryContasPagarCOP_VALOR: TBCDField;
    QryContasPagarCOP_VENCIMENTO: TDateField;
    QryContasPagarCOP_DESCRICAO: TStringField;
    QryContasPagarCOP_PGTO_DATA: TDateField;
    QryContasPagarCOP_PGTO_VALOR: TBCDField;
    QryContasPagarCOP_PGTO_JURO: TBCDField;
    QryContasPagarCOP_PGTO_DESC: TBCDField;
    QryContasPagarCOP_TOTAL: TBCDField;
    QryContasPagarENT_NOME: TStringField;
    QryContasPagarCAT_DESCRICAO: TStringField;
    QryContasReceberCOR_ID: TFDAutoIncField;
    QryContasReceberENT_ID: TIntegerField;
    QryContasReceberCAT_ID: TIntegerField;
    QryContasReceberCOR_VALOR: TBCDField;
    QryContasReceberCOR_VENCIMENTO: TDateField;
    QryContasReceberCOR_DESCRICAO: TStringField;
    QryContasReceberCOR_PGTO_DATA: TDateField;
    QryContasReceberCOR_PGTO_VALOR: TBCDField;
    QryContasReceberCOR_PGTO_JURO: TBCDField;
    QryContasReceberCOR_PGTO_DESC: TBCDField;
    QryContasReceberCOR_TOTAL: TBCDField;
    QryContasReceberENT_NOME: TStringField;
    QryContasReceberCAT_NOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastro: TDmCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
