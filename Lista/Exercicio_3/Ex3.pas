unit Ex3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Resultado: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  xDistancia, xConsumo, xMedia: double;

begin
  xDistancia := StrtoFloat(Edit1.Text);
  xConsumo   := StrToFloat(Edit2.Text);
  xMedia     := xDistancia / xConsumo;
  Resultado.Caption := ('A m�dia de consumo do ve�culo � de '+
    FormatFloat('0.##',xMedia)+' km/L')

end;


end.
