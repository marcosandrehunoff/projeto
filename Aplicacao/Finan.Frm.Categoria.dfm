inherited FrmCategoria: TFrmCategoria
  Caption = 'Cadastro de Categoria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PcDados: TPageControl
    ExplicitLeft = 0
    ExplicitTop = 0
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
        object LblID: TLabel
          Left = 18
          Top = 77
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object LblDescricao: TLabel
          Left = 176
          Top = 77
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object LblTipo: TLabel
          Left = 504
          Top = 77
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object EdtID: TDBEdit
          Left = 25
          Top = 96
          Width = 145
          Height = 21
          Color = clInfoBk
          DataField = 'CAT_ID'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 0
        end
        object EdtDescricao: TDBEdit
          Left = 176
          Top = 96
          Width = 313
          Height = 21
          DataField = 'CAT_DESCRICAO'
          DataSource = DsoRegistros
          TabOrder = 1
        end
        object CmbTipo: TDBComboBox
          Left = 504
          Top = 96
          Width = 233
          Height = 21
          DataField = 'CAT_TIPO'
          DataSource = DsoRegistros
          Items.Strings = (
            'R'
            'D')
          TabOrder = 2
        end
      end
    end
  end
  inherited DsoRegistros: TDataSource
    DataSet = DmCadastro.QryCategoria
    Left = 580
    Top = 112
  end
end
