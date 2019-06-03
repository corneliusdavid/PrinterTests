unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPrintersTest = class(TForm)
    Label1: TLabel;
    lbPrinterList: TListBox;
    btnSendListToPrinter: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSendListToPrinterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintersTest: TfrmPrintersTest;

implementation

{$R *.dfm}

uses
  Printers;

procedure TfrmPrintersTest.btnSendListToPrinterClick(Sender: TObject);
begin
  if lbPrinterList.ItemIndex > -1 then
    Printer.SetPrinter();
end;

procedure TfrmPrintersTest.FormCreate(Sender: TObject);
var
  s: string;
begin
  for s in Printer.Printers do
    lbPrinterList.Items.Add(s);
end;

end.
