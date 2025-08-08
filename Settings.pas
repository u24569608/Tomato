unit Settings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.DateTimeCtrls;

type
  TformSettings = class(TForm)
    tabControlSettings: TTabControl;
    tabItemGeneral: TTabItem;
    tabItemTimeSettings: TTabItem;
    checkBoxStaysOnTop: TCheckBox;
    Label1: TLabel;
    panelBottom: TPanel;
    buttonSave: TButton;
    labelWorkRestTime: TLabel;
    workTime: TTimeEdit;
    restTime: TTimeEdit;
    buttonRestTime: TButton;
    labelWorkTime: TLabel;
    labelRestTime: TLabel;
    procedure buttonRestTimeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    txtFile : TextFile;
    sLine : string;
    iPos : Integer;
  public
    { Public declarations }
    function GetWindowSettings() : Boolean;
    procedure SetWindowSettings();

    function GetWorkTime() : TTime;
    function GetRestTime() : TTime;
    procedure SetWorkTime();
    procedure SetRestTime();
  end;

var
  formSettings: TformSettings;

implementation

{$R *.fmx}

uses Main;

procedure TformSettings.buttonRestTimeClick(Sender: TObject);
begin
  // Reset Timer Settings to Default
  workTime.Time := StrToTime('00:45:00');
  restTime.Time := StrToTime('00:15:00');
end;

procedure TformSettings.FormActivate(Sender: TObject);
begin
  // Get Work/Rest Time from File and Populate Timer
  
end;

function TformSettings.GetRestTime: TTime;
begin

end;

function TformSettings.GetWindowSettings: Boolean;
begin
  // Get Window Settings from Window_Settings.txt
end;

function TformSettings.GetWorkTime: TTime;
begin

end;

procedure TformSettings.SetRestTime;
begin
  // Write new Rest Time to Time_Settings.txt
end;

procedure TformSettings.SetWindowSettings;
begin
  // Write Window Settings to File Window_Settings.txt
end;

procedure TformSettings.SetWorkTime;
begin
  // Write new Work Time to Time_Settings.txt
end;

end.
