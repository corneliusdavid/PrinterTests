program PrinterDefault;

uses
  ExceptionLog,
  Forms,
  Unit1 in 'Unit1.pas' {frmPrintersTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrintersTest, frmPrintersTest);
  Application.Run;
end.
