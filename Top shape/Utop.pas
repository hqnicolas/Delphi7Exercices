unit Utop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Painel: TPanel;
    Tshape: TShape;
    EdtTop: TEdit;
    Label1: TLabel;
    EdtLeft: TEdit;
    Label2: TLabel;
    edtWidth: TEdit;
    Label3: TLabel;
    edtheight: TEdit;
    Label4: TLabel;
    BtnAplicar: TButton;
    BtnFechar: TButton;
    RdoCores: TRadioGroup;
    RdoFormas: TRadioGroup;
    ClrBox: TColorBox;
    FrmBox: TComboBox;
    procedure RdoCoresClick(Sender: TObject);
    procedure RdoFormasClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure EdtTopClick(Sender: TObject);
    procedure edtWidthClick(Sender: TObject);
    procedure edtheightClick(Sender: TObject);
    procedure EdtLeftClick(Sender: TObject);
    procedure BtnAplicarClick(Sender: TObject);
    procedure ClrBoxChange(Sender: TObject);
    procedure FrmBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RdoCoresClick(Sender: TObject);
begin
 case Rdocores.ItemIndex of
  0: TShape.Brush.Color:=clblue;
  1: Tshape.Brush.color:=clyellow;
  2: TShape.brush.Color:=clwhite;
  3: TShape.brush.color:=clred;
  4: TShape.brush.color:=clgreen;
  end;
end;

procedure TForm1.RdoFormasClick(Sender: TObject);
begin
 case RdoFormas.ItemIndex of
  0: TShape.Shape:=StRoundRect;
  1: TShape.Shape:=StEllipse;
  2: TShape.Shape:=StRectangle;
 end;

  end;
procedure TForm1.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.EdtTopClick(Sender: TObject);
begin
edtTop.text:='';
end;

procedure TForm1.edtWidthClick(Sender: TObject);
begin
edtwidth.text:='';
end;

procedure TForm1.edtheightClick(Sender: TObject);
begin
edtheight.text:='';
end;

procedure TForm1.EdtLeftClick(Sender: TObject);
begin
edtleft.text:='';
end;

procedure TForm1.BtnAplicarClick(Sender: TObject);
Var
  num,erro:integer;
begin
     if  edtTop.text>inttostr((Painel.height)-(Tshape.height))then
       edtTop.text:=inttostr(Tshape.top);
       Tshape.top:=strtoint(edtTop.text);

     if  edtLeft.text>inttostr((Painel.Width)-(Tshape.Width))then
       edtLeft.text:=inttostr(Tshape.Left);
       Tshape.Left:=strtoint(edtLeft.text);

     if  edtWidth.text>inttostr((Painel.Width)-(Tshape.Left))then
       edtWidth.text:=inttostr(Tshape.Width);
       Tshape.Width:=strtoint(edtWidth.text);

     if  edtheight.text>inttostr((Painel.height)-(Tshape.Top))then
       edtheight.text:=inttostr(Tshape.height);
       Tshape.height:=strtoint(edtheight.text);

    val (edtTop.text,num,erro);
  If erro>0 then
    edtTop.text:=inttostr(Tshape.top);
  Tshape.top:=strtoint(edtTop.text);


    val (edtleft.text,num,erro);
  If erro>0 then
    edtleft.text:=inttostr(Tshape.left);
    Tshape.left:=strtoint(edtleft.text);


    val (edtwidth.text,num,erro);
  If erro>0 then
    edtwidth.text:=inttostr(Tshape.width);
    Tshape.width:=strtoint(edtwidth.text);


  val (edtheight.text,num,erro);
  If erro>0 then
    edtheight.text:=inttostr(Tshape.height);
    Tshape.height:=strtoint(edtheight.text);

end;

procedure TForm1.ClrBoxChange(Sender: TObject);
begin
Tshape.Brush.color:=ClrBox.Selected;
end;

procedure TForm1.FrmBoxChange(Sender: TObject);
begin
case FrmBox.ItemIndex of
  0: TShape.Shape:=StRoundRect;
  1: TShape.Shape:=StEllipse;
  2: TShape.Shape:=StRectangle;
end;
end;

end.
