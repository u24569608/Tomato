program Tomato;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {formMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
