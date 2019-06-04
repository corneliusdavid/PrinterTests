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
  end;

var
  frmPrintersTest: TfrmPrintersTest;

implementation

{$R *.dfm}

uses
  Printers;

procedure TfrmPrintersTest.btnSendListToPrinterClick(Sender: TObject);
var
  SelectedPrinter: TPrinter;
  prnfile: TextFile;
  i: Integer;
  h: Integer;
begin
  if lbPrinterList.ItemIndex > -1 then begin
    Printer.PrinterIndex := lbPrinterList.ItemIndex;

    Printer.BeginDoc;
    h := Printer.Canvas.TextHeight('AZ');
    for i := 0 to lbPrinterList.Count - 1 do
      Printer.Canvas.TextOut(10, 10 + i * h, lbPrinterList.Items[i]);
    Printer.EndDoc;
  end;
end;

procedure TfrmPrintersTest.FormCreate(Sender: TObject);
var
  s: string;
begin
  for s in Printer.Printers do
    lbPrinterList.Items.Add(s);
end;

end.
