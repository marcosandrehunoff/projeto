inherited FrmEntidade: TFrmEntidade
  Caption = 'CADASTRO DE ENTIDADES'
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
        object LblIdentificador: TLabel
          Left = 17
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Identificador'
        end
        object LblTipoPessoa: TLabel
          Left = 351
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Tipo Pessoa'
        end
        object LblNome: TLabel
          Left = 17
          Top = 88
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label2: TLabel
          Left = 16
          Top = 137
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object LblCidade: TLabel
          Left = 16
          Top = 188
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object LblCPFCNPJ: TLabel
          Left = 536
          Top = 88
          Width = 48
          Height = 13
          Caption = 'CPF/CNPJ'
        end
        object LblCEP: TLabel
          Left = 536
          Top = 137
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object LblUF: TLabel
          Left = 536
          Top = 188
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object EdtIdentificador: TDBEdit
          Left = 16
          Top = 39
          Width = 121
          Height = 21
          Color = clInfoBk
          DataField = 'ENT_ID'
          DataSource = DsoRegistros
          Enabled = False
          TabOrder = 0
        end
        object CbCliente: TDBCheckBox
          Left = 160
          Top = 43
          Width = 97
          Height = 17
          Caption = 'Cliente'
          DataField = 'ENT_CLIENTE'
          DataSource = DsoRegistros
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CbFornecedor: TDBCheckBox
          Left = 248
          Top = 43
          Width = 97
          Height = 17
          Caption = 'Fornecedor'
          DataField = 'ENT_FORNECEDOR'
          DataSource = DsoRegistros
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CmbTipoPessoa: TDBComboBox
          Left = 351
          Top = 39
          Width = 145
          Height = 21
          DataField = 'ENT_TIPO_PESSOA'
          DataSource = DsoRegistros
          Items.Strings = (
            'F'
            'J')
          TabOrder = 3
        end
        object EdtNome: TDBEdit
          Left = 16
          Top = 103
          Width = 514
          Height = 21
          DataField = 'ENT_NOME'
          DataSource = DsoRegistros
          TabOrder = 4
        end
        object EdtEndereco: TDBEdit
          Left = 16
          Top = 152
          Width = 514
          Height = 21
          DataField = 'ENT_ENDERECO'
          DataSource = DsoRegistros
          TabOrder = 5
        end
        object EdtCidade: TDBEdit
          Left = 16
          Top = 203
          Width = 514
          Height = 21
          DataField = 'ENT_CIDADE'
          DataSource = DsoRegistros
          TabOrder = 6
        end
        object EdtCPFCNPJ: TDBEdit
          Left = 536
          Top = 103
          Width = 201
          Height = 21
          DataField = 'ENT_CPFCNPJ'
          DataSource = DsoRegistros
          TabOrder = 7
        end
        object EdtCEP: TDBEdit
          Left = 536
          Top = 152
          Width = 201
          Height = 21
          DataField = 'ENT_CEP'
          DataSource = DsoRegistros
          TabOrder = 8
        end
        object EdtUF: TDBEdit
          Left = 536
          Top = 203
          Width = 52
          Height = 21
          DataField = 'ENT_UF'
          DataSource = DsoRegistros
          TabOrder = 9
        end
      end
    end
  end
  inherited DsoRegistros: TDataSource
    DataSet = DmCadastro.QryEntidade
    Left = 700
    Top = 32
  end
end
