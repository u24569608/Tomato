unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,
  FMX.Layouts, FMX.Objects,  Macapi.AppKit, Macapi.ObjectiveC, Macapi.CocoaTypes,
  Macapi.Foundation, FMX.Platform.Mac, FMX.Menus;

type
  TformMain = class(TForm)
    buttonStart: TButton;
    buttonStop: TButton;
    buttonReset: TButton;
    labelTimer: TLabel;
    ltBottom: TLayout;
    layoutTop: TLayout;
    circleRest: TCircle;
    labelRest: TLabel;
    circleReady: TCircle;
    labelReady: TLabel;
    labelWork: TLabel;
    circleWork: TCircle;
    timerCountdown: TTimer;
    menuMain: TMainMenu;
    menuItemAction: TMenuItem;
    menuItemSettings: TMenuItem;
    menuItemHelp: TMenuItem;
    menuItemAbout: TMenuItem;
    menuItemStart: TMenuItem;
    menuItemStop: TMenuItem;
    menuItemReset: TMenuItem;
    menuItemTimer: TMenuItem;
    procedure buttonStartClick(Sender: TObject);
    procedure buttonStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure buttonResetClick(Sender: TObject);
    procedure menuItemResetClick(Sender: TObject);
    procedure menuItemStartClick(Sender: TObject);
    procedure menuItemStopClick(Sender: TObject);
    procedure menuItemSettingsClick(Sender: TObject);
  private
    { Private declarations }
    bWorking : Boolean;
    bResting : Boolean;
  public
    { Public declarations }
    procedure Start();
    procedure Stop();
    procedure Reset();
  end;

var
  formMain: TformMain;

implementation

{$R *.fmx}

uses Settings;

{ TfrmMain }


procedure TformMain.buttonResetClick(Sender: TObject);
begin
  // Reset
  Reset();
end;

procedure TformMain.buttonStartClick(Sender: TObject);
begin
  // Start
  Start();
end;

procedure TformMain.buttonStopClick(Sender: TObject);
begin
  // Stop/Pause
  Stop();
end;

procedure TformMain.FormCreate(Sender: TObject);
begin
   bWorking := True;
   bResting := False;
end;

procedure TformMain.menuItemResetClick(Sender: TObject);
begin
  // Main Menu: Reset
  Reset();
end;

procedure TformMain.menuItemSettingsClick(Sender: TObject);
begin
  // Settings

end;

procedure TformMain.menuItemStartClick(Sender: TObject);
begin
   // Main Menu: Start
   Start();
end;

procedure TformMain.menuItemStopClick(Sender: TObject);
begin
   // Main Menu: Stop/Pause
   Stop();
end;

procedure TformMain.Reset;
begin
  // Reset Procedure

  buttonStart.Enabled := True;
  buttonStop.Enabled := False;
  buttonReset.Enabled := False;

  menuItemStart.Enabled := True;
  menuitemStop.Enabled := False;
  menuitemReset.Enabled := False;

  labelTimer.Text := '00:45:00';

  circleWork.Opacity := 0.2;
  labelWork.Opacity := 0.2;

  circleRest.Opacity := 0.2;
  labelRest.Opacity := 0.2;

  circleReady.Opacity := 1;
  labelReady.Opacity := 1;

end;

procedure TformMain.Start;
begin
  // Start Procedure

  buttonStart.Enabled := False;
  buttonStop.Enabled := True;
  buttonReset.Enabled := True;

  menuItemStart.Enabled := False;
  menuitemStop.Enabled := True;
  menuitemReset.Enabled := True;

  circleReady.Opacity := 0.2;
  labelReady.Opacity := 0.2;

  if (bWorking = True) then
    begin
      circleWork.Opacity := 1;
      labelWork.Opacity := 1;
    end
  else
  if (bResting = True) then
    begin
      circleRest.Opacity := 1;
      labelRest.Opacity := 1;
    end;

end;

procedure TformMain.Stop;
begin
  // Stop Procedure

  buttonStart.Enabled := True;

  menuItemStart.Enabled := True;

  circleWork.Opacity := 0.2;
  labelWork.Opacity := 0.2;

  circleRest.Opacity := 0.2;
  labelRest.Opacity := 0.2;

  circleReady.Opacity := 1;
  labelReady.Opacity := 1;

end;

end.
