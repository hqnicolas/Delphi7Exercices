unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    tbcliente: TTable;
    dtcliente: TDataSource;
    tbclienteCodigo: TIntegerField;
    tbclienteNome: TStringField;
    tbclienteEndereco: TStringField;
    tbclienteTelefone: TStringField;
    DBGrid1: TDBGrid;
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
 edit1.Enabled:=true;
 edit2.Enabled:=true;
 edit3.Enabled:=true;
 edit4.Enabled:=true;
 tbcliente.insert;

end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8)then key:=#0;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 tbcliente.edit;
 tbclientecodigo.Value:=strtoint(edit1.Text);
 tbclientenome.value:=edit2.text;
 tbclienteendereco.value:=edit2.text;
 tbclientetelefone.value:=edit2.text;
 tbcliente.post; //gravar
end;

end.
