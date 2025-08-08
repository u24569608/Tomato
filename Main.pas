unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,
  FMX.Layouts, FMX.Objects,  Macapi.AppKit, Macapi.ObjectiveC, Macapi.CocoaTypes,
  Macapi.Foundation, FMX.Platform.Mac;

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
    circlReady: TCircle;
    labelReady: TLabel;
    labelWork: TLabel;
    circleWork: TCircle;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

{$R *.fmx}

{ TfrmMain }

{ TfrmMain }


end.
