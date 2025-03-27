unit ExercicioVisual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCalendars, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Memo: TMemo;
    Button1: TButton;
    MonthCalendar1: TMonthCalendar;
    CalendarPicker1: TCalendarPicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
