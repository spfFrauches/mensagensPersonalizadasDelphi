unit UnitPrincipalFormEnvio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UnitEnvioSMS,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, Web.HTTPApp,
  REST.Types,  System.JSON;

type
  TFormGatewayMensagensPersonalizadas = class(TForm)
    Panel_Principal: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit_nro_telefone: TEdit;
    Label2: TLabel;
    Edit_txt_msg: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Button_Enviar: TButton;
    RESTClient_API_Gateway_SMS: TRESTClient;
    RESTRequest_API_Gateway_SMS: TRESTRequest;
    RESTResponse_API_Gateway_SMS: TRESTResponse;
    procedure Button_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGatewayMensagensPersonalizadas: TFormGatewayMensagensPersonalizadas;

implementation

{$R *.dfm}

procedure TFormGatewayMensagensPersonalizadas.Button_EnviarClick(
  Sender: TObject);

var
  enviarSMS : TEnvioSMS;
  RetornoAPI,  jsonObj : TJSONObject;

begin

    enviarSMS := TEnvioSMS.Create;

    enviarSMS.setNroCelular(Edit_nro_telefone.Text);
    enviarSMS.setTxtMsg(Edit_txt_msg.Text);

    RESTRequest_API_Gateway_SMS.Params.AddHeader('token','1020AA2020MmA2GeNE4Ic02020AA4030');

    jsonObj := TJSONObject.Create;
    jsonObj.AddPair('nrocelsms' , enviarSMS.getNroCelular);
    jsonObj.AddPair('msgtxtsms' , enviarSMS.getTxtMsg);

    RESTRequest_API_Gateway_SMS.AddBody(jsonObj);
    RESTRequest_API_Gateway_SMS.Execute;

    showMessage(enviarSMS.montarJson);

    Memo1.Clear;
    Memo1.Lines.Add(enviarSMS.montarJson);

end;

end.
