program JogodaForca;

uses
  Forms,
  Uforca in 'Uforca.pas' {GmeForca};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGmeForca, GmeForca);
  Application.Run;
end.
