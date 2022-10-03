unit Ex5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    procedure Edit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Edit4Exit(Sender: TObject);
var
  xAluno: string;
  xNota1, xNota2, xNota3, xMedia: double;
begin
  xAluno:= Edit1.Text;
  xNota1:= StrToFloat(Edit2.Text);
  xNota2:= StrToFloat(Edit3.Text);
  xNota3:= StrToFloat(Edit4.Text);
  XMedia:= (xNota1 + xNota2 + xNota3) / 3;
  Label5.Caption:= ('A m�dia do aluno � '+FormatFloat('#.00',xMedia));

  if xMedia >= 7.5 then
    Label6.Caption:= 'Aprovado'

  else
    Label6.Caption:= 'Reprovado'

end;

end.
