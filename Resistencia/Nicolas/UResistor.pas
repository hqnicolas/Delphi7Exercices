unit UResistor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    shpLista1: TShape;
    ShpLista2: TShape;
    ShpLista3: TShape;
    ShpLista4: TShape;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CmbTolerancia: TComboBox;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  numero: string;
  tam: integer;
  Form1: TForm1;
  zero: integer;
  cont: integer;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
    if edit1.text='Valor' then edit1.text:='1200';
    if (cmbtolerancia.ItemIndex=-1) then (cmbtolerancia.ItemIndex:=1);
    if length(Edit1.text)> 5 then edit1.Text:='1200';
    case cmbtolerancia.ItemIndex of
    0: ShpLista4.brush.color:=clMaroon;
    1: ShpLista4.brush.color:=clRed;
    2: ShpLista4.brush.color:=clLime;
    3: ShpLista4.brush.color:=clYellow;
    4: ShpLista4.brush.color:=clSilver;
    end;

  zero:=0;
  tam:=length(Edit1.text);
  numero:=Edit1.text;
  cont:=tam;
  repeat
  if numero[cont]='0'then zero:=(zero+1)
  else
  cont:=1;
  cont:=(cont-1)
  until cont=2;
   case zero of
   0:shpLista1.Brush.Color:=clBlack;
   1:shpLista1.Brush.color:=clMaroon;
   2:shpLista1.Brush.color:=clRed;
   3:shpLista1.Brush.Color:=clFuchsia;
   4:shpLista1.Brush.Color:=clYellow;
   5:shpLista1.Brush.Color:=clGreen;
   6:shpLista1.Brush.Color:=clBlue;
   7:shpLista1.Brush.Color:=clPurple;
   8:shpLista1.Brush.Color:=clGray;
   9:shpLista1.Brush.Color:=clWhite;
   10:shpLista1.Brush.Color:=clOlive;
   11:shpLista1.Brush.Color:=clSilver;
  end;

   case Edit1.Text[2] of
   '0':shpLista2.Brush.Color:=clBlack;
   '1':shpLista2.Brush.color:=clMaroon;
   '2':shpLista2.Brush.color:=clRed;
   '3':shpLista2.Brush.Color:=clFuchsia;
   '4':shpLista2.Brush.Color:=clYellow;
   '5':shpLista2.Brush.Color:=clGreen;
   '6':shpLista2.Brush.Color:=clBlue;
   '7':shpLista2.Brush.Color:=clPurple;
   '8':shpLista2.Brush.Color:=clGray;
   '9':shpLista2.Brush.Color:=clWhite;
  end;
    case Edit1.Text[1] of
   '0':shpLista3.Brush.Color:=clBlack;
   '1':shpLista3.Brush.color:=clMaroon;
   '2':shpLista3.Brush.color:=clRed;
   '3':shpLista3.Brush.Color:=clFuchsia;
   '4':shpLista3.Brush.Color:=clYellow;
   '5':shpLista3.Brush.Color:=clGreen;
   '6':shpLista3.Brush.Color:=clBlue;
   '7':shpLista3.Brush.Color:=clPurple;
   '8':shpLista3.Brush.Color:=clGray;
   '9':shpLista3.Brush.Color:=clWhite;
  end;

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  numero:='';
  tam:=0;
  zero:=0;
  cont:=0;
  Edit1.text:='Valor';
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

end.
