unit Ex27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm27 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;

implementation
uses Math;

{$R *.dfm}

procedure TForm27.Button1Click(Sender: TObject);
var
  xValorCarro: array[0..40] of double;
  xValorDesconto: array[0..40] of double;
  xCombustivel: string;
  XValorPago: double;
  xContador: integer;

const
  c21Desc = 0.21;
  c25Desc = 0.25;
  c14Desc = 0.14;

begin
  xContador:= 0;

  repeat

    xValorCarro[xContador]:= StrToFloat(inputbox('Valor do carro',
   'Informe o valor do carro',''));
  xCombustivel:= inputbox('Combustivel do carro ',
   'Informe o combustivel do carro - G = Gasolina, A = Alcool ou D = Diesel','');

  if xCombustivel = 'G' then
    xValorDesconto[xContador]:= xValorCarro[xContador] * c21Desc
      else if xCombustivel = 'A' then
        xValorDesconto[xContador]:= xValorCarro[xContador] * c25Desc
          else xValorDesconto[xContador]:= xValorCarro[xContador] * c14Desc;

  ShowMessage('Valor do carro: R$ '+FormatFloat('#.00',xValorCarro[xContador])
  +#13+'Valor do desconto: R$ '+FormatFloat('#.00',xValorDesconto[xContador])
  +#13+'Valor pago pelo cliente: R$ '+FormatFloat('#.00',(xValorCarro[xContador] - xValorDesconto[xContador])));

  inc(xContador)

  until xValorCarro[xContador] = 0;

  xValorPago:= Sum(xValorCarro[xContador]) - Sum(xValorDesconto[xContador]);

  ShowMessage('Valor total pago pelos clientes: R$ '
  +FormatFloat('#.00',xValorPago)+#13
  +FormatFloat('#.00',xValorDesconto[xContador]))

end;

end.
