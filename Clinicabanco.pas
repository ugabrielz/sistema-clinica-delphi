unit Clinicabanco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM1 = class(TDataModule)
    conexao: TFDConnection;
    tbPacientes: TFDTable;
    tbAgendamento: TFDTable;
    dsPaciente: TDataSource;
    dsAgendamento: TDataSource;
    tbPacientesid: TFDAutoIncField;
    tbPacientesnome: TStringField;
    tbPacientescpf: TStringField;
    tbPacientescelular: TStringField;
    tbPacientesdata_cadastro: TDateField;
    procedure tbPacientesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM1.tbPacientesAfterInsert(DataSet: TDataSet);
begin
  tbPacientesdata_cadastro.Value := Date();
end;

end.
