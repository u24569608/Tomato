unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,
  FMX.Layouts, FMX.Objects;

type
  TfrmMain = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    btnReset: TButton;
    lblTimerText: TLabel;
    ltBottom: TLayout;
    ltTop: TLayout;
    crclWork: TCircle;
    Circle1: TCircle;
    Circle2: TCircle;
    StyleBook1: TStyleBook;
  private
    { Private declarations }

  public
    { Public declarations }
    procedure SetTitleBarColour;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

{ TfrmMain }

{ TfrmMain }

procedure TfrmMain.SetTitleBarColour;
begin
  // Set the Title Bar Colour
end;

end.
