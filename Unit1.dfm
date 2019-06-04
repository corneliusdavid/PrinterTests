object frmPrintersTest: TfrmPrintersTest
  Left = 0
  Top = 0
  Caption = 'Printers Test'
  ClientHeight = 299
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 38
    Width = 44
    Height = 16
    Caption = 'Printers'
  end
  object lbPrinterList: TListBox
    Left = 24
    Top = 60
    Width = 353
    Height = 221
    TabOrder = 0
  end
  object btnSendListToPrinter: TButton
    Left = 87
    Top = 8
    Width = 290
    Height = 46
    Caption = 'Send the list of printers to the selected printer'
    TabOrder = 1
    OnClick = btnSendListToPrinterClick
  end
end
