  unit UFormas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmFormas = class(TForm)
    FrmFormas: TRadioGroup;
    FrmCores: TRadioGroup;
    frm: TShape;
    procedure FrmCoresClick(Sender: TObject);
    procedure FrmFormasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormas: TFrmFormas;

implementation

{$R *.dfm}

procedure TFrmFormas.FrmCoresClick(Sender: TObject);
begin
 case frmcores.ItemIndex of
  0: frm.Brush.Color:=clyellow;
  1: frm.Brush.color:=clred;
  2: frm.brush.Color:=clblue;
  3: frm.brush.color:=clgreen;
  end;
end;

procedure TFrmFormas.FrmFormasClick(Sender: TObject);
begin
  case frmFormas.ItemIndex of
    0: frm.shape:=StRectangle;
    1: frm.shape:=stCircle;
  end;
end;
end.
