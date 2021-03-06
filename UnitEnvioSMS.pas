unit UnitEnvioSMS;

interface

uses System.Classes, System.JSON;

type

  TEnvioSMS = class

  private
    nroCelular : String;
    txtMsg : String;

  public
    function getNroCelular : String ;
    function getTxtMsg : String ;

    procedure setNroCelular (fValor : String);
    procedure setTxtMsg (fValor : String);

    function montarJson : String ;

  end;

implementation

function TEnvioSMS.getNroCelular: String;
begin
  result := nroCelular;
end;

function TEnvioSMS.getTxtMsg: string;
begin
  result := txtMsg;
end;

procedure TEnvioSMS.setNroCelular(fValor: string);
begin
  nroCelular := fValor;
end;

procedure TEnvioSMS.setTxtMsg(fValor: string);
begin
  txtMsg := fValor;
end;


function TEnvioSMS.montarJson;
var
  jsonObjEnvio : TJSONObject;
begin

    jsonObjEnvio:= TJSONObject.Create;
    jsonObjEnvio.AddPair('fone' , nroCelular );
    jsonObjEnvio.AddPair('txtmsg' , txtMsg);

    result :=  jsonObjEnvio.ToString;

end;

end.
