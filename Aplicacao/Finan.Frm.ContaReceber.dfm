inherited FrmContaReceber: TFrmContaReceber
  Caption = 'CADASTROS DE CONTAS A RECEBER'
  ClientHeight = 438
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited PcDados: TPageControl
    Height = 377
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 377
    inherited TabPesquisa: TTabSheet
      inherited GbResgistros: TGroupBox
        Height = 349
        inherited GrdRegistros: TDBGrid
          Height = 332
        end
      end
      inherited GbPesquisa: TGroupBox
        Height = 349
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 754
      ExplicitHeight = 341
      inherited GbEdicao: TGroupBox
        inherited DBNavigator1: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited GbRegistro: TGroupBox
        Top = 81
        Height = 265
        Align = alTop
        ExplicitTop = 85
        ExplicitHeight = 265
        object Label1: TLabel
          Left = 16
          Top = 31
          Width = 97
          Height = 13
          Caption = 'ID CONTA RECEBER'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 170
          Top = 31
          Width = 64
          Height = 13
          Caption = 'ID ENTIDADE'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 360
          Top = 31
          Width = 73
          Height = 13
          Caption = 'ID CATEGORIA'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 551
          Top = 31
          Width = 33
          Height = 13
          Caption = 'VALOR'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 16
          Top = 95
          Width = 65
          Height = 13
          Caption = 'VENCIMENTO'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 168
          Top = 95
          Width = 59
          Height = 13
          Caption = 'DESCRICAO'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 472
          Top = 95
          Width = 92
          Height = 13
          Caption = 'DATA PAGAMENTO'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 624
          Top = 95
          Width = 98
          Height = 13
          Caption = 'VALOR PAGAMENTO'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 16
          Top = 163
          Width = 92
          Height = 13
          Caption = 'JURO PAGAMENTO'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 288
          Top = 163
          Width = 120
          Height = 13
          Caption = 'DESCONTO PAGAMENTO'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 560
          Top = 163
          Width = 32
          Height = 13
          Caption = 'TOTAL'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 18
          Top = 219
          Width = 50
          Height = 13
          Caption = 'ENTIDADE'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 398
          Top = 219
          Width = 59
          Height = 13
          Caption = 'CATEGORIA'
          FocusControl = DBEdit13
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 47
          Width = 134
          Height = 21
          Color = clInfoBk
          DataField = 'COR_ID'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 170
          Top = 47
          Width = 167
          Height = 21
          Color = clInfoBk
          DataField = 'ENT_ID'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 360
          Top = 47
          Width = 170
          Height = 21
          Color = clInfoBk
          DataField = 'CAT_ID'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 551
          Top = 47
          Width = 192
          Height = 21
          DataField = 'COR_VALOR'
          DataSource = DsoRegistros
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 111
          Width = 134
          Height = 21
          DataField = 'COR_VENCIMENTO'
          DataSource = DsoRegistros
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 168
          Top = 111
          Width = 286
          Height = 21
          DataField = 'COR_DESCRICAO'
          DataSource = DsoRegistros
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 472
          Top = 111
          Width = 134
          Height = 21
          DataField = 'COR_PGTO_DATA'
          DataSource = DsoRegistros
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 624
          Top = 111
          Width = 119
          Height = 21
          DataField = 'COR_PGTO_VALOR'
          DataSource = DsoRegistros
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 16
          Top = 179
          Width = 251
          Height = 21
          DataField = 'COR_PGTO_JURO'
          DataSource = DsoRegistros
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 288
          Top = 179
          Width = 251
          Height = 21
          DataField = 'COR_PGTO_DESC'
          DataSource = DsoRegistros
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 560
          Top = 179
          Width = 183
          Height = 21
          DataField = 'COR_TOTAL'
          DataSource = DsoRegistros
          TabOrder = 10
        end
        object Button2: TButton
          Left = 326
          Top = 235
          Width = 33
          Height = 21
          Caption = '...'
          TabOrder = 11
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 710
          Top = 235
          Width = 33
          Height = 21
          Caption = '...'
          TabOrder = 12
          OnClick = Button3Click
        end
        object DBEdit12: TDBEdit
          Left = 16
          Top = 235
          Width = 306
          Height = 21
          Color = clInfoBk
          DataField = 'ENT_NOME'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 13
        end
        object DBEdit13: TDBEdit
          Left = 396
          Top = 238
          Width = 308
          Height = 21
          Color = clInfoBk
          DataField = 'CAT_DESCRICAO'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 14
        end
      end
    end
  end
  inherited BtnFechar: TButton
    Top = 397
    ExplicitTop = 397
  end
  inherited DsoRegistros: TDataSource
    DataSet = DmCadastro.QryContasReceber
    Left = 692
    Top = 48
  end
end
