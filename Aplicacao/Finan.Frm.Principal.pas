unit Finan.Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Finan.Frm.Entidade, Finan.Frm.Categoria, Finan.Frm.ContaPagar,
  Finan.Frm.ContaReceber;

type
  TFrmPrincipal = class(TForm)
    TlbPrincipal: TToolBar;
    StbPrincipal: TStatusBar;
    MnmPrincipal: TMainMenu;
    TmrPrincipal: TTimer;
    ImlPrincipal: TImageList;
    ActCadEntidades: TAction;
    Cadastros1: TMenuItem;
    ActCadEntidades1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Categoria1: TMenuItem;
    AclPrincipal: TActionList;
    ActCadCategoria: TAction;
    ToolButton3: TToolButton;
    ActCadContaPagar: TAction;
    ToolButton4: TToolButton;
    ActCadContaReceber: TAction;
    procedure TmrPrincipalTimer(Sender: TObject);
    procedure ActCadEntidadesExecute(Sender: TObject);
    procedure ActCadCategoriaExecute(Sender: TObject);
    procedure ActCadContaPagarExecute(Sender: TObject);
    procedure ActCadContaReceberExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.ActCadCategoriaExecute(Sender: TObject);
var
  vFrmCateoria: TFrmCategoria;
begin
  vFrmCateoria := TFrmCategoria.Create(nil);
  try
    vFrmCateoria.ShowModal;
  finally
    FreeAndNil(vFrmCateoria);
  end;

end;

procedure TFrmPrincipal.ActCadContaPagarExecute(Sender: TObject);
var
  vFrmContaPagar: TFrmContaPagar;
begin
  vFrmContaPagar := TFrmContaPagar.Create(nil);
  try
    vFrmContaPagar.ShowModal;
  finally
    FreeAndNil(vFrmContaPagar);
  end;
end;

procedure TFrmPrincipal.ActCadContaReceberExecute(Sender: TObject);
var
  vFrmContaReceber: TFrmContaReceber;
begin
  vFrmContaReceber := TFrmContaReceber.Create(nil);
  try
    vFrmContaReceber.ShowModal;
  finally
    FreeAndNil(vFrmContaReceber);
  end;
end;

procedure TFrmPrincipal.ActCadEntidadesExecute(Sender: TObject);
var
  vFrmEntidade: TFrmEntidade;
begin
  vFrmEntidade := TFrmEntidade.Create(nil);
  try
    vFrmEntidade.ShowModal;
  finally
    FreeAndNil(vFrmEntidade);
  end;
end;

procedure TFrmPrincipal.TmrPrincipalTimer(Sender: TObject);
begin
  StbPrincipal.Panels[0].Text := 'Data e Hora Atual: ' +
    FormatDateTime('c', Now);
end;

end.
