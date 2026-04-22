object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 572
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label2: TLabel
    Left = 48
    Top = 211
    Width = 45
    Height = 15
    Caption = 'MEDICO'
  end
  object Label3: TLabel
    Left = 48
    Top = 155
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 48
    Top = 267
    Width = 29
    Height = 15
    Caption = 'DATA'
  end
  object Label6: TLabel
    Left = 48
    Top = 323
    Width = 33
    Height = 15
    Caption = 'HORA'
  end
  object Label5: TLabel
    Left = 224
    Top = 155
    Width = 67
    Height = 15
    Caption = 'ID PACIENTE'
  end
  object Label7: TLabel
    Left = 224
    Top = 211
    Width = 83
    Height = 15
    Caption = 'ESPECIALIDADE'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 883
    object Label1: TLabel
      Left = 32
      Top = 43
      Width = 174
      Height = 32
      Caption = 'AGENDAMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 384
      Top = 52
      Width = 380
      Height = 25
      DataSource = DM1.dsAgendamento
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 176
    Width = 145
    Height = 23
    DataField = 'id'
    DataSource = DM1.dsAgendamento
    TabOrder = 1
  end
  object TDBEdit
    Left = 48
    Top = 232
    Width = 145
    Height = 23
    DataField = 'medico'
    DataSource = DM1.dsAgendamento
    TabOrder = 2
  end
  object TDBEdit
    Left = 48
    Top = 288
    Width = 145
    Height = 23
    DataField = 'data'
    DataSource = DM1.dsAgendamento
    TabOrder = 3
  end
  object TDBEdit
    Left = 48
    Top = 344
    Width = 145
    Height = 23
    DataField = 'hora'
    DataSource = DM1.dsAgendamento
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 424
    Top = 155
    Width = 393
    Height = 358
    DataSource = DM1.dsAgendamento
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'especialidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'medico'
        Visible = True
      end>
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 224
    Top = 176
    Width = 145
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM1.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM1.dsPaciente
    TabOrder = 6
  end
  object DBComboBox: TDBComboBox
    Left = 224
    Top = 232
    Width = 145
    Height = 23
    Items.Strings = (
      'CARDIOLOGISTA'
      'DERMATOLOGISTA'
      'ENFERMEIRO'
      'FISIOTERAPEUTA'
      'PSIQUIATRA')
    TabOrder = 7
  end
end
