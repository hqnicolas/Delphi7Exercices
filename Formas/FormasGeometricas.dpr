program FormasGeometricas;

uses
  Forms,
  UFormas in 'UFormas.pas' {FrmFormas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmFormas, FrmFormas);
  Application.Run;
end.
