unit Finan.Frm.Entidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fwk.Frm.Padrao.Cadastro, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Finan.Dm.Cadastro, Vcl.Mask;

type
  TFrmEntidade = class(TFwkFrmPadraoCadastro)
    LblIdentificador: TLabel;
    EdtIdentificador: TDBEdit;
    CbCliente: TDBCheckBox;
    CbFornecedor: TDBCheckBox;
    LblTipoPessoa: TLabel;
    CmbTipoPessoa: TDBComboBox;
    LblNome: TLabel;
    Label2: TLabel;
    LblCPFCNPJ: TLabel;
    LblCEP: TLabel;
    LblUF: TLabel;
    LblCidade: TLabel;
    EdtNome: TDBEdit;
    EdtEndereco: TDBEdit;
    EdtCidade: TDBEdit;
    EdtCPFCNPJ: TDBEdit;
    EdtCEP: TDBEdit;
    EdtUF: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntidade: TFrmEntidade;

implementation

{$R *.dfm}

end.
