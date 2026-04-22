unit ClinicaPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    ID: TLabel;
    CPF: TLabel;
    NOME: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    txtBusca: TEdit;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Clinicabanco;

procedure TForm2.txtBuscaChange(Sender: TObject);
begin
  DM1.tbPacientes.Locate('nome',txtBusca.Text,[loPartialKey]);
end;

end.
