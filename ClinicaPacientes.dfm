object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 562
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object ID: TLabel
    Left = 32
    Top = 173
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object CPF: TLabel
    Left = 200
    Top = 173
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object NOME: TLabel
    Left = 32
    Top = 243
    Width = 100
    Height = 15
    Caption = 'NOME COMPLETO'
  end
  object Label5: TLabel
    Left = 32
    Top = 309
    Width = 49
    Height = 15
    Caption = 'CELULAR'
  end
  object Label6: TLabel
    Left = 32
    Top = 383
    Width = 93
    Height = 15
    Caption = 'DATA CADASTRO'
  end
  object Label2: TLabel
    Left = 448
    Top = 143
    Width = 100
    Height = 15
    Caption = 'BUSCAR PACIENTE'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 873
    object Label1: TLabel
      Left = 24
      Top = 43
      Width = 233
      Height = 32
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 32
      Top = 128
      Width = 121
      Height = 23
      TabOrder = 0
      Text = 'Edit1'
    end
    object DBNavigator1: TDBNavigator
      Left = 384
      Top = 52
      Width = 370
      Height = 25
      DataSource = DM1.dsPaciente
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 448
    Top = 193
    Width = 401
    Height = 361
    DataSource = DM1.dsPaciente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_cadastro'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 194
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = DM1.dsPaciente
    TabOrder = 2
  end
  object TDBEdit
    Left = 200
    Top = 194
    Width = 121
    Height = 23
    DataField = 'cpf'
    DataSource = DM1.dsPaciente
    MaxLength = 14
    TabOrder = 3
  end
  object TDBEdit
    Left = 32
    Top = 264
    Width = 289
    Height = 23
    DataField = 'nome'
    DataSource = DM1.dsPaciente
    TabOrder = 4
  end
  object TDBEdit
    Left = 32
    Top = 330
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM1.dsPaciente
    MaxLength = 14
    TabOrder = 5
  end
  object TDBEdit
    Left = 32
    Top = 404
    Width = 121
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM1.dsPaciente
    ReadOnly = True
    TabOrder = 6
  end
  object txtBusca: TEdit
    Left = 448
    Top = 164
    Width = 401
    Height = 23
    TabOrder = 7
    OnChange = txtBuscaChange
  end
end
