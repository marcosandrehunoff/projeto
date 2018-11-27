program PrjFinanceiro;

uses
  Vcl.Forms,
  Finan.Frm.Principal in 'Finan.Frm.Principal.pas' {FrmPrincipal},
  Fwk.Dm.Padrao.Dados in 'C:\Framework\Fwk.Dm.Padrao.Dados.pas' {FwkDmPadraoDados: TDataModule},
  Fwk.Dm.Padrao.Database in 'C:\Framework\Fwk.Dm.Padrao.Database.pas' {FwkDmPadraoDatabase: TDataModule},
  Fwk.Frm.Padrao.Base in 'C:\Framework\Fwk.Frm.Padrao.Base.pas' {FwkFrmPadraoBase},
  Fwk.Frm.Padrao.Cadastro in 'C:\Framework\Fwk.Frm.Padrao.Cadastro.pas' {FwkFrmPadraoCadastro},
  Fwk.Frm.Padrao.Pesquisa in 'C:\Framework\Fwk.Frm.Padrao.Pesquisa.pas' {FwkFrmPadraoPesquisa},
  Fwk.Frm.Padrao.Principal in 'C:\Framework\Fwk.Frm.Padrao.Principal.pas' {FwkFrmPadraoPrincipal},
  Finan.Dm.Conexao in 'Finan.Dm.Conexao.pas' {DmConexao: TDataModule},
  Finan.Dm.Cadastro in 'Finan.Dm.Cadastro.pas' {DmCadastro: TDataModule},
  Finan.Frm.Entidade in 'Finan.Frm.Entidade.pas' {FrmEntidade},
  Finan.Frm.Categoria in 'Finan.Frm.Categoria.pas' {FrmCategoria},
  Finan.Frm.ContaPagar in 'Finan.Frm.ContaPagar.pas' {FrmContaPagar},
  Finan.Frm.ContaReceber in 'Finan.Frm.ContaReceber.pas' {FrmContaReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmCadastro, DmCadastro);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmContaReceber, FrmContaReceber);
  Application.Run;
end.
