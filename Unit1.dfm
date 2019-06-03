object frmPrintersTest: TfrmPrintersTest
  Left = 0
  Top = 0
  Caption = 'Printers Test'
  ClientHeight = 299
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Printers'
  end
  object lbPrinterList: TListBox
    Left = 24
    Top = 35
    Width = 193
    Height = 246
    ItemHeight = 13
    TabOrder = 0
  end
  object btnSendListToPrinter: TButton
    Left = 223
    Top = 35
    Width = 258
    Height = 46
    Caption = 'Send the list of printers to the selected printer'
    TabOrder = 1
    OnClick = btnSendListToPrinterClick
  end
end
