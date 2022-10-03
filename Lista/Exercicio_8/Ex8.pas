unit Ex8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
  xValorDolar, xCotacaoDolar: double;

begin
  xValorDolar:= StrToFloat(Edit1.Text);
  xCotacaoDolar:= StrToFloat(Edit2.Text);
  //xValorReal:= xValorDolar * xCotacaoDolar;
  Edit3.Text:= FormatFloat('#.00',(xValorDolar * xCotacaoDolar));

end;

end.
