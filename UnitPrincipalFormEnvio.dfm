object FormGatewayMensagensPersonalizadas: TFormGatewayMensagensPersonalizadas
  Left = 0
  Top = 0
  Caption = 'FormGatewayMensagensPersonalizadas'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Panel_Principal: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 593
      Height = 185
      Caption = 'Geral .:'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 32
        Width = 80
        Height = 15
        Caption = 'Nro. Telefone .:'
      end
      object Label2: TLabel
        Left = 16
        Top = 96
        Width = 115
        Height = 15
        Caption = 'Texto de Mensagem .:'
      end
      object Label3: TLabel
        Left = 472
        Top = 32
        Width = 81
        Height = 15
        Caption = 'Tipo de Envio .:'
      end
      object Edit_nro_telefone: TEdit
        Left = 16
        Top = 53
        Width = 169
        Height = 23
        TabOrder = 0
        Text = '75988898983'
      end
      object Edit_txt_msg: TEdit
        Left = 16
        Top = 117
        Width = 537
        Height = 23
        TabOrder = 1
        Text = 'Ola Mundo, testando envio de mensagens personalizadas'
      end
      object ComboBox1: TComboBox
        Left = 400
        Top = 53
        Width = 153
        Height = 23
        TabOrder = 2
        Items.Strings = (
          'SMS via Comunic'
          'SMS via Mister Postman - rota rapida'
          'Push Notification')
      end
    end
    object Memo1: TMemo
      Left = 16
      Top = 288
      Width = 585
      Height = 145
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
    end
    object Button_Enviar: TButton
      Left = 16
      Top = 232
      Width = 177
      Height = 25
      Caption = 'Enviar '
      TabOrder = 2
      OnClick = Button_EnviarClick
    end
  end
  object RESTClient_API_Gateway_SMS: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://aceiteeletronico.mma.com.br/gateway/mmasendsms'
    Params = <>
    Left = 272
    Top = 200
  end
  object RESTRequest_API_Gateway_SMS: TRESTRequest
    Client = RESTClient_API_Gateway_SMS
    Params = <>
    Left = 272
    Top = 248
  end
  object RESTResponse_API_Gateway_SMS: TRESTResponse
    ContentType = 'application/json'
    Left = 448
    Top = 200
  end
end
