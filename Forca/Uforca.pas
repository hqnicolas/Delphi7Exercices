unit Uforca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, StdCtrls;

type
  TGmeForca = class(TForm)
    TcdPainel: TPanel;
    FrcPainel: TPanel;
    BtnB: TSpeedButton;
    BtnC: TSpeedButton;
    BtnD: TSpeedButton;
    BtnE: TSpeedButton;
    BtnF: TSpeedButton;
    BtnG: TSpeedButton;
    BtnH: TSpeedButton;
    Btni: TSpeedButton;
    BtnJ: TSpeedButton;
    BtnK: TSpeedButton;
    BtnL: TSpeedButton;
    BtnM: TSpeedButton;
    BtnO: TSpeedButton;
    BtnP: TSpeedButton;
    BtnQ: TSpeedButton;
    BtnR: TSpeedButton;
    BtnS: TSpeedButton;
    BtnT: TSpeedButton;
    BtnU: TSpeedButton;
    BtnV: TSpeedButton;
    BtnX: TSpeedButton;
    BtnY: TSpeedButton;
    BtnW: TSpeedButton;
    BtnA: TSpeedButton;
    BtnZ: TSpeedButton;
    ImgLevel0: TImage;
    imgLevel7: TImage;
    imgLevel1: TImage;
    ImgLevel2: TImage;
    ImgLevel3: TImage;
    ImgLevel4: TImage;
    ImgLevel5: TImage;
    ImgLevel6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    BtnVoltar: TBitBtn;
    BtnOK: TBitBtn;
    CheckBox1: TCheckBox;
    Button1: TButton;
    edit1: TEdit;
    BtnN: TSpeedButton;
    GmvOver: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BtnAClick(Sender: TObject);
    procedure BtnBClick(Sender: TObject);
    procedure BtnCClick(Sender: TObject);
    procedure BtnDClick(Sender: TObject);
    procedure BtnEClick(Sender: TObject);
    procedure BtnFClick(Sender: TObject);
    procedure BtnGClick(Sender: TObject);
    procedure BtnHClick(Sender: TObject);
    procedure BtniClick(Sender: TObject);
    procedure BtnJClick(Sender: TObject);
    procedure BtnKClick(Sender: TObject);
    procedure BtnLClick(Sender: TObject);
    procedure BtnMClick(Sender: TObject);
    procedure BtnOClick(Sender: TObject);
    procedure BtnPClick(Sender: TObject);
    procedure BtnQClick(Sender: TObject);
    procedure BtnRClick(Sender: TObject);
    procedure BtnSClick(Sender: TObject);
    procedure BtnTClick(Sender: TObject);
    procedure BtnUClick(Sender: TObject);
    procedure BtnVClick(Sender: TObject);
    procedure BtnXClick(Sender: TObject);
    procedure BtnYClick(Sender: TObject);
    procedure BtnZClick(Sender: TObject);
    procedure BtnWClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure edit1Click(Sender: TObject);
    procedure GmvOverClick(Sender: TObject);
  private
     Procedure Verifica(Letra:char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Win: byte;
  Tam: byte;
  Plv,Spc: string;
  GmeForca: TGmeForca;

implementation

{$R *.dfm}

Procedure TGmeForca.Verifica(Letra:char);
  var
  i :byte;
  error: boolean;
    begin
     error:=true;
      for i := 1 to tam do
      begin
       if plv[i] = letra then
         begin
           Spc[i+i-1] := letra;
           error:=false;
         end;
      end;
  if error=false then Win:=win+1;
   if error and(ImgLevel1.Visible=false) then
   begin
   ImgLevel1.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;
   if (tam<win)then
   begin
   gmvOver.Visible:=true;
   Label3.Visible:=true;
   end;
   if error and(ImgLevel1.Visible=true) and(ImgLevel2.Visible=false) then
   begin
   ImgLevel2.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;

   if error and(ImgLevel2.Visible=true) and(ImgLevel3.Visible=false) then
   begin
   ImgLevel3.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;

   if error and(ImgLevel3.Visible=true) and(ImgLevel4.Visible=false) then
   begin
   ImgLevel4.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;
   if error and(ImgLevel4.Visible=true) and(ImgLevel5.Visible=false) then
   begin
   ImgLevel5.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;
   if error and(ImgLevel5.Visible=true) and(ImgLevel6.Visible=false) then
   begin
   ImgLevel6.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;
   label1.Caption:=spc;
   
   if error and(ImgLevel6.Visible=true) and(ImgLevel7.Visible=false) then
   begin
   ImgLevel7.Visible:=true;
   label2.Caption:=label2.Caption+letra;
   error:=false;
   end;
   label1.Caption:=spc;

   if (ImgLevel7.Visible=true) then
   begin
   label1.visible:=false;
   label2.Visible:=false;
   GmvOver.visible:=true;
   label4.Visible:=true;
   end;

end;

procedure TGmeForca.BtnAClick(Sender: TObject);
begin
  Verifica('A');
  BtnA.Enabled:=False;
  win:=(win+1);
end;

procedure TGmeForca.BtnBClick(Sender: TObject);
begin
  Verifica('B');
  BtnB.Enabled:=False;
end;

procedure TGmeForca.BtnCClick(Sender: TObject);
begin
  Verifica('C');
  BtnC.Enabled:=False;
end;

procedure TGmeForca.BtnDClick(Sender: TObject);
begin
  Verifica('D');
  BtnD.Enabled:=False;
end;

procedure TGmeForca.BtnEClick(Sender: TObject);
begin
  Verifica('E');
  BtnE.Enabled:=False;
end;

procedure TGmeForca.BtnFClick(Sender: TObject);
begin
  Verifica('F');
  BtnF.Enabled:=False;
end;

procedure TGmeForca.BtnGClick(Sender: TObject);
begin
  Verifica('G');
  BtnG.Enabled:=False;
end;

procedure TGmeForca.BtnHClick(Sender: TObject);
begin
  Verifica('H');
  BtnH.Enabled:=False;
end;

procedure TGmeForca.BtniClick(Sender: TObject);
begin
  Verifica('I');
  BtnI.Enabled:=False;
end;

procedure TGmeForca.BtnJClick(Sender: TObject);
begin
  Verifica('J');
  BtnJ.Enabled:=False;
end;

procedure TGmeForca.BtnKClick(Sender: TObject);
begin
  Verifica('K');
  BtnK.Enabled:=False;
end;

procedure TGmeForca.BtnLClick(Sender: TObject);
begin
  Verifica('L');
  BtnL.Enabled:=False;
end;

procedure TGmeForca.BtnMClick(Sender: TObject);
begin
  Verifica('M');
  BtnM.Enabled:=False;
end;

procedure TGmeForca.BtnOClick(Sender: TObject);
begin
  Verifica('O');
  BtnO.Enabled:=False;
end;

procedure TGmeForca.BtnPClick(Sender: TObject);
begin
  Verifica('P');
  BtnP.Enabled:=False;
end;

procedure TGmeForca.BtnQClick(Sender: TObject);
begin
  Verifica('Q');
  BtnQ.Enabled:=False;
end;

procedure TGmeForca.BtnRClick(Sender: TObject);
begin
  Verifica('R');
  BtnR.Enabled:=False;
end;

procedure TGmeForca.BtnSClick(Sender: TObject);
begin
  Verifica('S');
  BtnS.Enabled:=False;
end;

procedure TGmeForca.BtnTClick(Sender: TObject);
begin
  Verifica('T');
  BtnT.Enabled:=False;
end;

procedure TGmeForca.BtnUClick(Sender: TObject);
begin
  Verifica('U');
  BtnU.Enabled:=False;
end;

procedure TGmeForca.BtnVClick(Sender: TObject);
begin
  Verifica('V');
  BtnV.Enabled:=False;
end;

procedure TGmeForca.BtnXClick(Sender: TObject);
begin
  Verifica('X');
  BtnX.Enabled:=False;
end;

procedure TGmeForca.BtnYClick(Sender: TObject);
begin
  Verifica('Y');
  BtnY.Enabled:=False;
end;

procedure TGmeForca.BtnZClick(Sender: TObject);
begin
  Verifica('Z');
  BtnZ.Enabled:=False;
end;

procedure TGmeForca.BtnWClick(Sender: TObject);
begin
  Verifica('N');
  BtnW.Enabled:=False;
end;

procedure TGmeForca.BtnOKClick(Sender: TObject);
var
 i : byte;
begin
   win:=0;
   spc:='';
   plv:=trim(edit1.Text);
   tam:=length(plv);
   for i:=1 to tam do
      if plv[i]<> ' ' then
         spc:= spc+'_ '
      else
         spc:= spc+'  ';
   label1.Caption:=spc;
   TcdPainel.Visible:=false;
   FrcPainel.Visible:=true;
   GmvOver.visible:=false;
   label3.visible:=false;
   label4.visible:=false;
   label1.visible:=true;
   label2.Visible:=true;
   btnVoltar.Visible:=true;
  BtnA.Enabled:=True;
  BtnB.Enabled:=True;
  BtnC.Enabled:=True;
  BtnD.Enabled:=True;
  BtnE.Enabled:=True;
  BtnF.Enabled:=True;
  BtnG.Enabled:=True;
  BtnH.Enabled:=True;
  BtnI.Enabled:=True;
  BtnJ.Enabled:=True;
  BtnK.Enabled:=True;
  BtnL.Enabled:=True;
  BtnM.Enabled:=True;
  BtnN.Enabled:=True;
  BtnO.Enabled:=True;
  BtnP.Enabled:=True;
  BtnQ.Enabled:=True;
  BtnR.Enabled:=True;
  BtnS.Enabled:=True;
  BtnT.Enabled:=True;
  BtnU.Enabled:=True;
  BtnV.Enabled:=True;
  BtnX.Enabled:=True;
  BtnZ.Enabled:=True;
  BtnW.Enabled:=True;
  BtnY.Enabled:=True;

end;


procedure TGmeForca.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked then
       edit1.PasswordChar:='?'
    else
       edit1.PasswordChar:=#0;
end;

procedure TGmeForca.BtnVoltarClick(Sender: TObject);
begin
  TcdPainel.Visible:=true;
  ImgLevel1.Visible:=false;
  ImgLevel2.Visible:=false;
  ImgLevel3.Visible:=false;
  ImgLevel4.Visible:=false;
  ImgLevel5.Visible:=false;
  ImgLevel6.Visible:=false;
  ImgLevel7.Visible:=false;
  edit1.text:='';
  Label1.caption:='';
  Label2.caption:='';
   if (TcdPainel.visible=True) then
   begin
  BtnA.Enabled:=false;
  BtnB.Enabled:=false;
  BtnC.Enabled:=false;
  BtnD.Enabled:=false;
  BtnE.Enabled:=false;
  BtnF.Enabled:=false;
  BtnG.Enabled:=false;
  BtnH.Enabled:=false;
  BtnI.Enabled:=false;
  BtnJ.Enabled:=false;
  BtnK.Enabled:=false;
  BtnL.Enabled:=false;
  BtnM.Enabled:=false;
  BtnN.Enabled:=false;
  BtnO.Enabled:=false;
  BtnP.Enabled:=false;
  BtnQ.Enabled:=false;
  BtnR.Enabled:=false;
  BtnS.Enabled:=false;
  BtnT.Enabled:=false;
  BtnU.Enabled:=false;
  BtnV.Enabled:=false;
  BtnX.Enabled:=false;
  BtnZ.Enabled:=false;
  BtnW.Enabled:=false;
  BtnY.Enabled:=false;
   end;
end;

procedure TGmeForca.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
key:=upcase(key);
end;

procedure TGmeForca.edit1Click(Sender: TObject);
begin
  edit1.text:='';
end;

procedure TGmeForca.GmvOverClick(Sender: TObject);
begin
  win:=0;
  GmvOver.Visible:=false;
  Label4.Visible:=false;
  Label3.Visible:=false;
  TcdPainel.Visible:=true;
  ImgLevel1.Visible:=false;
  ImgLevel2.Visible:=false;
  ImgLevel3.Visible:=false;
  ImgLevel4.Visible:=false;
  ImgLevel5.Visible:=false;
  ImgLevel6.Visible:=false;
  ImgLevel7.Visible:=false;
  edit1.text:='';
  Label1.caption:='';
  Label2.caption:='';
  if (TcdPainel.visible=True) then
   begin
  BtnA.Enabled:=false;
  BtnB.Enabled:=false;
  BtnC.Enabled:=false;
  BtnD.Enabled:=false;
  BtnE.Enabled:=false;
  BtnF.Enabled:=false;
  BtnG.Enabled:=false;
  BtnH.Enabled:=false;
  BtnI.Enabled:=false;
  BtnJ.Enabled:=false;
  BtnK.Enabled:=false;
  BtnL.Enabled:=false;
  BtnM.Enabled:=false;
  BtnN.Enabled:=false;
  BtnO.Enabled:=false;
  BtnP.Enabled:=false;
  BtnQ.Enabled:=false;
  BtnR.Enabled:=false;
  BtnS.Enabled:=false;
  BtnT.Enabled:=false;
  BtnU.Enabled:=false;
  BtnV.Enabled:=false;
  BtnX.Enabled:=false;
  BtnZ.Enabled:=false;
  BtnW.Enabled:=false;
  BtnY.Enabled:=false;
   end;

end;

end.
