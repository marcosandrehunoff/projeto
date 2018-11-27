unit Finan.Frm.Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fwk.Frm.Padrao.Cadastro, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Finan.Dm.Cadastro, Vcl.Mask;

type
  TFrmCategoria = class(TFwkFrmPadraoCadastro)
    EdtID: TDBEdit;
    EdtDescricao: TDBEdit;
    CmbTipo: TDBComboBox;
    LblID: TLabel;
    LblDescricao: TLabel;
    LblTipo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCategoria: TFrmCategoria;

implementation

{$R *.dfm}

end.
