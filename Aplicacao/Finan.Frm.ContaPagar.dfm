inherited FrmContaPagar: TFrmContaPagar
  Caption = 'CADASTROS DE CONTAS A PAGAR'
  ClientWidth = 774
  ExplicitWidth = 790
  PixelsPerInch = 96
  TextHeight = 13
  inherited PcDados: TPageControl
    Width = 774
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 774
    inherited TabPesquisa: TTabSheet
      ExplicitWidth = 766
      inherited GbResgistros: TGroupBox
        Left = 291
        ExplicitLeft = 291
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 766
      ExplicitHeight = 341
      inherited GbEdicao: TGroupBox
        Width = 766
        ExplicitWidth = 766
        inherited DBNavigator1: TDBNavigator
          Width = 762
          Hints.Strings = ()
          ExplicitWidth = 762
        end
      end
      inherited GbRegistro: TGroupBox
        Top = 89
        Width = 766
        Height = 252
        ExplicitTop = 89
        ExplicitWidth = 766
        ExplicitHeight = 252
        object Label1: TLabel
          Left = 12
          Top = 18
          Width = 61
          Height = 13
          Caption = 'Identificador'
        end
        object Label2: TLabel
          Left = 108
          Top = 18
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label3: TLabel
          Left = 236
          Top = 18
          Width = 55
          Height = 13
          Caption = 'Vencimento'
        end
        object Label4: TLabel
          Left = 439
          Top = 18
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label5: TLabel
          Left = 12
          Top = 94
          Width = 80
          Height = 13
          Caption = 'Data Pagamento'
        end
        object Label6: TLabel
          Left = 161
          Top = 94
          Width = 81
          Height = 13
          Caption = 'Pagamento Valor'
        end
        object Label7: TLabel
          Left = 320
          Top = 94
          Width = 78
          Height = 13
          Caption = 'Pagamento Juro'
        end
        object Label8: TLabel
          Left = 453
          Top = 94
          Width = 103
          Height = 13
          Caption = 'Pagamento Descri'#231#227'o'
        end
        object Label9: TLabel
          Left = 12
          Top = 158
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object Label11: TLabel
          Left = 199
          Top = 158
          Width = 96
          Height = 13
          Caption = 'Categoria Descri'#231#227'o'
          FocusControl = DBEdit11
        end
        object Label10: TLabel
          Left = 12
          Top = 200
          Width = 72
          Height = 13
          Caption = 'Nome Entidade'
          FocusControl = DBEdit10
        end
        object DBEdit1: TDBEdit
          Left = 12
          Top = 33
          Width = 80
          Height = 21
          Color = clInfoBk
          DataField = 'COP_ID'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 108
          Top = 33
          Width = 109
          Height = 21
          DataField = 'COP_VALOR'
          DataSource = DsoRegistros
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 236
          Top = 33
          Width = 181
          Height = 21
          DataField = 'COP_VENCIMENTO'
          DataSource = DsoRegistros
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 439
          Top = 33
          Width = 298
          Height = 21
          DataField = 'COP_DESCRICAO'
          DataSource = DsoRegistros
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 12
          Top = 109
          Width = 131
          Height = 21
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 161
          Top = 109
          Width = 137
          Height = 21
          DataField = 'COP_PGTO_VALOR'
          DataSource = DsoRegistros
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 318
          Top = 109
          Width = 112
          Height = 21
          DataField = 'COP_PGTO_JURO'
          DataSource = DsoRegistros
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 453
          Top = 109
          Width = 284
          Height = 21
          DataField = 'COP_PGTO_DESC'
          DataSource = DsoRegistros
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 12
          Top = 173
          Width = 181
          Height = 21
          DataField = 'COP_TOTAL'
          DataSource = DsoRegistros
          TabOrder = 8
        end
        object DBEdit11: TDBEdit
          Left = 199
          Top = 173
          Width = 490
          Height = 21
          Color = clInfoBk
          DataField = 'CAT_DESCRICAO'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 9
        end
        object Button1: TButton
          Left = 695
          Top = 171
          Width = 45
          Height = 25
          Caption = '...'
          TabOrder = 10
          OnClick = Button1Click
        end
        object DBEdit10: TDBEdit
          Left = 12
          Top = 215
          Width = 415
          Height = 21
          Color = clInfoBk
          DataField = 'ENT_NOME'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 11
        end
        object Button2: TButton
          Left = 433
          Top = 213
          Width = 45
          Height = 25
          Caption = '...'
          TabOrder = 12
          OnClick = Button2Click
        end
      end
    end
  end
  inherited DsoRegistros: TDataSource
    DataSet = DmCadastro.QryContasPagar
    Left = 684
    Top = 80
  end
end
