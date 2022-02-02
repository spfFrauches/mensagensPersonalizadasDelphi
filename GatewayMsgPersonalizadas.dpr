program GatewayMsgPersonalizadas;

uses
  Vcl.Forms,
  UnitPrincipalFormEnvio in 'UnitPrincipalFormEnvio.pas' {FormGatewayMensagensPersonalizadas},
  UnitEnvioSMS in 'UnitEnvioSMS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGatewayMensagensPersonalizadas, FormGatewayMensagensPersonalizadas);
  Application.Run;
end.
