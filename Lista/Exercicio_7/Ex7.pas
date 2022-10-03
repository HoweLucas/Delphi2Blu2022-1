unit Ex7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Edit1Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}


procedure TForm7.Edit1Exit(Sender: TObject);
var
  xCelsius, xFahrenheit: double;

begin
  Edit2.Enabled := false;
  xCelsius:= StrToFloat(Edit1.Text);
  xFahrenheit:= (xCelsius * 9 + 160) / 5;
  Edit2.Text:= FloatToStr(xFahrenheit);
end;

end.
