unit UFolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    Cadastro: TGroupBox;
    EdtNome: TEdit;
    EdtID: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    EdtHnormal: TEdit;
    EdtHextra: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    SalarioFinal: TLabel;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdtIDKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure EdtHextraKeyPress(Sender: TObject; var Key: Char);
    procedure EdtHnormalKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  convetem: boolean;
  convedes: real;
  salarioB: real;
  SalarioF: real;
  Imposto: real;
  inss: real;
  nome: string;
  horasExt: real;
  horasTrab: real;
  ValHext: real;
  ValHnorm: real;
  Dependentes: real;
  Dependesconto: Real;
  descontos: real;
  adicional: real;
  count: integer;

implementation

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
nome:=EdtNome.Text;
horasTrab:=strtofloat(form1.Edit3.text);
horasExt:=strtofloat(form1.Edit4.text);
ValHnorm:=strtofloat(form1.EdtHnormal.text);
ValHext:=strtofloat(form1.EdtHextra.text);
dependentes:=strtofloat(form1.Edit5.text);

case form1.CheckBox1.checked of
true:  convetem:=true;
false: convetem:=false;
end;

adicional:= ((dependentes)*(15));
salarioB:= (((horasTrab)*(ValHnorm))+((horasExt)*(ValHext)));

if ((salarioB)<(501)) then
begin
if convetem=true then
begin
convedes:=(30);
end;
imposto:=((salarioB)*0);
inss:=((salarioB)*0.05);
end;

if ((salarioB)<(1301)) and ((salarioB)>(500))  then
begin
if convetem=true then
begin
convedes:=(80);
end;
imposto:=((salarioB)*0.08);
inss:=((salarioB)*0.08);
end;

if ((salarioB)<(2701)) and ((salarioB)>(1300))  then
begin
if convetem=true then
begin
convedes:=(150);
end;
imposto:=((salarioB)*0.15);
inss:=((salarioB)*0.10);
end;

if ((salarioB)>(2701))  then
begin
if convetem=true then
begin
convedes:=(320);
end;
imposto:=((salarioB)*0.25);
inss:=((salarioB)*0.12);
end;

descontos:= ((inss)+(imposto)+(convedes));
salarioF:= ((adicional)+(salarioB)-(descontos));
form1.salarioFinal.caption:= floattostr(salarioF);
inc(count);

if (count)=1 then
begin
label10.Caption:=edtNome.text;
label20.Caption:=SalarioFinal.caption;
end;
if (count)=2 then
begin
label11.Caption:=edtNome.text;
label21.Caption:=SalarioFinal.caption;
end;
if (count)=3 then
begin
label12.Caption:=edtNome.text;
label22.Caption:=SalarioFinal.caption;
end;
if (count)=4 then
begin
label13.Caption:=edtNome.text;
label23.Caption:=SalarioFinal.caption;
end;
if (count)=5 then
begin
label14.Caption:=edtNome.text;
label24.Caption:=SalarioFinal.caption;
end;

if (count)=5 then
begin
count:=0;
end;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
form1.EdtNome.Text:='';
form1.EdtID.Text:='';
form1.EdtHnormal.Text:='';
form1.EdtHextra.Text:='';
form1.Edit3.Text:='';
form1.Edit4.Text:='';
form1.Edit5.Text:='';
form1.salarioFinal.Caption:='';
form1.CheckBox1.checked:=false;

end;

procedure TForm1.EdtIDKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

procedure TForm1.EdtHextraKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

procedure TForm1.EdtHnormalKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

end.
