unit Ex18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm18 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.Button1Click(Sender: TObject);
var
  xVetor: Array[1..5] of integer;
  xContador: integer;
begin
  xContador := 0;

  for xContador := 1 to 5 do
    begin
      xVetor[xContador]:= StrToInt(inputbox('Idade','Informe a idade da pessoa ',''));
        if xVetor[xContador] >= 18 then
          ShowMessage('Maior de idade')
        else
          ShowMessage('Menor de idade')
    end;


end;

end.
