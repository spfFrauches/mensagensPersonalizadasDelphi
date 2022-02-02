object FormGatewayMensagensPersonalizadas: TFormGatewayMensagensPersonalizadas
  Left = 0
  Top = 0
  Caption = 'FormGatewayMensagensPersonalizadas'
  ClientHeight = 406
  ClientWidth = 611
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
    Width = 611
    Height = 406
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 880
    ExplicitHeight = 377
    object GroupBox1: TGroupBox
      Left = 16
      Top = 24
      Width = 569
      Height = 201
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
      object Edit1: TEdit
        Left = 16
        Top = 53
        Width = 169
        Height = 23
        TabOrder = 0
        Text = '75988898983'
      end
      object Edit2: TEdit
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
  end
end
