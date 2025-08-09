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
    procedure timerCountdownTimer(Sender: TObject);
  private
    { Private declarations }
    bWorking, bResting : Boolean;
    iRemainingTime, iNextDuration : Integer;

  public
    { Public declarations }
    procedure Start();
    procedure Stop();
    procedure Reset();
    procedure UpdateLabel();
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

  iRemainingTime := (45 * 60);
  iNextDuration := (15 * 60);
end;

procedure TformMain.menuItemResetClick(Sender: TObject);
begin
  // Main Menu: Reset
  Reset();
end;

procedure TformMain.menuItemSettingsClick(Sender: TObject);
begin
  // Settings
  // Open the Settings Form
  formSettings.Show;
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


  circleWork.Opacity := 0.2;
  labelWork.Opacity := 0.2;

  circleRest.Opacity := 0.2;
  labelRest.Opacity := 0.2;

  circleReady.Opacity := 1;
  labelReady.Opacity := 1;

  timerCountdown.Enabled := True;

  iRemainingTime := (45 * 60);
  iNextDuration := (15 * 60);

  UpdateLabel;
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

  timerCountdown.Enabled := False;
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

procedure TformMain.timerCountdownTimer(Sender: TObject);
begin
  if (iRemainingTime <= 0) then
    begin
      // Switch to next duration
      iRemainingTime := iNextDuration;

      // Toggle between 15 and 45 minute durations
      if (iNextDuration = (15 * 60)) then
        begin
          iNextDuration := (45 * 60);
        end
      else
        begin
          iNextDuration := (15 * 60);
        end;

      // Update the label
      UpdateLabel;

      // Skip decrement for full duration display
      Exit;
    end;

  // Normal countdown
  Dec(iRemainingTime);

  // Update the label
  UpdateLabel;
end;

procedure TformMain.UpdateLabel;
var
  iMinutes, iSeconds : Integer;
begin
  // Update label
  iMinutes := (iRemainingTime div 60);
  iSeconds := (iRemainingTime mod 60);
  labelTimer.Text := Format('%.2d:%.2d', [iMinutes, iSeconds]);
end;

end.
