program Clinicaa;

uses
  Vcl.Forms,
  Clinica in 'Clinica.pas' {Form1},
  ClinicaPacientes in 'ClinicaPacientes.pas' {Form2},
  ClinicaAgendamentos in 'ClinicaAgendamentos.pas' {Form3},
  Clinicabanco in 'Clinicabanco.pas' {DM1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
