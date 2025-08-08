unit Settings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.DateTimeCtrls;

type
  TformSettings = class(TForm)
    S: TTabControl;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSettings: TformSettings;

implementation

{$R *.fmx}

uses Main;

end.
