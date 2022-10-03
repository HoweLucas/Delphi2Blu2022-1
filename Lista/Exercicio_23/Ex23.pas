unit Ex23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm23 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

procedure TForm23.Button1Click(Sender: TObject);
var
  xNumero: double;

begin
  xNumero:= StrToFloat(Edit1.Text);
  if (xNumero > 80.0) or (xNumero < 25.0) or (xNumero = 40.0)then
    ShowMessage('Este n�mero � premiado pelo algoritmo!')
    else
      ShowMessage('Infelizmente este n�mero n�o � premiado')

end;

end.
