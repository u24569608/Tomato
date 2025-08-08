program Tomato;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {formMain},
  Settings in 'Settings.pas' {formSettings};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TformSettings, formSettings);
  Application.Run;
end.
